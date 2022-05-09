; ModuleID = '/llk/IR_all_yes/fs/ocfs2/cluster/netdebug.c_pt.bc'
source_filename = "../fs/ocfs2/cluster/netdebug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.o2net_sock_container = type { %struct.kref, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.delayed_work, i8, ptr, i32, ptr, ptr, i32, i16, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.o2net_send_tracking = type { %struct.list_head, ptr, ptr, i32, i32, i32, i8, i64, i64, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.120, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.98 }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.120 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.o2net_sock_debug = type { i32, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.75, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.76, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.77, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.16, %union.anon.18, %union.anon.19, i16, i8, i8, i32, %union.anon.21, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.16 = type { i64 }
%union.anon.18 = type { i32 }
%union.anon.19 = type { i32 }
%union.anon.21 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.64 }
%union.anon.64 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.75 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.59 }
%union.anon.59 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.o2nm_node = type { %struct.spinlock, %struct.config_item, [65 x i8], i8, i32, i16, %struct.rb_node, i32, i32 }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.126, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.127, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.128, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.127 = type { %struct.callback_head }
%union.anon.128 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.129 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@o2net_debug_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@send_tracking = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @send_tracking, ptr @send_tracking }, [24 x i8] zeroinitializer }, align 32
@sock_containers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sock_containers, ptr @sock_containers }, [24 x i8] zeroinitializer }, align 32
@o2net_dentry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"o2net\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"send_tracking\00", [18 x i8] zeroinitializer }, align 32
@nst_seq_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nst_fop_open, ptr null, ptr @nst_fop_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sock_containers\00", [16 x i8] zeroinitializer }, align 32
@sc_seq_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sc_fop_open, ptr null, ptr @sc_fop_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@stats_seq_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stats_fop_open, ptr null, ptr @sc_fop_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"connected_nodes\00", [16 x i8] zeroinitializer }, align 32
@nodes_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @o2net_debug_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nodes_fop_open, ptr null, ptr @o2net_debug_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"o2net_debug_lock\00", [47 x i8] zeroinitializer }, align 32
@nst_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @nst_seq_start, ptr @nst_seq_stop, ptr @nst_seq_next, ptr @nst_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"%p:\0A  pid:          %lu\0A  tgid:         %lu\0A  process name: %s\0A  node:         %u\0A  sc:           %p\0A  message id:   %d\0A  message type: %u\0A  message key:  0x%08x\0A  sock acquiry: %lld usecs ago\0A  send start:   %lld usecs ago\0A  wait start:   %lld usecs ago\0A\00", [64 x i8] zeroinitializer }, align 32
@sc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sc_seq_start, ptr @sc_seq_stop, ptr @sc_seq_next, ptr @sc_seq_show }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [360 x i8], [88 x i8] } { [360 x i8] c"%p:\0A  krefs:           %d\0A  sock:            %pI4:%u -> %pI4:%u\0A  remote node:     %s\0A  page off:        %zu\0A  handshake ok:    %u\0A  timer:           %lld usecs\0A  data ready:      %lld usecs\0A  advance start:   %lld usecs\0A  advance stop:    %lld usecs\0A  func start:      %lld usecs\0A  func stop:       %lld usecs\0A  func key:        0x%08x\0A  func type:       %u\0A\00", [88 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d,%u,%lu,%lld,%lld,%lld,%lu,%lld\0A\00", [61 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"o2net_debug_lock\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"send_tracking\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 43, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"sock_containers\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 42, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"o2net_dentry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 38, i32 23 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 494, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 496, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"nst_seq_fops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 185, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 498, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"sc_seq_fops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 429, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 500, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"stats_seq_fops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 417, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 502, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"nodes_fops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 478, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 40, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"nst_seq_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 157, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 126, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"sc_seq_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 371, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 315, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 285, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 271, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 444, i32 48 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [31 x i8] c"../fs/ocfs2/cluster/netdebug.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 445, i32 47 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @o2net_debug_lock, ptr @send_tracking, ptr @sock_containers, ptr @o2net_dentry, ptr @.str, ptr @.str.1, ptr @nst_seq_fops, ptr @.str.2, ptr @sc_seq_fops, ptr @.str.3, ptr @stats_seq_fops, ptr @.str.4, ptr @nodes_fops, ptr @.str.5, ptr @nst_seq_ops, ptr @.str.6, ptr @sc_seq_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_debug_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tracking to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_containers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2net_dentry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nst_seq_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_seq_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_seq_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodes_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nst_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_debug_add_nst(ptr noundef %nst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  %0 = load ptr, ptr @send_tracking, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %nst, ptr noundef nonnull @send_tracking, ptr noundef %0) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %nst, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %nst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %nst, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %nst, i32 0, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @send_tracking, ptr %prev3.i.i, align 4
  store volatile ptr %nst, ptr @send_tracking, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_debug_del_nst(ptr noundef %nst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  %0 = ptrtoint ptr %nst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %nst, align 4
  %cmp.i.not = icmp eq ptr %1, %nst
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nst) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nst, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %nst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nst, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %nst to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %nst, ptr %nst, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %nst, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %nst, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_debug_add_sc(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  %sc_net_debug_item = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 15
  %0 = load ptr, ptr @sock_containers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sc_net_debug_item, ptr noundef nonnull @sock_containers, ptr noundef %0) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sc_net_debug_item, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %sc_net_debug_item to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %sc_net_debug_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sock_containers, ptr %prev3.i.i, align 4
  store volatile ptr %sc_net_debug_item, ptr @sock_containers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_debug_del_sc(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  %sc_net_debug_item = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sc_net_debug_item) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %sc_net_debug_item to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_net_debug_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %sc_net_debug_item to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %sc_net_debug_item, ptr %sc_net_debug_item, align 4
  %prev.i3.i = getelementptr inbounds %struct.o2net_sock_container, ptr %sc, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sc_net_debug_item, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_debugfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2net_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2net_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #8
  store ptr %call, ptr @o2net_dentry, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32512, ptr noundef %call, ptr noundef null, ptr noundef nonnull @nst_seq_fops) #8
  %0 = load ptr, ptr @o2net_dentry, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext -32512, ptr noundef %0, ptr noundef null, ptr noundef nonnull @sc_seq_fops) #8
  %1 = load ptr, ptr @o2net_dentry, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext -32512, ptr noundef %1, ptr noundef null, ptr noundef nonnull @stats_seq_fops) #8
  %2 = load ptr, ptr @o2net_dentry, align 4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext -32512, ptr noundef %2, ptr noundef null, ptr noundef nonnull @nodes_fops) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nst_fop_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @nst_seq_ops, i32 noundef 56) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  %0 = load ptr, ptr @send_tracking, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef nonnull @send_tracking, ptr noundef %0) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.o2net_debug_add_nst.exit_crit_edge

if.end.o2net_debug_add_nst.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %o2net_debug_add_nst.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %prev1.i.i.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %call, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @send_tracking, ptr %prev3.i.i.i, align 4
  store volatile ptr %call, ptr @send_tracking, align 4
  br label %o2net_debug_add_nst.exit

o2net_debug_add_nst.exit:                         ; preds = %if.end.i.i.i, %if.end.o2net_debug_add_nst.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %o2net_debug_add_nst.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %o2net_debug_add_nst.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nst_fop_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %3, align 4
  %cmp.i.not.i = icmp eq ptr %5, %3
  br i1 %cmp.i.not.i, label %entry.o2net_debug_del_nst.exit_crit_edge, label %if.then.i

entry.o2net_debug_del_nst.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %o2net_debug_del_nst.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %prev.i3.i.i, align 4
  br label %o2net_debug_del_nst.exit

o2net_debug_del_nst.exit:                         ; preds = %list_del_init.exit.i, %entry.o2net_debug_del_nst.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  %call = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nst_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @o2net_debug_lock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %entry.for.cond.i_crit_edge, !prof !54

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/netdebug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 65, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable

for.cond.i:                                       ; preds = %if.end17.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %nst.0.in.i = phi ptr [ %nst.0.i, %if.end17.i.for.cond.i_crit_edge ], [ %1, %entry.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %nst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %nst.0.i = load ptr, ptr %nst.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %nst.0.i, %1
  %cmp15.i = icmp eq ptr %nst.0.i, @send_tracking
  %or.cond.i = or i1 %cmp.not.i, %cmp15.i
  br i1 %or.cond.i, label %for.cond.i.next_nst.exit_crit_edge, label %if.end17.i

for.cond.i.next_nst.exit_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_nst.exit

if.end17.i:                                       ; preds = %for.cond.i
  %st_task.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %st_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %st_task.i, align 8
  %cmp18.not.i = icmp eq ptr %5, null
  br i1 %cmp18.not.i, label %if.end17.i.for.cond.i_crit_edge, label %if.end17.i.next_nst.exit_crit_edge

if.end17.i.next_nst.exit_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_nst.exit

if.end17.i.for.cond.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

next_nst.exit:                                    ; preds = %if.end17.i.next_nst.exit_crit_edge, %for.cond.i.next_nst.exit_crit_edge
  %ret.0.i = phi ptr [ null, %for.cond.i.next_nst.exit_crit_edge ], [ %nst.0.i, %if.end17.i.next_nst.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret ptr %ret.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nst_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nst_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @o2net_debug_lock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %entry.for.cond.i_crit_edge, !prof !54

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/netdebug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 65, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable

for.cond.i:                                       ; preds = %if.end17.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %nst.0.in.i = phi ptr [ %nst.0.i, %if.end17.i.for.cond.i_crit_edge ], [ %1, %entry.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %nst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %nst.0.i = load ptr, ptr %nst.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %nst.0.i, %1
  %cmp15.i = icmp eq ptr %nst.0.i, @send_tracking
  %or.cond.i = or i1 %cmp.not.i, %cmp15.i
  br i1 %or.cond.i, label %for.cond.i.next_nst.exit_crit_edge, label %if.end17.i

for.cond.i.next_nst.exit_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_nst.exit

if.end17.i:                                       ; preds = %for.cond.i
  %st_task.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %st_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %st_task.i, align 8
  %cmp18.not.i = icmp eq ptr %5, null
  br i1 %cmp18.not.i, label %if.end17.i.for.cond.i_crit_edge, label %if.end17.i.next_nst.exit_crit_edge

if.end17.i.next_nst.exit_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_nst.exit

if.end17.i.for.cond.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

next_nst.exit:                                    ; preds = %if.end17.i.next_nst.exit_crit_edge, %for.cond.i.next_nst.exit_crit_edge
  %ret.0.i = phi ptr [ null, %for.cond.i.next_nst.exit_crit_edge ], [ %nst.0.i, %if.end17.i.next_nst.exit_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %next_nst.exit.list_del_init.exit_crit_edge

next_nst.exit.list_del_init.exit_crit_edge:       ; preds = %next_nst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %next_nst.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %next_nst.exit.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool.not = icmp eq ptr %ret.0.i, null
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  %14 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ret.0.i, align 4
  %call.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef nonnull %ret.0.i, ptr noundef %15) #8
  br i1 %call.i.i7, label %if.end.i.i8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i8:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %1, align 4
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ret.0.i, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %1, ptr %ret.0.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i8, %if.then.if.end_crit_edge, %list_del_init.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret ptr %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nst_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @o2net_debug_lock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %entry.for.cond.i_crit_edge, !prof !54

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/netdebug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 65, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable

for.cond.i:                                       ; preds = %if.end17.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %nst.0.in.i = phi ptr [ %nst.0.i, %if.end17.i.for.cond.i_crit_edge ], [ %1, %entry.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %nst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %nst.0.i = load ptr, ptr %nst.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %nst.0.i, %1
  %cmp15.i = icmp eq ptr %nst.0.i, @send_tracking
  %or.cond.i = or i1 %cmp.not.i, %cmp15.i
  br i1 %or.cond.i, label %for.cond.i.out_crit_edge, label %if.end17.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end17.i:                                       ; preds = %for.cond.i
  %st_task.i = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %st_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %st_task.i, align 8
  %cmp18.not.i = icmp eq ptr %5, null
  br i1 %cmp18.not.i, label %if.end17.i.for.cond.i_crit_edge, label %next_nst.exit

if.end17.i.for.cond.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

next_nst.exit:                                    ; preds = %if.end17.i
  %tobool.not = icmp eq ptr %nst.0.i, null
  br i1 %tobool.not, label %next_nst.exit.out_crit_edge, label %if.end

next_nst.exit.out_crit_edge:                      ; preds = %next_nst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %next_nst.exit
  call void @__sanitizer_cov_trace_pc() #10
  %st_task.i.le = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 1
  %call1 = tail call i64 @ktime_get() #8
  %st_sock_time = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 7
  %6 = ptrtoint ptr %st_sock_time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %st_sock_time, align 8
  %sub = sub i64 %call1, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %8 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #8
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #11, !srcloc !56
  %asmresult.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !57
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %st_send_time = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 8
  %11 = ptrtoint ptr %st_send_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %st_send_time, align 8
  %sub3 = sub i64 %call1, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3)
  %cmp8.i.i25 = icmp slt i64 %sub3, 0
  %13 = tail call i64 @llvm.abs.i64(i64 %sub3, i1 false) #8
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %13, i32 0) #11, !srcloc !56
  %asmresult.i.i.i26 = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i.i27 = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %13, i64 %asmresult.i.i.i26, i32 %asmresult4.i.i.i27) #11, !srcloc !57
  %asmresult10.i.i.i28 = extractvalue { i64, i32 } %15, 0
  %div1811.i.i29 = lshr i64 %asmresult10.i.i.i28, 9
  %sub210.i.i30 = sub nsw i64 0, %div1811.i.i29
  %cond213.i.i31 = select i1 %cmp8.i.i25, i64 %sub210.i.i30, i64 %div1811.i.i29
  %st_status_time = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 9
  %16 = ptrtoint ptr %st_status_time to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %st_status_time, align 8
  %sub5 = sub i64 %call1, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub5)
  %cmp8.i.i32 = icmp slt i64 %sub5, 0
  %18 = tail call i64 @llvm.abs.i64(i64 %sub5, i1 false) #8
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %18, i32 0) #11, !srcloc !56
  %asmresult.i.i.i33 = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i.i34 = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %18, i64 %asmresult.i.i.i33, i32 %asmresult4.i.i.i34) #11, !srcloc !57
  %asmresult10.i.i.i35 = extractvalue { i64, i32 } %20, 0
  %div1811.i.i36 = lshr i64 %asmresult10.i.i.i35, 9
  %sub210.i.i37 = sub nsw i64 0, %div1811.i.i36
  %cond213.i.i38 = select i1 %cmp8.i.i32, i64 %sub210.i.i37, i64 %div1811.i.i36
  %21 = ptrtoint ptr %st_task.i.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %st_task.i.le, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid.i, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 69
  %25 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tgid, align 4
  %comm = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %st_node = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 6
  %27 = ptrtoint ptr %st_node to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %st_node, align 4
  %conv = zext i8 %28 to i32
  %st_sc = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %st_sc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %st_sc, align 4
  %st_id = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %st_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %st_id, align 8
  %st_msg_type = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 4
  %33 = ptrtoint ptr %st_msg_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %st_msg_type, align 4
  %st_msg_key = getelementptr inbounds %struct.o2net_send_tracking, ptr %nst.0.i, i32 0, i32 5
  %35 = ptrtoint ptr %st_msg_key to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %st_msg_key, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, ptr noundef nonnull %nst.0.i, i32 noundef %24, i32 noundef %26, ptr noundef %comm, i32 noundef %conv, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i64 noundef %cond213.i.i, i64 noundef %cond213.i.i31, i64 noundef %cond213.i.i38) #8
  br label %out

out:                                              ; preds = %if.end, %next_nst.exit.out_crit_edge, %for.cond.i.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc_fop_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sc_common_open(ptr noundef %file, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc_fop_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %dbg_sock = getelementptr inbounds %struct.o2net_sock_debug, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dbg_sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg_sock, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  %sc_net_debug_item.i = getelementptr inbounds %struct.o2net_sock_container, ptr %5, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sc_net_debug_item.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.o2net_debug_del_sc.exit_crit_edge

entry.o2net_debug_del_sc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %o2net_debug_del_sc.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %5, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %sc_net_debug_item.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_net_debug_item.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %o2net_debug_del_sc.exit

o2net_debug_del_sc.exit:                          ; preds = %if.end.i.i.i, %entry.o2net_debug_del_sc.exit_crit_edge
  %12 = ptrtoint ptr %sc_net_debug_item.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %sc_net_debug_item.i, ptr %sc_net_debug_item.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %5, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sc_net_debug_item.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  tail call void @kfree(ptr noundef %5) #8
  %call = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc_common_open(ptr noundef %file, i32 noundef %ctxt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @sc_seq_ops, i32 noundef 8) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %ctxt, ptr %call1, align 4
  %dbg_sock = getelementptr inbounds %struct.o2net_sock_debug, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %dbg_sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %dbg_sock, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  %sc_net_debug_item.i = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 15
  %3 = load ptr, ptr @sock_containers, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sc_net_debug_item.i, ptr noundef nonnull @sock_containers, ptr noundef %3) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.o2net_debug_add_sc.exit_crit_edge

if.end4.o2net_debug_add_sc.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %o2net_debug_add_sc.exit

if.end.i.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sc_net_debug_item.i, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %sc_net_debug_item.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %sc_net_debug_item.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %call7.i.i, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sock_containers, ptr %prev3.i.i.i, align 4
  store volatile ptr %sc_net_debug_item.i, ptr @sock_containers, align 4
  br label %o2net_debug_add_sc.exit

o2net_debug_add_sc.exit:                          ; preds = %if.end.i.i.i, %if.end4.o2net_debug_add_sc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %o2net_debug_add_sc.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %o2net_debug_add_sc.exit ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sc_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dbg_sock = getelementptr inbounds %struct.o2net_sock_debug, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dbg_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg_sock, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @o2net_debug_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !54

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/netdebug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end9.i:                                        ; preds = %entry
  %sc_net_debug_item.i = getelementptr inbounds %struct.o2net_sock_container, ptr %3, i32 0, i32 15
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end17.i.for.cond.i_crit_edge, %do.end9.i
  %.pn.in.i = phi ptr [ %sc_net_debug_item.i, %do.end9.i ], [ %.pn.i, %if.end17.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %sc_net_debug_item.i
  %cmp15.i = icmp eq ptr %.pn.i, @sock_containers
  %or.cond.i = or i1 %cmp.not.i, %cmp15.i
  br i1 %or.cond.i, label %for.cond.i.next_sc.exit_crit_edge, label %if.end17.i

for.cond.i.next_sc.exit_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_sc.exit

if.end17.i:                                       ; preds = %for.cond.i
  %sc_page.i = getelementptr i8, ptr %.pn.i, i32 -24
  %6 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_page.i, align 8
  %cmp18.not.i = icmp eq ptr %7, null
  br i1 %cmp18.not.i, label %if.end17.i.for.cond.i_crit_edge, label %for.end.split.loop.exit.i

if.end17.i.for.cond.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.split.loop.exit.i:                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -320
  br label %next_sc.exit

next_sc.exit:                                     ; preds = %for.end.split.loop.exit.i, %for.cond.i.next_sc.exit_crit_edge
  %ret.0.i = phi ptr [ %sc.0.le.i, %for.end.split.loop.exit.i ], [ null, %for.cond.i.next_sc.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret ptr %ret.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sc_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sc_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dbg_sock = getelementptr inbounds %struct.o2net_sock_debug, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dbg_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg_sock, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @o2net_debug_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !54

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/netdebug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end9.i:                                        ; preds = %entry
  %sc_net_debug_item.i = getelementptr inbounds %struct.o2net_sock_container, ptr %3, i32 0, i32 15
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end17.i.for.cond.i_crit_edge, %do.end9.i
  %.pn.in.i = phi ptr [ %sc_net_debug_item.i, %do.end9.i ], [ %.pn.i, %if.end17.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %sc_net_debug_item.i
  %cmp15.i = icmp eq ptr %.pn.i, @sock_containers
  %or.cond.i = or i1 %cmp.not.i, %cmp15.i
  br i1 %or.cond.i, label %for.cond.i.next_sc.exit_crit_edge, label %if.end17.i

for.cond.i.next_sc.exit_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_sc.exit

if.end17.i:                                       ; preds = %for.cond.i
  %sc_page.i = getelementptr i8, ptr %.pn.i, i32 -24
  %6 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_page.i, align 8
  %cmp18.not.i = icmp eq ptr %7, null
  br i1 %cmp18.not.i, label %if.end17.i.for.cond.i_crit_edge, label %for.end.split.loop.exit.i

if.end17.i.for.cond.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.split.loop.exit.i:                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -320
  br label %next_sc.exit

next_sc.exit:                                     ; preds = %for.end.split.loop.exit.i, %for.cond.i.next_sc.exit_crit_edge
  %ret.0.i = phi ptr [ %sc.0.le.i, %for.end.split.loop.exit.i ], [ null, %for.cond.i.next_sc.exit_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sc_net_debug_item.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %next_sc.exit.list_del_init.exit_crit_edge

next_sc.exit.list_del_init.exit_crit_edge:        ; preds = %next_sc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %next_sc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.o2net_sock_container, ptr %3, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %sc_net_debug_item.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_net_debug_item.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %next_sc.exit.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %sc_net_debug_item.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %sc_net_debug_item.i, ptr %sc_net_debug_item.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.o2net_sock_container, ptr %3, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sc_net_debug_item.i, ptr %prev.i3.i, align 4
  %tobool.not = icmp eq ptr %ret.0.i, null
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  %sc_net_debug_item2 = getelementptr inbounds %struct.o2net_sock_container, ptr %ret.0.i, i32 0, i32 15
  %16 = ptrtoint ptr %sc_net_debug_item2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_net_debug_item2, align 4
  %call.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef %sc_net_debug_item.i, ptr noundef %sc_net_debug_item2, ptr noundef %17) #8
  br i1 %call.i.i7, label %if.end.i.i8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i8:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sc_net_debug_item.i, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %sc_net_debug_item.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %sc_net_debug_item.i, align 4
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sc_net_debug_item2, ptr %prev.i3.i, align 4
  %21 = ptrtoint ptr %sc_net_debug_item2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %sc_net_debug_item.i, ptr %sc_net_debug_item2, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i8, %if.then.if.end_crit_edge, %list_del_init.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret ptr %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %saddr.i = alloca i32, align 4
  %daddr.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dbg_sock = getelementptr inbounds %struct.o2net_sock_debug, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dbg_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg_sock, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2net_debug_lock) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @o2net_debug_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !54

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/netdebug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end9.i:                                        ; preds = %entry
  %sc_net_debug_item.i = getelementptr inbounds %struct.o2net_sock_container, ptr %3, i32 0, i32 15
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end17.i.for.cond.i_crit_edge, %do.end9.i
  %.pn.in.i = phi ptr [ %sc_net_debug_item.i, %do.end9.i ], [ %.pn.i, %if.end17.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %sc_net_debug_item.i
  %cmp15.i = icmp eq ptr %.pn.i, @sock_containers
  %or.cond.i = or i1 %cmp.not.i, %cmp15.i
  br i1 %or.cond.i, label %for.cond.i.if.end2_crit_edge, label %if.end17.i

for.cond.i.if.end2_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.end17.i:                                       ; preds = %for.cond.i
  %sc_page.i = getelementptr i8, ptr %.pn.i, i32 -24
  %6 = ptrtoint ptr %sc_page.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_page.i, align 8
  %cmp18.not.i = icmp eq ptr %7, null
  br i1 %cmp18.not.i, label %if.end17.i.for.cond.i_crit_edge, label %next_sc.exit

if.end17.i.for.cond.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

next_sc.exit:                                     ; preds = %if.end17.i
  %sc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -320
  %tobool.not = icmp eq ptr %sc.0.le.i, null
  br i1 %tobool.not, label %next_sc.exit.if.end2_crit_edge, label %if.then

next_sc.exit.if.end2_crit_edge:                   ; preds = %next_sc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %next_sc.exit
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end.i, label %sc_show_sock_stats.exit

if.end.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saddr.i) #8
  %10 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %saddr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %daddr.i) #8
  %11 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %daddr.i, align 4
  %sc_sock.i = getelementptr i8, ptr %.pn.i, i32 -316
  %12 = ptrtoint ptr %sc_sock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_sock.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end7.thread.i, label %if.end7.i

if.end7.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i86.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sc.0.le.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %sc.0.le.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sc.0.le.i, align 4
  br label %31

if.end7.i:                                        ; preds = %if.end.i
  %sk.i = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk.i, align 16
  %inet_saddr.i = getelementptr inbounds %struct.inet_sock, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %inet_saddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inet_saddr.i, align 4
  %20 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %saddr.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 8
  %23 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %daddr.i, align 4
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %17, i32 0, i32 6
  %24 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %inet_sport.i, align 8
  %26 = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 4
  %phi.cmp.i = icmp eq ptr %17, null
  %phi.cast.i = zext i16 %28 to i32
  %phi.cast47.i = zext i16 %25 to i32
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sc.0.le.i, i32 noundef 4) #8
  %29 = ptrtoint ptr %sc.0.le.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %sc.0.le.i, align 4
  br i1 %phi.cmp.i, label %if.end7.i._crit_edge, label %if.end7.i.sc_show_sock_container.exit_crit_edge

if.end7.i.sc_show_sock_container.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sc_show_sock_container.exit

if.end7.i._crit_edge:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %31

31:                                               ; preds = %if.end7.i._crit_edge, %if.end7.thread.i
  %32 = phi i32 [ %15, %if.end7.thread.i ], [ %30, %if.end7.i._crit_edge ]
  br label %sc_show_sock_container.exit

sc_show_sock_container.exit:                      ; preds = %31, %if.end7.i.sc_show_sock_container.exit_crit_edge
  %33 = phi i32 [ 0, %31 ], [ %phi.cast47.i, %if.end7.i.sc_show_sock_container.exit_crit_edge ]
  %34 = phi i32 [ %32, %31 ], [ %30, %if.end7.i.sc_show_sock_container.exit_crit_edge ]
  %35 = phi i32 [ 0, %31 ], [ %phi.cast.i, %if.end7.i.sc_show_sock_container.exit_crit_edge ]
  %sc_node.i = getelementptr i8, ptr %.pn.i, i32 -312
  %36 = ptrtoint ptr %sc_node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sc_node.i, align 8
  %nd_name.i = getelementptr inbounds %struct.o2nm_node, ptr %37, i32 0, i32 2
  %sc_page_off.i = getelementptr i8, ptr %.pn.i, i32 -20
  %38 = ptrtoint ptr %sc_page_off.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sc_page_off.i, align 4
  %sc_handshake_ok.i = getelementptr i8, ptr %.pn.i, i32 -28
  %40 = ptrtoint ptr %sc_handshake_ok.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %sc_handshake_ok.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %sc_tv_timer.i = getelementptr i8, ptr %.pn.i, i32 8
  %41 = ptrtoint ptr %sc_tv_timer.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %sc_tv_timer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp8.i.i.i = icmp slt i64 %42, 0
  %43 = tail call i64 @llvm.abs.i64(i64 %42, i1 false) #8
  %44 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %43, i32 0) #11, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %44, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %44, 1
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %43, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !57
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %45, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %sc_tv_data_ready.i = getelementptr i8, ptr %.pn.i, i32 16
  %46 = ptrtoint ptr %sc_tv_data_ready.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sc_tv_data_ready.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %cmp8.i.i48.i = icmp slt i64 %47, 0
  %48 = tail call i64 @llvm.abs.i64(i64 %47, i1 false) #8
  %49 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %48, i32 0) #11, !srcloc !56
  %asmresult.i.i.i49.i = extractvalue { i64, i32 } %49, 0
  %asmresult4.i.i.i50.i = extractvalue { i64, i32 } %49, 1
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %48, i64 %asmresult.i.i.i49.i, i32 %asmresult4.i.i.i50.i) #11, !srcloc !57
  %asmresult10.i.i.i51.i = extractvalue { i64, i32 } %50, 0
  %div1811.i.i52.i = lshr i64 %asmresult10.i.i.i51.i, 9
  %sub210.i.i53.i = sub nsw i64 0, %div1811.i.i52.i
  %cond213.i.i54.i = select i1 %cmp8.i.i48.i, i64 %sub210.i.i53.i, i64 %div1811.i.i52.i
  %sc_tv_advance_start.i = getelementptr i8, ptr %.pn.i, i32 24
  %51 = ptrtoint ptr %sc_tv_advance_start.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %sc_tv_advance_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp8.i.i55.i = icmp slt i64 %52, 0
  %53 = tail call i64 @llvm.abs.i64(i64 %52, i1 false) #8
  %54 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %53, i32 0) #11, !srcloc !56
  %asmresult.i.i.i56.i = extractvalue { i64, i32 } %54, 0
  %asmresult4.i.i.i57.i = extractvalue { i64, i32 } %54, 1
  %55 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %53, i64 %asmresult.i.i.i56.i, i32 %asmresult4.i.i.i57.i) #11, !srcloc !57
  %asmresult10.i.i.i58.i = extractvalue { i64, i32 } %55, 0
  %div1811.i.i59.i = lshr i64 %asmresult10.i.i.i58.i, 9
  %sub210.i.i60.i = sub nsw i64 0, %div1811.i.i59.i
  %cond213.i.i61.i = select i1 %cmp8.i.i55.i, i64 %sub210.i.i60.i, i64 %div1811.i.i59.i
  %sc_tv_advance_stop.i = getelementptr i8, ptr %.pn.i, i32 32
  %56 = ptrtoint ptr %sc_tv_advance_stop.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %sc_tv_advance_stop.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %cmp8.i.i62.i = icmp slt i64 %57, 0
  %58 = tail call i64 @llvm.abs.i64(i64 %57, i1 false) #8
  %59 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %58, i32 0) #11, !srcloc !56
  %asmresult.i.i.i63.i = extractvalue { i64, i32 } %59, 0
  %asmresult4.i.i.i64.i = extractvalue { i64, i32 } %59, 1
  %60 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %58, i64 %asmresult.i.i.i63.i, i32 %asmresult4.i.i.i64.i) #11, !srcloc !57
  %asmresult10.i.i.i65.i = extractvalue { i64, i32 } %60, 0
  %div1811.i.i66.i = lshr i64 %asmresult10.i.i.i65.i, 9
  %sub210.i.i67.i = sub nsw i64 0, %div1811.i.i66.i
  %cond213.i.i68.i = select i1 %cmp8.i.i62.i, i64 %sub210.i.i67.i, i64 %div1811.i.i66.i
  %sc_tv_func_start.i = getelementptr i8, ptr %.pn.i, i32 40
  %61 = ptrtoint ptr %sc_tv_func_start.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sc_tv_func_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %cmp8.i.i69.i = icmp slt i64 %62, 0
  %63 = tail call i64 @llvm.abs.i64(i64 %62, i1 false) #8
  %64 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %63, i32 0) #11, !srcloc !56
  %asmresult.i.i.i70.i = extractvalue { i64, i32 } %64, 0
  %asmresult4.i.i.i71.i = extractvalue { i64, i32 } %64, 1
  %65 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %63, i64 %asmresult.i.i.i70.i, i32 %asmresult4.i.i.i71.i) #11, !srcloc !57
  %asmresult10.i.i.i72.i = extractvalue { i64, i32 } %65, 0
  %div1811.i.i73.i = lshr i64 %asmresult10.i.i.i72.i, 9
  %sub210.i.i74.i = sub nsw i64 0, %div1811.i.i73.i
  %cond213.i.i75.i = select i1 %cmp8.i.i69.i, i64 %sub210.i.i74.i, i64 %div1811.i.i73.i
  %sc_tv_func_stop.i = getelementptr i8, ptr %.pn.i, i32 48
  %66 = ptrtoint ptr %sc_tv_func_stop.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %sc_tv_func_stop.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %cmp8.i.i76.i = icmp slt i64 %67, 0
  %68 = tail call i64 @llvm.abs.i64(i64 %67, i1 false) #8
  %69 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %68, i32 0) #11, !srcloc !56
  %asmresult.i.i.i77.i = extractvalue { i64, i32 } %69, 0
  %asmresult4.i.i.i78.i = extractvalue { i64, i32 } %69, 1
  %70 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %68, i64 %asmresult.i.i.i77.i, i32 %asmresult4.i.i.i78.i) #11, !srcloc !57
  %asmresult10.i.i.i79.i = extractvalue { i64, i32 } %70, 0
  %div1811.i.i80.i = lshr i64 %asmresult10.i.i.i79.i, 9
  %sub210.i.i81.i = sub nsw i64 0, %div1811.i.i80.i
  %cond213.i.i82.i = select i1 %cmp8.i.i76.i, i64 %sub210.i.i81.i, i64 %div1811.i.i80.i
  %sc_msg_key.i = getelementptr i8, ptr %.pn.i, i32 -8
  %71 = ptrtoint ptr %sc_msg_key.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sc_msg_key.i, align 8
  %sc_msg_type.i = getelementptr i8, ptr %.pn.i, i32 -4
  %73 = ptrtoint ptr %sc_msg_type.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %sc_msg_type.i, align 4
  %conv22.i = zext i16 %74 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, ptr noundef nonnull %sc.0.le.i, i32 noundef %34, ptr noundef nonnull %saddr.i, i32 noundef %33, ptr noundef nonnull %daddr.i, i32 noundef %35, ptr noundef %nd_name.i, i32 noundef %39, i32 noundef %bf.cast.i, i64 noundef %cond213.i.i.i, i64 noundef %cond213.i.i54.i, i64 noundef %cond213.i.i61.i, i64 noundef %cond213.i.i68.i, i64 noundef %cond213.i.i75.i, i64 noundef %cond213.i.i82.i, i32 noundef %72, i32 noundef %conv22.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %daddr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr.i) #8
  br label %if.end2

sc_show_sock_stats.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sc_node.i9 = getelementptr i8, ptr %.pn.i, i32 -312
  %75 = ptrtoint ptr %sc_node.i9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sc_node.i9, align 8
  %nd_num.i = getelementptr inbounds %struct.o2nm_node, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %nd_num.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %nd_num.i, align 1
  %conv.i = zext i8 %78 to i32
  %sc_send_count.i = getelementptr i8, ptr %.pn.i, i32 80
  %79 = ptrtoint ptr %sc_send_count.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sc_send_count.i, align 8
  %sc_tv_acquiry_total.i = getelementptr i8, ptr %.pn.i, i32 56
  %81 = ptrtoint ptr %sc_tv_acquiry_total.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %sc_tv_acquiry_total.i, align 8
  %sc_tv_send_total.i = getelementptr i8, ptr %.pn.i, i32 64
  %83 = ptrtoint ptr %sc_tv_send_total.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %sc_tv_send_total.i, align 8
  %sc_tv_status_total.i = getelementptr i8, ptr %.pn.i, i32 72
  %85 = ptrtoint ptr %sc_tv_status_total.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %sc_tv_status_total.i, align 8
  %sc_recv_count.i = getelementptr i8, ptr %.pn.i, i32 84
  %87 = ptrtoint ptr %sc_recv_count.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sc_recv_count.i, align 4
  %sc_tv_process_total.i = getelementptr i8, ptr %.pn.i, i32 88
  %89 = ptrtoint ptr %sc_tv_process_total.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %sc_tv_process_total.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %conv.i, i32 noundef %80, i64 noundef %82, i64 noundef %84, i64 noundef %86, i32 noundef %88, i64 noundef %90) #8
  br label %if.end2

if.end2:                                          ; preds = %sc_show_sock_stats.exit, %sc_show_sock_container.exit, %next_sc.exit.if.end2_crit_edge, %for.cond.i.if.end2_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @o2net_debug_lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_fop_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sc_common_open(ptr noundef %file, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2net_debug_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !59
  %and.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %7 = tail call ptr @llvm.returnaddress(i32 0) #8
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call ptr @llvm.returnaddress(i32 0) #8
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !60
  %and.i.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !54

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #8, !srcloc !61
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !63
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %15, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %15, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  %16 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %19, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %17 to i32
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos, ptr noundef %1, i32 noundef %conv) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nodes_fop_open(ptr noundef %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %map.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map.i) #8
  %1 = call ptr @memset(ptr %map.i, i32 255, i32 32)
  call void @o2net_fill_node_map(ptr noundef nonnull %map.i, i32 noundef 32) #8
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %map.i, i32 noundef 255, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 255
  br i1 %cmp2.i, label %if.end.while.body.i_crit_edge, label %if.end.o2net_fill_bitmap.exit_crit_edge

if.end.o2net_fill_bitmap.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %o2net_fill_bitmap.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %call4.i = phi i32 [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call1.i, %if.end.while.body.i_crit_edge ]
  %out.03.i = phi i32 [ %add3.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 %out.03.i
  %sub.i = sub i32 4096, %out.03.i
  %call2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.10, i32 noundef %call4.i) #8
  %add3.i = add i32 %call2.i, %out.03.i
  %add.i = add nsw i32 %call4.i, 1
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %map.i, i32 noundef 255, i32 noundef %add.i) #8
  %cmp.i = icmp slt i32 %call.i, 255
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.o2net_fill_bitmap.exit_crit_edge

while.body.i.o2net_fill_bitmap.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %o2net_fill_bitmap.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

o2net_fill_bitmap.exit:                           ; preds = %while.body.i.o2net_fill_bitmap.exit_crit_edge, %if.end.o2net_fill_bitmap.exit_crit_edge
  %out.0.lcssa.i = phi i32 [ 0, %if.end.o2net_fill_bitmap.exit_crit_edge ], [ %add3.i, %while.body.i.o2net_fill_bitmap.exit_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %call7.i, i32 %out.0.lcssa.i
  %sub5.i = sub i32 4096, %out.0.lcssa.i
  %call6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4.i, i32 noundef %sub5.i, ptr noundef nonnull @.str.11) #8
  %add7.i = add i32 %call6.i, %out.0.lcssa.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map.i) #8
  %conv = sext i32 %add7.i to i64
  %2 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %o2net_fill_bitmap.exit.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

o2net_fill_bitmap.exit.i_size_write.exit_crit_edge: ; preds = %o2net_fill_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %o2net_fill_bitmap.exit
  %7 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  %11 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %16, ptrtoint (ptr @lockdep_recursion to i32)
  %17 = inttoptr i32 %add.i28.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %20 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i7.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %24 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i29.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %28 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i9.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %31, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  %32 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %35, ptrtoint (ptr @hardirqs_enabled to i32)
  %36 = inttoptr i32 %add47.i.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !70
  %39 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i12.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %42, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool54.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !71

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %o2net_fill_bitmap.exit.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %43 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %45 = call ptr @llvm.returnaddress(i32 0) #8
  %46 = ptrtoint ptr %45 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %46) #8
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %47 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv, ptr %i_size8.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %46) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !73
  %48 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %50 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i26.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %54 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %i_size_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %i_size_write.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2net_debug_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_fill_node_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 494, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 496, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 498, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 500, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 502, i32 22}
!10 = !{ptr @o2net_dentry, !11, !"o2net_dentry", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 38, i32 23}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 40, i32 8}
!14 = !{ptr @o2net_debug_lock, !13, !"o2net_debug_lock", i1 false, i1 false}
!15 = !{ptr @send_tracking, !16, !"send_tracking", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 43, i32 8}
!17 = !{ptr @sock_containers, !18, !"sock_containers", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 42, i32 8}
!19 = !{ptr @nst_seq_fops, !20, !"nst_seq_fops", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 185, i32 37}
!21 = !{ptr @nst_seq_ops, !22, !"nst_seq_ops", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 157, i32 36}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 126, i32 18}
!25 = !{ptr @sc_seq_fops, !26, !"sc_seq_fops", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 429, i32 37}
!27 = !{ptr @sc_seq_ops, !28, !"sc_seq_ops", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 371, i32 36}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 315, i32 18}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 285, i32 18}
!33 = !{ptr @stats_seq_fops, !34, !"stats_seq_fops", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 417, i32 37}
!35 = !{ptr @nodes_fops, !36, !"nodes_fops", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 478, i32 37}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 444, i32 48}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/cluster/netdebug.c", i32 445, i32 47}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2157000229, i64 2157000720, i64 2157000266, i64 2157000322, i64 2157000356, i64 2157000380, i64 2157000421, i64 2157000442, i64 2157000470, i64 2157000504}
!56 = !{i64 711659, i64 711686, i64 711708, i64 711736}
!57 = !{i64 712067, i64 712094, i64 712127, i64 712148, i64 712175, i64 712201}
!58 = !{i64 2157006214, i64 2157006706, i64 2157006251, i64 2157006307, i64 2157006341, i64 2157006365, i64 2157006406, i64 2157006427, i64 2157006455, i64 2157006489}
!59 = !{i64 754479, i64 754540}
!60 = !{i64 757211}
!61 = !{i64 757496}
!62 = !{i64 2153132794}
!63 = !{i64 2153132636}
!64 = !{i64 2153132964}
!65 = !{i64 2149982605}
!66 = !{i64 2153134725}
!67 = !{i64 2149874937}
!68 = !{i64 2149879869}
!69 = !{i64 2149901581}
!70 = !{i64 2149906473}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2149982930}
!73 = !{i64 2149983255}
!74 = !{i64 2153146587}
