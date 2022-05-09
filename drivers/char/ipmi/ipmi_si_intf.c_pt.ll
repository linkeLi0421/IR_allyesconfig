; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_si_intf.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_si_intf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.si_sm_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ipmi_smi_handlers = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.smi_info = type { i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, %struct.si_sm_io, ptr, i8, i8, %struct.atomic_t, i8, %struct.timer_list, i8, i8, i32, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.ipmi_device_id, i8, [11 x %struct.atomic_t], ptr, %struct.list_head }
%struct.si_sm_io = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %union.ipmi_smi_info_union, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, ptr }
%union.ipmi_smi_info_union = type {}
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ipmi_device_id = type { i8, i8, i8, i8, i8, i8, i32, i32, [4 x i8], i8 }
%struct.ipmi_smi_msg = type { %struct.list_head, i32, i32, ptr, i32, [272 x i8], i32, [272 x i8], ptr }
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
%struct.ipmi_smi_info = type { i32, ptr, %union.ipmi_smi_info_union }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kcs\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smic\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bt\00", [29 x i8] zeroinitializer }, align 32
@si_to_str = dso_local constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr null], [44 x i8] zeroinitializer }, align 32
@__param_str_force_kipmid = internal constant [21 x i8] c"ipmi_si.force_kipmid\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_force_kipmid = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_force_kipmid, ptr @param_ops_int, ptr @force_kipmid }, align 4
@__param_force_kipmid = internal constant %struct.kernel_param { ptr @__param_str_force_kipmid, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_force_kipmid } }, section "__param", align 4
@__UNIQUE_ID_force_kipmidtype228 = internal constant [43 x i8] c"ipmi_si.parmtype=force_kipmid:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_kipmid229 = internal constant [174 x i8] c"ipmi_si.parm=force_kipmid:Force the kipmi daemon to be enabled (1) or disabled(0).  Normally the IPMI driver auto-detects this, but the value may be overridden by this parm.\00", section ".modinfo", align 1
@__param_str_unload_when_empty = internal constant [26 x i8] c"ipmi_si.unload_when_empty\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@unload_when_empty = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_unload_when_empty = internal constant %struct.kernel_param { ptr @__param_str_unload_when_empty, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @unload_when_empty } }, section "__param", align 4
@__UNIQUE_ID_unload_when_emptytype230 = internal constant [40 x i8] c"ipmi_si.parmtype=unload_when_empty:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_unload_when_empty231 = internal constant [165 x i8] c"ipmi_si.parm=unload_when_empty:Unload the module if no interfaces are specified or found, default is 1.  Setting to 0 is useful for hot add of devices using hotmod.\00", section ".modinfo", align 1
@__param_str_kipmid_max_busy_us = internal constant [27 x i8] c"ipmi_si.kipmid_max_busy_us\00", align 1
@__param_arr_kipmid_max_busy_us = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_max_busy_us, ptr @param_ops_uint, ptr @kipmid_max_busy_us }, align 4
@__param_kipmid_max_busy_us = internal constant %struct.kernel_param { ptr @__param_str_kipmid_max_busy_us, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_kipmid_max_busy_us } }, section "__param", align 4
@__UNIQUE_ID_kipmid_max_busy_ustype232 = internal constant [50 x i8] c"ipmi_si.parmtype=kipmid_max_busy_us:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_kipmid_max_busy_us233 = internal constant [194 x i8] c"ipmi_si.parm=kipmid_max_busy_us:Max time (in microseconds) to busy-wait for IPMI data before sleeping. 0 (default) means to wait forever. Set to 100-500 if kipmid is using up a lot of CPU time.\00", section ".modinfo", align 1
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipmi_si\00", [24 x i8] zeroinitializer }, align 32
@ipmi_std_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1270, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s unable to claim interrupt %d, running polled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipmi_std_irq_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/char/ipmi/ipmi_si_intf.c\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipmi_std_irq_setup._entry_ptr = internal global ptr @ipmi_std_irq_setup._entry, section ".printk_index", align 4
@ipmi_std_irq_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1275, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Using irq %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ipmi_std_irq_setup._entry_ptr.13 = internal global ptr @ipmi_std_irq_setup._entry.10, section ".printk_index", align 4
@ipmi_si_add_smi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 1879, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Hard-coded device at this address already exists\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipmi_si_add_smi\00", [16 x i8] zeroinitializer }, align 32
@ipmi_si_add_smi._entry_ptr = internal global ptr @ipmi_si_add_smi._entry, section ".printk_index", align 4
@ipmi_si_add_smi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&new_smi->si_lock\00", [46 x i8] zeroinitializer }, align 32
@smi_infos_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smi_infos_lock, i64 52), ptr getelementptr (i8, ptr @smi_infos_lock, i64 52) }, ptr @smi_infos_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ipmi_si_add_smi._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.7, i32 1908, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Removing SMBIOS-specified %s state machine in favor of ACPI\0A\00", [35 x i8] zeroinitializer }, align 32
@ipmi_si_add_smi._entry_ptr.19 = internal global ptr @ipmi_si_add_smi._entry.17, section ".printk_index", align 4
@ipmi_si_add_smi._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.7, i32 1914, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s-specified %s state machine: duplicate\0A\00", [54 x i8] zeroinitializer }, align 32
@ipmi_si_add_smi._entry_ptr.22 = internal global ptr @ipmi_si_add_smi._entry.20, section ".printk_index", align 4
@ipmi_si_add_smi._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.7, i32 1923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ipmi_si: Adding %s-specified %s state machine\0A\00", [47 x i8] zeroinitializer }, align 32
@ipmi_si_add_smi._entry_ptr.25 = internal global ptr @ipmi_si_add_smi._entry.23, section ".printk_index", align 4
@smi_infos = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @smi_infos, ptr @smi_infos }, [24 x i8] zeroinitializer }, align 32
@initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__initcall__kmod_ipmi_si__234_2153_init_ipmi_si6 = internal global ptr @init_ipmi_si, section ".initcall6.init", align 4
@__exitcall_cleanup_ipmi_si = internal global ptr @cleanup_ipmi_si, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias235 = internal constant [35 x i8] c"ipmi_si.alias=platform:dmi-ipmi-si\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [39 x i8] c"ipmi_si.file=drivers/char/ipmi/ipmi_si\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [20 x i8] c"ipmi_si.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [50 x i8] c"ipmi_si.author=Corey Minyard <minyard@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [94 x i8] c"ipmi_si.description=Interface to the IPMI driver for the KCS, SMIC, and BT system interfaces.\00", section ".modinfo", align 1
@handle_transaction_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.handle_transaction_done = private unnamed_addr constant [24 x i8] c"handle_transaction_done\00", align 1
@handle_transaction_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.handle_transaction_done, ptr @.str.7, i32 595, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error clearing flags: %2.2x\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_transaction_done._entry_ptr = internal global ptr @handle_transaction_done._entry, section ".printk_index", align 4
@handle_transaction_done._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@handle_transaction_done._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.handle_transaction_done, ptr @.str.7, i32 689, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Couldn't get irq info: %x,\0AMaybe ok, but ipmi might run very slowly.\0A\00", [58 x i8] zeroinitializer }, align 32
@handle_transaction_done._entry_ptr.31 = internal global ptr @handle_transaction_done._entry.29, section ".printk_index", align 4
@handle_transaction_done._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@handle_transaction_done._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.handle_transaction_done, ptr @.str.7, i32 726, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not set the global enables: 0x%x.\0A\00", [55 x i8] zeroinitializer }, align 32
@handle_transaction_done._entry_ptr.35 = internal global ptr @handle_transaction_done._entry.33, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xaction_notifier_list = internal global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xaction_notifier_list.lock\00", [37 x i8] zeroinitializer }, align 32
@num_force_kipmid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_kipmid = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@num_max_busy_us = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@kipmid_max_busy_us = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smi_infos_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smi_infos_lock\00", [17 x i8] zeroinitializer }, align 32
@try_smi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.7, i32 1949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016ipmi_si: Trying %s-specified %s state machine at %s address 0x%lx, slave address 0x%x, irq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"try_smi_init\00", [19 x i8] zeroinitializer }, align 32
@try_smi_init._entry_ptr = internal global ptr @try_smi_init._entry, section ".printk_index", align 4
@addr_space_to_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.63, ptr @.str.64], [24 x i8] zeroinitializer }, align 32
@kcs_smi_handlers = external dso_local constant %struct.si_sm_handlers, align 4
@smic_smi_handlers = external dso_local constant %struct.si_sm_handlers, align 4
@bt_smi_handlers = external dso_local constant %struct.si_sm_handlers, align 4
@smi_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@try_smi_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.7, i32 1974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ipmi_si: IPMI interface added with no device\0A\00", [48 x i8] zeroinitializer }, align 32
@try_smi_init._entry_ptr.43 = internal global ptr @try_smi_init._entry.41, section ".printk_index", align 4
@try_smi_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.7, i32 1991, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not set up I/O space\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@try_smi_init._entry_ptr.47 = internal global ptr @try_smi_init._entry.44, section ".printk_index", align 4
@try_smi_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.7, i32 1999, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Interface detection failed\0A\00", [36 x i8] zeroinitializer }, align 32
@try_smi_init._entry_ptr.50 = internal global ptr @try_smi_init._entry.48, section ".printk_index", align 4
@try_smi_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.40, ptr @.str.7, i32 2012, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"There appears to be no BMC at this location\0A\00", [51 x i8] zeroinitializer }, align 32
@try_smi_init._entry_ptr.53 = internal global ptr @try_smi_init._entry.51, section ".printk_index", align 4
@ipmi_si_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ipmi_si_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@try_smi_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.40, ptr @.str.7, i32 2054, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to add device attributes: error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@try_smi_init._entry_ptr.56 = internal global ptr @try_smi_init._entry.54, section ".printk_index", align 4
@handlers = internal constant { %struct.ipmi_smi_handlers, [48 x i8] } { %struct.ipmi_smi_handlers { ptr null, i32 0, ptr @smi_start_processing, ptr @shutdown_smi, ptr @get_smi_info, ptr @sender, ptr @request_events, ptr @set_need_watch, ptr @flush_messages, ptr @set_run_to_completion, ptr @poll, ptr @set_maintenance_mode }, [48 x i8] zeroinitializer }, align 32
@try_smi_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.40, ptr @.str.7, i32 2066, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to register device: error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@try_smi_init._entry_ptr.59 = internal global ptr @try_smi_init._entry.57, section ".printk_index", align 4
@try_smi_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.40, ptr @.str.7, i32 2074, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IPMI %s interface initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@try_smi_init._entry_ptr.62 = internal global ptr @try_smi_init._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i/o\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@try_get_dev_id._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.try_get_dev_id = private unnamed_addr constant [15 x i8] c"try_get_dev_id\00", align 1
@try_get_dev_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @__func__.try_get_dev_id, ptr @.str.7, i32 1348, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BMC returned 0x%2.2x, retry get bmc device id\0A\00", [49 x i8] zeroinitializer }, align 32
@try_get_dev_id._entry_ptr = internal global ptr @try_get_dev_id._entry, section ".printk_index", align 4
@dell_poweredge_bt_xaction_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dell_poweredge_bt_xaction_handler, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@check_clr_rcv_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.7, i32 1472, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot check clearing the rcv irq: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_clr_rcv_irq\00", [46 x i8] zeroinitializer }, align 32
@check_clr_rcv_irq._entry_ptr = internal global ptr @check_clr_rcv_irq._entry, section ".printk_index", align 4
@check_clr_rcv_irq._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.7, i32 1482, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"The BMC does not support clearing the recv irq bit, compensating, but the BMC needs to be fixed.\0A\00", [62 x i8] zeroinitializer }, align 32
@check_clr_rcv_irq._entry_ptr.70 = internal global ptr @check_clr_rcv_irq._entry.68, section ".printk_index", align 4
@get_global_enables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.7, i32 1377, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Error getting response from get global enables command: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_global_enables\00", [45 x i8] zeroinitializer }, align 32
@get_global_enables._entry_ptr = internal global ptr @get_global_enables._entry, section ".printk_index", align 4
@get_global_enables._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.7, i32 1390, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Invalid return from get global enables command: %ld %x %x %x\0A\00", [34 x i8] zeroinitializer }, align 32
@get_global_enables._entry_ptr.75 = internal global ptr @get_global_enables._entry.73, section ".printk_index", align 4
@set_global_enables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.7, i32 1425, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Error getting response from set global enables command: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_global_enables\00", [45 x i8] zeroinitializer }, align 32
@set_global_enables._entry_ptr = internal global ptr @set_global_enables._entry, section ".printk_index", align 4
@set_global_enables._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.7, i32 1437, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Invalid return from set global enables command: %ld %x %x\0A\00", [37 x i8] zeroinitializer }, align 32
@set_global_enables._entry_ptr.80 = internal global ptr @set_global_enables._entry.78, section ".printk_index", align 4
@check_set_rcv_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.7, i32 1508, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot check setting the rcv irq: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_set_rcv_irq\00", [46 x i8] zeroinitializer }, align 32
@check_set_rcv_irq._entry_ptr = internal global ptr @check_set_rcv_irq._entry, section ".printk_index", align 4
@check_set_rcv_irq._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.7, i32 1518, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"The BMC does not support setting the recv irq bit, compensating, but the BMC needs to be fixed.\0A\00", [63 x i8] zeroinitializer }, align 32
@check_set_rcv_irq._entry_ptr.85 = internal global ptr @check_set_rcv_irq._entry.83, section ".printk_index", align 4
@try_enable_event_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.7, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\014ipmi_si: Error getting response from get global enables command, the event buffer is not enabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"try_enable_event_buffer\00", [40 x i8] zeroinitializer }, align 32
@try_enable_event_buffer._entry_ptr = internal global ptr @try_enable_event_buffer._entry, section ".printk_index", align 4
@try_enable_event_buffer._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.7, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014ipmi_si: Invalid return from get global enables command, cannot enable the event buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@try_enable_event_buffer._entry_ptr.90 = internal global ptr @try_enable_event_buffer._entry.88, section ".printk_index", align 4
@try_enable_event_buffer._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.7, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\014ipmi_si: Error getting response from set global, enables command, the event buffer is not enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@try_enable_event_buffer._entry_ptr.93 = internal global ptr @try_enable_event_buffer._entry.91, section ".printk_index", align 4
@try_enable_event_buffer._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.7, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014ipmi_si: Invalid return from get global, enables command, not enable the event buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@try_enable_event_buffer._entry_ptr.96 = internal global ptr @try_enable_event_buffer._entry.94, section ".printk_index", align 4
@ipmi_si_dev_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @dev_attr_type, ptr @dev_attr_interrupts_enabled, ptr @dev_attr_short_timeouts, ptr @dev_attr_long_timeouts, ptr @dev_attr_idles, ptr @dev_attr_interrupts, ptr @dev_attr_attentions, ptr @dev_attr_flag_fetches, ptr @dev_attr_hosed_count, ptr @dev_attr_complete_transactions, ptr @dev_attr_events, ptr @dev_attr_watchdog_pretimeouts, ptr @dev_attr_incoming_messages, ptr @dev_attr_params, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_interrupts_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interrupts_enabled_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_short_timeouts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @short_timeouts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_long_timeouts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @long_timeouts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_idles = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idles_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_interrupts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interrupts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_attentions = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attentions_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flag_fetches = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @flag_fetches_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hosed_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hosed_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_complete_transactions = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @complete_transactions_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_events = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @events_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_watchdog_pretimeouts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @watchdog_pretimeouts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_incoming_messages = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @incoming_messages_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_params = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @params_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"interrupts_enabled\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"short_timeouts\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"long_timeouts\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"idles\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupts\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"attentions\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flag_fetches\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hosed_count\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"complete_transactions\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"watchdog_pretimeouts\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"incoming_messages\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"params\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s,%s,0x%lx,rsp=%d,rsi=%d,rsh=%d,irq=%d,ipmb=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@smi_start_processing.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&new_smi->si_timer)\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kipmi%d\00", [24 x i8] zeroinitializer }, align 32
@smi_start_processing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.7, i32 1175, ptr @.str.119, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Could not start kernel thread due to error %ld, only using timers to drive the interface\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smi_start_processing\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@smi_start_processing._entry_ptr = internal global ptr @smi_start_processing._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_ipmi_si._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.7, i32 2097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ipmi_si: IPMI System Interface driver\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_ipmi_si\00", [19 x i8] zeroinitializer }, align 32
@init_ipmi_si._entry_ptr = internal global ptr @init_ipmi_si._entry, section ".printk_index", align 4
@init_ipmi_si._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.7, i32 2146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014ipmi_si: Unable to find any System Interface(s)\0A\00", [45 x i8] zeroinitializer }, align 32
@init_ipmi_si._entry_ptr.124 = internal global ptr @init_ipmi_si._entry.122, section ".printk_index", align 4
@switch.table.try_smi_init = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @kcs_smi_handlers, ptr @smic_smi_handlers, ptr @bt_smi_handlers], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.125 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 1]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.130 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 74, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 74, i32 46 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 74, i32 53 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 74, i32 61 }
@___asan_gen_.145 = private unnamed_addr constant [10 x i8] c"si_to_str\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 74, i32 19 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"unload_when_empty\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 260, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1266, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1269, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1275, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1878, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1896, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"smi_infos_lock\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1906, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1911, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1921, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"smi_infos\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1219, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant [12 x i8] c"initialized\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 594, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 686, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 724, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [22 x i8] c"xaction_notifier_list\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 278, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"num_force_kipmid\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 255, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant [13 x i8] c"force_kipmid\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 254, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant [16 x i8] c"num_max_busy_us\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 258, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant [19 x i8] c"kipmid_max_busy_us\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 257, i32 21 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1220, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1944, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [18 x i8] c"addr_space_to_str\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1223, i32 27 }
@___asan_gen_.287 = private unnamed_addr constant [8 x i8] c"smi_num\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1221, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1974, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1991, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1998, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2011, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant [23 x i8] c"ipmi_si_dev_attr_group\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1680, i32 37 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2052, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [9 x i8] c"handlers\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1205, i32 39 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2064, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2073, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1223, i32 51 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1223, i32 58 }
@___asan_gen_.347 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1346, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant [35 x i8] c"dell_poweredge_bt_xaction_notifier\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1789, i32 30 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1471, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1481, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1375, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1388, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1423, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1435, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1507, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1517, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1541, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1552, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1570, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1580, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [18 x i8] c"ipmi_si_dev_attrs\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1662, i32 26 }
@___asan_gen_.449 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [28 x i8] c"dev_attr_interrupts_enabled\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [24 x i8] c"dev_attr_short_timeouts\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [23 x i8] c"dev_attr_long_timeouts\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [15 x i8] c"dev_attr_idles\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c"dev_attr_interrupts\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c"dev_attr_attentions\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [22 x i8] c"dev_attr_flag_fetches\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [21 x i8] c"dev_attr_hosed_count\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [31 x i8] c"dev_attr_complete_transactions\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [16 x i8] c"dev_attr_events\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [30 x i8] c"dev_attr_watchdog_pretimeouts\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [27 x i8] c"dev_attr_incoming_messages\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [16 x i8] c"dev_attr_params\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1618, i32 8 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1616, i32 25 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1629, i32 8 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1627, i32 25 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1631, i32 1 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1632, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1633, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1634, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1635, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1636, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1637, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1638, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1639, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1640, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1641, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1660, i32 8 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1650, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1147, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1170, i32 21 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1173, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2097, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.579 = private constant [36 x i8] c"../drivers/char/ipmi/ipmi_si_intf.c\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2146, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant [26 x i8] c"switch.table.try_smi_init\00", align 1
@llvm.compiler.used = appending global [200 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_force_kipmid229, ptr @__UNIQUE_ID_force_kipmidtype228, ptr @__UNIQUE_ID_kipmid_max_busy_us233, ptr @__UNIQUE_ID_kipmid_max_busy_ustype232, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_unload_when_empty231, ptr @__UNIQUE_ID_unload_when_emptytype230, ptr @__exitcall_cleanup_ipmi_si, ptr @__initcall__kmod_ipmi_si__234_2153_init_ipmi_si6, ptr @__param_force_kipmid, ptr @__param_kipmid_max_busy_us, ptr @__param_unload_when_empty, ptr @check_clr_rcv_irq._entry, ptr @check_clr_rcv_irq._entry.68, ptr @check_clr_rcv_irq._entry_ptr, ptr @check_clr_rcv_irq._entry_ptr.70, ptr @check_set_rcv_irq._entry, ptr @check_set_rcv_irq._entry.83, ptr @check_set_rcv_irq._entry_ptr, ptr @check_set_rcv_irq._entry_ptr.85, ptr @get_global_enables._entry, ptr @get_global_enables._entry.73, ptr @get_global_enables._entry_ptr, ptr @get_global_enables._entry_ptr.75, ptr @handle_transaction_done._entry, ptr @handle_transaction_done._entry.29, ptr @handle_transaction_done._entry.33, ptr @handle_transaction_done._entry_ptr, ptr @handle_transaction_done._entry_ptr.31, ptr @handle_transaction_done._entry_ptr.35, ptr @init_ipmi_si._entry, ptr @init_ipmi_si._entry.122, ptr @init_ipmi_si._entry_ptr, ptr @init_ipmi_si._entry_ptr.124, ptr @ipmi_si_add_smi._entry, ptr @ipmi_si_add_smi._entry.17, ptr @ipmi_si_add_smi._entry.20, ptr @ipmi_si_add_smi._entry.23, ptr @ipmi_si_add_smi._entry_ptr, ptr @ipmi_si_add_smi._entry_ptr.19, ptr @ipmi_si_add_smi._entry_ptr.22, ptr @ipmi_si_add_smi._entry_ptr.25, ptr @ipmi_std_irq_setup._entry, ptr @ipmi_std_irq_setup._entry.10, ptr @ipmi_std_irq_setup._entry_ptr, ptr @ipmi_std_irq_setup._entry_ptr.13, ptr @set_global_enables._entry, ptr @set_global_enables._entry.78, ptr @set_global_enables._entry_ptr, ptr @set_global_enables._entry_ptr.80, ptr @smi_start_processing._entry, ptr @smi_start_processing._entry_ptr, ptr @try_enable_event_buffer._entry, ptr @try_enable_event_buffer._entry.88, ptr @try_enable_event_buffer._entry.91, ptr @try_enable_event_buffer._entry.94, ptr @try_enable_event_buffer._entry_ptr, ptr @try_enable_event_buffer._entry_ptr.90, ptr @try_enable_event_buffer._entry_ptr.93, ptr @try_enable_event_buffer._entry_ptr.96, ptr @try_get_dev_id._entry, ptr @try_get_dev_id._entry_ptr, ptr @try_smi_init._entry, ptr @try_smi_init._entry.41, ptr @try_smi_init._entry.44, ptr @try_smi_init._entry.48, ptr @try_smi_init._entry.51, ptr @try_smi_init._entry.54, ptr @try_smi_init._entry.57, ptr @try_smi_init._entry.60, ptr @try_smi_init._entry_ptr, ptr @try_smi_init._entry_ptr.43, ptr @try_smi_init._entry_ptr.47, ptr @try_smi_init._entry_ptr.50, ptr @try_smi_init._entry_ptr.53, ptr @try_smi_init._entry_ptr.56, ptr @try_smi_init._entry_ptr.59, ptr @try_smi_init._entry_ptr.62, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @si_to_str, ptr @unload_when_empty, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @ipmi_si_add_smi.__key, ptr @.str.16, ptr @smi_infos_lock, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @smi_infos, ptr @initialized, ptr @handle_transaction_done._rs, ptr @.str.26, ptr @.str.27, ptr @handle_transaction_done._rs.28, ptr @.str.30, ptr @handle_transaction_done._rs.32, ptr @.str.34, ptr @xaction_notifier_list, ptr @.str.36, ptr @num_force_kipmid, ptr @force_kipmid, ptr @num_max_busy_us, ptr @kipmid_max_busy_us, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @addr_space_to_str, ptr @smi_num, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @ipmi_si_dev_attr_group, ptr @.str.55, ptr @handlers, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @try_get_dev_id._rs, ptr @.str.65, ptr @dell_poweredge_bt_xaction_notifier, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @ipmi_si_dev_attrs, ptr @dev_attr_type, ptr @dev_attr_interrupts_enabled, ptr @dev_attr_short_timeouts, ptr @dev_attr_long_timeouts, ptr @dev_attr_idles, ptr @dev_attr_interrupts, ptr @dev_attr_attentions, ptr @dev_attr_flag_fetches, ptr @dev_attr_hosed_count, ptr @dev_attr_complete_transactions, ptr @dev_attr_events, ptr @dev_attr_watchdog_pretimeouts, ptr @dev_attr_incoming_messages, ptr @dev_attr_params, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @smi_start_processing.__key, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @switch.table.try_smi_init], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_to_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unload_when_empty to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_std_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_std_irq_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_add_smi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_add_smi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_infos_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_add_smi._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_add_smi._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_add_smi._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_infos to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_transaction_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_transaction_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_transaction_done._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_transaction_done._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_transaction_done._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_transaction_done._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xaction_notifier_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_force_kipmid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_kipmid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_max_busy_us to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kipmid_max_busy_us to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_smi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_space_to_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_smi_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_smi_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_smi_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_smi_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_smi_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handlers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_smi_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_smi_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_get_dev_id._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_get_dev_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dell_poweredge_bt_xaction_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_clr_rcv_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_clr_rcv_irq._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_global_enables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_global_enables._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_global_enables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_global_enables._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_set_rcv_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_set_rcv_irq._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_enable_event_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_enable_event_buffer._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_enable_event_buffer._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_enable_event_buffer._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_dev_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interrupts_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_short_timeouts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_long_timeouts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_idles to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interrupts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_attentions to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flag_fetches to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hosed_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_complete_transactions to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_events to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_watchdog_pretimeouts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_incoming_messages to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_start_processing.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_start_processing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_si._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_si._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.try_smi_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipmi_si_irq_handler(i32 %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si_type = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 8, i32 18
  %0 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %si_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %io = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 8
  %outputb = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %outputb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outputb, align 4
  tail call void %3(ptr noundef %io, i32 noundef 2, i8 noundef zeroext 3) #11
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %si_lock = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %si_lock) #11
  %arrayidx = getelementptr %struct.smi_info, ptr %data, i32 0, i32 27, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #11, !srcloc !306
  %call8 = tail call fastcc i32 @smi_event_handler(ptr noundef %data, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %si_lock, i32 noundef %call5) #11
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smi_event_handler(ptr noundef %smi_info, i32 noundef %time) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [2 x i8], align 1
  %msg6.i = alloca [4 x i8], align 4
  %msg24.i = alloca [3 x i8], align 1
  %msg98.i = alloca [4 x i8], align 4
  %msg169.i = alloca [4 x i8], align 4
  %msg = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handlers = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %si_sm = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %arrayidx9 = getelementptr %struct.smi_info, ptr %smi_info, i32 0, i32 27, i32 6
  %si_state = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %curr_msg = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 6
  %intf.i.i114 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 1
  %arrayidx = getelementptr %struct.smi_info, ptr %smi_info, i32 0, i32 27, i32 7
  %0 = getelementptr inbounds [4 x i8], ptr %msg169.i, i32 0, i32 2
  %dev188.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %supports_event_msg_buff195.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 20
  %timer_can_start.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 15
  %last_timeout_jiffies.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 17
  %si_timer.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 14
  %timer_running.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 16
  %thread.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 28
  %1 = getelementptr inbounds [4 x i8], ptr %msg98.i, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %msg98.i, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %msg98.i, i32 0, i32 3
  %irq.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 13
  %interrupt_disabled.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 19
  %cannot_disable_irq.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 21
  %irq_enable_broken.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 22
  %si_type.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 18
  %io.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8
  %outputb.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 1
  %msg_flags89.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 10
  %arrayidx95.i = getelementptr %struct.smi_info, ptr %smi_info, i32 0, i32 27, i32 10
  %arrayidx68.i = getelementptr %struct.smi_info, ptr %smi_info, i32 0, i32 27, i32 8
  %4 = getelementptr inbounds [3 x i8], ptr %msg24.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %msg24.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %msg6.i, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %msg6.i, i32 0, i32 3
  %got_attn = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 24
  %8 = getelementptr inbounds [2 x i8], ptr %msg, i32 0, i32 1
  %arrayidx23 = getelementptr %struct.smi_info, ptr %smi_info, i32 0, i32 27, i32 4
  %arrayidx32 = getelementptr %struct.smi_info, ptr %smi_info, i32 0, i32 27, i32 2
  %waiting_msg.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 5
  %req_events = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 12
  %9 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %.sink214 = phi i32 [ %time, %entry ], [ %.sink214.be, %while.cond.backedge ]
  %10 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handlers, align 4
  %event2 = getelementptr inbounds %struct.si_sm_handlers, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event2, align 4
  %14 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %si_sm, align 4
  %call4 = call i32 %13(ptr noundef %15, i32 noundef %.sink214) #11
  %16 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %lor.lhs.false [
    i32 0, label %while.cond.while.cond.backedge_crit_edge
    i32 3, label %if.then
    i32 5, label %if.then7
    i32 6, label %while.cond.if.then15_crit_edge
  ]

while.cond.if.then15_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

while.cond.while.cond.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %start_getting_events.exit, %start_check_enables.exit, %if.then10.i, %if.end.i133.while.cond.backedge_crit_edge, %if.else.i128.while.cond.backedge_crit_edge, %cleanup, %if.then11, %if.then7.while.cond.backedge_crit_edge, %cleanup208.i, %cleanup.i, %if.else93.i, %if.then87.i, %if.else67.i, %if.then63.i, %if.end44.i, %if.end22.i, %if.end.i, %sw.bb.i.while.cond.backedge_crit_edge, %if.then.while.cond.backedge_crit_edge, %while.cond.while.cond.backedge_crit_edge
  %.sink214.be = phi i32 [ %call4, %while.cond.while.cond.backedge_crit_edge ], [ 0, %start_check_enables.exit ], [ 0, %start_getting_events.exit ], [ 0, %if.then10.i ], [ 0, %if.end.i133.while.cond.backedge_crit_edge ], [ 0, %if.else.i128.while.cond.backedge_crit_edge ], [ 0, %if.then7.while.cond.backedge_crit_edge ], [ 0, %if.then11 ], [ 0, %cleanup208.i ], [ 0, %cleanup.i ], [ 0, %if.else93.i ], [ 0, %if.then87.i ], [ 0, %if.else67.i ], [ 0, %if.then63.i ], [ 0, %if.end44.i ], [ 0, %if.end22.i ], [ 0, %if.end.i ], [ 0, %sw.bb.i.while.cond.backedge_crit_edge ], [ 0, %if.then.while.cond.backedge_crit_edge ], [ 0, %cleanup ]
  br label %while.cond

if.then:                                          ; preds = %while.cond
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #11
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #11, !srcloc !306
  %18 = ptrtoint ptr %si_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %si_state, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %19, label %if.then.while.cond.backedge_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 3, label %sw.bb23.i
    i32 2, label %sw.bb46.i
    i32 4, label %sw.bb70.i
    i32 5, label %sw.bb97.i
    i32 6, label %sw.bb168.i
  ]

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

sw.bb.i:                                          ; preds = %if.then
  %21 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %curr_msg, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %sw.bb.i.while.cond.backedge_crit_edge, label %if.end.i

sw.bb.i.while.cond.backedge_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handlers, align 4
  %get_result.i = getelementptr inbounds %struct.si_sm_handlers, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %get_result.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_result.i, align 4
  %27 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %si_sm, align 4
  %rsp.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %22, i32 0, i32 7
  %call.i = call i32 %26(ptr noundef %28, ptr noundef %rsp.i, i32 noundef 272) #11
  %29 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %curr_msg, align 4
  %rsp_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i, ptr %rsp_size.i, align 4
  %32 = load ptr, ptr %curr_msg, align 4
  store ptr null, ptr %curr_msg, align 4
  %33 = ptrtoint ptr %intf.i.i114 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf.i.i114, align 4
  call void @ipmi_smi_msg_received(ptr noundef %34, ptr noundef %32) #11
  br label %while.cond.backedge

sw.bb5.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg6.i) #11
  %35 = ptrtoint ptr %msg6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %msg6.i, align 4
  %36 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handlers, align 4
  %get_result8.i = getelementptr inbounds %struct.si_sm_handlers, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %get_result8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_result8.i, align 4
  %40 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %si_sm, align 4
  %call11.i = call i32 %39(ptr noundef %41, ptr noundef nonnull %msg6.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp.not.i = icmp eq i8 %43, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %si_state, align 4
  br label %if.end22.i

if.else.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call11.i)
  %cmp15.i = icmp ult i32 %call11.i, 4
  br i1 %cmp15.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %si_state, align 4
  br label %if.end22.i

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %7, align 1
  %48 = ptrtoint ptr %msg_flags89.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %msg_flags89.i, align 4
  call fastcc void @handle_flags(ptr noundef %smi_info) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else19.i, %if.then17.i, %if.then13.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg6.i) #11
  br label %while.cond.backedge

sw.bb23.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg24.i) #11
  %49 = ptrtoint ptr %msg24.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %msg24.i, align 1, !annotation !307
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %4, align 1, !annotation !307
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %5, align 1, !annotation !307
  %52 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handlers, align 4
  %get_result26.i = getelementptr inbounds %struct.si_sm_handlers, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %get_result26.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_result26.i, align 4
  %56 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %si_sm, align 4
  %call29.i = call i32 %55(ptr noundef %57, ptr noundef nonnull %msg24.i, i32 noundef 3) #11
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp32.not.i = icmp eq i8 %59, 0
  br i1 %cmp32.not.i, label %sw.bb23.i.if.end44.i_crit_edge, label %do.body.i

sw.bb23.i.if.end44.i_crit_edge:                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

do.body.i:                                        ; preds = %sw.bb23.i
  %call35.i = call i32 @___ratelimit(ptr noundef nonnull @handle_transaction_done._rs, ptr noundef nonnull @__func__.handle_transaction_done) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %do.body.i.if.end44.i_crit_edge, label %do.end.i

do.body.i.if.end44.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %dev188.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev188.i, align 4
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %5, align 1
  %conv40.i = zext i8 %63 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.27, i32 noundef %conv40.i) #14
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end.i, %do.body.i.if.end44.i_crit_edge, %sw.bb23.i.if.end44.i_crit_edge
  %64 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %si_state, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg24.i) #11
  br label %while.cond.backedge

sw.bb46.i:                                        ; preds = %if.then
  %65 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %handlers, align 4
  %get_result48.i = getelementptr inbounds %struct.si_sm_handlers, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %get_result48.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %get_result48.i, align 4
  %69 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %si_sm, align 4
  %71 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %curr_msg, align 4
  %rsp51.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %72, i32 0, i32 7
  %call53.i = call i32 %68(ptr noundef %70, ptr noundef %rsp51.i, i32 noundef 272) #11
  %73 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %curr_msg, align 4
  %rsp_size55.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %rsp_size55.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call53.i, ptr %rsp_size55.i, align 4
  %76 = load ptr, ptr %curr_msg, align 4
  store ptr null, ptr %curr_msg, align 4
  %arrayidx59.i = getelementptr %struct.ipmi_smi_msg, ptr %76, i32 0, i32 7, i32 2
  %77 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx59.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp61.not.i = icmp eq i8 %78, 0
  br i1 %cmp61.not.i, label %if.else67.i, label %if.then63.i

if.then63.i:                                      ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #13
  %done.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %76, i32 0, i32 8
  %79 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %done.i, align 4
  call void %80(ptr noundef %76) #11
  %81 = ptrtoint ptr %msg_flags89.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %msg_flags89.i, align 4
  %83 = and i8 %82, -3
  store i8 %83, ptr %msg_flags89.i, align 4
  call fastcc void @handle_flags(ptr noundef %smi_info) #11
  br label %while.cond.backedge

if.else67.i:                                      ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx68.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx68.i, i32 1, i32 3, i32 1) #11
  %84 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx68.i, ptr %arrayidx68.i, i32 1, ptr elementtype(i32) %arrayidx68.i) #11, !srcloc !306
  call fastcc void @handle_flags(ptr noundef %smi_info) #11
  %85 = ptrtoint ptr %intf.i.i114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %intf.i.i114, align 4
  call void @ipmi_smi_msg_received(ptr noundef %86, ptr noundef %76) #11
  br label %while.cond.backedge

sw.bb70.i:                                        ; preds = %if.then
  %87 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %handlers, align 4
  %get_result72.i = getelementptr inbounds %struct.si_sm_handlers, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %get_result72.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %get_result72.i, align 4
  %91 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %si_sm, align 4
  %93 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %curr_msg, align 4
  %rsp75.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %94, i32 0, i32 7
  %call77.i = call i32 %90(ptr noundef %92, ptr noundef %rsp75.i, i32 noundef 272) #11
  %95 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %curr_msg, align 4
  %rsp_size79.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %rsp_size79.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call77.i, ptr %rsp_size79.i, align 4
  %98 = load ptr, ptr %curr_msg, align 4
  store ptr null, ptr %curr_msg, align 4
  %arrayidx83.i = getelementptr %struct.ipmi_smi_msg, ptr %98, i32 0, i32 7, i32 2
  %99 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx83.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp85.not.i = icmp eq i8 %100, 0
  br i1 %cmp85.not.i, label %if.else93.i, label %if.then87.i

if.then87.i:                                      ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #13
  %done88.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %98, i32 0, i32 8
  %101 = ptrtoint ptr %done88.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %done88.i, align 4
  call void %102(ptr noundef %98) #11
  %103 = ptrtoint ptr %msg_flags89.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %msg_flags89.i, align 4
  %105 = and i8 %104, -2
  store i8 %105, ptr %msg_flags89.i, align 4
  call fastcc void @handle_flags(ptr noundef %smi_info) #11
  br label %while.cond.backedge

if.else93.i:                                      ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i284.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx95.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx95.i, i32 1, i32 3, i32 1) #11
  %106 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx95.i, ptr %arrayidx95.i, i32 1, ptr elementtype(i32) %arrayidx95.i) #11, !srcloc !306
  call fastcc void @handle_flags(ptr noundef %smi_info) #11
  %107 = ptrtoint ptr %intf.i.i114 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %intf.i.i114, align 4
  call void @ipmi_smi_msg_received(ptr noundef %108, ptr noundef %98) #11
  br label %while.cond.backedge

sw.bb97.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg98.i) #11
  %109 = ptrtoint ptr %msg98.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %msg98.i, align 4
  %110 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %handlers, align 4
  %get_result100.i = getelementptr inbounds %struct.si_sm_handlers, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %get_result100.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %get_result100.i, align 4
  %114 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %si_sm, align 4
  %call103.i = call i32 %113(ptr noundef %115, ptr noundef nonnull %msg98.i, i32 noundef 4) #11
  %116 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp106.not.i = icmp eq i8 %117, 0
  br i1 %cmp106.not.i, label %if.end124.i, label %do.body109.i

do.body109.i:                                     ; preds = %sw.bb97.i
  %call110.i = call i32 @___ratelimit(ptr noundef nonnull @handle_transaction_done._rs.28, ptr noundef nonnull @__func__.handle_transaction_done) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %do.body109.i.cleanup.i_crit_edge, label %do.end115.i

do.body109.i.cleanup.i_crit_edge:                 ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

do.end115.i:                                      ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %dev188.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev188.i, align 4
  %120 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %2, align 2
  %conv119.i = zext i8 %121 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.30, i32 noundef %conv119.i) #14
  br label %cleanup.i

if.end124.i:                                      ; preds = %sw.bb97.i
  %122 = ptrtoint ptr %supports_event_msg_buff195.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %supports_event_msg_buff195.i, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i.i = icmp eq i8 %123, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i8 0, i8 4
  %124 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool2.not.i.i = icmp eq i32 %125, 0
  br i1 %tobool2.not.i.i, label %if.end124.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i.i

if.end124.i.lor.lhs.false.i.i_crit_edge:          ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %if.end124.i
  %126 = ptrtoint ptr %interrupt_disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %interrupt_disabled.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool3.not.i.i = icmp eq i8 %127, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.land.lhs.true6.i.i_crit_edge, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true.i.i.land.lhs.true6.i.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true6.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, %if.end124.i.lor.lhs.false.i.i_crit_edge
  %128 = ptrtoint ptr %cannot_disable_irq.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %cannot_disable_irq.i.i, align 2, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool4.not.i.i = icmp eq i8 %129, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.if.end12.i.i_crit_edge, label %lor.lhs.false.i.i.land.lhs.true6.i.i_crit_edge

lor.lhs.false.i.i.land.lhs.true6.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true6.i.i

lor.lhs.false.i.i.if.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

land.lhs.true6.i.i:                               ; preds = %lor.lhs.false.i.i.land.lhs.true6.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true6.i.i_crit_edge
  %130 = ptrtoint ptr %irq_enable_broken.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %irq_enable_broken.i.i, align 1, !range !308
  %132 = or i8 %131, %spec.select.i.i
  %spec.select1.i.i = xor i8 %132, 1
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %land.lhs.true6.i.i, %lor.lhs.false.i.i.if.end12.i.i_crit_edge
  %enables.1.i.i = phi i8 [ %spec.select.i.i, %lor.lhs.false.i.i.if.end12.i.i_crit_edge ], [ %spec.select1.i.i, %land.lhs.true6.i.i ]
  %brmerge.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool2.not.i.i
  br i1 %brmerge.i.i, label %if.end12.i.i.current_global_enables.exit.i_crit_edge, label %land.lhs.true20.i.i

if.end12.i.i.current_global_enables.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %current_global_enables.exit.i

land.lhs.true20.i.i:                              ; preds = %if.end12.i.i
  %133 = ptrtoint ptr %interrupt_disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %interrupt_disabled.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool22.not.i.i = icmp eq i8 %134, 0
  br i1 %tobool22.not.i.i, label %land.lhs.true23.i.i, label %land.lhs.true20.i.i.current_global_enables.exit.i_crit_edge

land.lhs.true20.i.i.current_global_enables.exit.i_crit_edge: ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %current_global_enables.exit.i

land.lhs.true23.i.i:                              ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %irq_enable_broken.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %irq_enable_broken.i.i, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool25.not.i.i = icmp eq i8 %136, 0
  %137 = or i8 %enables.1.i.i, 2
  %spec.select2.i.i = select i1 %tobool25.not.i.i, i8 %137, i8 %enables.1.i.i
  br label %current_global_enables.exit.i

current_global_enables.exit.i:                    ; preds = %land.lhs.true23.i.i, %land.lhs.true20.i.i.current_global_enables.exit.i_crit_edge, %if.end12.i.i.current_global_enables.exit.i_crit_edge
  %enables.2.i.i = phi i8 [ %enables.1.i.i, %land.lhs.true20.i.i.current_global_enables.exit.i_crit_edge ], [ %enables.1.i.i, %if.end12.i.i.current_global_enables.exit.i_crit_edge ], [ %spec.select2.i.i, %land.lhs.true23.i.i ]
  %138 = and i8 %enables.2.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool32.i.i = icmp ne i8 %138, 0
  %frombool.i.i = zext i1 %tobool32.i.i to i8
  %139 = ptrtoint ptr %si_type.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %si_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %cmp127.i = icmp eq i32 %140, 3
  br i1 %cmp127.i, label %if.then129.i, label %current_global_enables.exit.i.if.end131.i_crit_edge

current_global_enables.exit.i.if.end131.i_crit_edge: ; preds = %current_global_enables.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

if.then129.i:                                     ; preds = %current_global_enables.exit.i
  %141 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %io.i.i, align 4
  %call.i.i110 = call zeroext i8 %142(ptr noundef %io.i.i, i32 noundef 2) #11
  %143 = and i8 %call.i.i110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %144 = icmp eq i8 %143, 0
  %cmp.i.i = xor i1 %tobool32.i.i, %144
  br i1 %cmp.i.i, label %if.then129.i.if.end131.i_crit_edge, label %if.end.i.i

if.then129.i.if.end131.i_crit_edge:               ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

if.end.i.i:                                       ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %outputb.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %outputb.i.i, align 4
  call void %146(ptr noundef %io.i.i, i32 noundef 2, i8 noundef zeroext %frombool.i.i) #11
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end.i.i, %if.then129.i.if.end131.i_crit_edge, %current_global_enables.exit.i.if.end131.i_crit_edge
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %3, align 1
  %149 = and i8 %148, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %enables.2.i.i, i8 %149)
  %cmp136.not.i = icmp eq i8 %enables.2.i.i, %149
  br i1 %cmp136.not.i, label %if.else152.i, label %if.then138.i

if.then138.i:                                     ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %msg98.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 24, ptr %msg98.i, align 4
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 46, ptr %1, align 1
  %152 = and i8 %148, -8
  %or283.i = or i8 %152, %enables.2.i.i
  %153 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %or283.i, ptr %2, align 2
  %154 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %handlers, align 4
  %start_transaction.i = getelementptr inbounds %struct.si_sm_handlers, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %start_transaction.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %start_transaction.i, align 4
  %158 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %si_sm, align 4
  %call150.i = call i32 %157(ptr noundef %159, ptr noundef nonnull %msg98.i, i32 noundef 3) #11
  br label %cleanup.i

if.else152.i:                                     ; preds = %if.end131.i
  %160 = ptrtoint ptr %supports_event_msg_buff195.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %supports_event_msg_buff195.i, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool153.not.i = icmp eq i8 %161, 0
  br i1 %tobool153.not.i, label %if.else152.i.cleanup.i_crit_edge, label %if.then154.i

if.else152.i.cleanup.i_crit_edge:                 ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then154.i:                                     ; preds = %if.else152.i
  %call155.i = call ptr @ipmi_alloc_smi_msg() #11
  %162 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call155.i, ptr %curr_msg, align 4
  %tobool158.not.i = icmp eq ptr %call155.i, null
  br i1 %tobool158.not.i, label %if.then154.i.cleanup.i_crit_edge, label %if.end161.i

if.then154.i.cleanup.i_crit_edge:                 ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end161.i:                                      ; preds = %if.then154.i
  %data.i162 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call155.i, i32 0, i32 5
  %163 = ptrtoint ptr %data.i162 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 24, ptr %data.i162, align 4
  %164 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %curr_msg, align 4
  %arrayidx3.i163 = getelementptr %struct.ipmi_smi_msg, ptr %165, i32 0, i32 5, i32 1
  %166 = ptrtoint ptr %arrayidx3.i163 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 53, ptr %arrayidx3.i163, align 1
  %167 = load ptr, ptr %curr_msg, align 4
  %data_size.i164 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %data_size.i164 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 2, ptr %data_size.i164, align 4
  %169 = load ptr, ptr %curr_msg, align 4
  %data_size8.i165 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %data_size8.i165 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %data_size8.i165, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %172 = load volatile i32, ptr @jiffies, align 128
  %173 = ptrtoint ptr %timer_can_start.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %timer_can_start.i.i.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i.i.i167 = icmp eq i8 %174, 0
  br i1 %tobool.not.i.i.i167, label %if.end161.i.smi_mod_timer.exit.i.i176_crit_edge, label %if.end.i.i.i173

if.end161.i.smi_mod_timer.exit.i.i176_crit_edge:  ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i176

if.end.i.i.i173:                                  ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i168 = add i32 %172, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %175 = load volatile i32, ptr @jiffies, align 128
  %176 = ptrtoint ptr %last_timeout_jiffies.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %last_timeout_jiffies.i.i.i.i, align 4
  %call.i.i.i171 = call i32 @mod_timer(ptr noundef %si_timer.i.i.i.i, i32 noundef %add.i.i168) #11
  %177 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %timer_running.i.i.i.i, align 1
  br label %smi_mod_timer.exit.i.i176

smi_mod_timer.exit.i.i176:                        ; preds = %if.end.i.i.i173, %if.end161.i.smi_mod_timer.exit.i.i176_crit_edge
  %178 = ptrtoint ptr %thread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %thread.i.i.i, align 4
  %tobool.not.i.i175 = icmp eq ptr %179, null
  br i1 %tobool.not.i.i175, label %smi_mod_timer.exit.i.i176.start_getting_events.exit185_crit_edge, label %if.then.i.i178

smi_mod_timer.exit.i.i176.start_getting_events.exit185_crit_edge: ; preds = %smi_mod_timer.exit.i.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_getting_events.exit185

if.then.i.i178:                                   ; preds = %smi_mod_timer.exit.i.i176
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i177 = call i32 @wake_up_process(ptr noundef nonnull %179) #11
  br label %start_getting_events.exit185

start_getting_events.exit185:                     ; preds = %if.then.i.i178, %smi_mod_timer.exit.i.i176.start_getting_events.exit185_crit_edge
  %data6.i179 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %169, i32 0, i32 5
  %180 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %handlers, align 4
  %start_transaction.i.i181 = getelementptr inbounds %struct.si_sm_handlers, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %start_transaction.i.i181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %start_transaction.i.i181, align 4
  %184 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %si_sm, align 4
  %call2.i.i183 = call i32 %183(ptr noundef %185, ptr noundef %data6.i179, i32 noundef %171) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %start_getting_events.exit185, %if.then154.i.cleanup.i_crit_edge, %if.else152.i.cleanup.i_crit_edge, %if.then138.i, %do.end115.i, %do.body109.i.cleanup.i_crit_edge
  %.sink = phi i32 [ 2, %start_getting_events.exit185 ], [ 6, %if.then138.i ], [ 0, %do.end115.i ], [ 0, %do.body109.i.cleanup.i_crit_edge ], [ 0, %if.then154.i.cleanup.i_crit_edge ], [ 0, %if.else152.i.cleanup.i_crit_edge ]
  %186 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %.sink, ptr %si_state, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg98.i) #11
  br label %while.cond.backedge

sw.bb168.i:                                       ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg169.i) #11
  %187 = ptrtoint ptr %msg169.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 -1, ptr %msg169.i, align 4
  %188 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %handlers, align 4
  %get_result171.i = getelementptr inbounds %struct.si_sm_handlers, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %get_result171.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %get_result171.i, align 4
  %192 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %si_sm, align 4
  %call174.i = call i32 %191(ptr noundef %193, ptr noundef nonnull %msg169.i, i32 noundef 4) #11
  %194 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %cmp177.not.i = icmp eq i8 %195, 0
  br i1 %cmp177.not.i, label %sw.bb168.i.if.end194.i_crit_edge, label %do.body180.i

sw.bb168.i.if.end194.i_crit_edge:                 ; preds = %sw.bb168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194.i

do.body180.i:                                     ; preds = %sw.bb168.i
  %call181.i = call i32 @___ratelimit(ptr noundef nonnull @handle_transaction_done._rs.32, ptr noundef nonnull @__func__.handle_transaction_done) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181.i)
  %tobool182.not.i = icmp eq i32 %call181.i, 0
  br i1 %tobool182.not.i, label %do.body180.i.if.end194.i_crit_edge, label %do.end186.i

do.body180.i.if.end194.i_crit_edge:               ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194.i

do.end186.i:                                      ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #13
  %196 = ptrtoint ptr %dev188.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev188.i, align 4
  %198 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %0, align 2
  %conv190.i = zext i8 %199 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %197, ptr noundef nonnull @.str.34, i32 noundef %conv190.i) #14
  br label %if.end194.i

if.end194.i:                                      ; preds = %do.end186.i, %do.body180.i.if.end194.i_crit_edge, %sw.bb168.i.if.end194.i_crit_edge
  %200 = ptrtoint ptr %supports_event_msg_buff195.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %supports_event_msg_buff195.i, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool196.not.i = icmp eq i8 %201, 0
  br i1 %tobool196.not.i, label %if.end194.i.cleanup208.i_crit_edge, label %if.then197.i

if.end194.i.cleanup208.i_crit_edge:               ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208.i

if.then197.i:                                     ; preds = %if.end194.i
  %call198.i = call ptr @ipmi_alloc_smi_msg() #11
  %202 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call198.i, ptr %curr_msg, align 4
  %tobool201.not.i = icmp eq ptr %call198.i, null
  br i1 %tobool201.not.i, label %if.then197.i.cleanup208.i_crit_edge, label %if.end204.i

if.then197.i.cleanup208.i_crit_edge:              ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup208.i

if.end204.i:                                      ; preds = %if.then197.i
  %data.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call198.i, i32 0, i32 5
  %203 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 24, ptr %data.i.i, align 4
  %204 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %curr_msg, align 4
  %arrayidx3.i.i = getelementptr %struct.ipmi_smi_msg, ptr %205, i32 0, i32 5, i32 1
  %206 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 53, ptr %arrayidx3.i.i, align 1
  %207 = load ptr, ptr %curr_msg, align 4
  %data_size.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 2, ptr %data_size.i.i, align 4
  %209 = load ptr, ptr %curr_msg, align 4
  %data_size8.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %data_size8.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %data_size8.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %212 = load volatile i32, ptr @jiffies, align 128
  %213 = ptrtoint ptr %timer_can_start.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %timer_can_start.i.i.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool.not.i.i.i.i = icmp eq i8 %214, 0
  br i1 %tobool.not.i.i.i.i, label %if.end204.i.smi_mod_timer.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.end204.i.smi_mod_timer.exit.i.i.i_crit_edge:   ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i = add i32 %212, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %215 = load volatile i32, ptr @jiffies, align 128
  %216 = ptrtoint ptr %last_timeout_jiffies.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %last_timeout_jiffies.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @mod_timer(ptr noundef %si_timer.i.i.i.i, i32 noundef %add.i.i.i) #11
  %217 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %timer_running.i.i.i.i, align 1
  br label %smi_mod_timer.exit.i.i.i

smi_mod_timer.exit.i.i.i:                         ; preds = %if.end.i.i.i.i, %if.end204.i.smi_mod_timer.exit.i.i.i_crit_edge
  %218 = ptrtoint ptr %thread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %thread.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %219, null
  br i1 %tobool.not.i.i.i, label %smi_mod_timer.exit.i.i.i.start_getting_events.exit.i_crit_edge, label %if.then.i.i.i

smi_mod_timer.exit.i.i.i.start_getting_events.exit.i_crit_edge: ; preds = %smi_mod_timer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_getting_events.exit.i

if.then.i.i.i:                                    ; preds = %smi_mod_timer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i287.i = call i32 @wake_up_process(ptr noundef nonnull %219) #11
  br label %start_getting_events.exit.i

start_getting_events.exit.i:                      ; preds = %if.then.i.i.i, %smi_mod_timer.exit.i.i.i.start_getting_events.exit.i_crit_edge
  %data6.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %209, i32 0, i32 5
  %220 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %handlers, align 4
  %start_transaction.i.i.i = getelementptr inbounds %struct.si_sm_handlers, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %start_transaction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %start_transaction.i.i.i, align 4
  %224 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %si_sm, align 4
  %call2.i.i.i = call i32 %223(ptr noundef %225, ptr noundef %data6.i.i, i32 noundef %211) #11
  br label %cleanup208.i

cleanup208.i:                                     ; preds = %start_getting_events.exit.i, %if.then197.i.cleanup208.i_crit_edge, %if.end194.i.cleanup208.i_crit_edge
  %.sink.i = phi i32 [ 2, %start_getting_events.exit.i ], [ 0, %if.then197.i.cleanup208.i_crit_edge ], [ 0, %if.end194.i.cleanup208.i_crit_edge ]
  %226 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %.sink.i, ptr %si_state, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg169.i) #11
  br label %while.cond.backedge

if.then7:                                         ; preds = %while.cond
  %call.i.i105 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx9, i32 1, i32 3, i32 1) #11
  %227 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx9, ptr %arrayidx9, i32 1, ptr elementtype(i32) %arrayidx9) #11, !srcloc !306
  %228 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %si_state, align 4
  %229 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %curr_msg, align 4
  %cmp10.not = icmp eq ptr %230, null
  br i1 %cmp10.not, label %if.then7.while.cond.backedge_crit_edge, label %if.then11

if.then7.while.cond.backedge_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %230, i32 0, i32 5
  %231 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %data.i, align 4
  %233 = or i8 %232, 4
  %rsp.i112 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %230, i32 0, i32 7
  %234 = ptrtoint ptr %rsp.i112 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %rsp.i112, align 4
  %arrayidx5.i = getelementptr %struct.ipmi_smi_msg, ptr %230, i32 0, i32 5, i32 1
  %235 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.ipmi_smi_msg, ptr %230, i32 0, i32 7, i32 1
  %237 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %arrayidx7.i, align 1
  %arrayidx10.i = getelementptr %struct.ipmi_smi_msg, ptr %230, i32 0, i32 7, i32 2
  %238 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 -1, ptr %arrayidx10.i, align 2
  %rsp_size.i113 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %230, i32 0, i32 6
  %239 = ptrtoint ptr %rsp_size.i113 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 3, ptr %rsp_size.i113, align 4
  %240 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %curr_msg, align 4
  %241 = ptrtoint ptr %intf.i.i114 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %intf.i.i114, align 4
  call void @ipmi_smi_msg_received(ptr noundef %242, ptr noundef nonnull %230) #11
  br label %while.cond.backedge

lor.lhs.false:                                    ; preds = %while.cond
  %243 = ptrtoint ptr %got_attn to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %got_attn, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not = icmp eq i8 %244, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end28_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %while.cond.if.then15_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg) #11
  %245 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 -1, ptr %msg, align 1, !annotation !307
  %246 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 -1, ptr %8, align 1, !annotation !307
  %247 = ptrtoint ptr %si_state to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %si_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp17.not = icmp eq i32 %248, 0
  br i1 %cmp17.not, label %if.else20, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %249 = ptrtoint ptr %got_attn to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %got_attn, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg) #11
  br label %if.end28

if.else20:                                        ; preds = %if.then15
  %250 = ptrtoint ptr %got_attn to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 0, ptr %got_attn, align 1
  %call.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx23, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx23, i32 1, i32 3, i32 1) #11
  %251 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx23, ptr %arrayidx23, i32 1, ptr elementtype(i32) %arrayidx23) #11, !srcloc !306
  %252 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 24, ptr %msg, align 1
  %253 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 49, ptr %8, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %254 = load volatile i32, ptr @jiffies, align 128
  %255 = ptrtoint ptr %timer_can_start.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %timer_can_start.i.i.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool.not.i.i115 = icmp eq i8 %256, 0
  br i1 %tobool.not.i.i115, label %if.else20.smi_mod_timer.exit.i_crit_edge, label %if.end.i.i117

if.else20.smi_mod_timer.exit.i_crit_edge:         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i

if.end.i.i117:                                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %254, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %257 = load volatile i32, ptr @jiffies, align 128
  %258 = ptrtoint ptr %last_timeout_jiffies.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %last_timeout_jiffies.i.i.i.i, align 4
  %call.i.i116 = call i32 @mod_timer(ptr noundef %si_timer.i.i.i.i, i32 noundef %add.i) #11
  %259 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 1, ptr %timer_running.i.i.i.i, align 1
  br label %smi_mod_timer.exit.i

smi_mod_timer.exit.i:                             ; preds = %if.end.i.i117, %if.else20.smi_mod_timer.exit.i_crit_edge
  %260 = ptrtoint ptr %thread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %thread.i.i.i, align 4
  %tobool.not.i118 = icmp eq ptr %261, null
  br i1 %tobool.not.i118, label %smi_mod_timer.exit.i.cleanup_crit_edge, label %if.then.i

smi_mod_timer.exit.i.cleanup_crit_edge:           ; preds = %smi_mod_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %smi_mod_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i119 = call i32 @wake_up_process(ptr noundef nonnull %261) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %smi_mod_timer.exit.i.cleanup_crit_edge
  %262 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %handlers, align 4
  %start_transaction.i121 = getelementptr inbounds %struct.si_sm_handlers, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %start_transaction.i121 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %start_transaction.i121, align 4
  %266 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %si_sm, align 4
  %call2.i = call i32 %265(ptr noundef %267, ptr noundef nonnull %msg, i32 noundef 2) #11
  %268 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 1, ptr %si_state, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg) #11
  br label %while.cond.backedge

if.end28:                                         ; preds = %cleanup.thread, %lor.lhs.false.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp29 = icmp eq i32 %call4, 4
  br i1 %cmp29, label %if.then30, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then30:                                        ; preds = %if.end28
  %call.i.i107 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx32, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx32, i32 1, i32 3, i32 1) #11
  %269 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx32, ptr %arrayidx32, i32 1, ptr elementtype(i32) %arrayidx32) #11, !srcloc !306
  %270 = ptrtoint ptr %waiting_msg.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %waiting_msg.i, align 4
  %tobool.not.i124 = icmp eq ptr %271, null
  br i1 %tobool.not.i124, label %land.lhs.true, label %if.else.i128

if.else.i128:                                     ; preds = %if.then30
  %272 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %271, ptr %curr_msg, align 4
  %273 = ptrtoint ptr %waiting_msg.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr null, ptr %waiting_msg.i, align 4
  %call.i127 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @xaction_notifier_list, i32 noundef 0, ptr noundef %smi_info) #11
  %and.i = and i32 %call.i127, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i133, label %if.else.i128.while.cond.backedge_crit_edge

if.else.i128.while.cond.backedge_crit_edge:       ; preds = %if.else.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end.i133:                                      ; preds = %if.else.i128
  %274 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %handlers, align 4
  %start_transaction.i130 = getelementptr inbounds %struct.si_sm_handlers, ptr %275, i32 0, i32 2
  %276 = ptrtoint ptr %start_transaction.i130 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %start_transaction.i130, align 4
  %278 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %si_sm, align 4
  %280 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %curr_msg, align 4
  %data.i132 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %281, i32 0, i32 5
  %data_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %281, i32 0, i32 4
  %282 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %data_size.i, align 4
  %call8.i = call i32 %277(ptr noundef %279, ptr noundef %data.i132, i32 noundef %283) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i133.while.cond.backedge_crit_edge, label %if.then10.i

if.end.i133.while.cond.backedge_crit_edge:        ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then10.i:                                      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #13
  %284 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %curr_msg, align 4
  %286 = call i32 @llvm.umin.i32(i32 %call8.i, i32 255) #11
  %data.i.i134 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %285, i32 0, i32 5
  %287 = ptrtoint ptr %data.i.i134 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %data.i.i134, align 4
  %289 = or i8 %288, 4
  %rsp.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %285, i32 0, i32 7
  %290 = ptrtoint ptr %rsp.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %rsp.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.ipmi_smi_msg, ptr %285, i32 0, i32 5, i32 1
  %291 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.ipmi_smi_msg, ptr %285, i32 0, i32 7, i32 1
  %293 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %292, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = trunc i32 %286 to i8
  %arrayidx10.i.i = getelementptr %struct.ipmi_smi_msg, ptr %285, i32 0, i32 7, i32 2
  %294 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %conv8.i.i, ptr %arrayidx10.i.i, align 2
  %rsp_size.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %285, i32 0, i32 6
  %295 = ptrtoint ptr %rsp_size.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 3, ptr %rsp_size.i.i, align 4
  %296 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr null, ptr %curr_msg, align 4
  %297 = ptrtoint ptr %intf.i.i114 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %intf.i.i114, align 4
  call void @ipmi_smi_msg_received(ptr noundef %298, ptr noundef %285) #11
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.then30
  %299 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr null, ptr %curr_msg, align 4
  %call.i.i108 = call zeroext i1 @__kasan_check_read(ptr noundef %req_events, i32 noundef 4) #11
  %300 = ptrtoint ptr %req_events to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load volatile i32, ptr %req_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool40.not = icmp eq i32 %301, 0
  br i1 %tobool40.not, label %land.lhs.true57.critedge, label %if.then41

if.then41:                                        ; preds = %land.lhs.true
  %call.i.i109 = call zeroext i1 @__kasan_check_write(ptr noundef %req_events, i32 noundef 4) #11
  %302 = ptrtoint ptr %req_events to i32
  call void @__asan_store4_noabort(i32 %302)
  store volatile i32 0, ptr %req_events, align 4
  %303 = ptrtoint ptr %supports_event_msg_buff195.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %supports_event_msg_buff195.i, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool43.not = icmp eq i8 %304, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %if.then41.if.then46_crit_edge

if.then41.if.then46_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

lor.lhs.false44:                                  ; preds = %if.then41
  %305 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool45.not = icmp eq i32 %306, 0
  br i1 %tobool45.not, label %if.else47, label %lor.lhs.false44.if.then46_crit_edge

lor.lhs.false44.if.then46_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false44.if.then46_crit_edge, %if.then41.if.then46_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #11
  %307 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 24, ptr %msg.i, align 1
  %308 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 47, ptr %9, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %309 = load volatile i32, ptr @jiffies, align 128
  %310 = ptrtoint ptr %timer_can_start.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %timer_can_start.i.i.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool.not.i.i.i135 = icmp eq i8 %311, 0
  br i1 %tobool.not.i.i.i135, label %if.then46.smi_mod_timer.exit.i.i_crit_edge, label %if.end.i.i.i

if.then46.smi_mod_timer.exit.i.i_crit_edge:       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add i32 %309, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %312 = load volatile i32, ptr @jiffies, align 128
  %313 = ptrtoint ptr %last_timeout_jiffies.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %312, ptr %last_timeout_jiffies.i.i.i.i, align 4
  %call.i.i.i136 = call i32 @mod_timer(ptr noundef %si_timer.i.i.i.i, i32 noundef %add.i.i) #11
  %314 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 1, ptr %timer_running.i.i.i.i, align 1
  br label %smi_mod_timer.exit.i.i

smi_mod_timer.exit.i.i:                           ; preds = %if.end.i.i.i, %if.then46.smi_mod_timer.exit.i.i_crit_edge
  %315 = ptrtoint ptr %thread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %thread.i.i.i, align 4
  %tobool.not.i.i137 = icmp eq ptr %316, null
  br i1 %tobool.not.i.i137, label %smi_mod_timer.exit.i.i.start_check_enables.exit_crit_edge, label %if.then.i.i

smi_mod_timer.exit.i.i.start_check_enables.exit_crit_edge: ; preds = %smi_mod_timer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_check_enables.exit

if.then.i.i:                                      ; preds = %smi_mod_timer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i138 = call i32 @wake_up_process(ptr noundef nonnull %316) #11
  br label %start_check_enables.exit

start_check_enables.exit:                         ; preds = %if.then.i.i, %smi_mod_timer.exit.i.i.start_check_enables.exit_crit_edge
  %317 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %handlers, align 4
  %start_transaction.i.i = getelementptr inbounds %struct.si_sm_handlers, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %start_transaction.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %start_transaction.i.i, align 4
  %321 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %si_sm, align 4
  %call2.i.i = call i32 %320(ptr noundef %322, ptr noundef nonnull %msg.i, i32 noundef 2) #11
  %323 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 5, ptr %si_state, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #11
  br label %while.cond.backedge

if.else47:                                        ; preds = %lor.lhs.false44
  %call48 = call fastcc ptr @alloc_msg_handle_irq(ptr noundef %smi_info)
  %324 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %call48, ptr %curr_msg, align 4
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %if.else47.out_crit_edge, label %if.end53

if.else47.out_crit_edge:                          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end53:                                         ; preds = %if.else47
  %data.i141 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call48, i32 0, i32 5
  %325 = ptrtoint ptr %data.i141 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 24, ptr %data.i141, align 4
  %326 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %curr_msg, align 4
  %arrayidx3.i = getelementptr %struct.ipmi_smi_msg, ptr %327, i32 0, i32 5, i32 1
  %328 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 53, ptr %arrayidx3.i, align 1
  %329 = load ptr, ptr %curr_msg, align 4
  %data_size.i142 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %329, i32 0, i32 4
  %330 = ptrtoint ptr %data_size.i142 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 2, ptr %data_size.i142, align 4
  %331 = load ptr, ptr %curr_msg, align 4
  %data_size8.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %331, i32 0, i32 4
  %332 = ptrtoint ptr %data_size8.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %data_size8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %334 = load volatile i32, ptr @jiffies, align 128
  %335 = ptrtoint ptr %timer_can_start.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %timer_can_start.i.i.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %336)
  %tobool.not.i.i.i144 = icmp eq i8 %336, 0
  br i1 %tobool.not.i.i.i144, label %if.end53.smi_mod_timer.exit.i.i153_crit_edge, label %if.end.i.i.i150

if.end53.smi_mod_timer.exit.i.i153_crit_edge:     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i153

if.end.i.i.i150:                                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i145 = add i32 %334, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %337 = load volatile i32, ptr @jiffies, align 128
  %338 = ptrtoint ptr %last_timeout_jiffies.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %last_timeout_jiffies.i.i.i.i, align 4
  %call.i.i.i148 = call i32 @mod_timer(ptr noundef %si_timer.i.i.i.i, i32 noundef %add.i.i145) #11
  %339 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 1, ptr %timer_running.i.i.i.i, align 1
  br label %smi_mod_timer.exit.i.i153

smi_mod_timer.exit.i.i153:                        ; preds = %if.end.i.i.i150, %if.end53.smi_mod_timer.exit.i.i153_crit_edge
  %340 = ptrtoint ptr %thread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %thread.i.i.i, align 4
  %tobool.not.i.i152 = icmp eq ptr %341, null
  br i1 %tobool.not.i.i152, label %smi_mod_timer.exit.i.i153.start_getting_events.exit_crit_edge, label %if.then.i.i155

smi_mod_timer.exit.i.i153.start_getting_events.exit_crit_edge: ; preds = %smi_mod_timer.exit.i.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_getting_events.exit

if.then.i.i155:                                   ; preds = %smi_mod_timer.exit.i.i153
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i154 = call i32 @wake_up_process(ptr noundef nonnull %341) #11
  br label %start_getting_events.exit

start_getting_events.exit:                        ; preds = %if.then.i.i155, %smi_mod_timer.exit.i.i153.start_getting_events.exit_crit_edge
  %data6.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %331, i32 0, i32 5
  %342 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %handlers, align 4
  %start_transaction.i.i157 = getelementptr inbounds %struct.si_sm_handlers, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %start_transaction.i.i157 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %start_transaction.i.i157, align 4
  %346 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %si_sm, align 4
  %call2.i.i159 = call i32 %345(ptr noundef %347, ptr noundef %data6.i, i32 noundef %333) #11
  %348 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 2, ptr %si_state, align 4
  br label %while.cond.backedge

land.lhs.true57.critedge:                         ; preds = %land.lhs.true
  %349 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %timer_running.i.i.i.i, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %350)
  %tobool58.not = icmp eq i8 %350, 0
  br i1 %tobool58.not, label %land.lhs.true57.critedge.out_crit_edge, label %if.then59

land.lhs.true57.critedge.out_crit_edge:           ; preds = %land.lhs.true57.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then59:                                        ; preds = %land.lhs.true57.critedge
  %call60 = call i32 @del_timer(ptr noundef %si_timer.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then59.out_crit_edge, label %if.then62

if.then59.out_crit_edge:                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then62:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  %351 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %timer_running.i.i.i.i, align 1
  br label %out

out:                                              ; preds = %if.then62, %if.then59.out_crit_edge, %land.lhs.true57.critedge.out_crit_edge, %if.else47.out_crit_edge, %if.end28.out_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_irq_finish_setup(ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si_type = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 18
  %0 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %si_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %outputb = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %outputb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outputb, align 4
  tail call void %3(ptr noundef %io, i32 noundef 2, i8 noundef zeroext 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_irq_start_cleanup(ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si_type = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 18
  %0 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %si_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %outputb = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %outputb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outputb, align 4
  tail call void %3(ptr noundef %io, i32 noundef 2, i8 noundef zeroext 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipmi_std_irq_setup(ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 13
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_handler_data = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 15
  %2 = ptrtoint ptr %irq_handler_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_handler_data, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @ipmi_si_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %7) #14
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %irq_cleanup = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 16
  %9 = ptrtoint ptr %irq_cleanup to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @std_irq_cleanup, ptr %irq_cleanup, align 4
  %si_type.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 18
  %10 = ptrtoint ptr %si_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %si_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.ipmi_irq_finish_setup.exit_crit_edge

if.else.ipmi_irq_finish_setup.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_irq_finish_setup.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %outputb.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 1
  %12 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %outputb.i, align 4
  tail call void %13(ptr noundef %io, i32 noundef 2, i8 noundef zeroext 1) #11
  br label %ipmi_irq_finish_setup.exit

ipmi_irq_finish_setup.exit:                       ; preds = %if.then.i, %if.else.ipmi_irq_finish_setup.exit_crit_edge
  %dev9 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 19
  %14 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev9, align 4
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %17) #14
  br label %cleanup

cleanup:                                          ; preds = %ipmi_irq_finish_setup.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %ipmi_irq_finish_setup.exit ], [ %call.i, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @std_irq_cleanup(ptr noundef %io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si_type.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 18
  %0 = ptrtoint ptr %si_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %si_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %if.then.i, label %entry.ipmi_irq_start_cleanup.exit_crit_edge

entry.ipmi_irq_start_cleanup.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_irq_start_cleanup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %outputb.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outputb.i, align 4
  tail call void %3(ptr noundef %io, i32 noundef 2, i8 noundef zeroext 0) #11
  br label %ipmi_irq_start_cleanup.exit

ipmi_irq_start_cleanup.exit:                      ; preds = %if.then.i, %entry.ipmi_irq_start_cleanup.exit_crit_edge
  %irq = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 13
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_handler_data = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 15
  %6 = ptrtoint ptr %irq_handler_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_handler_data, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %7) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipmi_si_add_smi(ptr nocapture noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_source = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 8
  %0 = ptrtoint ptr %addr_source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_source, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.if.end_crit_edge, label %land.lhs.true3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %addr_space = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 6
  %2 = ptrtoint ptr %addr_space to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_space, align 4
  %addr_data = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 7
  %4 = ptrtoint ptr %addr_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_data, align 4
  %call = tail call i32 @ipmi_si_hardcode_match(i32 noundef %3, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true3.if.end_crit_edge, label %do.end

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 19
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.14) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  %io_setup = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 10
  %8 = ptrtoint ptr %io_setup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_setup, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then5:                                         ; preds = %if.end
  %addr_space6 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 6
  %10 = ptrtoint ptr %addr_space6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_space6, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %11, label %if.then5.cleanup_crit_edge [
    i32 0, label %if.then5.if.end17.sink.split_crit_edge
    i32 1, label %if.then12
  ]

if.then5.if.end17.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.then12, %if.then5.if.end17.sink.split_crit_edge
  %ipmi_si_port_setup.sink = phi ptr [ @ipmi_si_mem_setup, %if.then12 ], [ @ipmi_si_port_setup, %if.then5.if.end17.sink.split_crit_edge ]
  %13 = ptrtoint ptr %io_setup to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ipmi_si_port_setup.sink, ptr %io_setup, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.end.if.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 316) #15
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %do.body22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body22:                                        ; preds = %if.end17
  %si_lock = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %si_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @ipmi_si_add_smi.__key, i16 noundef signext 3) #11
  %io26 = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8
  %15 = call ptr @memcpy(ptr %io26, ptr %io, i32 76)
  tail call void @mutex_lock_nested(ptr noundef nonnull @smi_infos_lock, i32 noundef 0) #11
  %.pn35.i = load ptr, ptr @smi_infos, align 4
  %cmp.not36.i = icmp eq ptr %.pn35.i, @smi_infos
  br i1 %cmp.not36.i, label %do.body22.do.end60_crit_edge, label %for.body.lr.ph.i

do.body22.do.end60_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

for.body.lr.ph.i:                                 ; preds = %do.body22
  %addr_space2.i = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 6
  %16 = ptrtoint ptr %addr_space2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr_space2.i, align 8
  %addr_data6.i = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn37.i = phi ptr [ %.pn35.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %addr_space.i = getelementptr i8, ptr %.pn37.i, i32 -212
  %18 = ptrtoint ptr %addr_space.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr_space.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp3.not.i = icmp eq i32 %19, %17
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %addr_data.i = getelementptr i8, ptr %.pn37.i, i32 -208
  %20 = ptrtoint ptr %addr_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr_data.i, align 4
  %22 = ptrtoint ptr %addr_data6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr_data6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp7.i = icmp eq i32 %21, %23
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end.i
  %e.0.le.i = getelementptr i8, ptr %.pn37.i, i32 -308
  %slave_addr.i = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 17
  %24 = ptrtoint ptr %slave_addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %slave_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then8.i.find_dup_si.exit_crit_edge, label %land.lhs.true.i

if.then8.i.find_dup_si.exit_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_dup_si.exit

land.lhs.true.i:                                  ; preds = %if.then8.i
  %slave_addr11.i = getelementptr i8, ptr %.pn37.i, i32 -172
  %26 = ptrtoint ptr %slave_addr11.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %slave_addr11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool12.not.i = icmp eq i8 %27, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %land.lhs.true.i.find_dup_si.exit_crit_edge

land.lhs.true.i.find_dup_si.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_dup_si.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %slave_addr11.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %slave_addr11.i, align 4
  br label %find_dup_si.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %29 = ptrtoint ptr %.pn37.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn37.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @smi_infos
  br i1 %cmp.not.i, label %for.inc.i.do.end60_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.end60_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

find_dup_si.exit:                                 ; preds = %if.then13.i, %land.lhs.true.i.find_dup_si.exit_crit_edge, %if.then8.i.find_dup_si.exit_crit_edge
  %tobool28.not = icmp eq ptr %e.0.le.i, null
  br i1 %tobool28.not, label %find_dup_si.exit.do.end60_crit_edge, label %if.then29

find_dup_si.exit.do.end60_crit_edge:              ; preds = %find_dup_si.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.then29:                                        ; preds = %find_dup_si.exit
  %addr_source31 = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 8
  %30 = ptrtoint ptr %addr_source31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr_source31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp32 = icmp eq i32 %31, 4
  br i1 %cmp32, label %land.lhs.true33, label %if.then29.do.end47_crit_edge

if.then29.do.end47_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

land.lhs.true33:                                  ; preds = %if.then29
  %addr_source35 = getelementptr i8, ptr %.pn37.i, i32 -204
  %32 = ptrtoint ptr %addr_source35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr_source35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %33)
  %cmp36 = icmp eq i32 %33, 5
  br i1 %cmp36, label %do.end40, label %land.lhs.true33.do.end47_crit_edge

land.lhs.true33.do.end47_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.end40:                                         ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  %dev42 = getelementptr i8, ptr %.pn37.i, i32 -164
  %34 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev42, align 4
  %si_type = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 18
  %36 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %si_type, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @si_to_str, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.18, ptr noundef %39) #14
  tail call fastcc void @cleanup_one_si(ptr noundef nonnull %e.0.le.i)
  br label %do.end60

do.end47:                                         ; preds = %land.lhs.true33.do.end47_crit_edge, %if.then29.do.end47_crit_edge
  %dev49 = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 19
  %40 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev49, align 8
  %call52 = tail call ptr @ipmi_addr_src_to_str(i32 noundef %31) #11
  %si_type54 = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 18
  %42 = ptrtoint ptr %si_type54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %si_type54, align 4
  %arrayidx55 = getelementptr [5 x ptr], ptr @si_to_str, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx55, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.21, ptr noundef %call52, ptr noundef %45) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %out_err

do.end60:                                         ; preds = %do.end40, %find_dup_si.exit.do.end60_crit_edge, %for.inc.i.do.end60_crit_edge, %do.body22.do.end60_crit_edge
  %addr_source62 = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 8
  %46 = ptrtoint ptr %addr_source62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr_source62, align 8
  %call63 = tail call ptr @ipmi_addr_src_to_str(i32 noundef %47) #11
  %si_type65 = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 8, i32 18
  %48 = ptrtoint ptr %si_type65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %si_type65, align 4
  %arrayidx66 = getelementptr [5 x ptr], ptr @si_to_str, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx66, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %call63, ptr noundef %51) #14
  %link = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 29
  %52 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @smi_infos, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %52, ptr noundef nonnull @smi_infos) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end60.list_add_tail.exit_crit_edge

do.end60.list_add_tail.exit_crit_edge:            ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %link, ptr getelementptr inbounds (%struct.list_head, ptr @smi_infos, i32 0, i32 1), align 4
  %53 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @smi_infos, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.smi_info, ptr %call7.i.i, i32 0, i32 29, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %prev3.i.i, align 8
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %link, ptr %52, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end60.list_add_tail.exit_crit_edge
  %.b101 = load i1, ptr @initialized, align 1
  br i1 %.b101, label %if.then69, label %list_add_tail.exit.out_err_crit_edge

list_add_tail.exit.out_err_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.then69:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = tail call fastcc i32 @try_smi_init(ptr noundef nonnull %call7.i.i)
  br label %out_err

out_err:                                          ; preds = %if.then69, %list_add_tail.exit.out_err_crit_edge, %do.end47
  %rv.0 = phi i32 [ %call70, %if.then69 ], [ 0, %list_add_tail.exit.out_err_crit_edge ], [ -16, %do.end47 ]
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end17.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %rv.0, %out_err ], [ -22, %if.then5.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_si_hardcode_match(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_si_port_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_si_mem_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_one_si(ptr noundef %smi_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %smi_info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 29, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %intf = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 1
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %list_del.exit.if.end4_crit_edge, label %if.then2

list_del.exit.if.end4_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipmi_unregister_smi(ptr noundef nonnull %9) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %list_del.exit.if.end4_crit_edge
  tail call void @kfree(ptr noundef nonnull %smi_info) #11
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_addr_src_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_smi_init(ptr noundef %new_smi) unnamed_addr #0 align 64 {
entry:
  %groups.i = alloca [2 x ptr], align 4
  %msg.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8
  %addr_source = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 8
  %0 = ptrtoint ptr %addr_source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_source, align 4
  %call = tail call ptr @ipmi_addr_src_to_str(i32 noundef %1) #11
  %si_type = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 18
  %2 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %si_type, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @si_to_str, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %addr_space = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %addr_space to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr_space, align 4
  %arrayidx3 = getelementptr [2 x ptr], ptr @addr_space_to_str, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %addr_data = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 7
  %10 = ptrtoint ptr %addr_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_data, align 4
  %slave_addr = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 17
  %12 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %slave_addr, align 4
  %conv = zext i8 %13 to i32
  %irq = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 13
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %call, ptr noundef %5, ptr noundef %9, i32 noundef %11, i32 noundef %conv, i32 noundef %15) #14
  %16 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %si_type, align 4
  %switch.tableidx = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 3
  br i1 %18, label %switch.lookup, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.try_smi_init, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %handlers13 = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 3
  %20 = ptrtoint ptr %handlers13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %switch.load, ptr %handlers13, align 4
  %21 = load i32, ptr @smi_num, align 4
  %22 = ptrtoint ptr %new_smi to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %new_smi, align 4
  %dev = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 19
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %do.end17, label %if.end

do.end17:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  br label %land.lhs.true

if.end:                                           ; preds = %switch.lookup
  %handlers20 = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 3
  %25 = ptrtoint ptr %handlers20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handlers20, align 4
  %size = getelementptr inbounds %struct.si_sm_handlers, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %size, align 4
  %call21 = tail call i32 %28() #11
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call21, i32 noundef 3264) #16
  %si_sm = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 2
  %29 = ptrtoint ptr %si_sm to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i, ptr %si_sm, align 4
  %tobool24.not = icmp eq ptr %call9.i, null
  br i1 %tobool24.not, label %if.end.land.lhs.true_crit_edge, label %if.end26

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end26:                                         ; preds = %if.end
  %30 = ptrtoint ptr %handlers20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handlers20, align 4
  %init_data = getelementptr inbounds %struct.si_sm_handlers, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_data, align 4
  %call30 = tail call i32 %33(ptr noundef nonnull %call9.i, ptr noundef %io) #11
  %io_size = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 12
  %34 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call30, ptr %io_size, align 4
  %io_setup = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 10
  %35 = ptrtoint ptr %io_setup to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_setup, align 4
  %call34 = tail call i32 %36(ptr noundef %io) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.45) #14
  br label %land.lhs.true

if.end42:                                         ; preds = %if.end26
  %39 = ptrtoint ptr %handlers20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handlers20, align 4
  %detect = getelementptr inbounds %struct.si_sm_handlers, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %detect, align 4
  %43 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %si_sm, align 4
  %call45 = tail call i32 %42(ptr noundef %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end58, label %if.then47

if.then47:                                        ; preds = %if.end42
  %45 = ptrtoint ptr %addr_source to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool50.not = icmp eq i32 %46, 0
  br i1 %tobool50.not, label %if.then47.land.lhs.true_crit_edge, label %do.end54

if.then47.land.lhs.true_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

do.end54:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.49) #14
  br label %land.lhs.true

if.end58:                                         ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 272) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %try_get_dev_id.exit.thread, label %if.end.i235

try_get_dev_id.exit.thread:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #11
  br label %if.then61

if.end.i235:                                      ; preds = %if.end58
  %50 = getelementptr inbounds [2 x i8], ptr %msg.i, i32 0, i32 1
  %51 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 24, ptr %msg.i, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %50, align 1
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 1
  br label %retry.i

retry.i:                                          ; preds = %retry.i.backedge, %if.end.i235
  %retry_count.0.i = phi i32 [ 0, %if.end.i235 ], [ %inc.i, %retry.i.backedge ]
  %53 = ptrtoint ptr %handlers20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %handlers20, align 4
  %start_transaction.i = getelementptr inbounds %struct.si_sm_handlers, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %start_transaction.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %start_transaction.i, align 4
  %57 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %si_sm, align 4
  %call2.i = call i32 %56(ptr noundef %58, ptr noundef nonnull %msg.i, i32 noundef 2) #11
  %59 = ptrtoint ptr %handlers20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %handlers20, align 4
  %event.i.i = getelementptr inbounds %struct.si_sm_handlers, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %event.i.i, align 4
  %63 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %si_sm, align 4
  %call.i.i236 = call i32 %62(ptr noundef %64, i32 noundef 0) #11
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.backedge, %retry.i
  %smi_result.0.i.i = phi i32 [ %call.i.i236, %retry.i ], [ %smi_result.0.i.i.be, %for.cond.i.i.backedge ]
  %65 = zext i32 %smi_result.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %smi_result.0.i.i, label %if.end6.i [
    i32 1, label %for.cond.i.i.if.then.i.i_crit_edge
    i32 2, label %for.cond.i.i.if.then.i.i_crit_edge270
    i32 0, label %if.then9.i.i
    i32 5, label %for.cond.i.i.try_get_dev_id.exit.thread251_crit_edge
  ]

for.cond.i.i.try_get_dev_id.exit.thread251_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_get_dev_id.exit.thread251

for.cond.i.i.if.then.i.i_crit_edge270:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.cond.i.i.if.then.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond.i.i.if.then.i.i_crit_edge, %for.cond.i.i.if.then.i.i_crit_edge270
  %call2.i.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  %66 = ptrtoint ptr %handlers20 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handlers20, align 4
  %event4.i.i = getelementptr inbounds %struct.si_sm_handlers, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %event4.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %event4.i.i, align 4
  %70 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %si_sm, align 4
  %call6.i.i = call i32 @jiffies_to_usecs(i32 noundef 1) #11
  %call7.i52.i = call i32 %69(ptr noundef %71, i32 noundef %call6.i.i) #11
  br label %for.cond.i.i.backedge

if.then9.i.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %handlers20 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %handlers20, align 4
  %event11.i.i = getelementptr inbounds %struct.si_sm_handlers, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %event11.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %event11.i.i, align 4
  %76 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %si_sm, align 4
  %call13.i.i = call i32 %75(ptr noundef %77, i32 noundef 0) #11
  br label %for.cond.i.i.backedge

for.cond.i.i.backedge:                            ; preds = %if.then9.i.i, %if.then.i.i
  %smi_result.0.i.i.be = phi i32 [ %call7.i52.i, %if.then.i.i ], [ %call13.i.i, %if.then9.i.i ]
  br label %for.cond.i.i

if.end6.i:                                        ; preds = %for.cond.i.i
  %78 = ptrtoint ptr %handlers20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %handlers20, align 4
  %get_result.i = getelementptr inbounds %struct.si_sm_handlers, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %get_result.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %get_result.i, align 4
  %82 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %si_sm, align 4
  %call9.i237 = call i32 %81(ptr noundef %83, ptr noundef nonnull %call7.i.i, i32 noundef 272) #11
  %sub.i = add i32 %call9.i237, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i)
  %cmp.i.i238 = icmp ult i32 %sub.i, 7
  br i1 %cmp.i.i238, label %if.end6.i.if.then15.i_crit_edge, label %if.end.i.i239

if.end6.i.if.then15.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end.i.i239:                                    ; preds = %if.end6.i
  %84 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx12.i, align 1
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %call7.i.i, align 8
  %.mask.i = and i8 %87, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %.mask.i)
  %cmp1.not.i.i = icmp eq i8 %.mask.i, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %85)
  %cmp4.not.i.i = icmp eq i8 %85, 1
  %or.cond.i.i = and i1 %cmp4.not.i.i, %cmp1.not.i.i
  br i1 %or.cond.i.i, label %if.end7.i.i, label %if.end.i.i239.if.then15.i_crit_edge

if.end.i.i239.if.then15.i_crit_edge:              ; preds = %if.end.i.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.end7.i.i:                                      ; preds = %if.end.i.i239
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp9.not.i.i = icmp eq i8 %89, 0
  br i1 %cmp9.not.i.i, label %if.end12.i.i, label %if.end7.i.i.land.lhs.true.i_crit_edge

if.end7.i.i.land.lhs.true.i_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %device_id.le.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25
  %incdec.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 3
  %dec.i.i = add i32 %call9.i237, -3
  %90 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %incdec.ptr.i.i, align 1
  %92 = ptrtoint ptr %device_id.le.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %device_id.le.i, align 4
  %arrayidx14.i.i = getelementptr i8, ptr %call7.i.i, i32 4
  %93 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx14.i.i, align 4
  %device_revision.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 1
  %95 = ptrtoint ptr %device_revision.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %device_revision.i.i, align 1
  %arrayidx15.i.i = getelementptr i8, ptr %call7.i.i, i32 5
  %96 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx15.i.i, align 1
  %firmware_revision_1.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 2
  %98 = ptrtoint ptr %firmware_revision_1.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %firmware_revision_1.i.i, align 2
  %arrayidx16.i.i = getelementptr i8, ptr %call7.i.i, i32 6
  %99 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx16.i.i, align 2
  %firmware_revision_2.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 3
  %101 = ptrtoint ptr %firmware_revision_2.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %firmware_revision_2.i.i, align 1
  %arrayidx17.i.i = getelementptr i8, ptr %call7.i.i, i32 7
  %102 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx17.i.i, align 1
  %ipmi_version.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 4
  %104 = ptrtoint ptr %ipmi_version.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %ipmi_version.i.i, align 4
  %arrayidx18.i.i = getelementptr i8, ptr %call7.i.i, i32 8
  %105 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx18.i.i, align 8
  %additional_device_support.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 5
  %107 = ptrtoint ptr %additional_device_support.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %additional_device_support.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %dec.i.i)
  %cmp19.i.i = icmp ugt i32 %dec.i.i, 10
  br i1 %cmp19.i.i, label %if.end38.i.i, label %if.end38.thread.i.i

if.end38.thread.i.i:                              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %manufacturer_id36.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 6
  %108 = ptrtoint ptr %manufacturer_id36.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %manufacturer_id36.i.i, align 4
  %product_id37.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 7
  %109 = ptrtoint ptr %product_id37.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %product_id37.i.i, align 4
  br label %if.else42.i.i

if.end38.i.i:                                     ; preds = %if.end12.i.i
  %arrayidx22.i.i = getelementptr i8, ptr %call7.i.i, i32 9
  %110 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %111 to i32
  %arrayidx24.i.i = getelementptr i8, ptr %call7.i.i, i32 10
  %112 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx24.i.i, align 2
  %conv25.i.i = zext i8 %113 to i32
  %shl.i.i = shl nuw nsw i32 %conv25.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv23.i.i
  %arrayidx26.i.i = getelementptr i8, ptr %call7.i.i, i32 11
  %114 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx26.i.i, align 1
  %conv27.i.i = zext i8 %115 to i32
  %shl28.i.i = shl nuw nsw i32 %conv27.i.i, 16
  %or29.i.i = or i32 %or.i.i, %shl28.i.i
  %manufacturer_id.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 6
  %116 = ptrtoint ptr %manufacturer_id.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or29.i.i, ptr %manufacturer_id.i.i, align 4
  %arrayidx30.i.i = getelementptr i8, ptr %call7.i.i, i32 12
  %117 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx30.i.i, align 4
  %conv31.i.i = zext i8 %118 to i32
  %arrayidx32.i.i = getelementptr i8, ptr %call7.i.i, i32 13
  %119 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx32.i.i, align 1
  %conv33.i.i = zext i8 %120 to i32
  %shl34.i.i = shl nuw nsw i32 %conv33.i.i, 8
  %or35.i.i = or i32 %shl34.i.i, %conv31.i.i
  %product_id.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 7
  %121 = ptrtoint ptr %product_id.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or35.i.i, ptr %product_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %dec.i.i)
  %cmp39.i.i = icmp ugt i32 %dec.i.i, 14
  br i1 %cmp39.i.i, label %if.then41.i.i, label %if.end38.i.i.if.else42.i.i_crit_edge

if.end38.i.i.if.else42.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else42.i.i

if.then41.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %aux_firmware_revision.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 8
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 14
  %122 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %add.ptr.i.i, align 2
  %124 = ptrtoint ptr %aux_firmware_revision.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %aux_firmware_revision.i.i, align 4
  %aux_firmware_revision_set.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 9
  %125 = ptrtoint ptr %aux_firmware_revision_set.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load.i.i = load i8, ptr %aux_firmware_revision_set.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %aux_firmware_revision_set.i.i, align 4
  br label %if.end72

if.else42.i.i:                                    ; preds = %if.end38.i.i.if.else42.i.i_crit_edge, %if.end38.thread.i.i
  %aux_firmware_revision_set43.i.i = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 9
  %126 = ptrtoint ptr %aux_firmware_revision_set43.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load44.i.i = load i8, ptr %aux_firmware_revision_set43.i.i, align 4
  %bf.clear45.i.i = and i8 %bf.load44.i.i, 127
  store i8 %bf.clear45.i.i, ptr %aux_firmware_revision_set43.i.i, align 4
  br label %if.end72

if.then15.i:                                      ; preds = %if.end.i.i239.if.then15.i_crit_edge, %if.end6.i.if.then15.i_crit_edge
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %.pr.i = load i8, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp.not.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp.not.i, label %if.then15.i.try_get_dev_id.exit.thread251_crit_edge, label %if.then15.i.land.lhs.true.i_crit_edge

if.then15.i.land.lhs.true.i_crit_edge:            ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then15.i.try_get_dev_id.exit.thread251_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_get_dev_id.exit.thread251

land.lhs.true.i:                                  ; preds = %if.then15.i.land.lhs.true.i_crit_edge, %if.end7.i.i.land.lhs.true.i_crit_edge
  %conv1761.in.i = phi i8 [ %.pr.i, %if.then15.i.land.lhs.true.i_crit_edge ], [ %89, %if.end7.i.i.land.lhs.true.i_crit_edge ]
  %conv1761.i = zext i8 %conv1761.in.i to i32
  %inc.i = add nuw nsw i32 %retry_count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retry_count.0.i)
  %exitcond.not.i = icmp eq i32 %retry_count.0.i, 5
  br i1 %exitcond.not.i, label %land.lhs.true.i.try_get_dev_id.exit.thread251_crit_edge, label %do.body.i

land.lhs.true.i.try_get_dev_id.exit.thread251_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_get_dev_id.exit.thread251

do.body.i:                                        ; preds = %land.lhs.true.i
  %call22.i = call i32 @___ratelimit(ptr noundef nonnull @try_get_dev_id._rs, ptr noundef nonnull @__func__.try_get_dev_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %do.body.i.retry.i.backedge_crit_edge, label %do.end.i

do.body.i.retry.i.backedge_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.i.backedge

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %129, ptr noundef nonnull @.str.65, i32 noundef %conv1761.i) #14
  br label %retry.i.backedge

retry.i.backedge:                                 ; preds = %do.end.i, %do.body.i.retry.i.backedge_crit_edge
  br label %retry.i

try_get_dev_id.exit.thread251:                    ; preds = %land.lhs.true.i.try_get_dev_id.exit.thread251_crit_edge, %if.then15.i.try_get_dev_id.exit.thread251_crit_edge, %for.cond.i.i.try_get_dev_id.exit.thread251_crit_edge
  %rv.0.i.ph = phi i32 [ -19, %for.cond.i.i.try_get_dev_id.exit.thread251_crit_edge ], [ -22, %if.then15.i.try_get_dev_id.exit.thread251_crit_edge ], [ -22, %land.lhs.true.i.try_get_dev_id.exit.thread251_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #11
  br label %if.then61

if.then61:                                        ; preds = %try_get_dev_id.exit.thread251, %try_get_dev_id.exit.thread
  %retval.0.i250 = phi i32 [ -12, %try_get_dev_id.exit.thread ], [ %rv.0.i.ph, %try_get_dev_id.exit.thread251 ]
  %130 = ptrtoint ptr %addr_source to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %addr_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool64.not = icmp eq i32 %131, 0
  br i1 %tobool64.not, label %if.then61.land.lhs.true_crit_edge, label %do.end68

if.then61.land.lhs.true_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

do.end68:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.52) #14
  br label %land.lhs.true

if.end72:                                         ; preds = %if.else42.i.i, %if.then41.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i) #11
  call fastcc void @setup_oem_data_handler(ptr noundef %new_smi)
  %manufacturer_id.i.i240 = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 25, i32 6
  %134 = ptrtoint ptr %manufacturer_id.i.i240 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %manufacturer_id.i.i240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 674, i32 %135)
  %cmp.i.i241 = icmp eq i32 %135, 674
  br i1 %cmp.i.i241, label %land.lhs.true.i.i, label %if.end72.setup_xaction_handlers.exit_crit_edge

if.end72.setup_xaction_handlers.exit_crit_edge:   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_xaction_handlers.exit

land.lhs.true.i.i:                                ; preds = %if.end72
  %136 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %si_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %137)
  %cmp1.i.i = icmp eq i32 %137, 3
  br i1 %cmp1.i.i, label %if.then.i.i242, label %land.lhs.true.i.i.setup_xaction_handlers.exit_crit_edge

land.lhs.true.i.i.setup_xaction_handlers.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_xaction_handlers.exit

if.then.i.i242:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 @atomic_notifier_chain_register(ptr noundef nonnull @xaction_notifier_list, ptr noundef nonnull @dell_poweredge_bt_xaction_notifier) #11
  br label %setup_xaction_handlers.exit

setup_xaction_handlers.exit:                      ; preds = %if.then.i.i242, %land.lhs.true.i.i.setup_xaction_handlers.exit_crit_edge, %if.end72.setup_xaction_handlers.exit_crit_edge
  call fastcc void @check_for_broken_irqs(ptr noundef %new_smi)
  %waiting_msg = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 5
  %138 = ptrtoint ptr %waiting_msg to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %waiting_msg, align 4
  %curr_msg = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 6
  %139 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %curr_msg, align 4
  %req_events = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %req_events, i32 noundef 4) #11
  %140 = ptrtoint ptr %req_events to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 0, ptr %req_events, align 4
  %run_to_completion = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 13
  %141 = ptrtoint ptr %run_to_completion to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %run_to_completion, align 4
  %arrayidx74 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 0
  %call.i.i232 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74, i32 noundef 4) #11
  %142 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 0, ptr %arrayidx74, align 4
  %arrayidx74.1 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 1
  %call.i.i232.1 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.1, i32 noundef 4) #11
  %143 = ptrtoint ptr %arrayidx74.1 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 0, ptr %arrayidx74.1, align 4
  %arrayidx74.2 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 2
  %call.i.i232.2 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.2, i32 noundef 4) #11
  %144 = ptrtoint ptr %arrayidx74.2 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 0, ptr %arrayidx74.2, align 4
  %arrayidx74.3 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 3
  %call.i.i232.3 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.3, i32 noundef 4) #11
  %145 = ptrtoint ptr %arrayidx74.3 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 0, ptr %arrayidx74.3, align 4
  %arrayidx74.4 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 4
  %call.i.i232.4 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.4, i32 noundef 4) #11
  %146 = ptrtoint ptr %arrayidx74.4 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 0, ptr %arrayidx74.4, align 4
  %arrayidx74.5 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 5
  %call.i.i232.5 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.5, i32 noundef 4) #11
  %147 = ptrtoint ptr %arrayidx74.5 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 0, ptr %arrayidx74.5, align 4
  %arrayidx74.6 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 6
  %call.i.i232.6 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.6, i32 noundef 4) #11
  %148 = ptrtoint ptr %arrayidx74.6 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 0, ptr %arrayidx74.6, align 4
  %arrayidx74.7 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 7
  %call.i.i232.7 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.7, i32 noundef 4) #11
  %149 = ptrtoint ptr %arrayidx74.7 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 0, ptr %arrayidx74.7, align 4
  %arrayidx74.8 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 8
  %call.i.i232.8 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.8, i32 noundef 4) #11
  %150 = ptrtoint ptr %arrayidx74.8 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile i32 0, ptr %arrayidx74.8, align 4
  %arrayidx74.9 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 9
  %call.i.i232.9 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.9, i32 noundef 4) #11
  %151 = ptrtoint ptr %arrayidx74.9 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 0, ptr %arrayidx74.9, align 4
  %arrayidx74.10 = getelementptr %struct.smi_info, ptr %new_smi, i32 0, i32 27, i32 10
  %call.i.i232.10 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx74.10, i32 noundef 4) #11
  %152 = ptrtoint ptr %arrayidx74.10 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 0, ptr %arrayidx74.10, align 4
  %interrupt_disabled = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 19
  %153 = ptrtoint ptr %interrupt_disabled to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %interrupt_disabled, align 4
  %need_watch = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 18
  %call.i.i233 = call zeroext i1 @__kasan_check_write(ptr noundef %need_watch, i32 noundef 4) #11
  %154 = ptrtoint ptr %need_watch to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 0, ptr %need_watch, align 4
  %call75 = call fastcc i32 @try_enable_event_buffer(ptr noundef %new_smi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %setup_xaction_handlers.exit.if.end79_crit_edge

setup_xaction_handlers.exit.if.end79_crit_edge:   ; preds = %setup_xaction_handlers.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then78:                                        ; preds = %setup_xaction_handlers.exit
  call void @__sanitizer_cov_trace_pc() #13
  %has_event_buffer = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 11
  %155 = ptrtoint ptr %has_event_buffer to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %has_event_buffer, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %setup_xaction_handlers.exit.if.end79_crit_edge
  call fastcc void @start_clear_flags(ptr noundef %new_smi)
  %156 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool82.not = icmp eq i32 %157, 0
  br i1 %tobool82.not, label %if.end79.if.end86_crit_edge, label %if.then83

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %interrupt_disabled to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %interrupt_disabled, align 4
  %call.i.i234 = call zeroext i1 @__kasan_check_write(ptr noundef %req_events, i32 noundef 4) #11
  %159 = ptrtoint ptr %req_events to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile i32 1, ptr %req_events, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end79.if.end86_crit_edge
  %160 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %161, i32 0, i32 8
  %162 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %new_smi, ptr %driver_data.i, align 4
  %163 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups.i) #11
  %164 = getelementptr inbounds [2 x ptr], ptr %groups.i, i32 0, i32 1
  %165 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @ipmi_si_dev_attr_group, ptr %groups.i, align 4
  %166 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %164, align 4
  %call.i = call i32 @device_add_groups(ptr noundef %163, ptr noundef nonnull %groups.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool92.not = icmp eq i32 %call.i, 0
  br i1 %tobool92.not, label %if.end99, label %do.end96

do.end96:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.55, i32 noundef %call.i) #14
  br label %land.lhs.true

if.end99:                                         ; preds = %if.end86
  %dev_group_added = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 26
  %169 = ptrtoint ptr %dev_group_added to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %dev_group_added, align 4
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 4
  %172 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %slave_addr, align 4
  %call104 = call i32 @ipmi_add_smi(ptr noundef null, ptr noundef nonnull @handlers, ptr noundef %new_smi, ptr noundef %171, i8 noundef zeroext %173) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end112, label %do.end109

do.end109:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %174 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.58, i32 noundef %call104) #14
  br label %land.lhs.true

if.end112:                                        ; preds = %if.end99
  %176 = load i32, ptr @smi_num, align 4
  %inc113 = add i32 %176, 1
  store i32 %inc113, ptr @smi_num, align 4
  %177 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev, align 4
  %179 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %si_type, align 4
  %arrayidx121 = getelementptr [5 x ptr], ptr @si_to_str, i32 0, i32 %180
  %181 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx121, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %178, ptr noundef nonnull @.str.61, ptr noundef %182) #14
  %183 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev, align 4
  %init_name = getelementptr inbounds %struct.device, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %init_name to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %init_name, align 8
  %cmp124.not = icmp eq ptr %186, null
  br i1 %cmp124.not, label %if.end112.if.end160_crit_edge, label %do.end137, !prof !309

if.end112.if.end160_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

do.end137:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2076, i32 noundef 9, ptr noundef null) #11
  br label %if.end160

land.lhs.true:                                    ; preds = %do.end109, %do.end96, %do.end68, %if.then61.land.lhs.true_crit_edge, %do.end54, %if.then47.land.lhs.true_crit_edge, %do.end39, %if.end.land.lhs.true_crit_edge, %do.end17, %entry.land.lhs.true_crit_edge
  %rv.0.ph = phi i32 [ -19, %if.then47.land.lhs.true_crit_edge ], [ -19, %do.end54 ], [ -12, %if.end.land.lhs.true_crit_edge ], [ -5, %entry.land.lhs.true_crit_edge ], [ -5, %do.end17 ], [ %call104, %do.end109 ], [ %call.i, %do.end96 ], [ %retval.0.i250, %if.then61.land.lhs.true_crit_edge ], [ %retval.0.i250, %do.end68 ], [ %call34, %do.end39 ]
  %io_cleanup = getelementptr inbounds %struct.smi_info, ptr %new_smi, i32 0, i32 8, i32 11
  %187 = ptrtoint ptr %io_cleanup to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %io_cleanup, align 4
  %tobool153.not = icmp eq ptr %188, null
  br i1 %tobool153.not, label %land.lhs.true.if.end160_crit_edge, label %if.then154

land.lhs.true.if.end160_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then154:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void %188(ptr noundef %io) #11
  %189 = ptrtoint ptr %io_cleanup to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %io_cleanup, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then154, %land.lhs.true.if.end160_crit_edge, %do.end137, %if.end112.if.end160_crit_edge
  %rv.0257 = phi i32 [ %rv.0.ph, %if.then154 ], [ %rv.0.ph, %land.lhs.true.if.end160_crit_edge ], [ 0, %do.end137 ], [ 0, %if.end112.if.end160_crit_edge ]
  ret i32 %rv.0257
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ipmi_si() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b83 = load i1, ptr @initialized, align 1
  br i1 %.b83, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ipmi_hardcode_init() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #14
  tail call void @ipmi_si_platform_init() #11
  tail call void @ipmi_si_pci_init() #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @smi_infos_lock, i32 noundef 0) #11
  %.pn87 = load ptr, ptr @smi_infos, align 4
  %cmp.not89 = icmp eq ptr %.pn87, @smi_infos
  br i1 %cmp.not89, label %if.end.skip_fallback_noirq.thread106_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.skip_fallback_noirq.thread106_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_fallback_noirq.thread106

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn92 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn87, %if.end.for.body_crit_edge ]
  %type.090 = phi i32 [ %type.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %e.093 = getelementptr i8, ptr %.pn92, i32 -308
  %irq = getelementptr i8, ptr %.pn92, i32 -188
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.090)
  %tobool3.not = icmp eq i32 %type.090, 0
  br i1 %tobool3.not, label %land.lhs.true.if.then6_crit_edge, label %lor.lhs.false

land.lhs.true.if.then6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

lor.lhs.false:                                    ; preds = %land.lhs.true
  %addr_source = getelementptr i8, ptr %.pn92, i32 -204
  %2 = ptrtoint ptr %addr_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type.090)
  %cmp5 = icmp eq i32 %3, %type.090
  br i1 %cmp5, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %land.lhs.true.if.then6_crit_edge
  %call7 = tail call fastcc i32 @try_smi_init(ptr noundef %e.093)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then6.for.inc_crit_edge

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %addr_source11 = getelementptr i8, ptr %.pn92, i32 -204
  %4 = ptrtoint ptr %addr_source11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_source11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.then6.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %type.1 = phi i32 [ %type.090, %if.then6.for.inc_crit_edge ], [ %5, %if.then9 ], [ %type.090, %lor.lhs.false.for.inc_crit_edge ], [ %type.090, %for.body.for.inc_crit_edge ]
  %6 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp.not = icmp eq ptr %.pn, @smi_infos
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.1)
  %tobool18.not = icmp eq i32 %type.1, 0
  br i1 %tobool18.not, label %for.cond24.preheader, label %skip_fallback_noirq.thread

for.cond24.preheader:                             ; preds = %for.end
  %.pn8494.pr = load ptr, ptr @smi_infos, align 4
  %cmp26.not96 = icmp eq ptr %.pn8494.pr, @smi_infos
  br i1 %cmp26.not96, label %for.cond24.preheader.skip_fallback_noirq.thread106_crit_edge, label %for.cond24.preheader.for.body28_crit_edge

for.cond24.preheader.for.body28_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body28

for.cond24.preheader.skip_fallback_noirq.thread106_crit_edge: ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_fallback_noirq.thread106

skip_fallback_noirq.thread:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @initialized, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  br label %cleanup

for.body28:                                       ; preds = %for.inc46.for.body28_crit_edge, %for.cond24.preheader.for.body28_crit_edge
  %.pn8499 = phi ptr [ %.pn84, %for.inc46.for.body28_crit_edge ], [ %.pn8494.pr, %for.cond24.preheader.for.body28_crit_edge ]
  %type.297 = phi i32 [ %type.3, %for.inc46.for.body28_crit_edge ], [ 0, %for.cond24.preheader.for.body28_crit_edge ]
  %e.1100 = getelementptr i8, ptr %.pn8499, i32 -308
  %irq30 = getelementptr i8, ptr %.pn8499, i32 -188
  %7 = ptrtoint ptr %irq30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool31.not = icmp eq i32 %8, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %for.body28.for.inc46_crit_edge

for.body28.for.inc46_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

land.lhs.true32:                                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.297)
  %tobool33.not = icmp eq i32 %type.297, 0
  br i1 %tobool33.not, label %land.lhs.true32.if.then38_crit_edge, label %lor.lhs.false34

land.lhs.true32.if.then38_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

lor.lhs.false34:                                  ; preds = %land.lhs.true32
  %addr_source36 = getelementptr i8, ptr %.pn8499, i32 -204
  %9 = ptrtoint ptr %addr_source36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_source36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %type.297)
  %cmp37 = icmp eq i32 %10, %type.297
  br i1 %cmp37, label %lor.lhs.false34.if.then38_crit_edge, label %lor.lhs.false34.for.inc46_crit_edge

lor.lhs.false34.for.inc46_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

lor.lhs.false34.if.then38_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false34.if.then38_crit_edge, %land.lhs.true32.if.then38_crit_edge
  %call39 = tail call fastcc i32 @try_smi_init(ptr noundef %e.1100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.then38.for.inc46_crit_edge

if.then38.for.inc46_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %addr_source43 = getelementptr i8, ptr %.pn8499, i32 -204
  %11 = ptrtoint ptr %addr_source43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr_source43, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %if.then41, %if.then38.for.inc46_crit_edge, %lor.lhs.false34.for.inc46_crit_edge, %for.body28.for.inc46_crit_edge
  %type.3 = phi i32 [ %type.297, %for.body28.for.inc46_crit_edge ], [ %type.297, %if.then38.for.inc46_crit_edge ], [ %12, %if.then41 ], [ %type.297, %lor.lhs.false34.for.inc46_crit_edge ]
  %13 = ptrtoint ptr %.pn8499 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn84 = load ptr, ptr %.pn8499, align 4
  %cmp26.not = icmp eq ptr %.pn84, @smi_infos
  br i1 %cmp26.not, label %skip_fallback_noirq, label %for.inc46.for.body28_crit_edge

for.inc46.for.body28_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

skip_fallback_noirq.thread106:                    ; preds = %for.cond24.preheader.skip_fallback_noirq.thread106_crit_edge, %if.end.skip_fallback_noirq.thread106_crit_edge
  store i1 true, ptr @initialized, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  br label %if.end55

skip_fallback_noirq:                              ; preds = %for.inc46
  store i1 true, ptr @initialized, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.3)
  %tobool53.not = icmp eq i32 %type.3, 0
  br i1 %tobool53.not, label %skip_fallback_noirq.if.end55_crit_edge, label %skip_fallback_noirq.cleanup_crit_edge

skip_fallback_noirq.cleanup_crit_edge:            ; preds = %skip_fallback_noirq
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skip_fallback_noirq.if.end55_crit_edge:           ; preds = %skip_fallback_noirq
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.end55:                                         ; preds = %skip_fallback_noirq.if.end55_crit_edge, %skip_fallback_noirq.thread106
  tail call void @mutex_lock_nested(ptr noundef nonnull @smi_infos_lock, i32 noundef 0) #11
  %14 = load i8, ptr @unload_when_empty, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool56.not = icmp eq i8 %14, 0
  br i1 %tobool56.not, label %if.end55.if.else_crit_edge, label %land.lhs.true57

if.end55.if.else_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true57:                                  ; preds = %if.end55
  %15 = load volatile ptr, ptr @smi_infos, align 4
  %cmp.i.not = icmp eq ptr %15, @smi_infos
  br i1 %cmp.i.not, label %if.then60, label %land.lhs.true57.if.else_crit_edge

land.lhs.true57.if.else_crit_edge:                ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  tail call void @cleanup_ipmi_si()
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #14
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true57.if.else_crit_edge, %if.end55.if.else_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then60, %skip_fallback_noirq.cleanup_crit_edge, %skip_fallback_noirq.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then60 ], [ 0, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ 0, %skip_fallback_noirq.cleanup_crit_edge ], [ 0, %skip_fallback_noirq.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_si_remove_by_dev(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @smi_infos_lock, i32 noundef 0) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @smi_infos, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @smi_infos
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dev1 = getelementptr i8, ptr %.pn, i32 -164
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %cmp2 = icmp eq ptr %2, %dev
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  %e.0.le = getelementptr i8, ptr %.pn, i32 -308
  %tobool.not.i = icmp eq ptr %e.0.le, null
  br i1 %tobool.not.i, label %if.then.for.end_crit_edge, label %if.end.i

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i:                                         ; preds = %if.then
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn, i32 4
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i.i = getelementptr i8, ptr %.pn, i32 4
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %intf.i = getelementptr i8, ptr %.pn, i32 -304
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %list_del.exit.i.if.end4.i_crit_edge, label %if.then2.i

list_del.exit.i.if.end4.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipmi_unregister_smi(ptr noundef nonnull %12) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %list_del.exit.i.if.end4.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %e.0.le) #11
  br label %for.end

for.end:                                          ; preds = %if.end4.i, %if.then.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipmi_si_remove_by_data(i32 noundef %addr_space, i32 noundef %si_type, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @smi_infos_lock, i32 noundef 0) #11
  %0 = load ptr, ptr @smi_infos, align 4
  %cmp.not33 = icmp eq ptr %0, @smi_infos
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in35 = phi ptr [ %.pn38, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %dev.034 = phi ptr [ %dev.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %e.037 = getelementptr i8, ptr %.pn.in35, i32 -308
  %1 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn38 = load ptr, ptr %.pn.in35, align 4
  %addr_space5 = getelementptr i8, ptr %.pn.in35, i32 -212
  %2 = ptrtoint ptr %addr_space5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_space5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr_space)
  %cmp6.not = icmp eq i32 %3, %addr_space
  br i1 %cmp6.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %si_type8 = getelementptr i8, ptr %.pn.in35, i32 -168
  %4 = ptrtoint ptr %si_type8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %si_type8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %si_type)
  %cmp9.not = icmp eq i32 %5, %si_type
  br i1 %cmp9.not, label %if.end11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %addr_data = getelementptr i8, ptr %.pn.in35, i32 -208
  %6 = ptrtoint ptr %addr_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp13 = icmp eq i32 %7, %addr
  br i1 %cmp13, label %if.then14, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then14:                                        ; preds = %if.end11
  %dev16 = getelementptr i8, ptr %.pn.in35, i32 -164
  %8 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev16, align 4
  %call = tail call ptr @get_device(ptr noundef %9) #11
  %tobool.not.i = icmp eq ptr %e.037, null
  br i1 %tobool.not.i, label %if.then14.for.inc_crit_edge, label %if.end.i

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i:                                         ; preds = %if.then14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in35, i32 4
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in35, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in35, i32 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %intf.i = getelementptr i8, ptr %.pn.in35, i32 -304
  %18 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf.i, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %list_del.exit.i.if.end4.i_crit_edge, label %if.then2.i

list_del.exit.i.if.end4.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipmi_unregister_smi(ptr noundef nonnull %19) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %list_del.exit.i.if.end4.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %e.037) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end4.i, %if.then14.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dev.1 = phi ptr [ %dev.034, %for.body.for.inc_crit_edge ], [ %dev.034, %if.end.for.inc_crit_edge ], [ %dev.034, %if.end11.for.inc_crit_edge ], [ %call, %if.then14.for.inc_crit_edge ], [ %call, %if.end4.i ]
  %cmp.not = icmp eq ptr %.pn38, @smi_infos
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dev.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %dev.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  ret ptr %dev.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_ipmi_si() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b14 = load i1, ptr @initialized, align 1
  br i1 %.b14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ipmi_si_pci_shutdown() #11
  tail call void @ipmi_si_platform_shutdown() #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @smi_infos_lock, i32 noundef 0) #11
  %0 = load ptr, ptr @smi_infos, align 4
  %cmp.not16 = icmp eq ptr %0, @smi_infos
  br i1 %cmp.not16, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %cleanup_one_si.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in17 = phi ptr [ %.pn, %cleanup_one_si.exit.for.body_crit_edge ], [ %0, %if.end.for.body_crit_edge ]
  %e.0 = getelementptr i8, ptr %.pn.in17, i32 -308
  %1 = ptrtoint ptr %.pn.in17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in17, align 4
  %tobool.not.i = icmp eq ptr %e.0, null
  br i1 %tobool.not.i, label %for.body.cleanup_one_si.exit_crit_edge, label %if.end.i

for.body.cleanup_one_si.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_one_si.exit

if.end.i:                                         ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in17, i32 4
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %.pn.in17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in17, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %.pn.in17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in17, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in17, i32 4
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %intf.i = getelementptr i8, ptr %.pn.in17, i32 -304
  %10 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %list_del.exit.i.if.end4.i_crit_edge, label %if.then2.i

list_del.exit.i.if.end4.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then2.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipmi_unregister_smi(ptr noundef nonnull %11) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %list_del.exit.i.if.end4.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %e.0) #11
  br label %cleanup_one_si.exit

cleanup_one_si.exit:                              ; preds = %if.end4.i, %for.body.cleanup_one_si.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, @smi_infos
  br i1 %cmp.not, label %cleanup_one_si.exit.for.end_crit_edge, label %cleanup_one_si.exit.for.body_crit_edge

cleanup_one_si.exit.for.body_crit_edge:           ; preds = %cleanup_one_si.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup_one_si.exit.for.end_crit_edge:            ; preds = %cleanup_one_si.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup_one_si.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @smi_infos_lock) #11
  tail call void @ipmi_si_hardcode_exit() #11
  tail call void @ipmi_si_hotmod_exit() #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_msg_handle_irq(ptr noundef %smi_info) unnamed_addr #0 align 64 {
entry:
  %msg.i.i11 = alloca [2 x i8], align 1
  %msg.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ipmi_alloc_smi_msg() #11
  %tobool.not = icmp eq ptr %call, null
  %irq.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 13
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.if.then2_crit_edge, label %land.lhs.true.i

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

land.lhs.true.i:                                  ; preds = %if.then
  %interrupt_disabled.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 19
  %2 = ptrtoint ptr %interrupt_disabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interrupt_disabled.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.then2_crit_edge

land.lhs.true.i.if.then2_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then.i:                                        ; preds = %land.lhs.true.i
  %4 = ptrtoint ptr %interrupt_disabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %interrupt_disabled.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #11
  %5 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %msg.i.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 47, ptr %5, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %timer_can_start.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 15
  %9 = ptrtoint ptr %timer_can_start.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %timer_can_start.i.i.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.smi_mod_timer.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.smi_mod_timer.exit.i.i.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i = add i32 %8, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 17
  %12 = ptrtoint ptr %last_timeout_jiffies.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_timeout_jiffies.i.i.i.i, align 4
  %si_timer.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 14
  %call.i.i.i.i = tail call i32 @mod_timer(ptr noundef %si_timer.i.i.i.i, i32 noundef %add.i.i.i) #11
  %timer_running.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 16
  %13 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %timer_running.i.i.i.i, align 1
  br label %smi_mod_timer.exit.i.i.i

smi_mod_timer.exit.i.i.i:                         ; preds = %if.end.i.i.i.i, %if.then.i.smi_mod_timer.exit.i.i.i_crit_edge
  %thread.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 28
  %14 = ptrtoint ptr %thread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %thread.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %smi_mod_timer.exit.i.i.i.disable_si_irq.exit_crit_edge, label %if.then.i.i.i

smi_mod_timer.exit.i.i.i.disable_si_irq.exit_crit_edge: ; preds = %smi_mod_timer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_si_irq.exit

if.then.i.i.i:                                    ; preds = %smi_mod_timer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %15) #11
  br label %disable_si_irq.exit

disable_si_irq.exit:                              ; preds = %if.then.i.i.i, %smi_mod_timer.exit.i.i.i.disable_si_irq.exit_crit_edge
  %handlers.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %16 = ptrtoint ptr %handlers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handlers.i.i.i, align 4
  %start_transaction.i.i.i = getelementptr inbounds %struct.si_sm_handlers, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %start_transaction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start_transaction.i.i.i, align 4
  %si_sm.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %20 = ptrtoint ptr %si_sm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %si_sm.i.i.i, align 4
  %call2.i.i.i = call i32 %19(ptr noundef %21, ptr noundef nonnull %msg.i.i, i32 noundef 2) #11
  %si_state.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %22 = ptrtoint ptr %si_state.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %si_state.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #11
  br label %if.end6

if.then2:                                         ; preds = %land.lhs.true.i.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %si_state = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %23 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %si_state, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.else.if.end6_crit_edge, label %land.lhs.true.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true.i16:                                ; preds = %if.else
  %interrupt_disabled.i14 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 19
  %24 = ptrtoint ptr %interrupt_disabled.i14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %interrupt_disabled.i14, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool1.not.i15 = icmp eq i8 %25, 0
  br i1 %tobool1.not.i15, label %land.lhs.true.i16.if.end6_crit_edge, label %if.then.i19

land.lhs.true.i16.if.end6_crit_edge:              ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then.i19:                                      ; preds = %land.lhs.true.i16
  %26 = ptrtoint ptr %interrupt_disabled.i14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %interrupt_disabled.i14, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i11) #11
  %27 = getelementptr inbounds [2 x i8], ptr %msg.i.i11, i32 0, i32 1
  %28 = ptrtoint ptr %msg.i.i11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 24, ptr %msg.i.i11, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 47, ptr %27, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %timer_can_start.i.i.i.i17 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 15
  %31 = ptrtoint ptr %timer_can_start.i.i.i.i17 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %timer_can_start.i.i.i.i17, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i.i18 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i.i.i18, label %if.then.i19.smi_mod_timer.exit.i.i.i28_crit_edge, label %if.end.i.i.i.i25

if.then.i19.smi_mod_timer.exit.i.i.i28_crit_edge: ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i.i28

if.end.i.i.i.i25:                                 ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i20 = add i32 %30, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i.i.i.i21 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 17
  %34 = ptrtoint ptr %last_timeout_jiffies.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %last_timeout_jiffies.i.i.i.i21, align 4
  %si_timer.i.i.i.i22 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 14
  %call.i.i.i.i23 = tail call i32 @mod_timer(ptr noundef %si_timer.i.i.i.i22, i32 noundef %add.i.i.i20) #11
  %timer_running.i.i.i.i24 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 16
  %35 = ptrtoint ptr %timer_running.i.i.i.i24 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %timer_running.i.i.i.i24, align 1
  br label %smi_mod_timer.exit.i.i.i28

smi_mod_timer.exit.i.i.i28:                       ; preds = %if.end.i.i.i.i25, %if.then.i19.smi_mod_timer.exit.i.i.i28_crit_edge
  %thread.i.i.i26 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 28
  %36 = ptrtoint ptr %thread.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %thread.i.i.i26, align 4
  %tobool.not.i.i.i27 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i27, label %smi_mod_timer.exit.i.i.i28.if.then4_crit_edge, label %if.then.i.i.i30

smi_mod_timer.exit.i.i.i28.if.then4_crit_edge:    ; preds = %smi_mod_timer.exit.i.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then.i.i.i30:                                  ; preds = %smi_mod_timer.exit.i.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i29 = tail call i32 @wake_up_process(ptr noundef nonnull %37) #11
  br label %if.then4

if.then4:                                         ; preds = %if.then.i.i.i30, %smi_mod_timer.exit.i.i.i28.if.then4_crit_edge
  %handlers.i.i.i31 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %38 = ptrtoint ptr %handlers.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handlers.i.i.i31, align 4
  %start_transaction.i.i.i32 = getelementptr inbounds %struct.si_sm_handlers, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %start_transaction.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %start_transaction.i.i.i32, align 4
  %si_sm.i.i.i33 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %42 = ptrtoint ptr %si_sm.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %si_sm.i.i.i33, align 4
  %call2.i.i.i34 = call i32 %41(ptr noundef %43, ptr noundef nonnull %msg.i.i11, i32 noundef 2) #11
  %si_state.i.i35 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %44 = ptrtoint ptr %si_state.i.i35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %si_state.i.i35, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i11) #11
  %done.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call, i32 0, i32 8
  %45 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %done.i, align 4
  call void %46(ptr noundef nonnull %call) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.i16.if.end6_crit_edge, %if.else.if.end6_crit_edge, %if.then2, %disable_si_irq.exit
  %msg.0 = phi ptr [ null, %if.then4 ], [ null, %disable_si_irq.exit ], [ null, %if.then2 ], [ %call, %land.lhs.true.i16.if.end6_crit_edge ], [ %call, %if.else.if.end6_crit_edge ]
  ret ptr %msg.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_flags(ptr noundef %smi_info) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_flags = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 10
  %oem_data_avail_handler = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 9
  br label %retry

retry:                                            ; preds = %if.then31.retry_crit_edge, %entry
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_flags, align 4
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %retry
  %arrayidx = getelementptr %struct.smi_info, ptr %smi_info, i32 0, i32 27, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #11, !srcloc !306
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg.i) #11
  %3 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 2
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %msg.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 48, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %4, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %timer_can_start.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 15
  %9 = ptrtoint ptr %timer_can_start.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %timer_can_start.i.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i.i, label %if.then.smi_mod_timer.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.smi_mod_timer.exit.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add i32 %8, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 17
  %12 = ptrtoint ptr %last_timeout_jiffies.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_timeout_jiffies.i.i.i, align 4
  %si_timer.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 14
  %call.i.i.i = tail call i32 @mod_timer(ptr noundef %si_timer.i.i.i, i32 noundef %add.i.i) #11
  %timer_running.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 16
  %13 = ptrtoint ptr %timer_running.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %timer_running.i.i.i, align 1
  br label %smi_mod_timer.exit.i.i

smi_mod_timer.exit.i.i:                           ; preds = %if.end.i.i.i, %if.then.smi_mod_timer.exit.i.i_crit_edge
  %thread.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 28
  %14 = ptrtoint ptr %thread.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %thread.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %smi_mod_timer.exit.i.i.start_clear_flags.exit_crit_edge, label %if.then.i.i

smi_mod_timer.exit.i.i.start_clear_flags.exit_crit_edge: ; preds = %smi_mod_timer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_clear_flags.exit

if.then.i.i:                                      ; preds = %smi_mod_timer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i61 = tail call i32 @wake_up_process(ptr noundef nonnull %15) #11
  br label %start_clear_flags.exit

start_clear_flags.exit:                           ; preds = %if.then.i.i, %smi_mod_timer.exit.i.i.start_clear_flags.exit_crit_edge
  %handlers.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %16 = ptrtoint ptr %handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handlers.i.i, align 4
  %start_transaction.i.i = getelementptr inbounds %struct.si_sm_handlers, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %start_transaction.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start_transaction.i.i, align 4
  %si_sm.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %20 = ptrtoint ptr %si_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %si_sm.i.i, align 4
  %call2.i.i = call i32 %19(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 3) #11
  %si_state.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %22 = ptrtoint ptr %si_state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %si_state.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg.i) #11
  %23 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msg_flags, align 4
  %25 = and i8 %24, -9
  store i8 %25, ptr %msg_flags, align 4
  %intf = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 1
  %26 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf, align 4
  call void @ipmi_smi_watchdog_pretimeout(ptr noundef %27) #11
  br label %if.end41

if.else:                                          ; preds = %retry
  %and7 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else13, label %if.then9

if.then9:                                         ; preds = %if.else
  %call = tail call fastcc ptr @alloc_msg_handle_irq(ptr noundef %smi_info)
  %curr_msg = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 6
  %28 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call, ptr %curr_msg, align 4
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %if.then9.if.end41_crit_edge, label %if.end

if.then9.if.end41_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end:                                           ; preds = %if.then9
  %data.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call, i32 0, i32 5
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 24, ptr %data.i, align 4
  %30 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %curr_msg, align 4
  %arrayidx3.i = getelementptr %struct.ipmi_smi_msg, ptr %31, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 51, ptr %arrayidx3.i, align 1
  %33 = load ptr, ptr %curr_msg, align 4
  %data_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %data_size.i, align 4
  %35 = load ptr, ptr %curr_msg, align 4
  %data_size8.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %data_size8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_size8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %timer_can_start.i.i.i62 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 15
  %39 = ptrtoint ptr %timer_can_start.i.i.i62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %timer_can_start.i.i.i62, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i.i63 = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i.i63, label %if.end.smi_mod_timer.exit.i.i72_crit_edge, label %if.end.i.i.i69

if.end.smi_mod_timer.exit.i.i72_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i72

if.end.i.i.i69:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i64 = add i32 %38, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i.i.i65 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 17
  %42 = ptrtoint ptr %last_timeout_jiffies.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %last_timeout_jiffies.i.i.i65, align 4
  %si_timer.i.i.i66 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 14
  %call.i.i.i67 = tail call i32 @mod_timer(ptr noundef %si_timer.i.i.i66, i32 noundef %add.i.i64) #11
  %timer_running.i.i.i68 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 16
  %43 = ptrtoint ptr %timer_running.i.i.i68 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %timer_running.i.i.i68, align 1
  br label %smi_mod_timer.exit.i.i72

smi_mod_timer.exit.i.i72:                         ; preds = %if.end.i.i.i69, %if.end.smi_mod_timer.exit.i.i72_crit_edge
  %thread.i.i70 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 28
  %44 = ptrtoint ptr %thread.i.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %thread.i.i70, align 4
  %tobool.not.i.i71 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i71, label %smi_mod_timer.exit.i.i72.start_getting_msg_queue.exit_crit_edge, label %if.then.i.i74

smi_mod_timer.exit.i.i72.start_getting_msg_queue.exit_crit_edge: ; preds = %smi_mod_timer.exit.i.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_getting_msg_queue.exit

if.then.i.i74:                                    ; preds = %smi_mod_timer.exit.i.i72
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i73 = tail call i32 @wake_up_process(ptr noundef nonnull %45) #11
  br label %start_getting_msg_queue.exit

start_getting_msg_queue.exit:                     ; preds = %if.then.i.i74, %smi_mod_timer.exit.i.i72.start_getting_msg_queue.exit_crit_edge
  %data6.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %35, i32 0, i32 5
  %handlers.i.i75 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %46 = ptrtoint ptr %handlers.i.i75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %handlers.i.i75, align 4
  %start_transaction.i.i76 = getelementptr inbounds %struct.si_sm_handlers, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %start_transaction.i.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %start_transaction.i.i76, align 4
  %si_sm.i.i77 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %50 = ptrtoint ptr %si_sm.i.i77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %si_sm.i.i77, align 4
  %call2.i.i78 = tail call i32 %49(ptr noundef %51, ptr noundef %data6.i, i32 noundef %37) #11
  %si_state.i79 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %52 = ptrtoint ptr %si_state.i79 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %si_state.i79, align 4
  br label %if.end41

if.else13:                                        ; preds = %if.else
  %and16 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else25, label %if.then18

if.then18:                                        ; preds = %if.else13
  %call19 = tail call fastcc ptr @alloc_msg_handle_irq(ptr noundef %smi_info)
  %curr_msg20 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 6
  %53 = ptrtoint ptr %curr_msg20 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call19, ptr %curr_msg20, align 4
  %tobool22.not = icmp eq ptr %call19, null
  br i1 %tobool22.not, label %if.then18.if.end41_crit_edge, label %if.end24

if.then18.if.end41_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end24:                                         ; preds = %if.then18
  %data.i81 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call19, i32 0, i32 5
  %54 = ptrtoint ptr %data.i81 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 24, ptr %data.i81, align 4
  %55 = ptrtoint ptr %curr_msg20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %curr_msg20, align 4
  %arrayidx3.i82 = getelementptr %struct.ipmi_smi_msg, ptr %56, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %arrayidx3.i82 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 53, ptr %arrayidx3.i82, align 1
  %58 = load ptr, ptr %curr_msg20, align 4
  %data_size.i83 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %data_size.i83 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %data_size.i83, align 4
  %60 = load ptr, ptr %curr_msg20, align 4
  %data_size8.i84 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %data_size8.i84 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_size8.i84, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %timer_can_start.i.i.i85 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 15
  %64 = ptrtoint ptr %timer_can_start.i.i.i85 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %timer_can_start.i.i.i85, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.i.i86 = icmp eq i8 %65, 0
  br i1 %tobool.not.i.i.i86, label %if.end24.smi_mod_timer.exit.i.i95_crit_edge, label %if.end.i.i.i92

if.end24.smi_mod_timer.exit.i.i95_crit_edge:      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i95

if.end.i.i.i92:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i87 = add i32 %63, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i.i.i88 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 17
  %67 = ptrtoint ptr %last_timeout_jiffies.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %last_timeout_jiffies.i.i.i88, align 4
  %si_timer.i.i.i89 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 14
  %call.i.i.i90 = tail call i32 @mod_timer(ptr noundef %si_timer.i.i.i89, i32 noundef %add.i.i87) #11
  %timer_running.i.i.i91 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 16
  %68 = ptrtoint ptr %timer_running.i.i.i91 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %timer_running.i.i.i91, align 1
  br label %smi_mod_timer.exit.i.i95

smi_mod_timer.exit.i.i95:                         ; preds = %if.end.i.i.i92, %if.end24.smi_mod_timer.exit.i.i95_crit_edge
  %thread.i.i93 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 28
  %69 = ptrtoint ptr %thread.i.i93 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %thread.i.i93, align 4
  %tobool.not.i.i94 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i94, label %smi_mod_timer.exit.i.i95.start_getting_events.exit_crit_edge, label %if.then.i.i97

smi_mod_timer.exit.i.i95.start_getting_events.exit_crit_edge: ; preds = %smi_mod_timer.exit.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_getting_events.exit

if.then.i.i97:                                    ; preds = %smi_mod_timer.exit.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i96 = tail call i32 @wake_up_process(ptr noundef nonnull %70) #11
  br label %start_getting_events.exit

start_getting_events.exit:                        ; preds = %if.then.i.i97, %smi_mod_timer.exit.i.i95.start_getting_events.exit_crit_edge
  %data6.i98 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %60, i32 0, i32 5
  %handlers.i.i99 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %71 = ptrtoint ptr %handlers.i.i99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %handlers.i.i99, align 4
  %start_transaction.i.i100 = getelementptr inbounds %struct.si_sm_handlers, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %start_transaction.i.i100 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %start_transaction.i.i100, align 4
  %si_sm.i.i101 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %75 = ptrtoint ptr %si_sm.i.i101 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %si_sm.i.i101, align 4
  %call2.i.i102 = tail call i32 %74(ptr noundef %76, ptr noundef %data6.i98, i32 noundef %62) #11
  %si_state.i103 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %77 = ptrtoint ptr %si_state.i103 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %si_state.i103, align 4
  br label %if.end41

if.else25:                                        ; preds = %if.else13
  %and28 = and i32 %conv, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else25.if.else37_crit_edge, label %land.lhs.true

if.else25.if.else37_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

land.lhs.true:                                    ; preds = %if.else25
  %78 = ptrtoint ptr %oem_data_avail_handler to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %oem_data_avail_handler, align 4
  %tobool30.not = icmp eq ptr %79, null
  br i1 %tobool30.not, label %land.lhs.true.if.else37_crit_edge, label %if.then31

land.lhs.true.if.else37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

if.then31:                                        ; preds = %land.lhs.true
  %call33 = tail call i32 %79(ptr noundef %smi_info) #11
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end41_crit_edge, label %if.then31.retry_crit_edge

if.then31.retry_crit_edge:                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.else37:                                        ; preds = %land.lhs.true.if.else37_crit_edge, %if.else25.if.else37_crit_edge
  %si_state = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %80 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %si_state, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.then31.if.end41_crit_edge, %start_getting_events.exit, %if.then18.if.end41_crit_edge, %start_getting_msg_queue.exit, %if.then9.if.end41_crit_edge, %start_clear_flags.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_alloc_smi_msg() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_smi_msg_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_clear_flags(ptr noundef %smi_info) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg) #11
  %0 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %msg, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 48, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %timer_can_start.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 15
  %6 = ptrtoint ptr %timer_can_start.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %timer_can_start.i.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %entry.smi_mod_timer.exit.i_crit_edge, label %if.end.i.i

entry.smi_mod_timer.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %5, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 17
  %9 = ptrtoint ptr %last_timeout_jiffies.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_timeout_jiffies.i.i, align 4
  %si_timer.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 14
  %call.i.i = tail call i32 @mod_timer(ptr noundef %si_timer.i.i, i32 noundef %add.i) #11
  %timer_running.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 16
  %10 = ptrtoint ptr %timer_running.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %timer_running.i.i, align 1
  br label %smi_mod_timer.exit.i

smi_mod_timer.exit.i:                             ; preds = %if.end.i.i, %entry.smi_mod_timer.exit.i_crit_edge
  %thread.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 28
  %11 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %thread.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %smi_mod_timer.exit.i.start_new_msg.exit_crit_edge, label %if.then.i

smi_mod_timer.exit.i.start_new_msg.exit_crit_edge: ; preds = %smi_mod_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_new_msg.exit

if.then.i:                                        ; preds = %smi_mod_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %12) #11
  br label %start_new_msg.exit

start_new_msg.exit:                               ; preds = %if.then.i, %smi_mod_timer.exit.i.start_new_msg.exit_crit_edge
  %handlers.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %13 = ptrtoint ptr %handlers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handlers.i, align 4
  %start_transaction.i = getelementptr inbounds %struct.si_sm_handlers, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %start_transaction.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %start_transaction.i, align 4
  %si_sm.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %17 = ptrtoint ptr %si_sm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %si_sm.i, align 4
  %call2.i = call i32 %16(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 3) #11
  %si_state = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %19 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %si_state, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_smi_watchdog_pretimeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @setup_oem_data_handler(ptr nocapture noundef %smi_info) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %manufacturer_id.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 25, i32 6
  %0 = ptrtoint ptr %manufacturer_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %manufacturer_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 674, i32 %1)
  %cmp.i = icmp eq i32 %1, 674
  br i1 %cmp.i, label %if.then.i, label %entry.setup_dell_poweredge_oem_data_handler.exit_crit_edge

entry.setup_dell_poweredge_oem_data_handler.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_dell_poweredge_oem_data_handler.exit

if.then.i:                                        ; preds = %entry
  %device_id.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 25
  %2 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp2.i = icmp eq i8 %3, 32
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.then.i.if.else.i_crit_edge

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %device_revision.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 25, i32 1
  %4 = ptrtoint ptr %device_revision.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_revision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %5)
  %cmp5.i = icmp eq i8 %5, -128
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %ipmi_version.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 25, i32 4
  %6 = ptrtoint ptr %ipmi_version.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ipmi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %7)
  %cmp9.i = icmp eq i8 %7, 81
  br i1 %cmp9.i, label %land.lhs.true7.i.if.end29.sink.split.i_crit_edge, label %land.lhs.true7.i.if.else.i_crit_edge

land.lhs.true7.i.if.else.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true7.i.if.end29.sink.split.i_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true7.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %ipmi_version12.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 25, i32 4
  %8 = ptrtoint ptr %ipmi_version12.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ipmi_version12.i, align 4
  %trunc.i = trunc i8 %9 to i4
  %10 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.128)
  switch i4 %trunc.i, label %if.else.i.setup_dell_poweredge_oem_data_handler.exit_crit_edge [
    i4 0, label %if.else.i.if.end29.sink.split.i_crit_edge
    i4 1, label %land.lhs.true21.i
  ]

if.else.i.if.end29.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.sink.split.i

if.else.i.setup_dell_poweredge_oem_data_handler.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_dell_poweredge_oem_data_handler.exit

land.lhs.true21.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %9)
  %cmp24.i = icmp ult i8 %9, 80
  br i1 %cmp24.i, label %land.lhs.true21.i.if.end29.sink.split.i_crit_edge, label %land.lhs.true21.i.setup_dell_poweredge_oem_data_handler.exit_crit_edge

land.lhs.true21.i.setup_dell_poweredge_oem_data_handler.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_dell_poweredge_oem_data_handler.exit

land.lhs.true21.i.if.end29.sink.split.i_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %land.lhs.true21.i.if.end29.sink.split.i_crit_edge, %if.else.i.if.end29.sink.split.i_crit_edge, %land.lhs.true7.i.if.end29.sink.split.i_crit_edge
  %oem_data_avail_handler.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 9
  %11 = ptrtoint ptr %oem_data_avail_handler.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @oem_data_avail_to_receive_msg_avail, ptr %oem_data_avail_handler.i, align 4
  br label %setup_dell_poweredge_oem_data_handler.exit

setup_dell_poweredge_oem_data_handler.exit:       ; preds = %if.end29.sink.split.i, %land.lhs.true21.i.setup_dell_poweredge_oem_data_handler.exit_crit_edge, %if.else.i.setup_dell_poweredge_oem_data_handler.exit_crit_edge, %entry.setup_dell_poweredge_oem_data_handler.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_for_broken_irqs(ptr nocapture noundef %smi_info) unnamed_addr #0 align 64 {
entry:
  %enables.i2 = alloca i8, align 1
  %enables.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enables.i) #11
  %0 = ptrtoint ptr %enables.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enables.i, align 1
  %call.i = call fastcc i32 @get_global_enables(ptr noundef %smi_info, ptr noundef nonnull %enables.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end7.i_crit_edge

entry.if.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %enables.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enables.i, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %if.then.i.check_clr_rcv_irq.exit_crit_edge, label %if.end.i

if.then.i.check_clr_rcv_irq.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_clr_rcv_irq.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %and4.i = and i8 %2, -2
  %call6.i = tail call fastcc i32 @set_global_enables(ptr noundef %smi_info, i8 noundef zeroext %and4.i) #11
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7.i_crit_edge
  %rv.0.i = phi i32 [ %call.i, %entry.if.end7.i_crit_edge ], [ %call6.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0.i)
  %cmp8.i = icmp slt i32 %rv.0.i, 0
  br i1 %cmp8.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.66, i32 noundef %rv.0.i) #14
  br label %check_clr_rcv_irq.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0.i)
  %tobool12.not.i = icmp eq i32 %rv.0.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.check_clr_rcv_irq.exit_crit_edge, label %do.end16.i

if.end11.i.check_clr_rcv_irq.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_clr_rcv_irq.exit

do.end16.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev18.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %6 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev18.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.69) #14
  %cannot_disable_irq.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 21
  %8 = ptrtoint ptr %cannot_disable_irq.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %cannot_disable_irq.i, align 2
  br label %check_clr_rcv_irq.exit

check_clr_rcv_irq.exit:                           ; preds = %do.end16.i, %if.end11.i.check_clr_rcv_irq.exit_crit_edge, %do.end.i, %if.then.i.check_clr_rcv_irq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enables.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enables.i2) #11
  %9 = ptrtoint ptr %enables.i2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enables.i2, align 1
  %irq.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 13
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i3 = icmp eq i32 %11, 0
  br i1 %tobool.not.i3, label %check_clr_rcv_irq.exit.check_set_rcv_irq.exit_crit_edge, label %if.end.i5

check_clr_rcv_irq.exit.check_set_rcv_irq.exit_crit_edge: ; preds = %check_clr_rcv_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_set_rcv_irq.exit

if.end.i5:                                        ; preds = %check_clr_rcv_irq.exit
  %call.i4 = call fastcc i32 @get_global_enables(ptr noundef %smi_info, ptr noundef nonnull %enables.i2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool1.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i5.if.end5.i_crit_edge

if.end.i5.if.end5.i_crit_edge:                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %enables.i2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enables.i2, align 1
  %14 = or i8 %13, 1
  %call4.i = tail call fastcc i32 @set_global_enables(ptr noundef %smi_info, i8 noundef zeroext %14) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i5.if.end5.i_crit_edge
  %rv.0.i6 = phi i32 [ %call.i4, %if.end.i5.if.end5.i_crit_edge ], [ %call4.i, %if.then2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0.i6)
  %cmp.i7 = icmp slt i32 %rv.0.i6, 0
  br i1 %cmp.i7, label %do.end.i9, label %if.end9.i

do.end.i9:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i8 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %15 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.81, i32 noundef %rv.0.i6) #14
  br label %check_set_rcv_irq.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0.i6)
  %tobool10.not.i = icmp eq i32 %rv.0.i6, 0
  br i1 %tobool10.not.i, label %if.end9.i.check_set_rcv_irq.exit_crit_edge, label %do.end14.i

if.end9.i.check_set_rcv_irq.exit_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_set_rcv_irq.exit

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev16.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %17 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.84) #14
  %cannot_disable_irq.i10 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 21
  %19 = ptrtoint ptr %cannot_disable_irq.i10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %cannot_disable_irq.i10, align 2
  %irq_enable_broken.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 22
  %20 = ptrtoint ptr %irq_enable_broken.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %irq_enable_broken.i, align 1
  br label %check_set_rcv_irq.exit

check_set_rcv_irq.exit:                           ; preds = %do.end14.i, %if.end9.i.check_set_rcv_irq.exit_crit_edge, %do.end.i9, %check_clr_rcv_irq.exit.check_set_rcv_irq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enables.i2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_enable_event_buffer(ptr nocapture noundef %smi_info) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg) #11
  %0 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !307
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 272) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 24, ptr %msg, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 47, ptr %0, align 1
  %handlers = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %6 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handlers, align 4
  %start_transaction = getelementptr inbounds %struct.si_sm_handlers, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %start_transaction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start_transaction, align 4
  %si_sm = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %10 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %si_sm, align 4
  %call2 = call i32 %9(ptr noundef %11, ptr noundef nonnull %msg, i32 noundef 2) #11
  %12 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handlers, align 4
  %event.i = getelementptr inbounds %struct.si_sm_handlers, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event.i, align 4
  %16 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %si_sm, align 4
  %call.i = call i32 %15(ptr noundef %17, i32 noundef 0) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end
  %smi_result.0.i = phi i32 [ %call.i, %if.end ], [ %smi_result.0.i.be, %for.cond.i.backedge ]
  %18 = zext i32 %smi_result.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %smi_result.0.i, label %if.end7 [
    i32 1, label %for.cond.i.if.then.i_crit_edge
    i32 2, label %for.cond.i.if.then.i_crit_edge138
    i32 0, label %if.then9.i
    i32 5, label %do.end
  ]

for.cond.i.if.then.i_crit_edge138:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge138
  %call2.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  %19 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handlers, align 4
  %event4.i = getelementptr inbounds %struct.si_sm_handlers, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %event4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %event4.i, align 4
  %23 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %si_sm, align 4
  %call6.i = call i32 @jiffies_to_usecs(i32 noundef 1) #11
  %call7.i114 = call i32 %22(ptr noundef %24, i32 noundef %call6.i) #11
  br label %for.cond.i.backedge

if.then9.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handlers, align 4
  %event11.i = getelementptr inbounds %struct.si_sm_handlers, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %event11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %event11.i, align 4
  %29 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %si_sm, align 4
  %call13.i = call i32 %28(ptr noundef %30, i32 noundef 0) #11
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.then9.i, %if.then.i
  %smi_result.0.i.be = phi i32 [ %call7.i114, %if.then.i ], [ %call13.i, %if.then9.i ]
  br label %for.cond.i

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #14
  br label %out

if.end7:                                          ; preds = %for.cond.i
  %31 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handlers, align 4
  %get_result = getelementptr inbounds %struct.si_sm_handlers, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %get_result to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_result, align 4
  %35 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %si_sm, align 4
  %call10 = call i32 %34(ptr noundef %36, ptr noundef nonnull %call7.i, i32 noundef 272) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call10)
  %cmp = icmp ult i32 %call10, 4
  br i1 %cmp, label %if.end7.do.end27_crit_edge, label %lor.lhs.false

if.end7.do.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

lor.lhs.false:                                    ; preds = %if.end7
  %37 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %38)
  %cmp12.not = icmp eq i8 %38, 28
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false.do.end27_crit_edge

lor.lhs.false.do.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr i8, ptr %call7.i, i32 1
  %39 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %40)
  %cmp17.not = icmp eq i8 %40, 47
  br i1 %cmp17.not, label %lor.lhs.false19, label %lor.lhs.false14.do.end27_crit_edge

lor.lhs.false14.do.end27_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

lor.lhs.false19:                                  ; preds = %lor.lhs.false14
  %arrayidx20 = getelementptr i8, ptr %call7.i, i32 2
  %41 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx20, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp22.not = icmp eq i8 %42, 0
  br i1 %cmp22.not, label %if.end30, label %lor.lhs.false19.do.end27_crit_edge

lor.lhs.false19.do.end27_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end27:                                         ; preds = %lor.lhs.false19.do.end27_crit_edge, %lor.lhs.false14.do.end27_crit_edge, %lor.lhs.false.do.end27_crit_edge, %if.end7.do.end27_crit_edge
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #14
  br label %out

if.end30:                                         ; preds = %lor.lhs.false19
  %arrayidx31 = getelementptr i8, ptr %call7.i, i32 3
  %43 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx31, align 1
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool33.not = icmp eq i8 %45, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %supports_event_msg_buff = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 20
  %46 = ptrtoint ptr %supports_event_msg_buff to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %supports_event_msg_buff, align 1
  br label %out

if.end35:                                         ; preds = %if.end30
  %47 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 24, ptr %msg, align 1
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 46, ptr %0, align 1
  %49 = or i8 %44, 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %1, align 1
  %51 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %handlers, align 4
  %start_transaction43 = getelementptr inbounds %struct.si_sm_handlers, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %start_transaction43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %start_transaction43, align 4
  %55 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %si_sm, align 4
  %call46 = call i32 %54(ptr noundef %56, ptr noundef nonnull %msg, i32 noundef 3) #11
  %57 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %handlers, align 4
  %event.i116 = getelementptr inbounds %struct.si_sm_handlers, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %event.i116 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %event.i116, align 4
  %61 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %si_sm, align 4
  %call.i118 = call i32 %60(ptr noundef %62, i32 noundef 0) #11
  br label %for.cond.i120

for.cond.i120:                                    ; preds = %for.cond.i120.backedge, %if.end35
  %smi_result.0.i119 = phi i32 [ %call.i118, %if.end35 ], [ %smi_result.0.i119.be, %for.cond.i120.backedge ]
  %63 = zext i32 %smi_result.0.i119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %smi_result.0.i119, label %if.end55 [
    i32 1, label %for.cond.i120.if.then.i125_crit_edge
    i32 2, label %for.cond.i120.if.then.i125_crit_edge139
    i32 0, label %if.then9.i128
    i32 5, label %do.end52
  ]

for.cond.i120.if.then.i125_crit_edge139:          ; preds = %for.cond.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i125

for.cond.i120.if.then.i125_crit_edge:             ; preds = %for.cond.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i125

if.then.i125:                                     ; preds = %for.cond.i120.if.then.i125_crit_edge, %for.cond.i120.if.then.i125_crit_edge139
  %call2.i121 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  %64 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %handlers, align 4
  %event4.i122 = getelementptr inbounds %struct.si_sm_handlers, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %event4.i122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %event4.i122, align 4
  %68 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %si_sm, align 4
  %call6.i123 = call i32 @jiffies_to_usecs(i32 noundef 1) #11
  %call7.i124 = call i32 %67(ptr noundef %69, i32 noundef %call6.i123) #11
  br label %for.cond.i120.backedge

if.then9.i128:                                    ; preds = %for.cond.i120
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %handlers, align 4
  %event11.i126 = getelementptr inbounds %struct.si_sm_handlers, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %event11.i126 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %event11.i126, align 4
  %74 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %si_sm, align 4
  %call13.i127 = call i32 %73(ptr noundef %75, i32 noundef 0) #11
  br label %for.cond.i120.backedge

for.cond.i120.backedge:                           ; preds = %if.then9.i128, %if.then.i125
  %smi_result.0.i119.be = phi i32 [ %call7.i124, %if.then.i125 ], [ %call13.i127, %if.then9.i128 ]
  br label %for.cond.i120

do.end52:                                         ; preds = %for.cond.i120
  call void @__sanitizer_cov_trace_pc() #13
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #14
  br label %out

if.end55:                                         ; preds = %for.cond.i120
  %76 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %handlers, align 4
  %get_result57 = getelementptr inbounds %struct.si_sm_handlers, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %get_result57 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_result57, align 4
  %80 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %si_sm, align 4
  %call59 = call i32 %79(ptr noundef %81, ptr noundef nonnull %call7.i, i32 noundef 272) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call59)
  %cmp60 = icmp ult i32 %call59, 3
  br i1 %cmp60, label %if.end55.do.end75_crit_edge, label %lor.lhs.false62

if.end55.do.end75_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

lor.lhs.false62:                                  ; preds = %if.end55
  %82 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %83)
  %cmp65.not = icmp eq i8 %83, 28
  br i1 %cmp65.not, label %lor.lhs.false67, label %lor.lhs.false62.do.end75_crit_edge

lor.lhs.false62.do.end75_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

lor.lhs.false67:                                  ; preds = %lor.lhs.false62
  %84 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %85)
  %cmp70.not = icmp eq i8 %85, 46
  br i1 %cmp70.not, label %if.end78, label %lor.lhs.false67.do.end75_crit_edge

lor.lhs.false67.do.end75_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

do.end75:                                         ; preds = %lor.lhs.false67.do.end75_crit_edge, %lor.lhs.false62.do.end75_crit_edge, %if.end55.do.end75_crit_edge
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #14
  br label %out

if.end78:                                         ; preds = %lor.lhs.false67
  %86 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx20, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp81.not = icmp eq i8 %87, 0
  br i1 %cmp81.not, label %if.else, label %if.end78.out_crit_edge

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %supports_event_msg_buff84 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 20
  %88 = ptrtoint ptr %supports_event_msg_buff84 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %supports_event_msg_buff84, align 1
  br label %out

out:                                              ; preds = %if.else, %if.end78.out_crit_edge, %do.end75, %do.end52, %if.then34, %do.end27, %do.end
  %rv.0 = phi i32 [ -19, %do.end ], [ -22, %do.end27 ], [ 0, %if.then34 ], [ -19, %do.end52 ], [ -22, %do.end75 ], [ 0, %if.else ], [ -2, %if.end78.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_add_smi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @oem_data_avail_to_receive_msg_avail(ptr nocapture noundef %smi_info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_flags = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 10
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_flags, align 4
  %2 = and i8 %1, 30
  %3 = or i8 %2, 1
  store i8 %3, ptr %msg_flags, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dell_poweredge_bt_xaction_handler(ptr nocapture noundef readnone %self, i32 noundef %unused, ptr nocapture noundef %in) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_msg = getelementptr inbounds %struct.smi_info, ptr %in, i32 0, i32 6
  %0 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_msg, align 4
  %data_size = getelementptr inbounds %struct.ipmi_smi_msg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp ugt i32 %3, 7
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %data1 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data1, align 1
  %.mask = and i8 %5, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %.mask)
  %cmp3 = icmp eq i8 %.mask, 40
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %arrayidx6 = getelementptr %struct.ipmi_smi_msg, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %7)
  %cmp8 = icmp eq i8 %7, 35
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true10:                                  ; preds = %land.lhs.true5
  %arrayidx11 = getelementptr %struct.ipmi_smi_msg, ptr %1, i32 0, i32 5, i32 7
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %9)
  %cmp13 = icmp eq i8 %9, 58
  br i1 %cmp13, label %if.then, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  %10 = or i8 %5, 4
  %rsp.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rsp.i, align 4
  %arrayidx6.i = getelementptr %struct.ipmi_smi_msg, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 35, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr %struct.ipmi_smi_msg, ptr %1, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -54, ptr %arrayidx8.i, align 2
  %rsp_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %rsp_size.i, align 4
  %15 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %curr_msg, align 4
  %intf.i.i = getelementptr inbounds %struct.smi_info, ptr %in, i32 0, i32 1
  %16 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf.i.i, align 4
  tail call void @ipmi_smi_msg_received(ptr noundef %17, ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32769, %if.then ], [ 0, %land.lhs.true10.cleanup_crit_edge ], [ 0, %land.lhs.true5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_global_enables(ptr nocapture noundef readonly %smi_info, ptr nocapture noundef writeonly %enables) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg) #11
  %0 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !307
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 272) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 24, ptr %msg, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 47, ptr %3, align 1
  %handlers = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %6 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handlers, align 4
  %start_transaction = getelementptr inbounds %struct.si_sm_handlers, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %start_transaction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start_transaction, align 4
  %si_sm = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %10 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %si_sm, align 4
  %call2 = call i32 %9(ptr noundef %11, ptr noundef nonnull %msg, i32 noundef 2) #11
  %12 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handlers, align 4
  %event.i = getelementptr inbounds %struct.si_sm_handlers, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event.i, align 4
  %16 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %si_sm, align 4
  %call.i = call i32 %15(ptr noundef %17, i32 noundef 0) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end
  %smi_result.0.i = phi i32 [ %call.i, %if.end ], [ %smi_result.0.i.be, %for.cond.i.backedge ]
  %18 = zext i32 %smi_result.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %smi_result.0.i, label %if.end6 [
    i32 1, label %for.cond.i.if.then.i_crit_edge
    i32 2, label %for.cond.i.if.then.i_crit_edge61
    i32 0, label %if.then9.i
    i32 5, label %do.end
  ]

for.cond.i.if.then.i_crit_edge61:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge61
  %call2.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  %19 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handlers, align 4
  %event4.i = getelementptr inbounds %struct.si_sm_handlers, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %event4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %event4.i, align 4
  %23 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %si_sm, align 4
  %call6.i = call i32 @jiffies_to_usecs(i32 noundef 1) #11
  %call7.i58 = call i32 %22(ptr noundef %24, i32 noundef %call6.i) #11
  br label %for.cond.i.backedge

if.then9.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handlers, align 4
  %event11.i = getelementptr inbounds %struct.si_sm_handlers, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %event11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %event11.i, align 4
  %29 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %si_sm, align 4
  %call13.i = call i32 %28(ptr noundef %30, i32 noundef 0) #11
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.then9.i, %if.then.i
  %smi_result.0.i.be = phi i32 [ %call7.i58, %if.then.i ], [ %call13.i, %if.then9.i ]
  br label %for.cond.i

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.71, i32 noundef -19) #14
  br label %out

if.end6:                                          ; preds = %for.cond.i
  %33 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handlers, align 4
  %get_result = getelementptr inbounds %struct.si_sm_handlers, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %get_result to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_result, align 4
  %37 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %si_sm, align 4
  %call9 = call i32 %36(ptr noundef %38, ptr noundef nonnull %call7.i, i32 noundef 272) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call9)
  %cmp = icmp ult i32 %call9, 4
  br i1 %cmp, label %if.end6.do.end26_crit_edge, label %lor.lhs.false

if.end6.do.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

lor.lhs.false:                                    ; preds = %if.end6
  %39 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %40)
  %cmp11.not = icmp eq i8 %40, 28
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.do.end26_crit_edge

lor.lhs.false.do.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %arrayidx14 = getelementptr i8, ptr %call7.i, i32 1
  %41 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %42)
  %cmp16.not = icmp eq i8 %42, 47
  br i1 %cmp16.not, label %lor.lhs.false18, label %lor.lhs.false13.do.end26_crit_edge

lor.lhs.false13.do.end26_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

lor.lhs.false18:                                  ; preds = %lor.lhs.false13
  %arrayidx19 = getelementptr i8, ptr %call7.i, i32 2
  %43 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp21.not = icmp eq i8 %44, 0
  br i1 %cmp21.not, label %if.else, label %lor.lhs.false18.do.end26_crit_edge

lor.lhs.false18.do.end26_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.end26:                                         ; preds = %lor.lhs.false18.do.end26_crit_edge, %lor.lhs.false13.do.end26_crit_edge, %lor.lhs.false.do.end26_crit_edge, %if.end6.do.end26_crit_edge
  %dev28 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %45 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev28, align 4
  %47 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %call7.i, align 8
  %conv30 = zext i8 %48 to i32
  %arrayidx31 = getelementptr i8, ptr %call7.i, i32 1
  %49 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %50 to i32
  %arrayidx33 = getelementptr i8, ptr %call7.i, i32 2
  %51 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx33, align 2
  %conv34 = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.74, i32 noundef %call9, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv34) #14
  br label %out

if.else:                                          ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx35 = getelementptr i8, ptr %call7.i, i32 3
  %53 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx35, align 1
  %55 = ptrtoint ptr %enables to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %enables, align 1
  br label %out

out:                                              ; preds = %if.else, %do.end26, %do.end
  %rv.0 = phi i32 [ -19, %do.end ], [ -22, %do.end26 ], [ 0, %if.else ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_global_enables(ptr nocapture noundef readonly %smi_info, i8 noundef zeroext %enables) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 272) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %msg, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 46, ptr %2, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %enables, ptr %1, align 1
  %handlers = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %6 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handlers, align 4
  %start_transaction = getelementptr inbounds %struct.si_sm_handlers, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %start_transaction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start_transaction, align 4
  %si_sm = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %10 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %si_sm, align 4
  %call3 = call i32 %9(ptr noundef %11, ptr noundef nonnull %msg, i32 noundef 3) #11
  %12 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handlers, align 4
  %event.i = getelementptr inbounds %struct.si_sm_handlers, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event.i, align 4
  %16 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %si_sm, align 4
  %call.i = call i32 %15(ptr noundef %17, i32 noundef 0) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end
  %smi_result.0.i = phi i32 [ %call.i, %if.end ], [ %smi_result.0.i.be, %for.cond.i.backedge ]
  %18 = zext i32 %smi_result.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %smi_result.0.i, label %if.end7 [
    i32 1, label %for.cond.i.if.then.i_crit_edge
    i32 2, label %for.cond.i.if.then.i_crit_edge58
    i32 0, label %if.then9.i
    i32 5, label %do.end
  ]

for.cond.i.if.then.i_crit_edge58:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge58
  %call2.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  %19 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handlers, align 4
  %event4.i = getelementptr inbounds %struct.si_sm_handlers, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %event4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %event4.i, align 4
  %23 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %si_sm, align 4
  %call6.i = call i32 @jiffies_to_usecs(i32 noundef 1) #11
  %call7.i55 = call i32 %22(ptr noundef %24, i32 noundef %call6.i) #11
  br label %for.cond.i.backedge

if.then9.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handlers, align 4
  %event11.i = getelementptr inbounds %struct.si_sm_handlers, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %event11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %event11.i, align 4
  %29 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %si_sm, align 4
  %call13.i = call i32 %28(ptr noundef %30, i32 noundef 0) #11
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.then9.i, %if.then.i
  %smi_result.0.i.be = phi i32 [ %call7.i55, %if.then.i ], [ %call13.i, %if.then9.i ]
  br label %for.cond.i

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.76, i32 noundef -19) #14
  br label %out

if.end7:                                          ; preds = %for.cond.i
  %33 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handlers, align 4
  %get_result = getelementptr inbounds %struct.si_sm_handlers, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %get_result to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_result, align 4
  %37 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %si_sm, align 4
  %call10 = call i32 %36(ptr noundef %38, ptr noundef nonnull %call7.i, i32 noundef 272) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call10)
  %cmp = icmp ult i32 %call10, 3
  br i1 %cmp, label %if.end7.do.end22_crit_edge, label %lor.lhs.false

if.end7.do.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

lor.lhs.false:                                    ; preds = %if.end7
  %39 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %40)
  %cmp12.not = icmp eq i8 %40, 28
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false.do.end22_crit_edge

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr i8, ptr %call7.i, i32 1
  %41 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %42)
  %cmp17.not = icmp eq i8 %42, 46
  br i1 %cmp17.not, label %if.end29, label %lor.lhs.false14.do.end22_crit_edge

lor.lhs.false14.do.end22_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false14.do.end22_crit_edge, %lor.lhs.false.do.end22_crit_edge, %if.end7.do.end22_crit_edge
  %dev24 = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 8, i32 19
  %43 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev24, align 4
  %45 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %call7.i, align 8
  %conv26 = zext i8 %46 to i32
  %arrayidx27 = getelementptr i8, ptr %call7.i, i32 1
  %47 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %48 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.79, i32 noundef %call10, i32 noundef %conv26, i32 noundef %conv28) #14
  br label %out

if.end29:                                         ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx30 = getelementptr i8, ptr %call7.i, i32 2
  %49 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp32.not = icmp ne i8 %50, 0
  %spec.select = zext i1 %cmp32.not to i32
  br label %out

out:                                              ; preds = %if.end29, %do.end22, %do.end
  %rv.0 = phi i32 [ -19, %do.end ], [ -22, %do.end22 ], [ %spec.select, %if.end29 ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %si_type = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 18
  %2 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %si_type, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @si_to_str, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.98, ptr noundef %5) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupts_enabled_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %interrupt_disabled = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %interrupt_disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interrupt_disabled, align 4, !range !308
  %6 = xor i8 %5, 1
  %lnot = zext i8 %6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %lnot, %land.rhs ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.100, i32 noundef %7) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @short_timeouts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stats = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #11
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %stats, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @long_timeouts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idles_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attentions_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flag_fetches_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hosed_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @complete_transactions_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @events_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_pretimeouts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @incoming_messages_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.smi_info, ptr %1, i32 0, i32 27, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @params_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %si_type = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 18
  %2 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %si_type, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @si_to_str, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %addr_space = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %addr_space to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr_space, align 4
  %arrayidx2 = getelementptr [2 x ptr], ptr @addr_space_to_str, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %addr_data = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 7
  %10 = ptrtoint ptr %addr_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_data, align 4
  %regspacing = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regspacing, align 4
  %regsize = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regsize, align 4
  %regshift = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 5
  %16 = ptrtoint ptr %regshift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regshift, align 4
  %irq = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 13
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %slave_addr = getelementptr inbounds %struct.smi_info, ptr %1, i32 0, i32 8, i32 17
  %20 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %slave_addr, align 4
  %conv = zext i8 %21 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.114, ptr noundef %5, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %conv) #11
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smi_start_processing(ptr noundef %send_info, ptr noundef %intf) #0 align 64 {
smi_mod_timer.exit:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 1
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %intf, ptr %intf1, align 4
  %si_timer = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 14
  tail call void @init_timer_key(ptr noundef %si_timer, ptr noundef nonnull @smi_timeout, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef nonnull @smi_start_processing.__key) #11
  %timer_can_start = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 15
  %1 = ptrtoint ptr %timer_can_start to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %timer_can_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 1
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 17
  %4 = ptrtoint ptr %last_timeout_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_timeout_jiffies.i, align 4
  %call.i = tail call i32 @mod_timer(ptr noundef %si_timer, i32 noundef %add) #11
  %timer_running.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 16
  %5 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %timer_running.i, align 1
  %irq_setup = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 14
  %6 = ptrtoint ptr %irq_setup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_setup, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %smi_mod_timer.exit.if.end_crit_edge, label %if.then

smi_mod_timer.exit.if.end_crit_edge:              ; preds = %smi_mod_timer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %smi_mod_timer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %io = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8
  %irq_handler_data = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 15
  %8 = ptrtoint ptr %irq_handler_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %send_info, ptr %irq_handler_data, align 4
  %call = tail call i32 %7(ptr noundef %io) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %smi_mod_timer.exit.if.end_crit_edge
  %9 = ptrtoint ptr %send_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %send_info, align 4
  %11 = load i32, ptr @num_force_kipmid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %arrayidx = getelementptr [4 x i32], ptr @force_kipmid, i32 0, i32 %10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %phi.cmp = icmp eq i32 %13, 0
  br i1 %phi.cmp, label %if.then6.if.end34_crit_edge, label %if.then6.if.then16_crit_edge

if.then6.if.then16_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then6.if.end34_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else:                                          ; preds = %if.end
  %si_type = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 18
  %14 = ptrtoint ptr %si_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %si_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp9.not = icmp eq i32 %15, 3
  br i1 %cmp9.not, label %if.else.if.end34_crit_edge, label %if.end14

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end14:                                         ; preds = %if.else
  %irq = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 13
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not.not = icmp eq i32 %17, 0
  br i1 %tobool11.not.not, label %if.end14.if.then16_crit_edge, label %if.end14.if.end34_crit_edge

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.then6.if.then16_crit_edge
  %call18 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ipmi_thread, ptr noundef %send_info, i32 noundef -1, ptr noundef nonnull @.str.116, i32 noundef %10) #11
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end28, label %if.end22

if.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 @wake_up_process(ptr noundef %call18) #11
  %thread = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 28
  %18 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call18, ptr %thread, align 4
  br label %if.end34

do.end28:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %thread57 = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 28
  %19 = ptrtoint ptr %thread57 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %thread57, align 4
  %dev = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 19
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %21, ptr noundef nonnull @.str.117, i32 noundef %22) #14
  %23 = ptrtoint ptr %thread57 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %thread57, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %if.end22, %if.end14.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.then6.if.end34_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shutdown_smi(ptr noundef %send_info) #0 align 64 {
entry:
  %msg.i.i = alloca [2 x i8], align 1
  %groups.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_group_added = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 26
  %0 = ptrtoint ptr %dev_group_added to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dev_group_added, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups.i) #11
  %4 = getelementptr inbounds [2 x ptr], ptr %groups.i, i32 0, i32 1
  %5 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ipmi_si_dev_attr_group, ptr %groups.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %4, align 4
  call void @device_remove_groups(ptr noundef %3, ptr noundef nonnull %groups.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups.i) #11
  %7 = ptrtoint ptr %dev_group_added to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dev_group_added, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %io2 = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8
  %dev3 = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 19
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %interrupt_disabled = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 19
  %11 = ptrtoint ptr %interrupt_disabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %interrupt_disabled, align 4
  %irq_cleanup = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 16
  %12 = ptrtoint ptr %irq_cleanup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_cleanup, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end8.if.end17_crit_edge, label %if.then11

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void %13(ptr noundef %io2) #11
  %14 = ptrtoint ptr %irq_cleanup to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %irq_cleanup, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end8.if.end17_crit_edge
  %thread.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 28
  %15 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %thread.i, align 4
  %cmp.not.i = icmp eq ptr %16, null
  br i1 %cmp.not.i, label %if.end17.stop_timer_and_thread.exit_crit_edge, label %if.then.i

if.end17.stop_timer_and_thread.exit_crit_edge:    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop_timer_and_thread.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 @kthread_stop(ptr noundef nonnull %16) #11
  %17 = ptrtoint ptr %thread.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %thread.i, align 4
  br label %stop_timer_and_thread.exit

stop_timer_and_thread.exit:                       ; preds = %if.then.i, %if.end17.stop_timer_and_thread.exit_crit_edge
  %timer_can_start.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 15
  %18 = ptrtoint ptr %timer_can_start.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %timer_can_start.i, align 4
  %si_timer.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 14
  %call3.i = call i32 @del_timer_sync(ptr noundef %si_timer.i) #11
  call void @synchronize_rcu() #11
  %si_state = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 7
  %curr_msg = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 6
  %run_to_completion1.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 13
  %si_lock.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %poll.exit, %stop_timer_and_thread.exit
  %19 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %curr_msg, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %21 = ptrtoint ptr %si_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %si_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %23 = ptrtoint ptr %run_to_completion1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %run_to_completion1.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 2147480) #11
  br i1 %tobool.not.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 10) #11
  br label %poll.exit

if.then9.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %si_lock.i) #11
  %call717.i = call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 10) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %si_lock.i, i32 noundef %call4.i) #11
  br label %poll.exit

poll.exit:                                        ; preds = %if.then9.i, %if.end.i
  %call = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %handlers = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 3
  %26 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handlers, align 4
  %tobool19.not = icmp eq ptr %27, null
  br i1 %tobool19.not, label %while.end.while.cond23.preheader_crit_edge, label %if.then20

while.end.while.cond23.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond23.preheader

if.then20:                                        ; preds = %while.end
  %irq.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 13
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i80 = icmp eq i32 %29, 0
  br i1 %tobool.not.i80, label %if.then20.while.cond23.preheader_crit_edge, label %land.lhs.true.i

if.then20.while.cond23.preheader_crit_edge:       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond23.preheader

land.lhs.true.i:                                  ; preds = %if.then20
  %30 = ptrtoint ptr %interrupt_disabled to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %interrupt_disabled, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i = icmp eq i8 %31, 0
  br i1 %tobool1.not.i, label %if.then.i81, label %land.lhs.true.i.while.cond23.preheader_crit_edge

land.lhs.true.i.while.cond23.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond23.preheader

if.then.i81:                                      ; preds = %land.lhs.true.i
  %32 = ptrtoint ptr %interrupt_disabled to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %interrupt_disabled, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #11
  %33 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 24, ptr %msg.i.i, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 47, ptr %33, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %37 = ptrtoint ptr %timer_can_start.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %timer_can_start.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i81.smi_mod_timer.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i81.smi_mod_timer.exit.i.i.i_crit_edge:   ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i = add i32 %36, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 17
  %40 = ptrtoint ptr %last_timeout_jiffies.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %last_timeout_jiffies.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @mod_timer(ptr noundef %si_timer.i, i32 noundef %add.i.i.i) #11
  %timer_running.i.i.i.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 16
  %41 = ptrtoint ptr %timer_running.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %timer_running.i.i.i.i, align 1
  br label %smi_mod_timer.exit.i.i.i

smi_mod_timer.exit.i.i.i:                         ; preds = %if.end.i.i.i.i, %if.then.i81.smi_mod_timer.exit.i.i.i_crit_edge
  %42 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %thread.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %smi_mod_timer.exit.i.i.i.start_check_enables.exit.i_crit_edge, label %if.then.i.i.i

smi_mod_timer.exit.i.i.i.start_check_enables.exit.i_crit_edge: ; preds = %smi_mod_timer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_check_enables.exit.i

if.then.i.i.i:                                    ; preds = %smi_mod_timer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 @wake_up_process(ptr noundef nonnull %43) #11
  br label %start_check_enables.exit.i

start_check_enables.exit.i:                       ; preds = %if.then.i.i.i, %smi_mod_timer.exit.i.i.i.start_check_enables.exit.i_crit_edge
  %44 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handlers, align 4
  %start_transaction.i.i.i = getelementptr inbounds %struct.si_sm_handlers, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %start_transaction.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %start_transaction.i.i.i, align 4
  %si_sm.i.i.i = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 2
  %48 = ptrtoint ptr %si_sm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %si_sm.i.i.i, align 4
  %call2.i.i.i = call i32 %47(ptr noundef %49, ptr noundef nonnull %msg.i.i, i32 noundef 2) #11
  %50 = ptrtoint ptr %si_state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %si_state, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #11
  br label %while.cond23.preheader

while.cond23.preheader:                           ; preds = %start_check_enables.exit.i, %land.lhs.true.i.while.cond23.preheader_crit_edge, %if.then20.while.cond23.preheader_crit_edge, %while.end.while.cond23.preheader_crit_edge
  br label %while.cond23

while.cond23:                                     ; preds = %poll.exit90, %while.cond23.preheader
  %51 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %curr_msg, align 4
  %tobool25.not = icmp eq ptr %52, null
  br i1 %tobool25.not, label %lor.rhs26, label %while.cond23.while.body30_crit_edge

while.cond23.while.body30_crit_edge:              ; preds = %while.cond23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body30

lor.rhs26:                                        ; preds = %while.cond23
  %53 = ptrtoint ptr %si_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %si_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp28.not = icmp eq i32 %54, 0
  br i1 %cmp28.not, label %while.end32, label %lor.rhs26.while.body30_crit_edge

lor.rhs26.while.body30_crit_edge:                 ; preds = %lor.rhs26
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body30

while.body30:                                     ; preds = %lor.rhs26.while.body30_crit_edge, %while.cond23.while.body30_crit_edge
  %55 = ptrtoint ptr %run_to_completion1.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %run_to_completion1.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i83 = icmp eq i8 %56, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 2147480) #11
  br i1 %tobool.not.i83, label %if.then9.i89, label %if.end.i85

if.end.i85:                                       ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i84 = call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 10) #11
  br label %poll.exit90

if.then9.i89:                                     ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i87 = call i32 @_raw_spin_lock_irqsave(ptr noundef %si_lock.i) #11
  %call717.i88 = call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 10) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %si_lock.i, i32 noundef %call4.i87) #11
  br label %poll.exit90

poll.exit90:                                      ; preds = %if.then9.i89, %if.end.i85
  %call31 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  br label %while.cond23

while.end32:                                      ; preds = %lor.rhs26
  %58 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %handlers, align 4
  %tobool34.not = icmp eq ptr %59, null
  br i1 %tobool34.not, label %while.end32.if.end37_crit_edge, label %if.then35

while.end32.if.end37_crit_edge:                   ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then35:                                        ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #13
  %cleanup = getelementptr inbounds %struct.si_sm_handlers, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cleanup, align 4
  %si_sm = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 2
  %62 = ptrtoint ptr %si_sm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %si_sm, align 4
  call void %61(ptr noundef %63) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %while.end32.if.end37_crit_edge
  %io_cleanup = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 11
  %64 = ptrtoint ptr %io_cleanup to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_cleanup, align 4
  %tobool39.not = icmp eq ptr %65, null
  br i1 %tobool39.not, label %if.end37.if.end46_crit_edge, label %if.then40

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void %65(ptr noundef %io2) #11
  %66 = ptrtoint ptr %io_cleanup to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %io_cleanup, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end37.if.end46_crit_edge
  %si_sm47 = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 2
  %67 = ptrtoint ptr %si_sm47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %si_sm47, align 4
  call void @kfree(ptr noundef %68) #11
  %69 = ptrtoint ptr %si_sm47 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %si_sm47, align 4
  %intf = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 1
  %70 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %intf, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_smi_info(ptr nocapture noundef readonly %send_info, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_source = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 8
  %0 = ptrtoint ptr %addr_source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_source, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %data, align 4
  %dev = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 8, i32 19
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.ipmi_smi_info, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dev2, align 4
  %6 = load ptr, ptr %dev, align 4
  %call = tail call ptr @get_device(ptr noundef %6) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sender(ptr noundef %send_info, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %run_to_completion = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 13
  %0 = ptrtoint ptr %run_to_completion to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %run_to_completion, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %waiting_msg = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 5
  %2 = ptrtoint ptr %waiting_msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %msg, ptr %waiting_msg, align 4
  br label %cleanup

do.body1:                                         ; preds = %entry
  %si_lock = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %si_lock) #11
  %waiting_msg6 = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 5
  %3 = ptrtoint ptr %waiting_msg6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %waiting_msg6, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %do.end19, label %do.body11, !prof !309

do.body11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/ipmi/ipmi_si_intf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 923, 0\0A.popsection", ""() #11, !srcloc !310
  unreachable

do.end19:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %waiting_msg6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msg, ptr %waiting_msg6, align 4
  tail call fastcc void @check_start_timer_thread(ptr noundef %send_info)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %si_lock, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @request_events(ptr noundef %send_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %has_event_buffer = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 11
  %0 = ptrtoint ptr %has_event_buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_event_buffer, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %req_events = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_events, i32 noundef 4) #11
  %2 = ptrtoint ptr %req_events to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %req_events, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_need_watch(ptr noundef %send_info, i32 noundef %watch_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %watch_mask)
  %tobool = icmp ne i32 %watch_mask, 0
  %lnot.ext = zext i1 %tobool to i32
  %need_watch = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %need_watch, i32 noundef 4) #11
  %0 = ptrtoint ptr %need_watch to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %lnot.ext, ptr %need_watch, align 4
  %si_lock = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %si_lock) #11
  tail call fastcc void @check_start_timer_thread(ptr noundef %send_info)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %si_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_messages(ptr noundef %send_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not3 = icmp eq i32 %call, 4
  br i1 %cmp.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 53687000) #11
  %call1 = tail call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 250)
  %cmp.not = icmp eq i32 %call1, 4
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_run_to_completion(ptr noundef %send_info, i1 noundef zeroext %i_run_to_completion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %i_run_to_completion to i8
  %run_to_completion = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 13
  %0 = ptrtoint ptr %run_to_completion to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %run_to_completion, align 4
  br i1 %i_run_to_completion, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not3.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not3.i, label %if.then.if.end_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 53687000) #11
  %call1.i = tail call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 250) #11
  %cmp.not.i = icmp eq i32 %call1.i, 4
  br i1 %cmp.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll(ptr noundef %send_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %run_to_completion1 = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 13
  %0 = ptrtoint ptr %run_to_completion1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %run_to_completion1, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #11
  br i1 %tobool.not, label %if.then9, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 10)
  br label %if.end11

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %si_lock = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %si_lock) #11
  %call717 = tail call fastcc i32 @smi_event_handler(ptr noundef %send_info, i32 noundef 10)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %si_lock, i32 noundef %call4) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_maintenance_mode(ptr noundef %send_info, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %req_events = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_events, i32 noundef 4) #11
  %0 = ptrtoint ptr %req_events to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %req_events, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %frombool = zext i1 %enable to i8
  %in_maintenance_mode = getelementptr inbounds %struct.smi_info, ptr %send_info, i32 0, i32 23
  %1 = ptrtoint ptr %in_maintenance_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %in_maintenance_mode, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smi_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -164
  %si_lock = getelementptr i8, ptr %t, i32 -148
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %si_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies = getelementptr i8, ptr %t, i32 52
  %1 = ptrtoint ptr %last_timeout_jiffies to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_timeout_jiffies, align 4
  %sub = sub i32 %0, %2
  %mul = mul i32 %sub, 10000
  %call6 = tail call fastcc i32 @smi_event_handler(ptr noundef %add.ptr, i32 noundef %mul)
  %irq = getelementptr i8, ptr %t, i32 -44
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %interrupt_disabled = getelementptr i8, ptr %t, i32 60
  %5 = ptrtoint ptr %interrupt_disabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %interrupt_disabled, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %arrayidx = getelementptr i8, ptr %t, i32 100
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #11, !srcloc !306
  br label %do_mod_timer

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp8 = icmp eq i32 %call6, 1
  br i1 %cmp8, label %do_mod_timer.thread, label %if.else

do_mod_timer.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %stats11 = getelementptr i8, ptr %t, i32 96
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats11, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %stats11, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats11, ptr %stats11, i32 1, ptr elementtype(i32) %stats11) #11, !srcloc !306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  br label %if.then20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15 = getelementptr i8, ptr %t, i32 100
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx15, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %arrayidx15, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx15, ptr %arrayidx15, i32 1, ptr elementtype(i32) %arrayidx15) #11, !srcloc !306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  br label %do_mod_timer

do_mod_timer:                                     ; preds = %if.else, %if.then
  %timeout.0.in = phi i32 [ %12, %if.else ], [ %7, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call6)
  %cmp18.not = icmp eq i32 %call6, 4
  br i1 %cmp18.not, label %do_mod_timer.if.end22.sink.split_crit_edge, label %do_mod_timer.if.then20_crit_edge

do_mod_timer.if.then20_crit_edge:                 ; preds = %do_mod_timer
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

do_mod_timer.if.end22.sink.split_crit_edge:       ; preds = %do_mod_timer
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.sink.split

if.then20:                                        ; preds = %do_mod_timer.if.then20_crit_edge, %do_mod_timer.thread
  %timeout.0.in39 = phi i32 [ %10, %do_mod_timer.thread ], [ %timeout.0.in, %do_mod_timer.if.then20_crit_edge ]
  %timer_can_start.i = getelementptr i8, ptr %t, i32 48
  %13 = ptrtoint ptr %timer_can_start.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %timer_can_start.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then20.if.end22_crit_edge, label %if.end.i

if.then20.if.end22_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %timeout.0 = add i32 %timeout.0.in39, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %last_timeout_jiffies to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_timeout_jiffies, align 4
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %timeout.0) #11
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.end.i, %do_mod_timer.if.end22.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.end.i ], [ 0, %do_mod_timer.if.end22.sink.split_crit_edge ]
  %timer_running.i = getelementptr i8, ptr %t, i32 49
  %17 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %timer_running.i, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.then20.if.end22_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %si_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_thread(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !296) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %3, i32 noundef 19) #11
  %call2117 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %call2117, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %si_lock = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 4
  %timer_running = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 16
  %timer_can_start.i = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 15
  %last_timeout_jiffies.i = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 17
  %si_timer.i = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 14
  %need_watch = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 18
  %in_maintenance_mode = getelementptr inbounds %struct.smi_info, ptr %data, i32 0, i32 23
  br label %while.body

while.body:                                       ; preds = %if.end101.while.body_crit_edge, %while.body.lr.ph
  %busy_until.0118 = phi i64 [ -1, %while.body.lr.ph ], [ %busy_until.1, %if.end101.while.body_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %si_lock) #11
  %call8 = tail call fastcc i32 @smi_event_handler(ptr noundef %data, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 4
  br i1 %cmp9.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = ptrtoint ptr %timer_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %timer_running, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %timer_can_start.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %timer_can_start.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %6, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %last_timeout_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_timeout_jiffies.i, align 4
  %call.i = tail call i32 @mod_timer(ptr noundef %si_timer.i, i32 noundef %add) #11
  %11 = ptrtoint ptr %timer_running to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %timer_running, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %si_lock, i32 noundef %call5) #11
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %14 = load i32, ptr @num_max_busy_us, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp.i = icmp slt i32 %13, %14
  br i1 %cmp.i, label %if.end.i115, label %if.end.cleanup.sink.split.i_crit_edge

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i115:                                      ; preds = %if.end
  %arrayidx.i = getelementptr [4 x i32], ptr @kipmid_max_busy_us, i32 0, i32 %13
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2.i = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp3.not.i = icmp eq i32 %call8, 1
  %or.cond.i = and i1 %cmp3.not.i, %cmp2.i
  br i1 %or.cond.i, label %if.else.i, label %if.end.i115.cleanup.sink.split.i_crit_edge

if.end.i115.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %busy_until.0118)
  %cmp6.i = icmp eq i64 %busy_until.0118, -1
  %call8.i = tail call i64 @ktime_get() #11
  br i1 %cmp6.i, label %if.then7.i, label %if.else9.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = mul i32 %16, 1000
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %call8.i, %conv.i
  br label %cleanup.sink.split.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call8.i, i64 %busy_until.0118)
  %cmp11.i = icmp sgt i64 %call8.i, %busy_until.0118
  br i1 %cmp11.i, label %if.else9.i.cleanup.sink.split.i_crit_edge, label %if.else9.i.ipmi_thread_busy_wait.exit_crit_edge, !prof !311

if.else9.i.ipmi_thread_busy_wait.exit_crit_edge:  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipmi_thread_busy_wait.exit

if.else9.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else9.i.cleanup.sink.split.i_crit_edge, %if.then7.i, %if.end.i115.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i64 [ %add.i, %if.then7.i ], [ -1, %if.end.cleanup.sink.split.i_crit_edge ], [ -1, %if.end.i115.cleanup.sink.split.i_crit_edge ], [ -1, %if.else9.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i1 [ true, %if.then7.i ], [ true, %if.end.cleanup.sink.split.i_crit_edge ], [ true, %if.end.i115.cleanup.sink.split.i_crit_edge ], [ false, %if.else9.i.cleanup.sink.split.i_crit_edge ]
  br label %ipmi_thread_busy_wait.exit

ipmi_thread_busy_wait.exit:                       ; preds = %cleanup.sink.split.i, %if.else9.i.ipmi_thread_busy_wait.exit_crit_edge
  %busy_until.1 = phi i64 [ %.sink.i, %cleanup.sink.split.i ], [ %busy_until.0118, %if.else9.i.ipmi_thread_busy_wait.exit_crit_edge ]
  %retval.0.i = phi i1 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ true, %if.else9.i.ipmi_thread_busy_wait.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp17 = icmp eq i32 %call8, 1
  %17 = and i1 %cmp17, %retval.0.i
  br i1 %17, label %if.then21, label %if.else26

if.then21:                                        ; preds = %ipmi_thread_busy_wait.exit
  %18 = ptrtoint ptr %in_maintenance_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %in_maintenance_mode, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  br i1 %tobool22.not, label %if.else24, label %if.then23

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @schedule() #11
  br label %if.end101

if.else24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #11
  br label %if.end101

if.else26:                                        ; preds = %ipmi_thread_busy_wait.exit
  br i1 %cmp9.not, label %if.then29, label %if.else97

if.then29:                                        ; preds = %if.else26
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %need_watch, i32 noundef 4) #11
  %20 = ptrtoint ptr %need_watch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %need_watch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31.not = icmp eq i32 %21, 0
  br i1 %tobool31.not, label %__here, label %if.then32

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 @schedule_timeout_interruptible(i32 noundef 100) #11
  br label %if.end101

__here:                                           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@ipmi_thread, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %25, align 128
  tail call void @schedule() #11
  br label %if.end101

if.else97:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #13
  %call98 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #11
  br label %if.end101

if.end101:                                        ; preds = %if.else97, %__here, %if.then32, %if.else24, %if.then23
  %call2 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %call2, label %if.end101.while.end_crit_edge, label %if.end101.while.body_crit_edge

if.end101.while.body_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end101.while.end_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end101.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_start_timer_thread(ptr noundef %smi_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si_state = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 7
  %0 = ptrtoint ptr %si_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %si_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %curr_msg = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 6
  %2 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_msg, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %timer_can_start.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 15
  %5 = ptrtoint ptr %timer_can_start.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %timer_can_start.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.smi_mod_timer.exit_crit_edge, label %if.end.i

if.then.smi_mod_timer.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %smi_mod_timer.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %4, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_timeout_jiffies.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 17
  %8 = ptrtoint ptr %last_timeout_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_timeout_jiffies.i, align 4
  %si_timer.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 14
  %call.i = tail call i32 @mod_timer(ptr noundef %si_timer.i, i32 noundef %add) #11
  %timer_running.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 16
  %9 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %timer_running.i, align 1
  br label %smi_mod_timer.exit

smi_mod_timer.exit:                               ; preds = %if.end.i, %if.then.smi_mod_timer.exit_crit_edge
  %thread = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 28
  %10 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %smi_mod_timer.exit.if.end_crit_edge, label %if.then2

smi_mod_timer.exit.if.end_crit_edge:              ; preds = %smi_mod_timer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %smi_mod_timer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @wake_up_process(ptr noundef nonnull %11) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %smi_mod_timer.exit.if.end_crit_edge
  %waiting_msg.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 5
  %12 = ptrtoint ptr %waiting_msg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %waiting_msg.i, align 4
  %tobool.not.i13 = icmp eq ptr %13, null
  br i1 %tobool.not.i13, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %curr_msg, align 4
  br label %start_next_msg.exit

if.else.i:                                        ; preds = %if.end
  %15 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %curr_msg, align 4
  %16 = ptrtoint ptr %waiting_msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %waiting_msg.i, align 4
  %call.i14 = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @xaction_notifier_list, i32 noundef 0, ptr noundef %smi_info) #11
  %and.i = and i32 %call.i14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i15, label %if.else.i.start_next_msg.exit_crit_edge

if.else.i.start_next_msg.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_next_msg.exit

if.end.i15:                                       ; preds = %if.else.i
  %handlers.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 3
  %17 = ptrtoint ptr %handlers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handlers.i, align 4
  %start_transaction.i = getelementptr inbounds %struct.si_sm_handlers, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %start_transaction.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %start_transaction.i, align 4
  %si_sm.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 2
  %21 = ptrtoint ptr %si_sm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %si_sm.i, align 4
  %23 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %curr_msg, align 4
  %data.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %24, i32 0, i32 5
  %data_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_size.i, align 4
  %call8.i = tail call i32 %20(ptr noundef %22, ptr noundef %data.i, i32 noundef %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i15.start_next_msg.exit_crit_edge, label %if.then10.i

if.end.i15.start_next_msg.exit_crit_edge:         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_next_msg.exit

if.then10.i:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %curr_msg, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %call8.i, i32 255) #11
  %data.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %28, i32 0, i32 5
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data.i.i, align 4
  %32 = or i8 %31, 4
  %rsp.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %28, i32 0, i32 7
  %33 = ptrtoint ptr %rsp.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %rsp.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.ipmi_smi_msg, ptr %28, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.ipmi_smi_msg, ptr %28, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = trunc i32 %29 to i8
  %arrayidx10.i.i = getelementptr %struct.ipmi_smi_msg, ptr %28, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv8.i.i, ptr %arrayidx10.i.i, align 2
  %rsp_size.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %28, i32 0, i32 6
  %38 = ptrtoint ptr %rsp_size.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %rsp_size.i.i, align 4
  %39 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %curr_msg, align 4
  %intf.i.i.i = getelementptr inbounds %struct.smi_info, ptr %smi_info, i32 0, i32 1
  %40 = ptrtoint ptr %intf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intf.i.i.i, align 4
  tail call void @ipmi_smi_msg_received(ptr noundef %41, ptr noundef %28) #11
  br label %start_next_msg.exit

start_next_msg.exit:                              ; preds = %if.then10.i, %if.end.i15.start_next_msg.exit_crit_edge, %if.else.i.start_next_msg.exit_crit_edge, %if.then.i
  %call5 = tail call fastcc i32 @smi_event_handler(ptr noundef %smi_info, i32 noundef 0)
  br label %if.end6

if.end6:                                          ; preds = %start_next_msg.exit, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_hardcode_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_si_platform_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_si_pci_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_unregister_smi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_si_pci_shutdown() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_si_platform_shutdown() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_si_hardcode_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_si_hotmod_exit() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !156, !158, !160, !161, !162, !163, !164, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !223, !225, !226, !228, !230, !231, !233, !235, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !274, !276, !277, !279, !281, !282, !283, !284, !285, !287, !289, !290, !291, !292, !294, !295}
!llvm.named.register.sp = !{!296}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 74, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 74, i32 46}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 74, i32 53}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 74, i32 61}
!8 = !{ptr @si_to_str, !9, !"si_to_str", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 74, i32 19}
!10 = !{ptr @__param_force_kipmid, !11, !"__param_force_kipmid", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1225, i32 1}
!12 = !{ptr @__UNIQUE_ID_force_kipmidtype228, !11, !"__UNIQUE_ID_force_kipmidtype228", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_force_kipmid229, !14, !"__UNIQUE_ID_force_kipmid229", i1 false, i1 false}
!14 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1226, i32 1}
!15 = !{ptr @__param_unload_when_empty, !16, !"__param_unload_when_empty", i1 false, i1 false}
!16 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1228, i32 1}
!17 = !{ptr @__UNIQUE_ID_unload_when_emptytype230, !16, !"__UNIQUE_ID_unload_when_emptytype230", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_unload_when_empty231, !19, !"__UNIQUE_ID_unload_when_empty231", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1229, i32 1}
!20 = !{ptr @__param_kipmid_max_busy_us, !21, !"__param_kipmid_max_busy_us", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1231, i32 1}
!22 = !{ptr @__UNIQUE_ID_kipmid_max_busy_ustype232, !21, !"__UNIQUE_ID_kipmid_max_busy_ustype232", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_kipmid_max_busy_us233, !24, !"__UNIQUE_ID_kipmid_max_busy_us233", i1 false, i1 false}
!24 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1232, i32 1}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1266, i32 5}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1269, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ipmi_std_irq_setup._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @ipmi_std_irq_setup._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1275, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ipmi_std_irq_setup._entry.10, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ipmi_std_irq_setup._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1878, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ipmi_si_add_smi._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ipmi_si_add_smi._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ipmi_si_add_smi.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1896, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1906, i32 4}
!50 = !{ptr @ipmi_si_add_smi._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ipmi_si_add_smi._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1911, i32 4}
!54 = !{ptr @ipmi_si_add_smi._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ipmi_si_add_smi._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1921, i32 2}
!58 = !{ptr @ipmi_si_add_smi._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ipmi_si_add_smi._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__initcall__kmod_ipmi_si__234_2153_init_ipmi_si6, !61, !"__initcall__kmod_ipmi_si__234_2153_init_ipmi_si6", i1 false, i1 false}
!61 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2153, i32 1}
!62 = !{ptr @__exitcall_cleanup_ipmi_si, !63, !"__exitcall_cleanup_ipmi_si", i1 false, i1 false}
!63 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2288, i32 1}
!64 = !{ptr @__UNIQUE_ID_alias235, !65, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!65 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2290, i32 1}
!66 = !{ptr @__UNIQUE_ID_file236, !67, !"__UNIQUE_ID_file236", i1 false, i1 false}
!67 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2291, i32 1}
!68 = !{ptr @__UNIQUE_ID_license237, !67, !"__UNIQUE_ID_license237", i1 false, i1 false}
!69 = !{ptr @__UNIQUE_ID_author238, !70, !"__UNIQUE_ID_author238", i1 false, i1 false}
!70 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2292, i32 1}
!71 = !{ptr @__UNIQUE_ID_description239, !72, !"__UNIQUE_ID_description239", i1 false, i1 false}
!72 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2293, i32 1}
!73 = distinct !{null, !74, !"initialized", i1 false, i1 false}
!74 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 76, i32 13}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 594, i32 4}
!77 = !{ptr @handle_transaction_done._rs, !76, !"_rs", i1 false, i1 false}
!78 = !{ptr @__func__.handle_transaction_done, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @handle_transaction_done._entry, !76, !"_entry", i1 false, i1 false}
!81 = !{ptr @handle_transaction_done._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @handle_transaction_done._rs.28, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 686, i32 4}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @handle_transaction_done._entry.29, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @handle_transaction_done._entry_ptr.31, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @handle_transaction_done._rs.32, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 724, i32 4}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @handle_transaction_done._entry.33, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @handle_transaction_done._entry_ptr.35, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 278, i32 8}
!94 = !{ptr @xaction_notifier_list, !93, !"xaction_notifier_list", i1 false, i1 false}
!95 = !{ptr @__param_str_force_kipmid, !11, !"__param_str_force_kipmid", i1 false, i1 false}
!96 = !{ptr @__param_arr_force_kipmid, !11, !"__param_arr_force_kipmid", i1 false, i1 false}
!97 = !{ptr @num_force_kipmid, !98, !"num_force_kipmid", i1 false, i1 false}
!98 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 255, i32 12}
!99 = !{ptr @force_kipmid, !100, !"force_kipmid", i1 false, i1 false}
!100 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 254, i32 12}
!101 = !{ptr @__param_str_unload_when_empty, !16, !"__param_str_unload_when_empty", i1 false, i1 false}
!102 = !{ptr @unload_when_empty, !103, !"unload_when_empty", i1 false, i1 false}
!103 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 260, i32 13}
!104 = !{ptr @__param_str_kipmid_max_busy_us, !21, !"__param_str_kipmid_max_busy_us", i1 false, i1 false}
!105 = !{ptr @__param_arr_kipmid_max_busy_us, !21, !"__param_arr_kipmid_max_busy_us", i1 false, i1 false}
!106 = !{ptr @num_max_busy_us, !107, !"num_max_busy_us", i1 false, i1 false}
!107 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 258, i32 12}
!108 = !{ptr @kipmid_max_busy_us, !109, !"kipmid_max_busy_us", i1 false, i1 false}
!109 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 257, i32 21}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1220, i32 8}
!112 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @smi_infos_lock, !111, !"smi_infos_lock", i1 false, i1 false}
!114 = !{ptr @smi_infos, !115, !"smi_infos", i1 false, i1 false}
!115 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1219, i32 8}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1944, i32 2}
!118 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @try_smi_init._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @try_smi_init._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1974, i32 3}
!123 = !{ptr @try_smi_init._entry.41, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @try_smi_init._entry_ptr.43, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1991, i32 3}
!127 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @try_smi_init._entry.44, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @try_smi_init._entry_ptr.47, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1998, i32 4}
!132 = !{ptr @try_smi_init._entry.48, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @try_smi_init._entry_ptr.50, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2011, i32 4}
!136 = !{ptr @try_smi_init._entry.51, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @try_smi_init._entry_ptr.53, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2052, i32 3}
!140 = !{ptr @try_smi_init._entry.54, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @try_smi_init._entry_ptr.56, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2064, i32 3}
!144 = !{ptr @try_smi_init._entry.57, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @try_smi_init._entry_ptr.59, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2073, i32 2}
!148 = !{ptr @try_smi_init._entry.60, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @try_smi_init._entry_ptr.62, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1223, i32 51}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1223, i32 58}
!154 = !{ptr @addr_space_to_str, !155, !"addr_space_to_str", i1 false, i1 false}
!155 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1223, i32 27}
!156 = !{ptr @smi_num, !157, !"smi_num", i1 false, i1 false}
!157 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1221, i32 12}
!158 = !{ptr @try_get_dev_id._rs, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1346, i32 4}
!160 = !{ptr @__func__.try_get_dev_id, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @try_get_dev_id._entry, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @try_get_dev_id._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @dell_poweredge_bt_xaction_notifier, !165, !"dell_poweredge_bt_xaction_notifier", i1 false, i1 false}
!165 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1789, i32 30}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1471, i32 3}
!168 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @check_clr_rcv_irq._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @check_clr_rcv_irq._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1481, i32 3}
!173 = !{ptr @check_clr_rcv_irq._entry.68, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @check_clr_rcv_irq._entry_ptr.70, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1375, i32 3}
!177 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @get_global_enables._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @get_global_enables._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1388, i32 3}
!182 = !{ptr @get_global_enables._entry.73, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @get_global_enables._entry_ptr.75, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1423, i32 3}
!186 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @set_global_enables._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @set_global_enables._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1435, i32 3}
!191 = !{ptr @set_global_enables._entry.78, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @set_global_enables._entry_ptr.80, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1507, i32 3}
!195 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @check_set_rcv_irq._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @check_set_rcv_irq._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1517, i32 3}
!200 = !{ptr @check_set_rcv_irq._entry.83, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @check_set_rcv_irq._entry_ptr.85, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1541, i32 3}
!204 = !{ptr @.str.87, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @try_enable_event_buffer._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @try_enable_event_buffer._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1552, i32 3}
!209 = !{ptr @try_enable_event_buffer._entry.88, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @try_enable_event_buffer._entry_ptr.90, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1570, i32 3}
!213 = !{ptr @try_enable_event_buffer._entry.91, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @try_enable_event_buffer._entry_ptr.93, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1580, i32 3}
!217 = !{ptr @try_enable_event_buffer._entry.94, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @try_enable_event_buffer._entry_ptr.96, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @ipmi_si_dev_attr_group, !220, !"ipmi_si_dev_attr_group", i1 false, i1 false}
!220 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1680, i32 37}
!221 = !{ptr @ipmi_si_dev_attrs, !222, !"ipmi_si_dev_attrs", i1 false, i1 false}
!222 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1662, i32 26}
!223 = !{ptr @.str.97, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1618, i32 8}
!225 = !{ptr @dev_attr_type, !224, !"dev_attr_type", i1 false, i1 false}
!226 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1616, i32 25}
!228 = !{ptr @.str.99, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1629, i32 8}
!230 = !{ptr @dev_attr_interrupts_enabled, !229, !"dev_attr_interrupts_enabled", i1 false, i1 false}
!231 = !{ptr @.str.100, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1627, i32 25}
!233 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1631, i32 1}
!235 = !{ptr @dev_attr_short_timeouts, !234, !"dev_attr_short_timeouts", i1 false, i1 false}
!236 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.103, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1632, i32 1}
!239 = !{ptr @dev_attr_long_timeouts, !238, !"dev_attr_long_timeouts", i1 false, i1 false}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1633, i32 1}
!242 = !{ptr @dev_attr_idles, !241, !"dev_attr_idles", i1 false, i1 false}
!243 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1634, i32 1}
!245 = !{ptr @dev_attr_interrupts, !244, !"dev_attr_interrupts", i1 false, i1 false}
!246 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1635, i32 1}
!248 = !{ptr @dev_attr_attentions, !247, !"dev_attr_attentions", i1 false, i1 false}
!249 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1636, i32 1}
!251 = !{ptr @dev_attr_flag_fetches, !250, !"dev_attr_flag_fetches", i1 false, i1 false}
!252 = !{ptr @.str.108, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1637, i32 1}
!254 = !{ptr @dev_attr_hosed_count, !253, !"dev_attr_hosed_count", i1 false, i1 false}
!255 = !{ptr @.str.109, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1638, i32 1}
!257 = !{ptr @dev_attr_complete_transactions, !256, !"dev_attr_complete_transactions", i1 false, i1 false}
!258 = !{ptr @.str.110, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1639, i32 1}
!260 = !{ptr @dev_attr_events, !259, !"dev_attr_events", i1 false, i1 false}
!261 = !{ptr @.str.111, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1640, i32 1}
!263 = !{ptr @dev_attr_watchdog_pretimeouts, !262, !"dev_attr_watchdog_pretimeouts", i1 false, i1 false}
!264 = !{ptr @.str.112, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1641, i32 1}
!266 = !{ptr @dev_attr_incoming_messages, !265, !"dev_attr_incoming_messages", i1 false, i1 false}
!267 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1660, i32 8}
!269 = !{ptr @dev_attr_params, !268, !"dev_attr_params", i1 false, i1 false}
!270 = !{ptr @.str.114, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1650, i32 4}
!272 = !{ptr @handlers, !273, !"handlers", i1 false, i1 false}
!273 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1205, i32 39}
!274 = !{ptr @smi_start_processing.__key, !275, !"__key", i1 false, i1 false}
!275 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1147, i32 2}
!276 = !{ptr @.str.115, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.116, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1170, i32 21}
!279 = !{ptr @.str.117, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1173, i32 4}
!281 = !{ptr @.str.118, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.119, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @smi_start_processing._entry, !280, !"_entry", i1 false, i1 false}
!284 = !{ptr @smi_start_processing._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!285 = distinct !{null, !286, !"__already_done", i1 false, i1 false}
!286 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 1019, i32 5}
!287 = !{ptr @.str.120, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2097, i32 2}
!289 = !{ptr @.str.121, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @init_ipmi_si._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @init_ipmi_si._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.123, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/char/ipmi/ipmi_si_intf.c", i32 2146, i32 3}
!294 = !{ptr @init_ipmi_si._entry.122, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @init_ipmi_si._entry_ptr.124, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{!"sp"}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{i64 2148398159, i64 2148398185, i64 2148398214, i64 2148398248, i64 2148398279, i64 2148398302}
!307 = !{!"auto-init"}
!308 = !{i8 0, i8 2}
!309 = !{!"branch_weights", i32 2000, i32 1}
!310 = !{i64 2154473159, i64 2154473656, i64 2154473196, i64 2154473252, i64 2154473286, i64 2154473310, i64 2154473351, i64 2154473372, i64 2154473400, i64 2154473434}
!311 = !{!"branch_weights", i32 1, i32 2000}
