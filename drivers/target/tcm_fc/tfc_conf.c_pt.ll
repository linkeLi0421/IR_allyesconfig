; ModuleID = '/llk/IR_all_yes/drivers/target/tcm_fc/tfc_conf.c_pt.bc'
source_filename = "../drivers/target/tcm_fc/tfc_conf.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.fc4_prov = type { ptr, ptr, ptr, ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ft_lport_wwn = type { i64, [32 x i8], %struct.list_head, ptr, %struct.se_wwn }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ft_tpg = type { i32, ptr, ptr, %struct.list_head, %struct.se_portal_group, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.ft_tport = type { ptr, ptr, i32, %struct.callback_head, [64 x %struct.hlist_head] }
%struct.callback_head = type { ptr, ptr }
%struct.ft_node_acl = type { %struct.se_node_acl, %struct.ft_node_auth }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ft_node_auth = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ft_lport_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@ft_lport_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ft_lport_lock, i64 52), ptr getelementptr (i8, ptr @ft_lport_lock, i64 52) }, ptr @ft_lport_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ft_lport_lock\00", [18 x i8] zeroinitializer }, align 32
@__param_str_debug_logging = internal constant [21 x i8] c"tcm_fc.debug_logging\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ft_debug_logging = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_logging = internal constant %struct.kernel_param { ptr @__param_str_debug_logging, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ft_debug_logging } }, section "__param", align 4
@__UNIQUE_ID_debug_loggingtype307 = internal constant [34 x i8] c"tcm_fc.parmtype=debug_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_logging308 = internal constant [55 x i8] c"tcm_fc.parm=debug_logging:a bit mask of logging levels\00", section ".modinfo", align 1
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x\00", [48 x i8] zeroinitializer }, align 32
@ft_wwn_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ft_wwn_list, ptr @ft_wwn_list }, [24 x i8] zeroinitializer }, align 32
@fc_lport_notifier_head = external dso_local global %struct.blocking_notifier_head, align 4
@ft_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ft_lport_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ft_prov = external dso_local global %struct.fc4_prov, align 4
@ft_fabric_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str.3, i32 952, i32 0, ptr @ft_get_fabric_wwn, ptr @ft_get_tag, ptr null, ptr @ft_check_false, ptr @ft_check_false, ptr @ft_check_false, ptr @ft_check_false, ptr null, ptr null, ptr @ft_tpg_get_inst_index, ptr @ft_check_stop_free, ptr @ft_release_cmd, ptr @ft_sess_close, ptr @ft_sess_get_index, ptr null, ptr @ft_write_pending, ptr @ft_set_default_node_attr, ptr @ft_get_cmd_state, ptr @ft_queue_data_in, ptr @ft_queue_status, ptr @ft_queue_tm_resp, ptr @ft_aborted_task, ptr @ft_add_wwn, ptr @ft_del_wwn, ptr null, ptr @ft_add_tpg, ptr null, ptr @ft_del_tpg, ptr null, ptr null, ptr null, ptr null, ptr @ft_init_nodeacl, ptr null, ptr @ft_wwn_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ft_nacl_base_attrs, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description314 = internal constant [44 x i8] c"tcm_fc.description=FC TCM fabric driver 0.4\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [41 x i8] c"tcm_fc.file=drivers/target/tcm_fc/tcm_fc\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [19 x i8] c"tcm_fc.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_tcm_fc__317_490_ft_init6 = internal global ptr @ft_init, section ".initcall6.init", align 4
@__exitcall_ft_exit = internal global ptr @ft_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fc\00", [29 x i8] zeroinitializer }, align 32
@ft_wwn_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ft_wwn_attr_version, ptr null], [24 x i8] zeroinitializer }, align 32
@ft_nacl_base_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ft_nacl_attr_port_name, ptr @ft_nacl_attr_node_name, ptr @ft_nacl_attr_tag, ptr null], [16 x i8] zeroinitializer }, align 32
@ft_add_wwn.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tcm_fc\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ft_add_wwn\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/target/tcm_fc/tfc_conf.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add wwn %s\0A\00", [20 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ft_parse_wwn.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ft_parse_wwn\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"err %u len %zu pos %u byte %u\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ft_del_wwn.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ft_del_wwn\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"del wwn %s\0A\00", [20 x i8] zeroinitializer }, align 32
@ft_add_tpg.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ft_add_tpg\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcm_fc: add tpg %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tpgt_\00", [26 x i8] zeroinitializer }, align 32
@ft_add_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.6, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Error, a single TPG=1 is used for HW port mappings\0A\00", [42 x i8] zeroinitializer }, align 32
@ft_add_tpg._entry_ptr = internal global ptr @ft_add_tpg._entry, section ".printk_index", align 4
@ft_del_tpg.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ft_del_tpg\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"del tpg %s\0A\00", [20 x i8] zeroinitializer }, align 32
@ft_wwn_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.18, ptr null, i16 292, ptr @ft_wwn_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TCM FC 0.4 on %s/%s on 5.17.0\0A\00", [33 x i8] zeroinitializer }, align 32
@ft_nacl_attr_port_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 420, ptr @ft_nacl_port_name_show, ptr @ft_nacl_port_name_store }, [44 x i8] zeroinitializer }, align 32
@ft_nacl_attr_node_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @ft_nacl_node_name_show, ptr @ft_nacl_node_name_store }, [44 x i8] zeroinitializer }, align 32
@ft_nacl_attr_tag = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 420, ptr @ft_nacl_tag_show, ptr @ft_nacl_tag_store }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"port_name\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_name\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tag\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"ft_lport_lock\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 37, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"ft_debug_logging\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 39, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 95, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"ft_wwn_list\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 36, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"ft_notifier\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 452, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"ft_fabric_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 415, i32 44 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 417, i32 19 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"ft_wwn_attrs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 377, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"ft_nacl_base_attrs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 187, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 333, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 84, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 361, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 226, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 231, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 241, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 279, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"ft_wwn_attr_version\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 375, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 371, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"ft_nacl_attr_port_name\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"ft_nacl_attr_node_name\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"ft_nacl_attr_tag\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 164, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 163, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 185, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [36 x i8] c"../drivers/target/tcm_fc/tfc_conf.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 169, i32 35 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_debug_logging308, ptr @__UNIQUE_ID_debug_loggingtype307, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_ft_exit, ptr @__initcall__kmod_tcm_fc__317_490_ft_init6, ptr @__param_debug_logging, ptr @ft_add_tpg._entry, ptr @ft_add_tpg._entry_ptr, ptr @ft_exit, ptr @.str, ptr @ft_lport_lock, ptr @.str.1, ptr @ft_debug_logging, ptr @.str.2, ptr @ft_wwn_list, ptr @ft_notifier, ptr @ft_fabric_ops, ptr @.str.3, ptr @ft_wwn_attrs, ptr @ft_nacl_base_attrs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ft_wwn_attr_version, ptr @.str.18, ptr @.str.19, ptr @ft_nacl_attr_port_name, ptr @ft_nacl_attr_node_name, ptr @ft_nacl_attr_tag, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_lport_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_debug_logging to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_wwn_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_fabric_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_wwn_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_nacl_base_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_add_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_wwn_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_nacl_attr_port_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_nacl_attr_node_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_nacl_attr_tag to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ft_format_wwn(ptr nocapture noundef writeonly %buf, i32 noundef %len, i64 noundef %wwn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b.sroa.0.0.extract.shift = lshr i64 %wwn, 56
  %b.sroa.0.0.extract.trunc = trunc i64 %b.sroa.0.0.extract.shift to i32
  %b.sroa.5.0.extract.shift = lshr i64 %wwn, 48
  %b.sroa.5.0.extract.trunc = trunc i64 %b.sroa.5.0.extract.shift to i32
  %b.sroa.7.0.extract.shift = lshr i64 %wwn, 40
  %b.sroa.7.0.extract.trunc = trunc i64 %b.sroa.7.0.extract.shift to i32
  %b.sroa.9.0.extract.shift = lshr i64 %wwn, 32
  %b.sroa.9.0.extract.trunc = trunc i64 %b.sroa.9.0.extract.shift to i32
  %0 = trunc i64 %wwn to i32
  %1 = lshr i32 %0, 24
  %2 = lshr i32 %0, 16
  %3 = lshr i32 %0, 8
  %conv2 = and i32 %b.sroa.5.0.extract.trunc, 255
  %conv4 = and i32 %b.sroa.7.0.extract.trunc, 255
  %conv6 = and i32 %b.sroa.9.0.extract.trunc, 255
  %conv10 = and i32 %2, 255
  %conv12 = and i32 %3, 255
  %conv14 = and i32 %0, 255
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.2, i32 noundef %b.sroa.0.0.extract.trunc, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %1, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ft_lport_find_tpg(ptr nocapture noundef readonly %lport) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wwpn1 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @ft_wwn_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @ft_wwn_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %ft_wwn.0 = getelementptr i8, ptr %.pn, i32 -40
  %1 = ptrtoint ptr %ft_wwn.0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ft_wwn.0, align 8
  %3 = ptrtoint ptr %wwpn1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %wwpn1, align 8
  %cmp2 = icmp eq i64 %2, %4
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %tpg = getelementptr i8, ptr %.pn, i32 8
  %5 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tpg, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ft_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @fc_lport_notifier_head, ptr noundef nonnull @ft_notifier) #13
  tail call void @fc_fc4_deregister_provider(i32 noundef 8, ptr noundef nonnull @ft_prov) #13
  tail call void @fc_lport_iterate(ptr noundef nonnull @ft_lport_del, ptr noundef null) #13
  tail call void @target_unregister_template(ptr noundef nonnull @ft_fabric_ops) #13
  tail call void @synchronize_rcu() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_fc4_deregister_provider(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_lport_iterate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_lport_del(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_unregister_template(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @target_register_template(ptr noundef nonnull @ft_fabric_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fc_fc4_register_provider(i32 noundef 8, ptr noundef nonnull @ft_prov) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out_unregister_template

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @fc_lport_notifier_head, ptr noundef nonnull @ft_notifier) #13
  tail call void @fc_lport_iterate(ptr noundef nonnull @ft_lport_add, ptr noundef null) #13
  br label %cleanup

out_unregister_template:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @target_unregister_template(ptr noundef nonnull @ft_fabric_ops) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unregister_template, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %out_unregister_template ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_lport_notify(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ft_get_fabric_wwn(ptr nocapture noundef readonly %se_tpg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lport_wwn = getelementptr i8, ptr %se_tpg, i32 -16
  %0 = ptrtoint ptr %lport_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport_wwn, align 4
  %name = getelementptr inbounds %struct.ft_lport_wwn, ptr %1, i32 0, i32 1
  ret ptr %name
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ft_get_tag(ptr nocapture noundef readonly %se_tpg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %se_tpg, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %conv = trunc i32 %1 to i16
  ret i16 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ft_check_false(ptr nocapture noundef readnone %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ft_tpg_get_inst_index(ptr nocapture noundef readonly %se_tpg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %se_tpg, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_check_stop_free(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_release_cmd(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_sess_close(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_sess_get_index(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_write_pending(ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ft_set_default_node_attr(ptr nocapture noundef %se_nacl) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_get_cmd_state(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_queue_data_in(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ft_queue_status(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_queue_tm_resp(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_aborted_task(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ft_add_wwn(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #8 align 64 {
entry:
  %wwpn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwpn) #13
  %0 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wwpn, align 8, !annotation !89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_add_wwn.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_add_wwn, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_add_wwn.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.7, ptr noundef %name) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = call fastcc i32 @ft_parse_wwn(ptr noundef %name, ptr noundef nonnull %wwpn, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 304) #16
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %2 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wwpn, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %call7.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end9
  %.pn.in = phi ptr [ @ft_wwn_list, %if.end9 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp12.not = icmp eq ptr %.pn, @ft_wwn_list
  br i1 %cmp12.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %old_ft_wwn.0 = getelementptr i8, ptr %.pn, i32 -40
  %6 = ptrtoint ptr %old_ft_wwn.0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %old_ft_wwn.0, align 8
  %cmp16 = icmp eq i64 %7, %3
  br i1 %cmp16, label %if.then17, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %ft_wwn_node23 = getelementptr inbounds %struct.ft_lport_wwn, ptr %call7.i.i, i32 0, i32 2
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ft_wwn_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ft_wwn_node23, ptr noundef %8, ptr noundef nonnull @ft_wwn_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %ft_wwn_node23, ptr getelementptr inbounds (%struct.list_head, ptr @ft_wwn_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %ft_wwn_node23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ft_wwn_list, ptr %ft_wwn_node23, align 8
  %prev3.i.i = getelementptr inbounds %struct.ft_lport_wwn, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %ft_wwn_node23, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %name24 = getelementptr inbounds %struct.ft_lport_wwn, ptr %call7.i.i, i32 0, i32 1
  %b.sroa.0.0.extract.shift.i = lshr i64 %3, 56
  %b.sroa.0.0.extract.trunc.i = trunc i64 %b.sroa.0.0.extract.shift.i to i32
  %b.sroa.5.0.extract.shift.i = lshr i64 %3, 48
  %b.sroa.5.0.extract.trunc.i = trunc i64 %b.sroa.5.0.extract.shift.i to i32
  %b.sroa.7.0.extract.shift.i = lshr i64 %3, 40
  %b.sroa.7.0.extract.trunc.i = trunc i64 %b.sroa.7.0.extract.shift.i to i32
  %b.sroa.9.0.extract.shift.i = lshr i64 %3, 32
  %b.sroa.9.0.extract.trunc.i = trunc i64 %b.sroa.9.0.extract.shift.i to i32
  %12 = trunc i64 %3 to i32
  %13 = lshr i32 %12, 24
  %14 = lshr i32 %12, 16
  %15 = lshr i32 %12, 8
  %conv2.i = and i32 %b.sroa.5.0.extract.trunc.i, 255
  %conv4.i = and i32 %b.sroa.7.0.extract.trunc.i, 255
  %conv6.i = and i32 %b.sroa.9.0.extract.trunc.i, 255
  %conv10.i = and i32 %14, 255
  %conv12.i = and i32 %15, 255
  %conv14.i = and i32 %12, 255
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name24, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %b.sroa.0.0.extract.trunc.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %13, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #13
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #13
  %se_wwn = getelementptr inbounds %struct.ft_lport_wwn, ptr %call7.i.i, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then17, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then17 ], [ %se_wwn, %list_add_tail.exit ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwpn) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ft_del_wwn(ptr noundef %wwn) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_del_wwn.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_del_wwn, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr i8, ptr %wwn, i32 -44
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_del_wwn.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.11, ptr noundef %name) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #13
  %ft_wwn_node = getelementptr i8, ptr %wwn, i32 -12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ft_wwn_node) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %wwn, i32 -8
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ft_wwn_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ft_wwn_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %wwn, i32 -52
  %6 = ptrtoint ptr %ft_wwn_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %ft_wwn_node, align 4
  %prev.i = getelementptr i8, ptr %wwn, i32 -8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ft_add_tpg(ptr noundef %wwn, ptr noundef %name) #8 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #13
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index, align 4, !annotation !89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_add_tpg.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_add_tpg, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_add_tpg.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.13, ptr noundef %name) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %strncmp = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.14, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp60.not = icmp eq i32 %strncmp, 0
  br i1 %cmp60.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %add.ptr = getelementptr i8, ptr %name, i32 5
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %index) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp13.not = icmp eq i32 %2, 1
  br i1 %cmp13.not, label %if.end21, label %do.end17

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #17
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 856) #16
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %add.ptr23 = getelementptr i8, ptr %wwn, i32 -52
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call7.i.i, align 8
  %lport_wwn = getelementptr inbounds %struct.ft_tpg, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %lport_wwn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr23, ptr %lport_wwn, align 4
  %lun_list = getelementptr inbounds %struct.ft_tpg, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %lun_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %lun_list, ptr %lun_list, align 4
  %prev.i = getelementptr inbounds %struct.ft_tpg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lun_list, ptr %prev.i, align 8
  %call29 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1) #13
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %se_tpg = getelementptr inbounds %struct.ft_tpg, ptr %call7.i.i, i32 0, i32 4
  %call33 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %se_tpg, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  call void @destroy_workqueue(ptr noundef nonnull %call29) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %workqueue = getelementptr inbounds %struct.ft_tpg, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call29, ptr %workqueue, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #13
  %tpg37 = getelementptr i8, ptr %wwn, i32 -4
  %11 = ptrtoint ptr %tpg37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %tpg37, align 8
  call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then35, %if.then31, %if.end21.cleanup_crit_edge, %do.end17, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -38 to ptr), %do.end17 ], [ null, %if.then35 ], [ %se_tpg, %if.end36 ], [ null, %if.then31 ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ null, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ft_del_tpg(ptr noundef %se_tpg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lport_wwn = getelementptr i8, ptr %se_tpg, i32 -16
  %0 = ptrtoint ptr %lport_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport_wwn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_del_tpg.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_del_tpg, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tpg_group = getelementptr inbounds %struct.se_portal_group, ptr %se_tpg, i32 0, i32 12
  %2 = ptrtoint ptr %tpg_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg_group, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_del_tpg.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.17, ptr noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %workqueue = getelementptr i8, ptr %se_tpg, i32 832
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #13
  tail call void @synchronize_rcu() #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @ft_lport_lock, i32 noundef 0) #13
  %tpg6 = getelementptr inbounds %struct.ft_lport_wwn, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tpg6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tpg6, align 8
  %tport = getelementptr i8, ptr %se_tpg, i32 -12
  %7 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tport, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %do.end.if.end12_crit_edge, label %if.then8

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %tpg10 = getelementptr inbounds %struct.ft_tport, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tpg10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tpg10, align 4
  %10 = ptrtoint ptr %tport to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tport, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %do.end.if.end12_crit_edge
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -20
  tail call void @mutex_unlock(ptr noundef nonnull @ft_lport_lock) #13
  %call13 = tail call i32 @core_tpg_deregister(ptr noundef %se_tpg) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_init_nodeacl(ptr nocapture noundef writeonly %nacl, ptr noundef %name) #8 align 64 {
entry:
  %wwpn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwpn) #13
  %0 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wwpn, align 8, !annotation !89
  %call = call fastcc i32 @ft_parse_wwn(ptr noundef %name, ptr noundef nonnull %wwpn, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %wwpn, align 8
  %node_auth = getelementptr inbounds %struct.ft_node_acl, ptr %nacl, i32 0, i32 1
  %3 = ptrtoint ptr %node_auth to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %node_auth, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwpn) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ft_parse_wwn(ptr noundef %name, ptr nocapture noundef %wwn, i32 noundef %strict) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wwn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %wwn, align 8
  %arrayidx = getelementptr i8, ptr %name, i32 31
  %cmp82 = icmp ugt ptr %arrayidx, %name
  br i1 %cmp82, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strict)
  %tobool.not = icmp eq i32 %strict, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cp.085 = phi ptr [ %name, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %pos.084 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.2, %for.inc.for.body_crit_edge ]
  %byte.083 = phi i32 [ 0, %for.body.lr.ph ], [ %byte.2, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %cp.085 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cp.085, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp1 = icmp eq i8 %2, 10
  br i1 %cmp1, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %arrayidx3 = getelementptr i8, ptr %cp.085, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5 = icmp eq i8 %4, 0
  br i1 %cmp5, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %land.lhs.true7

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true7:                                   ; preds = %if.end
  %inc = add i32 %pos.084, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pos.084)
  %cmp8 = icmp eq i32 %pos.084, 2
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true7.if.end20_crit_edge

land.lhs.true7.if.end20_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %inc11 = add i32 %byte.083, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %byte.083)
  %cmp12 = icmp ult i32 %byte.083, 7
  br i1 %cmp12, label %if.then14, label %land.lhs.true10.if.end20_crit_edge

land.lhs.true10.if.end20_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %2)
  %cmp16 = icmp eq i8 %2, 58
  br i1 %cmp16, label %if.then14.for.inc_crit_edge, label %if.then14.do.body_crit_edge

if.then14.do.body_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end20:                                         ; preds = %land.lhs.true10.if.end20_crit_edge, %land.lhs.true7.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %byte.1 = phi i32 [ %inc11, %land.lhs.true10.if.end20_crit_edge ], [ %byte.083, %land.lhs.true7.if.end20_crit_edge ], [ %byte.083, %if.end.if.end20_crit_edge ]
  %pos.1 = phi i32 [ 3, %land.lhs.true10.if.end20_crit_edge ], [ %inc, %land.lhs.true7.if.end20_crit_edge ], [ %pos.084, %if.end.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp22 = icmp eq i8 %2, 0
  br i1 %cmp22, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %byte.1)
  %cmp27.not = icmp eq i32 %byte.1, 8
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp27.not
  br i1 %or.cond, label %if.end30, label %if.then24.do.body_crit_edge

if.then24.do.body_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.085 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %name to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %call = tail call i32 @hex_to_bin(i8 noundef zeroext %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp32 = icmp slt i32 %call, 0
  br i1 %cmp32, label %if.end31.do.body_crit_edge, label %lor.lhs.false

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end31
  br i1 %tobool.not, label %lor.lhs.false.if.end42_crit_edge, label %land.lhs.true35

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true35:                                  ; preds = %lor.lhs.false
  %arrayidx37 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx37, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp39.not = icmp eq i8 %7, 0
  br i1 %cmp39.not, label %land.lhs.true35.if.end42_crit_edge, label %land.lhs.true35.do.body_crit_edge

land.lhs.true35.do.body_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true35.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge
  %8 = ptrtoint ptr %wwn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wwn, align 8
  %shl = shl i64 %9, 4
  %conv4379 = zext i32 %call to i64
  %or = or i64 %shl, %conv4379
  store i64 %or, ptr %wwn, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.then14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %byte.2 = phi i32 [ %byte.083, %land.lhs.true.for.inc_crit_edge ], [ %inc11, %if.then14.for.inc_crit_edge ], [ %byte.1, %if.end42 ]
  %pos.2 = phi i32 [ %pos.084, %land.lhs.true.for.inc_crit_edge ], [ 0, %if.then14.for.inc_crit_edge ], [ %pos.1, %if.end42 ]
  %incdec.ptr = getelementptr i8, ptr %cp.085, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %arrayidx
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %land.lhs.true35.do.body_crit_edge, %if.end31.do.body_crit_edge, %if.then24.do.body_crit_edge, %if.then14.do.body_crit_edge, %entry.do.body_crit_edge
  %cp.081 = phi ptr [ %cp.085, %if.then24.do.body_crit_edge ], [ %name, %entry.do.body_crit_edge ], [ %cp.085, %if.end31.do.body_crit_edge ], [ %cp.085, %land.lhs.true35.do.body_crit_edge ], [ %cp.085, %if.then14.do.body_crit_edge ], [ %arrayidx, %for.inc.do.body_crit_edge ]
  %byte.3 = phi i32 [ %byte.1, %if.then24.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %byte.1, %if.end31.do.body_crit_edge ], [ %byte.1, %land.lhs.true35.do.body_crit_edge ], [ %inc11, %if.then14.do.body_crit_edge ], [ %byte.2, %for.inc.do.body_crit_edge ]
  %pos.3 = phi i32 [ %pos.1, %if.then24.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %pos.1, %if.end31.do.body_crit_edge ], [ %pos.1, %land.lhs.true35.do.body_crit_edge ], [ 0, %if.then14.do.body_crit_edge ], [ %pos.2, %for.inc.do.body_crit_edge ]
  %err.0 = phi i32 [ 2, %if.then24.do.body_crit_edge ], [ 4, %entry.do.body_crit_edge ], [ 3, %if.end31.do.body_crit_edge ], [ 3, %land.lhs.true35.do.body_crit_edge ], [ 1, %if.then14.do.body_crit_edge ], [ 4, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_parse_wwn.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_parse_wwn, %if.then48)) #13
          to label %cleanup [label %if.then48], !srcloc !90

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast49 = ptrtoint ptr %cp.081 to i32
  %sub.ptr.rhs.cast50 = ptrtoint ptr %name to i32
  %sub.ptr.sub51 = sub i32 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_parse_wwn.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.9, i32 noundef %err.0, i32 noundef %sub.ptr.sub51, i32 noundef %pos.3, i32 noundef %byte.3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.body, %if.end30
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.end30 ], [ -1, %if.then48 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_wwn_version_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uts_ns.i, align 4
  %machine = getelementptr inbounds %struct.new_utsname, ptr %7, i32 0, i32 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.19, ptr noundef %7, ptr noundef %machine)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_nacl_port_name_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %node_auth = getelementptr i8, ptr %item, i32 480
  %0 = ptrtoint ptr %node_auth to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %node_auth, align 8
  %b.sroa.0.0.extract.shift.i.i = lshr i64 %1, 56
  %b.sroa.0.0.extract.trunc.i.i = trunc i64 %b.sroa.0.0.extract.shift.i.i to i32
  %b.sroa.5.0.extract.shift.i.i = lshr i64 %1, 48
  %b.sroa.5.0.extract.trunc.i.i = trunc i64 %b.sroa.5.0.extract.shift.i.i to i32
  %b.sroa.7.0.extract.shift.i.i = lshr i64 %1, 40
  %b.sroa.7.0.extract.trunc.i.i = trunc i64 %b.sroa.7.0.extract.shift.i.i to i32
  %b.sroa.9.0.extract.shift.i.i = lshr i64 %1, 32
  %b.sroa.9.0.extract.trunc.i.i = trunc i64 %b.sroa.9.0.extract.shift.i.i to i32
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 24
  %4 = lshr i32 %2, 16
  %5 = lshr i32 %2, 8
  %conv2.i.i = and i32 %b.sroa.5.0.extract.trunc.i.i, 255
  %conv4.i.i = and i32 %b.sroa.7.0.extract.trunc.i.i, 255
  %conv6.i.i = and i32 %b.sroa.9.0.extract.trunc.i.i, 255
  %conv10.i.i = and i32 %4, 255
  %conv12.i.i = and i32 %5, 255
  %conv14.i.i = and i32 %2, 255
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4094, ptr noundef nonnull @.str.2, i32 noundef %b.sroa.0.0.extract.trunc.i.i, i32 noundef %conv2.i.i, i32 noundef %conv4.i.i, i32 noundef %conv6.i.i, i32 noundef %3, i32 noundef %conv10.i.i, i32 noundef %conv12.i.i, i32 noundef %conv14.i.i) #13
  %inc.i = add i32 %call.i.i, 1
  %arrayidx.i = getelementptr i8, ptr %page, i32 %call.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %arrayidx.i, align 1
  ret i32 %inc.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_nacl_port_name_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %node_auth = getelementptr i8, ptr %item, i32 480
  %arrayidx.i.i = getelementptr i8, ptr %page, i32 31
  %cmp82.i.i = icmp ugt ptr %arrayidx.i.i, %page
  br i1 %cmp82.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.body.i.i_crit_edge

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %wwn.0.i = phi i64 [ %wwn.1.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %cp.085.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %page, %entry.for.body.i.i_crit_edge ]
  %0 = ptrtoint ptr %cp.085.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp.085.i.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %for.body.i.i.if.end31.i.i_crit_edge [
    i8 10, label %land.lhs.true.i.i
    i8 0, label %if.then24.i.i
  ]

for.body.i.i.if.end31.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %cp.085.i.i, i32 1
  %3 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5.i.i = icmp eq i8 %4, 0
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.if.end31.i.i_crit_edge

land.lhs.true.i.i.if.end31.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then24.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %cp.085.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %page to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %ft_parse_wwn.exit.i

if.end31.i.i:                                     ; preds = %land.lhs.true.i.i.if.end31.i.i_crit_edge, %for.body.i.i.if.end31.i.i_crit_edge
  %call.i.i = tail call i32 @hex_to_bin(i8 noundef zeroext %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp32.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp32.i.i, label %if.end31.i.i.do.body.i.i_crit_edge, label %lor.lhs.false.i.i

if.end31.i.i.do.body.i.i_crit_edge:               ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i.i = shl i64 %wwn.0.i, 4
  %conv4379.i.i = zext i32 %call.i.i to i64
  %or.i.i = or i64 %shl.i.i, %conv4379.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %lor.lhs.false.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge
  %wwn.1.i = phi i64 [ %wwn.0.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %or.i.i, %lor.lhs.false.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %cp.085.i.i, i32 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr.i.i, %arrayidx.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %if.end31.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  %wwn.2.i = phi i64 [ 0, %entry.do.body.i.i_crit_edge ], [ %wwn.1.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ %wwn.0.i, %if.end31.i.i.do.body.i.i_crit_edge ]
  %cp.081.i.i = phi ptr [ %page, %entry.do.body.i.i_crit_edge ], [ %arrayidx.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ %cp.085.i.i, %if.end31.i.i.do.body.i.i_crit_edge ]
  %err.0.i.i = phi i32 [ 4, %entry.do.body.i.i_crit_edge ], [ 4, %for.inc.i.i.do.body.i.i_crit_edge ], [ 3, %if.end31.i.i.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_parse_wwn.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_nacl_port_name_store, %ft_parse_wwn.exit.thread.i)) #13
          to label %ft_parse_wwn.exit.i [label %ft_parse_wwn.exit.thread.i], !srcloc !90

ft_parse_wwn.exit.thread.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast49.i.i = ptrtoint ptr %cp.081.i.i to i32
  %sub.ptr.rhs.cast50.i.i = ptrtoint ptr %page to i32
  %sub.ptr.sub51.i.i = sub i32 %sub.ptr.lhs.cast49.i.i, %sub.ptr.rhs.cast50.i.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_parse_wwn.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.9, i32 noundef %err.0.i.i, i32 noundef %sub.ptr.sub51.i.i, i32 noundef 0, i32 noundef 0) #13
  br label %ft_wwn_store.exit

ft_parse_wwn.exit.i:                              ; preds = %do.body.i.i, %if.then24.i.i
  %wwn.3.i = phi i64 [ %wwn.2.i, %do.body.i.i ], [ %wwn.0.i, %if.then24.i.i ]
  %retval.0.i.i = phi i32 [ -1, %do.body.i.i ], [ %sub.ptr.sub.i.i, %if.then24.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp sgt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %ft_parse_wwn.exit.i.ft_wwn_store.exit_crit_edge

ft_parse_wwn.exit.i.ft_wwn_store.exit_crit_edge:  ; preds = %ft_parse_wwn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ft_wwn_store.exit

if.then.i:                                        ; preds = %ft_parse_wwn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %node_auth to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %wwn.3.i, ptr %node_auth, align 8
  br label %ft_wwn_store.exit

ft_wwn_store.exit:                                ; preds = %if.then.i, %ft_parse_wwn.exit.i.ft_wwn_store.exit_crit_edge, %ft_parse_wwn.exit.thread.i
  %retval.0.i6.i = phi i32 [ -1, %ft_parse_wwn.exit.thread.i ], [ %retval.0.i.i, %if.then.i ], [ %retval.0.i.i, %ft_parse_wwn.exit.i.ft_wwn_store.exit_crit_edge ]
  ret i32 %retval.0.i6.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_nacl_node_name_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %node_name = getelementptr i8, ptr %item, i32 488
  %0 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %node_name, align 8
  %b.sroa.0.0.extract.shift.i.i = lshr i64 %1, 56
  %b.sroa.0.0.extract.trunc.i.i = trunc i64 %b.sroa.0.0.extract.shift.i.i to i32
  %b.sroa.5.0.extract.shift.i.i = lshr i64 %1, 48
  %b.sroa.5.0.extract.trunc.i.i = trunc i64 %b.sroa.5.0.extract.shift.i.i to i32
  %b.sroa.7.0.extract.shift.i.i = lshr i64 %1, 40
  %b.sroa.7.0.extract.trunc.i.i = trunc i64 %b.sroa.7.0.extract.shift.i.i to i32
  %b.sroa.9.0.extract.shift.i.i = lshr i64 %1, 32
  %b.sroa.9.0.extract.trunc.i.i = trunc i64 %b.sroa.9.0.extract.shift.i.i to i32
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 24
  %4 = lshr i32 %2, 16
  %5 = lshr i32 %2, 8
  %conv2.i.i = and i32 %b.sroa.5.0.extract.trunc.i.i, 255
  %conv4.i.i = and i32 %b.sroa.7.0.extract.trunc.i.i, 255
  %conv6.i.i = and i32 %b.sroa.9.0.extract.trunc.i.i, 255
  %conv10.i.i = and i32 %4, 255
  %conv12.i.i = and i32 %5, 255
  %conv14.i.i = and i32 %2, 255
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4094, ptr noundef nonnull @.str.2, i32 noundef %b.sroa.0.0.extract.trunc.i.i, i32 noundef %conv2.i.i, i32 noundef %conv4.i.i, i32 noundef %conv6.i.i, i32 noundef %3, i32 noundef %conv10.i.i, i32 noundef %conv12.i.i, i32 noundef %conv14.i.i) #13
  %inc.i = add i32 %call.i.i, 1
  %arrayidx.i = getelementptr i8, ptr %page, i32 %call.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %arrayidx.i, align 1
  ret i32 %inc.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_nacl_node_name_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %node_name = getelementptr i8, ptr %item, i32 488
  %arrayidx.i.i = getelementptr i8, ptr %page, i32 31
  %cmp82.i.i = icmp ugt ptr %arrayidx.i.i, %page
  br i1 %cmp82.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.body.i.i_crit_edge

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %wwn.0.i = phi i64 [ %wwn.1.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %cp.085.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %page, %entry.for.body.i.i_crit_edge ]
  %0 = ptrtoint ptr %cp.085.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp.085.i.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %1, label %for.body.i.i.if.end31.i.i_crit_edge [
    i8 10, label %land.lhs.true.i.i
    i8 0, label %if.then24.i.i
  ]

for.body.i.i.if.end31.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %cp.085.i.i, i32 1
  %3 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5.i.i = icmp eq i8 %4, 0
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.if.end31.i.i_crit_edge

land.lhs.true.i.i.if.end31.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then24.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %cp.085.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %page to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %ft_parse_wwn.exit.i

if.end31.i.i:                                     ; preds = %land.lhs.true.i.i.if.end31.i.i_crit_edge, %for.body.i.i.if.end31.i.i_crit_edge
  %call.i.i = tail call i32 @hex_to_bin(i8 noundef zeroext %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp32.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp32.i.i, label %if.end31.i.i.do.body.i.i_crit_edge, label %lor.lhs.false.i.i

if.end31.i.i.do.body.i.i_crit_edge:               ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i.i = shl i64 %wwn.0.i, 4
  %conv4379.i.i = zext i32 %call.i.i to i64
  %or.i.i = or i64 %shl.i.i, %conv4379.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %lor.lhs.false.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge
  %wwn.1.i = phi i64 [ %wwn.0.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %or.i.i, %lor.lhs.false.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %cp.085.i.i, i32 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr.i.i, %arrayidx.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %if.end31.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  %wwn.2.i = phi i64 [ 0, %entry.do.body.i.i_crit_edge ], [ %wwn.1.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ %wwn.0.i, %if.end31.i.i.do.body.i.i_crit_edge ]
  %cp.081.i.i = phi ptr [ %page, %entry.do.body.i.i_crit_edge ], [ %arrayidx.i.i, %for.inc.i.i.do.body.i.i_crit_edge ], [ %cp.085.i.i, %if.end31.i.i.do.body.i.i_crit_edge ]
  %err.0.i.i = phi i32 [ 4, %entry.do.body.i.i_crit_edge ], [ 4, %for.inc.i.i.do.body.i.i_crit_edge ], [ 3, %if.end31.i.i.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_parse_wwn.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_nacl_node_name_store, %ft_parse_wwn.exit.thread.i)) #13
          to label %ft_parse_wwn.exit.i [label %ft_parse_wwn.exit.thread.i], !srcloc !90

ft_parse_wwn.exit.thread.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast49.i.i = ptrtoint ptr %cp.081.i.i to i32
  %sub.ptr.rhs.cast50.i.i = ptrtoint ptr %page to i32
  %sub.ptr.sub51.i.i = sub i32 %sub.ptr.lhs.cast49.i.i, %sub.ptr.rhs.cast50.i.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_parse_wwn.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.9, i32 noundef %err.0.i.i, i32 noundef %sub.ptr.sub51.i.i, i32 noundef 0, i32 noundef 0) #13
  br label %ft_wwn_store.exit

ft_parse_wwn.exit.i:                              ; preds = %do.body.i.i, %if.then24.i.i
  %wwn.3.i = phi i64 [ %wwn.2.i, %do.body.i.i ], [ %wwn.0.i, %if.then24.i.i ]
  %retval.0.i.i = phi i32 [ -1, %do.body.i.i ], [ %sub.ptr.sub.i.i, %if.then24.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp sgt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %ft_parse_wwn.exit.i.ft_wwn_store.exit_crit_edge

ft_parse_wwn.exit.i.ft_wwn_store.exit_crit_edge:  ; preds = %ft_parse_wwn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ft_wwn_store.exit

if.then.i:                                        ; preds = %ft_parse_wwn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %node_name to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %wwn.3.i, ptr %node_name, align 8
  br label %ft_wwn_store.exit

ft_wwn_store.exit:                                ; preds = %if.then.i, %ft_parse_wwn.exit.i.ft_wwn_store.exit_crit_edge, %ft_parse_wwn.exit.thread.i
  %retval.0.i6.i = phi i32 [ -1, %ft_parse_wwn.exit.thread.i ], [ %retval.0.i.i, %if.then.i ], [ %retval.0.i.i, %ft_parse_wwn.exit.i.ft_wwn_store.exit_crit_edge ]
  ret i32 %retval.0.i6.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_nacl_tag_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_tag = getelementptr i8, ptr %item, i32 -216
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef %acl_tag)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ft_nacl_tag_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -456
  %se_tpg = getelementptr i8, ptr %item, i32 -140
  %0 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg, align 4
  %call1 = tail call i32 @core_tpg_set_initiator_node_tag(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %page) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.count = select i1 %cmp, i32 %call1, i32 %count
  ret i32 %call1.count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_set_initiator_node_tag(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_register_template(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_fc4_register_provider(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_lport_add(ptr noundef, ptr noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !66, !68, !70, !71, !73, !74, !76, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 37, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ft_lport_lock, !1, !"ft_lport_lock", i1 false, i1 false}
!4 = !{ptr @__param_debug_logging, !5, !"__param_debug_logging", i1 false, i1 false}
!5 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 40, i32 1}
!6 = !{ptr @__UNIQUE_ID_debug_loggingtype307, !5, !"__UNIQUE_ID_debug_loggingtype307", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_debug_logging308, !8, !"__UNIQUE_ID_debug_logging308", i1 false, i1 false}
!8 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 41, i32 1}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 95, i32 4}
!11 = !{ptr @__UNIQUE_ID_description314, !12, !"__UNIQUE_ID_description314", i1 false, i1 false}
!12 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 488, i32 1}
!13 = !{ptr @__UNIQUE_ID_file315, !14, !"__UNIQUE_ID_file315", i1 false, i1 false}
!14 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 489, i32 1}
!15 = !{ptr @__UNIQUE_ID_license316, !14, !"__UNIQUE_ID_license316", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_tcm_fc__317_490_ft_init6, !17, !"__initcall__kmod_tcm_fc__317_490_ft_init6", i1 false, i1 false}
!17 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 490, i32 1}
!18 = !{ptr @__exitcall_ft_exit, !19, !"__exitcall_ft_exit", i1 false, i1 false}
!19 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 491, i32 1}
!20 = !{ptr @ft_debug_logging, !21, !"ft_debug_logging", i1 false, i1 false}
!21 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 39, i32 14}
!22 = !{ptr @__param_str_debug_logging, !5, !"__param_str_debug_logging", i1 false, i1 false}
!23 = !{ptr @ft_wwn_list, !24, !"ft_wwn_list", i1 false, i1 false}
!24 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 36, i32 8}
!25 = !{ptr @ft_notifier, !26, !"ft_notifier", i1 false, i1 false}
!26 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 452, i32 30}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 417, i32 19}
!29 = !{ptr @ft_fabric_ops, !30, !"ft_fabric_ops", i1 false, i1 false}
!30 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 415, i32 44}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 333, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ft_add_wwn.__UNIQUE_ID_ddebug312, !32, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 84, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ft_parse_wwn.__UNIQUE_ID_ddebug309, !38, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 361, i32 2}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ft_del_wwn.__UNIQUE_ID_ddebug313, !42, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 226, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ft_add_tpg.__UNIQUE_ID_ddebug310, !46, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 231, i32 19}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 241, i32 3}
!53 = !{ptr @ft_add_tpg._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ft_add_tpg._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 279, i32 2}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ft_del_tpg.__UNIQUE_ID_ddebug311, !56, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!59 = !{ptr @ft_wwn_attrs, !60, !"ft_wwn_attrs", i1 false, i1 false}
!60 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 377, i32 35}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 375, i32 1}
!63 = !{ptr @ft_wwn_attr_version, !62, !"ft_wwn_attr_version", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 371, i32 23}
!66 = !{ptr @ft_nacl_base_attrs, !67, !"ft_nacl_base_attrs", i1 false, i1 false}
!67 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 187, i32 35}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 164, i32 1}
!70 = !{ptr @ft_nacl_attr_port_name, !69, !"ft_nacl_attr_port_name", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 163, i32 1}
!73 = !{ptr @ft_nacl_attr_node_name, !72, !"ft_nacl_attr_node_name", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 185, i32 1}
!76 = !{ptr @ft_nacl_attr_tag, !75, !"ft_nacl_attr_tag", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/tcm_fc/tfc_conf.c", i32 169, i32 35}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{i64 2148963004, i64 2148963009, i64 2148963022, i64 2148963066, i64 2148963100, i64 2148963121}
