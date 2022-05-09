; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/ipoib/ipoib_vlan.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/ipoib/ipoib_vlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ipoib_dev_priv = type { %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.napi_struct, i32, %struct.rw_semaphore, %struct.mutex, %struct.rb_root, %struct.list_head, %struct.ipoib_neigh_table, ptr, %struct.list_head, %struct.rb_root, ptr, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, ptr, i8, i16, i16, ptr, ptr, ptr, ptr, i32, %union.ib_gid, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [18 x %struct.ib_sge], %struct.ib_ud_wr, [64 x %struct.ib_wc], %struct.ib_recv_wr, [2 x %struct.ib_sge], [4 x %struct.ib_wc], %struct.list_head, %struct.ib_event_handler, ptr, %struct.list_head, %struct.list_head, i32, %struct.ipoib_cm_dev_priv, %struct.list_head, ptr, ptr, i64, %struct.ipoib_ethtool_st, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ipoib_neigh_table = type { ptr, %struct.atomic_t, %struct.completion, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.ib_gid = type { %struct.anon.161 }
%struct.anon.161 = type { i64, i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.162, ptr, i32, i32, i32, %union.anon.163 }
%union.anon.162 = type { i64 }
%union.anon.163 = type { i32 }
%struct.ib_wc = type { %union.anon.158, i32, i32, i32, i32, ptr, %union.anon.159, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.158 = type { i64 }
%union.anon.159 = type { i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.164, ptr, i32 }
%union.anon.164 = type { i64 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ipoib_cm_dev_priv = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.sk_buff_head, %struct.list_head, %struct.list_head, [4 x %struct.ib_wc], [16 x %struct.ib_sge], %struct.ib_recv_wr, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ipoib_ethtool_st = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ipoib_vlan_delete_work = type { %struct.work_struct, ptr }

@__ipoib_vlan_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/infiniband/ulp/ipoib/ipoib_vlan.c\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__ipoib_vlan_add._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.__ipoib_vlan_add = private unnamed_addr constant [17 x i8] c"__ipoib_vlan_add\00", align 1
@__ipoib_vlan_add._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @__func__.__ipoib_vlan_add, ptr @.str, i32 134, ptr null, ptr null }, align 1
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: failed to initialize; error %i\00", [59 x i8] zeroinitializer }, align 32
@__ipoib_vlan_add._entry_ptr = internal global ptr @__ipoib_vlan_add._entry, section ".printk_index", align 4
@dev_attr_parent = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @parent_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s.%04x\00", [24 x i8] zeroinitializer }, align 32
@ipoib_vlan_delete.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@ipoib_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@is_child_unique.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipoib_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ipoib_vlan_delete_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: delete child vlan %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipoib_vlan_delete_task\00", [41 x i8] zeroinitializer }, align 32
@ipoib_vlan_delete_task._entry_ptr = internal global ptr @ipoib_vlan_delete_task._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32768]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 102, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 134, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"dev_attr_parent\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 188, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 282, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 51, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 49, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [45 x i8] c"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 239, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ipoib_vlan_add._entry, ptr @__ipoib_vlan_add._entry_ptr, ptr @ipoib_vlan_delete_task._entry, ptr @ipoib_vlan_delete_task._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dev_attr_parent, ptr @.str.4, ptr @ipoib_vlan_delete.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_parent to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_vlan_delete.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_vlan_delete_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ipoib_vlan_add(ptr noundef readonly %ppriv, ptr nocapture noundef %priv, i16 noundef zeroext %pkey, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call1 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b153 = load i1, ptr @__ipoib_vlan_add.__already_done, align 1
  br i1 %.b153, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !38

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__ipoib_vlan_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 102) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 125
  %2 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ipoib_intf_free, ptr %priv_destructor, align 4
  %dev39 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %ppriv, i32 0, i32 1
  %3 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev39, align 4
  %reg_state = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 121
  %5 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 1
  br i1 %cmp.not, label %if.end30.if.end61_crit_edge, label %do.end55, !prof !38

if.end30.if.end61_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

do.end55:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #7
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %if.end30.if.end61_crit_edge
  %6 = zext i16 %pkey to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %pkey, label %if.end75 [
    i16 0, label %if.end61.out_early_crit_edge
    i16 -32768, label %if.end61.out_early_crit_edge155
  ]

if.end61.out_early_crit_edge155:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_early

if.end61.out_early_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_early

if.end75:                                         ; preds = %if.end61
  %mcast_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 35
  %7 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mcast_mtu, align 8
  %mtu = getelementptr i8, ptr %1, i32 2316
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mtu, align 4
  %10 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev39, align 4
  %parent = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 51
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent, align 8
  %pkey77 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 25
  %13 = ptrtoint ptr %pkey77 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %pkey, ptr %pkey77, align 2
  %child_type = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 54
  %14 = ptrtoint ptr %child_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type, ptr %child_type, align 4
  %call.i = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end75.if.end29.i_crit_edge

if.end75.if.end29.i_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end75
  %.b76.i = load i1, ptr @is_child_unique.__already_done, align 1
  br i1 %.b76.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !38

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @is_child_unique.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 58) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.end75.if.end29.i_crit_edge
  %15 = ptrtoint ptr %child_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %child_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1
  br i1 %cmp.not.i, label %if.end38.i, label %if.end29.i.if.end80_crit_edge

if.end29.i.if.end80_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end38.i:                                       ; preds = %if.end29.i
  %pkey.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %ppriv, i32 0, i32 25
  %17 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pkey.i, align 2
  %19 = ptrtoint ptr %pkey77 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pkey77, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp41.i = icmp eq i16 %18, %20
  br i1 %cmp41.i, label %if.end38.i.out_early_crit_edge, label %if.end44.i

if.end38.i.out_early_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_early

if.end44.i:                                       ; preds = %if.end38.i
  %child_intfs.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %ppriv, i32 0, i32 52
  %21 = ptrtoint ptr %child_intfs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn77.i = load ptr, ptr %child_intfs.i, align 4
  %cmp47.not78.i = icmp eq ptr %.pn77.i, %child_intfs.i
  br i1 %cmp47.not78.i, label %if.end44.i.if.end80_crit_edge, label %if.end44.i.for.body.i_crit_edge

if.end44.i.for.body.i_crit_edge:                  ; preds = %if.end44.i
  br label %for.body.i

if.end44.i.if.end80_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end44.i.for.body.i_crit_edge
  %.pn79.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn77.i, %if.end44.i.for.body.i_crit_edge ]
  %pkey51.i = getelementptr i8, ptr %.pn79.i, i32 -4886
  %22 = ptrtoint ptr %pkey51.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pkey51.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %20)
  %cmp55.i = icmp eq i16 %23, %20
  br i1 %cmp55.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %child_type57.i = getelementptr i8, ptr %.pn79.i, i32 8
  %24 = ptrtoint ptr %child_type57.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %child_type57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp58.i = icmp eq i32 %25, 1
  br i1 %cmp58.i, label %land.lhs.true.i.out_early_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.out_early_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_early

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %.pn79.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn79.i, align 4
  %cmp47.not.i = icmp eq ptr %.pn.i, %child_intfs.i
  br i1 %cmp47.not.i, label %for.inc.i.if.end80_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end80_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end80:                                         ; preds = %for.inc.i.if.end80_crit_edge, %if.end44.i.if.end80_crit_edge, %if.end29.i.if.end80_crit_edge
  %call81 = tail call i32 @register_netdevice(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end97, label %do.body84

do.body84:                                        ; preds = %if.end80
  %call85 = tail call i32 @___ratelimit(ptr noundef nonnull @__ipoib_vlan_add._rs, ptr noundef nonnull @__func__.__ipoib_vlan_add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.body84.out_early_crit_edge, label %do.end90

do.body84.out_early_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_early

do.end90:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %28, i32 noundef %call81) #10
  br label %out_early

if.end97:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp98 = icmp eq i32 %type, 1
  br i1 %cmp98, label %if.then100, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then100:                                       ; preds = %if.end97
  %call101 = tail call i32 @ipoib_cm_add_mode_attr(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.then100.sysfs_failed_crit_edge

if.then100.sysfs_failed_crit_edge:                ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %sysfs_failed

if.end104:                                        ; preds = %if.then100
  %call105 = tail call i32 @ipoib_add_pkey_attr(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end104.sysfs_failed_crit_edge

if.end104.sysfs_failed_crit_edge:                 ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %sysfs_failed

if.end108:                                        ; preds = %if.end104
  %call109 = tail call i32 @ipoib_add_umcast_attr(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.end108.sysfs_failed_crit_edge

if.end108.sysfs_failed_crit_edge:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %sysfs_failed

if.end112:                                        ; preds = %if.end108
  %dev113 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %call114 = tail call i32 @device_create_file(ptr noundef %dev113, ptr noundef nonnull @dev_attr_parent) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end112.cleanup_crit_edge, label %if.end112.sysfs_failed_crit_edge

if.end112.sysfs_failed_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %sysfs_failed

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sysfs_failed:                                     ; preds = %if.end112.sysfs_failed_crit_edge, %if.end108.sysfs_failed_crit_edge, %if.end104.sysfs_failed_crit_edge, %if.then100.sysfs_failed_crit_edge
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %30, ptr noundef null) #7
  br label %cleanup

out_early:                                        ; preds = %do.end90, %do.body84.out_early_crit_edge, %land.lhs.true.i.out_early_crit_edge, %if.end38.i.out_early_crit_edge, %if.end61.out_early_crit_edge, %if.end61.out_early_crit_edge155
  %result.0 = phi i32 [ %call81, %do.end90 ], [ %call81, %do.body84.out_early_crit_edge ], [ -22, %if.end61.out_early_crit_edge ], [ -22, %if.end61.out_early_crit_edge155 ], [ -76, %if.end38.i.out_early_crit_edge ], [ -76, %land.lhs.true.i.out_early_crit_edge ]
  %31 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv_destructor, align 4
  %tobool121.not = icmp eq ptr %32, null
  br i1 %tobool121.not, label %out_early.cleanup_crit_edge, label %if.then122

out_early.cleanup_crit_edge:                      ; preds = %out_early
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then122:                                       ; preds = %out_early
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %32(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %out_early.cleanup_crit_edge, %sysfs_failed, %if.end112.cleanup_crit_edge, %if.end97.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %sysfs_failed ], [ 0, %if.end112.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ], [ %result.0, %if.then122 ], [ %result.0, %out_early.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_intf_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_cm_add_mode_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_add_pkey_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_add_umcast_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_vlan_add(ptr nocapture noundef readonly %pdev, i16 noundef zeroext %pkey) local_unnamed_addr #0 align 64 {
entry:
  %intf_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %intf_name) #7
  %0 = call ptr @memset(ptr %intf_name, i32 255, i32 16)
  %call = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtnl_trylock() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %6) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reg_state = getelementptr inbounds %struct.net_device, ptr %pdev, i32 0, i32 121
  %7 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 1
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_unlock() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %add.ptr.i.i = getelementptr i8, ptr %pdev, i32 2304
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %conv = zext i16 %pkey to i32
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %intf_name, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %conv)
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %9, i32 0, i32 23
  %12 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %9, i32 0, i32 24
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port, align 4
  %conv10 = zext i8 %15 to i32
  %call12 = call ptr @ipoib_intf_alloc(ptr noundef %13, i32 noundef %conv10, ptr noundef nonnull %intf_name) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call12 to i32
  br label %out

if.end16:                                         ; preds = %if.end6
  %add.ptr.i.i43 = getelementptr i8, ptr %call12, i32 2304
  %17 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i43, align 4
  %call18 = call ptr @ipoib_get_link_ops() #7
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 136
  %19 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %rtnl_link_ops, align 4
  %call19 = call i32 @__ipoib_vlan_add(ptr noundef %9, ptr noundef %18, i16 noundef zeroext %pkey, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end16.out_crit_edge, label %land.lhs.true

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true:                                    ; preds = %if.end16
  %reg_state21 = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 121
  %20 = ptrtoint ptr %reg_state21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load22 = load i8, ptr %reg_state21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load22)
  %cmp24 = icmp eq i8 %bf.load22, 0
  br i1 %cmp24, label %if.then26, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @free_netdev(ptr noundef %call12) #7
  br label %out

out:                                              ; preds = %if.then26, %land.lhs.true.out_crit_edge, %if.end16.out_crit_edge, %if.then14
  %result.0 = phi i32 [ %16, %if.then14 ], [ %call19, %if.then26 ], [ %call19, %land.lhs.true.out_crit_edge ], [ 0, %if.end16.out_crit_edge ]
  call void @rtnl_unlock() #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then5, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %result.0, %out ], [ -513, %if.then2 ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %intf_name) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_intf_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_get_link_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_vlan_delete(ptr nocapture noundef readonly %pdev, i16 noundef zeroext %pkey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call, label %if.end, label %entry.cleanup43_crit_edge

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtnl_trylock() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #7
  br label %cleanup43

if.end4:                                          ; preds = %if.end
  %reg_state = getelementptr inbounds %struct.net_device, ptr %pdev, i32 0, i32 121
  %6 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 1
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_unlock() #7
  br label %cleanup43

if.end6:                                          ; preds = %if.end4
  %add.ptr.i.i = getelementptr i8, ptr %pdev, i32 2304
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  %child_intfs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %8, i32 0, i32 52
  %9 = ptrtoint ptr %child_intfs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %child_intfs, align 4
  %cmp14.not68 = icmp eq ptr %10, %child_intfs
  br i1 %cmp14.not68, label %if.end6.out_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn.in69 = phi ptr [ %.pn70, %for.inc.for.body_crit_edge ], [ %10, %if.end6.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn70 = load ptr, ptr %.pn.in69, align 4
  %pkey15 = getelementptr i8, ptr %.pn.in69, i32 -4886
  %12 = ptrtoint ptr %pkey15 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pkey15, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %pkey)
  %cmp17 = icmp eq i16 %13, %pkey
  br i1 %cmp17, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %child_type = getelementptr i8, ptr %.pn.in69, i32 8
  %14 = ptrtoint ptr %child_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %child_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp19 = icmp eq i32 %15, 1
  br i1 %cmp19, label %if.then21, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 48) #11
  %tobool23.not = icmp eq ptr %call7.i, null
  br i1 %tobool23.not, label %if.then21.out_crit_edge, label %if.end25

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end25:                                         ; preds = %if.then21
  %vlan_rwsem = getelementptr inbounds %struct.ipoib_dev_priv, ptr %8, i32 0, i32 6
  tail call void @down_write(ptr noundef %vlan_rwsem) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in69) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_del_init.exit_crit_edge

if.end25.list_del_init.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in69, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end25.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %.pn.in69, ptr %.pn.in69, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.pn.in69, ptr %prev.i3.i, align 4
  tail call void @up_write(ptr noundef %vlan_rwsem) #7
  %dev = getelementptr i8, ptr %.pn.in69, i32 -6216
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %dev28 = getelementptr inbounds %struct.ipoib_vlan_delete_work, ptr %call7.i, i32 0, i32 1
  %27 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev28, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #7
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @ipoib_vlan_delete.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry33 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %29 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry33, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %31 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ipoib_vlan_delete_task, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_workqueue to i32))
  %32 = load ptr, ptr @ipoib_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef nonnull %call7.i) #7
  br label %out

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp14.not = icmp eq ptr %.pn70, %child_intfs
  br i1 %cmp14.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %list_del_init.exit, %if.then21.out_crit_edge, %if.end6.out_crit_edge
  %rc.1 = phi i32 [ 0, %list_del_init.exit ], [ -12, %if.then21.out_crit_edge ], [ -19, %if.end6.out_crit_edge ], [ -19, %for.inc.out_crit_edge ]
  tail call void @rtnl_unlock() #7
  br label %cleanup43

cleanup43:                                        ; preds = %out, %if.then5, %if.then2, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %rc.1, %out ], [ -513, %if.then2 ], [ -1, %entry.cleanup43_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_vlan_delete_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipoib_vlan_delete_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @rtnl_lock() #7
  %reg_state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %2 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 1
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %3 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %do.end, label %if.then.do.end12_crit_edge

if.then.do.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %parent = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 51
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %add.ptr.i.i18 = getelementptr i8, ptr %7, i32 2304
  %8 = ptrtoint ptr %add.ptr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i18, align 4
  %dev7 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %11, ptr noundef %1) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %if.then.do.end12_crit_edge
  tail call void @unregister_netdevice_queue(ptr noundef %1, ptr noundef null) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %entry.if.end13_crit_edge
  tail call void @rtnl_unlock() #7
  tail call void @kfree(ptr noundef %work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parent_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %parent = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %3) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c", i32 102, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c", i32 134, i32 3}
!6 = !{ptr @__ipoib_vlan_add._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.__ipoib_vlan_add, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ipoib_vlan_add._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @__ipoib_vlan_add._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c", i32 188, i32 41}
!13 = !{ptr @ipoib_vlan_delete.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c", i32 282, i32 4}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c", i32 58, i32 2}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c", i32 51, i32 8}
!20 = !{ptr @dev_attr_parent, !19, !"dev_attr_parent", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c", i32 49, i32 25}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_vlan.c", i32 239, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ipoib_vlan_delete_task._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ipoib_vlan_delete_task._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
