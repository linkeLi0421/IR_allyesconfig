; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/stack.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/stack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mISDNstack = type { i32, ptr, ptr, ptr, %struct.wait_queue_head, %struct.sk_buff_head, %struct.list_head, ptr, %struct.mISDNchannel, %struct.mutex, %struct.mISDN_sock_list }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mISDN_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.Bprotocol = type { %struct.list_head, ptr, i32, ptr }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }

@create_stack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013kmalloc mISDN_stack failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"create_stack\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/isdn/mISDN/stack.c\00", [37 x i8] zeroinitializer }, align 32
@create_stack._entry_ptr = internal global ptr @create_stack._entry, section ".printk_index", align 4
@create_stack.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&newst->l1sock.lock\00", [44 x i8] zeroinitializer }, align 32
@create_stack.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&newst->workq\00", [18 x i8] zeroinitializer }, align 32
@create_stack.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&newst->lmutex\00", [17 x i8] zeroinitializer }, align 32
@create_stack._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013kmalloc teimanager failed\0A\00", [35 x i8] zeroinitializer }, align 32
@create_stack._entry_ptr.10 = internal global ptr @create_stack._entry.8, section ".printk_index", align 4
@debug = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@create_stack._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: st(%s)\0A\00", [18 x i8] zeroinitializer }, align 32
@create_stack._entry_ptr.13 = internal global ptr @create_stack._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mISDN_%s\00", [23 x i8] zeroinitializer }, align 32
@create_stack._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mISDN:cannot create kernel thread for %s (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@create_stack._entry_ptr.17 = internal global ptr @create_stack._entry.15, section ".printk_index", align 4
@connect_layer1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s proto(%x) adr(%d %d %d %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"connect_layer1\00", [17 x i8] zeroinitializer }, align 32
@connect_layer1._entry_ptr = internal global ptr @connect_layer1._entry, section ".printk_index", align 4
@connect_layer1._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: ret %d (dev %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@connect_layer1._entry_ptr.22 = internal global ptr @connect_layer1._entry.20, section ".printk_index", align 4
@connect_Bstack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.23, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"connect_Bstack\00", [17 x i8] zeroinitializer }, align 32
@connect_Bstack._entry_ptr = internal global ptr @connect_Bstack._entry, section ".printk_index", align 4
@create_l2entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.24, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"create_l2entity\00", [16 x i8] zeroinitializer }, align 32
@create_l2entity._entry_ptr = internal global ptr @create_l2entity._entry, section ".printk_index", align 4
@create_l2entity._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: ret 1 %d\0A\00", [16 x i8] zeroinitializer }, align 32
@create_l2entity._entry_ptr.27 = internal global ptr @create_l2entity._entry.25, section ".printk_index", align 4
@create_l2entity._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: ret 2 %d\0A\00", [16 x i8] zeroinitializer }, align 32
@create_l2entity._entry_ptr.30 = internal global ptr @create_l2entity._entry.28, section ".printk_index", align 4
@delete_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\014%s: no stack\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"delete_channel\00", [17 x i8] zeroinitializer }, align 32
@delete_channel._entry_ptr = internal global ptr @delete_channel._entry, section ".printk_index", align 4
@delete_channel._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: st(%s) protocol(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@delete_channel._entry_ptr.35 = internal global ptr @delete_channel._entry.33, section ".printk_index", align 4
@delete_channel._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: no l2 channel\0A\00", [43 x i8] zeroinitializer }, align 32
@delete_channel._entry_ptr.38 = internal global ptr @delete_channel._entry.36, section ".printk_index", align 4
@delete_channel._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@delete_channel._entry_ptr.40 = internal global ptr @delete_channel._entry.39, section ".printk_index", align 4
@delete_stack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.41, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"delete_stack\00", [19 x i8] zeroinitializer }, align 32
@delete_stack._entry_ptr = internal global ptr @delete_stack._entry, section ".printk_index", align 4
@delete_stack._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s: notifier in use\0A\00", [41 x i8] zeroinitializer }, align 32
@delete_stack._entry_ptr.44 = internal global ptr @delete_stack._entry.42, section ".printk_index", align 4
@delete_stack._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: layer2 list not empty\0A\00", [35 x i8] zeroinitializer }, align 32
@delete_stack._entry_ptr.47 = internal global ptr @delete_stack._entry.45, section ".printk_index", align 4
@delete_stack._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: layer1 list not empty\0A\00", [35 x i8] zeroinitializer }, align 32
@delete_stack._entry_ptr.50 = internal global ptr @delete_stack._entry.48, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@_queue_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s prim(%x) id(%x) %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_queue_message\00", [17 x i8] zeroinitializer }, align 32
@_queue_message._entry_ptr = internal global ptr @_queue_message._entry, section ".printk_index", align 4
@mISDNStackd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017mISDNStackd %s started\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mISDNStackd\00", [20 x i8] zeroinitializer }, align 32
@mISDNStackd._entry_ptr = internal global ptr @mISDNStackd._entry, section ".printk_index", align 4
@mISDNStackd._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s prim(%x) id(%x) send call(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@mISDNStackd._entry_ptr.59 = internal global ptr @mISDNStackd._entry.57, section ".printk_index", align 4
@mISDNStackd._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s wake status %08lx\0A\00", [36 x i8] zeroinitializer }, align 32
@mISDNStackd._entry_ptr.62 = internal global ptr @mISDNStackd._entry.60, section ".printk_index", align 4
@send_msg_to_layer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.63, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send_msg_to_layer\00", [46 x i8] zeroinitializer }, align 32
@send_msg_to_layer._entry_ptr = internal global ptr @send_msg_to_layer._entry, section ".printk_index", align 4
@send_msg_to_layer._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: dev(%s) prim(%x) id(%x) no channel\0A\00", [54 x i8] zeroinitializer }, align 32
@send_msg_to_layer._entry_ptr.66 = internal global ptr @send_msg_to_layer._entry.64, section ".printk_index", align 4
@send_msg_to_layer._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@send_msg_to_layer._entry_ptr.68 = internal global ptr @send_msg_to_layer._entry.67, section ".printk_index", align 4
@send_msg_to_layer._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.63, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: dev(%s) prim %x not delivered\0A\00", [59 x i8] zeroinitializer }, align 32
@send_msg_to_layer._entry_ptr.71 = internal global ptr @send_msg_to_layer._entry.69, section ".printk_index", align 4
@send_socklist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\014%s no skb\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"send_socklist\00", [18 x i8] zeroinitializer }, align 32
@send_socklist._entry_ptr = internal global ptr @send_socklist._entry, section ".printk_index", align 4
@send_layer2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s ch%d prim(%x) addr(%x) err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"send_layer2\00", [20 x i8] zeroinitializer }, align 32
@send_layer2._entry_ptr = internal global ptr @send_layer2._entry, section ".printk_index", align 4
@send_layer2._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s ch%d addr %x no mem\0A\00", [38 x i8] zeroinitializer }, align 32
@send_layer2._entry_ptr.78 = internal global ptr @send_layer2._entry.76, section ".printk_index", align 4
@send_layer2._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s mgr prim(%x) err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@send_layer2._entry_ptr.81 = internal global ptr @send_layer2._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.84 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 16, i64 17]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 371, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 377, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 378, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 380, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 384, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 18, i32 15 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 399, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 402, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 406, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 426, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 440, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 463, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 519, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 538, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 545, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 568, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 572, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 601, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 609, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 625, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 631, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 642, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 645, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 87, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1984, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 26, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 204, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 238, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 283, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 148, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 166, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 176, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 182, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 71, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 104, i32 7 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 112, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private constant [30 x i8] c"../drivers/isdn/mISDN/stack.c\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 130, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 729, i32 3 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @_queue_message._entry, ptr @_queue_message._entry_ptr, ptr @connect_Bstack._entry, ptr @connect_Bstack._entry_ptr, ptr @connect_layer1._entry, ptr @connect_layer1._entry.20, ptr @connect_layer1._entry_ptr, ptr @connect_layer1._entry_ptr.22, ptr @create_l2entity._entry, ptr @create_l2entity._entry.25, ptr @create_l2entity._entry.28, ptr @create_l2entity._entry_ptr, ptr @create_l2entity._entry_ptr.27, ptr @create_l2entity._entry_ptr.30, ptr @create_stack._entry, ptr @create_stack._entry.11, ptr @create_stack._entry.15, ptr @create_stack._entry.8, ptr @create_stack._entry_ptr, ptr @create_stack._entry_ptr.10, ptr @create_stack._entry_ptr.13, ptr @create_stack._entry_ptr.17, ptr @delete_channel._entry, ptr @delete_channel._entry.33, ptr @delete_channel._entry.36, ptr @delete_channel._entry.39, ptr @delete_channel._entry_ptr, ptr @delete_channel._entry_ptr.35, ptr @delete_channel._entry_ptr.38, ptr @delete_channel._entry_ptr.40, ptr @delete_stack._entry, ptr @delete_stack._entry.42, ptr @delete_stack._entry.45, ptr @delete_stack._entry.48, ptr @delete_stack._entry_ptr, ptr @delete_stack._entry_ptr.44, ptr @delete_stack._entry_ptr.47, ptr @delete_stack._entry_ptr.50, ptr @mISDNStackd._entry, ptr @mISDNStackd._entry.57, ptr @mISDNStackd._entry.60, ptr @mISDNStackd._entry_ptr, ptr @mISDNStackd._entry_ptr.59, ptr @mISDNStackd._entry_ptr.62, ptr @send_layer2._entry, ptr @send_layer2._entry.76, ptr @send_layer2._entry.79, ptr @send_layer2._entry_ptr, ptr @send_layer2._entry_ptr.78, ptr @send_layer2._entry_ptr.81, ptr @send_msg_to_layer._entry, ptr @send_msg_to_layer._entry.64, ptr @send_msg_to_layer._entry.67, ptr @send_msg_to_layer._entry.69, ptr @send_msg_to_layer._entry_ptr, ptr @send_msg_to_layer._entry_ptr.66, ptr @send_msg_to_layer._entry_ptr.68, ptr @send_msg_to_layer._entry_ptr.71, ptr @send_socklist._entry, ptr @send_socklist._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @create_stack.__key, ptr @.str.3, ptr @create_stack.__key.4, ptr @.str.5, ptr @create_stack.__key.6, ptr @.str.7, ptr @.str.9, ptr @debug, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @init_completion.__key, ptr @.str.51, ptr @skb_queue_head_init.__key, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_stack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_stack.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_stack.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_stack.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_stack._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_stack._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_stack._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connect_layer1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connect_layer1._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connect_Bstack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_l2entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_l2entity._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_l2entity._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_channel._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_channel._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_channel._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_stack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_stack._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_stack._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_stack._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_queue_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDNStackd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDNStackd._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDNStackd._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_msg_to_layer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_msg_to_layer._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_msg_to_layer._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_msg_to_layer._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_socklist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_layer2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_layer2._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_layer2._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @set_channel_address(ptr nocapture noundef writeonly %ch, i32 noundef %sapi, i32 noundef %tei) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %tei, 8
  %or = or i32 %shl, %sapi
  %addr = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %addr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__add_layer2(ptr noundef %ch, ptr noundef %st) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layer2 = getelementptr inbounds %struct.mISDNstack, ptr %st, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.mISDNstack, ptr %st, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ch, ptr noundef %1, ptr noundef %layer2) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ch, ptr %prev.i, align 4
  %3 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %layer2, ptr %ch, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ch, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_layer2(ptr noundef %ch, ptr noundef %st) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lmutex = getelementptr inbounds %struct.mISDNstack, ptr %st, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lmutex, i32 noundef 0) #9
  %layer2.i = getelementptr inbounds %struct.mISDNstack, ptr %st, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.mISDNstack, ptr %st, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ch, ptr noundef %1, ptr noundef %layer2.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.__add_layer2.exit_crit_edge

entry.__add_layer2.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__add_layer2.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ch, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %layer2.i, ptr %ch, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ch, ptr %1, align 4
  br label %__add_layer2.exit

__add_layer2.exit:                                ; preds = %if.end.i.i.i, %entry.__add_layer2.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lmutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_stack(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #9
  %0 = getelementptr inbounds i8, ptr %done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 320) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev3, align 4
  %layer2 = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %layer2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %layer2, ptr %layer2, align 4
  %prev.i = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %layer2, ptr %prev.i, align 8
  %l1sock = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %l1sock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %l1sock, align 8
  %lock = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 10, i32 1
  call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @create_stack.__key) #9
  %workq = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %workq, ptr noundef nonnull @.str.5, ptr noundef nonnull @create_stack.__key.4) #9
  %msgq = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 5, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %8 = ptrtoint ptr %msgq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msgq, ptr %msgq, align 4
  %prev.i.i = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msgq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  %lmutex = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %lmutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @create_stack.__key.6) #9
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %st, align 8
  %call14 = call i32 @create_teimanager(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %own = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 8
  %teimgr = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %teimgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %teimgr, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %own, ptr %peer, align 4
  %15 = load ptr, ptr %teimgr, align 4
  %recv = getelementptr inbounds %struct.mISDNchannel, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %recv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mISDN_queue_message, ptr %recv, align 4
  %17 = load ptr, ptr %teimgr, align 4
  %st25 = getelementptr inbounds %struct.mISDNchannel, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %st25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %st25, align 4
  %layer1 = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %layer1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %layer1, align 4
  %recv28 = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %recv28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @l1_receive, ptr %recv28, align 4
  %peer31 = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 6
  %21 = ptrtoint ptr %peer31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %own, ptr %peer31, align 4
  %st33 = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 8, i32 5
  %22 = ptrtoint ptr %st33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %st33, align 8
  %ctrl = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 8, i32 9
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @st_own_ctrl, ptr %ctrl, align 8
  %send = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 8, i32 7
  %24 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mISDN_queue_message, ptr %send, align 8
  %recv37 = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 8, i32 8
  %25 = ptrtoint ptr %recv37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mISDN_queue_message, ptr %recv37, align 4
  %26 = load ptr, ptr @debug, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end22.if.end48_crit_edge, label %do.end42

if.end22.if.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end42:                                         ; preds = %if.end22
  %29 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev3, align 4
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %30, i32 0, i32 8, i32 3
  %31 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end42.dev_name.exit_crit_edge

do.end42.dev_name.exit_crit_edge:                 ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %dev45 = getelementptr inbounds %struct.mISDNdevice, ptr %30, i32 0, i32 8
  %33 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev45, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end42.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %34, %if.end.i ], [ %32, %do.end42.dev_name.exit_crit_edge ]
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #13
  br label %if.end48

if.end48:                                         ; preds = %dev_name.exit, %if.end22.if.end48_crit_edge
  %notify = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %done, ptr %notify, align 4
  %36 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev3, align 4
  %init_name.i116 = getelementptr inbounds %struct.mISDNdevice, ptr %37, i32 0, i32 8, i32 3
  %38 = ptrtoint ptr %init_name.i116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i116, align 8
  %tobool.not.i117 = icmp eq ptr %39, null
  br i1 %tobool.not.i117, label %if.end.i118, label %if.end48.dev_name.exit120_crit_edge

if.end48.dev_name.exit120_crit_edge:              ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit120

if.end.i118:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.mISDNdevice, ptr %37, i32 0, i32 8
  %40 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev50, align 4
  br label %dev_name.exit120

dev_name.exit120:                                 ; preds = %if.end.i118, %if.end48.dev_name.exit120_crit_edge
  %retval.0.i119 = phi ptr [ %41, %if.end.i118 ], [ %39, %if.end48.dev_name.exit120_crit_edge ]
  %call52 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @mISDNStackd, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i119) #9
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then60, label %if.else

if.then60:                                        ; preds = %dev_name.exit120
  %thread127 = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %thread127 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call52, ptr %thread127, align 8
  %43 = ptrtoint ptr %call52 to i32
  %44 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev3, align 4
  %init_name.i122 = getelementptr inbounds %struct.mISDNdevice, ptr %45, i32 0, i32 8, i32 3
  %46 = ptrtoint ptr %init_name.i122 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i122, align 8
  %tobool.not.i123 = icmp eq ptr %47, null
  br i1 %tobool.not.i123, label %if.end.i124, label %if.then60.dev_name.exit126_crit_edge

if.then60.dev_name.exit126_crit_edge:             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit126

if.end.i124:                                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %dev68 = getelementptr inbounds %struct.mISDNdevice, ptr %45, i32 0, i32 8
  %48 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev68, align 4
  br label %dev_name.exit126

dev_name.exit126:                                 ; preds = %if.end.i124, %if.then60.dev_name.exit126_crit_edge
  %retval.0.i125 = phi ptr [ %49, %if.end.i124 ], [ %47, %if.then60.dev_name.exit126_crit_edge ]
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i125, i32 noundef %43) #13
  %50 = ptrtoint ptr %teimgr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %teimgr, align 4
  call void @delete_teimanager(ptr noundef %51) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.else:                                          ; preds = %dev_name.exit120
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = call i32 @wake_up_process(ptr noundef %call52) #9
  %thread = getelementptr inbounds %struct.mISDNstack, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call52, ptr %thread, align 8
  call void @wait_for_completion(ptr noundef nonnull %done) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %dev_name.exit126, %do.end19, %do.end
  %retval.0 = phi i32 [ %call14, %do.end19 ], [ -12, %do.end ], [ %43, %dev_name.exit126 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_teimanager(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDN_queue_message(ptr nocapture noundef readonly %ch, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %5 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %cb.i, align 1
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %id.i, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %6, i32 noundef %8, ptr noundef %skb) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %msgq.i = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %msgq.i, ptr noundef %skb) #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %1, align 4
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %if.then6.i, label %if.end.i._queue_message.exit_crit_edge, !prof !157

if.end.i._queue_message.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_queue_message.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %1) #9
  %workq.i = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %workq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %_queue_message.exit

_queue_message.exit:                              ; preds = %if.then6.i, %if.end.i._queue_message.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1_receive(ptr nocapture noundef readonly %ch, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i.i, ptr %2, align 8
  %4 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %st, align 4
  %6 = load ptr, ptr @debug, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and.i = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %cb.i, align 1
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %id.i, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %10, i32 noundef %12, ptr noundef %skb) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %msgq.i = getelementptr inbounds %struct.mISDNstack, ptr %5, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %msgq.i, ptr noundef %skb) #9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %5, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i, label %if.then6.i, label %if.end.i.return_crit_edge, !prof !157

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %5) #9
  %workq.i = getelementptr inbounds %struct.mISDNstack, ptr %5, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %workq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %return

return:                                           ; preds = %if.then6.i, %if.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_own_ctrl(ptr nocapture noundef readonly %ch, i32 noundef %cmd, ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %layer1 = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %layer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layer1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %call = tail call i32 %5(ptr noundef nonnull %3, i32 noundef %cmd, ptr noundef %arg) #9
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDNStackd(ptr noundef %data) #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %blocked = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 113
  %arrayidx.i = getelementptr %struct.task_struct, ptr %3, i32 0, i32 113, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %blocked to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %blocked, align 4
  %6 = load ptr, ptr @debug, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %10, i32 0, i32 8, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.mISDNdevice, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %do.end.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %retval.0.i) #13
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %notify = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %notify, align 4
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @complete(ptr noundef nonnull %16) #9
  %17 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %notify, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %msgq = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 5
  %lmutex.i152.i = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 9
  %layer2.i153.i = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 6
  %dev80.i = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 1
  %l1sock13.i = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 10
  %tobool.not.i143.i = icmp eq ptr %data, null
  %layer1.i = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 7
  %workq = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end7
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %data, align 4
  %20 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  br i1 %tobool9.not, label %if.else, label %if.then12, !prof !157

if.then12:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %data) #9
  %call16 = call i32 @_test_and_clear_bit(i32 noundef 30, ptr noundef %data) #9
  br label %if.end19

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 @_test_and_set_bit(i32 noundef 30, ptr noundef %data) #9
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %data, align 4
  %and1.i249292 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i249292)
  %tobool22.not293 = icmp eq i32 %and1.i249292, 0
  br i1 %tobool22.not293, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %if.end19.while.body_crit_edge
  %call23 = call ptr @skb_dequeue(ptr noundef %msgq) #9
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %while.body.if.end35_crit_edge

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then25:                                        ; preds = %while.body
  %call27 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %data) #9
  %call29 = call ptr @skb_dequeue(ptr noundef %msgq) #9
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then25.while.cond.backedge_crit_edge, label %if.end32

if.then25.while.cond.backedge_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %data) #9
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %while.body.if.end35_crit_edge
  %skb.0 = phi ptr [ %call23, %while.body.if.end35_crit_edge ], [ %call29, %if.end32 ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %cb.i, align 1
  %25 = load ptr, ptr @debug, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and1.i258 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i258)
  %tobool.not.i259 = icmp eq i32 %and1.i258, 0
  br i1 %tobool.not.i259, label %if.end35.if.end.i260_crit_edge, label %do.end.i

if.end35.if.end.i260_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i260

do.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %id.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %id.i, align 1
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.63, i32 noundef %24, i32 noundef %29, ptr noundef nonnull %skb.0) #13
  br label %if.end.i260

if.end.i260:                                      ; preds = %do.end.i, %if.end35.if.end.i260_crit_edge
  %trunc.i = trunc i32 %24 to i8
  %30 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %do.end90.i [
    i8 1, label %if.then3.i
    i8 2, label %if.then12.i
    i8 4, label %if.then22.i
    i8 8, label %do.end55.i
  ]

if.then3.i:                                       ; preds = %if.end.i260
  %31 = ptrtoint ptr %l1sock13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %l1sock13.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.not.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then6.i

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call.i.i.i, ptr %33, align 8
  call fastcc void @send_socklist(ptr noundef %l1sock13.i, ptr noundef nonnull %skb.0) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end8.i_crit_edge
  %35 = ptrtoint ptr %layer1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %layer1.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %send.i, align 4
  %call10.i = call i32 %38(ptr noundef %36, ptr noundef nonnull %skb.0) #9
  br label %send_msg_to_layer.exit

if.then12.i:                                      ; preds = %if.end.i260
  %39 = ptrtoint ptr %l1sock13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %l1sock13.i, align 4
  %tobool.not.i141.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i141.not.i, label %if.then12.i.if.end19.i_crit_edge, label %if.then17.i

if.then12.i.if.end19.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @send_socklist(ptr noundef %l1sock13.i, ptr noundef nonnull %skb.0) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.then12.i.if.end19.i_crit_edge
  br i1 %tobool.not.i143.i, label %if.end19.i.if.end59_crit_edge, label %if.end.i.i

if.end19.i.if.end59_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i.i:                                       ; preds = %if.end19.i
  call void @mutex_lock_nested(ptr noundef %lmutex.i152.i, i32 noundef 0) #9
  %id.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %id.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %id.i.i, align 1
  %and.i.i = and i32 %42, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 65535
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i.i.for.cond42.i.i_crit_edge

if.end.i.i.for.cond42.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.cond42.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %43 = ptrtoint ptr %layer2.i153.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %ch.0127.i.i = load ptr, ptr %layer2.i153.i, align 4
  %cmp3.not128.i.i = icmp eq ptr %ch.0127.i.i, %layer2.i153.i
  br i1 %cmp3.not128.i.i, label %if.then1.i.i.out.i.i_crit_edge, label %if.then1.i.i.for.body.i.i_crit_edge

if.then1.i.i.for.body.i.i_crit_edge:              ; preds = %if.then1.i.i
  br label %for.body.i.i

if.then1.i.i.out.i.i_crit_edge:                   ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then1.i.i.for.body.i.i_crit_edge
  %ch.0130.i.i = phi ptr [ %ch.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ch.0127.i.i, %if.then1.i.i.for.body.i.i_crit_edge ]
  %skb.addr.0129.i.i = phi ptr [ %skb.addr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %skb.0, %if.then1.i.i.for.body.i.i_crit_edge ]
  %44 = ptrtoint ptr %ch.0130.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ch.0130.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %45, %layer2.i153.i
  br i1 %cmp.i.not.i.i, label %for.body.i.i.if.end9.i.i_crit_edge, label %if.else.i.i

for.body.i.i.if.end9.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i.i = call ptr @skb_copy(ptr noundef %skb.addr.0129.i.i, i32 noundef 3264) #9
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.else.i.i, %for.body.i.i.if.end9.i.i_crit_edge
  %cskb.0.i.i = phi ptr [ %call8.i.i, %if.else.i.i ], [ %skb.addr.0129.i.i, %for.body.i.i.if.end9.i.i_crit_edge ]
  %skb.addr.1.i.i = phi ptr [ %skb.addr.0129.i.i, %if.else.i.i ], [ null, %for.body.i.i.if.end9.i.i_crit_edge ]
  %tobool10.not.i.i = icmp eq ptr %cskb.0.i.i, null
  br i1 %tobool10.not.i.i, label %do.end25.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  %send.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0130.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %send.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %send.i.i, align 4
  %call12.i.i = call i32 %47(ptr noundef %ch.0130.i.i, ptr noundef nonnull %cskb.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then11.i.i.for.inc.i.i_crit_edge, label %if.then14.i.i

if.then11.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %if.then11.i.i
  %48 = load ptr, ptr @debug, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %and15.i.i = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.then14.i.i.if.end20.i.i_crit_edge, label %do.end.i.i

if.then14.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %nr.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0130.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr.i.i, align 4
  %53 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %cb.i, align 1
  %addr.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0130.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr.i.i, align 4
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %call12.i.i) #13
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end.i.i, %if.then14.i.i.if.end20.i.i_crit_edge
  call void @consume_skb(ptr noundef nonnull %cskb.0.i.i) #9
  br label %for.inc.i.i

do.end25.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %nr27.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0130.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %nr27.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr27.i.i, align 4
  %addr28.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0130.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %addr28.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr28.i.i, align 4
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %58, i32 noundef %60) #13
  br label %out.i.i

for.inc.i.i:                                      ; preds = %if.end20.i.i, %if.then11.i.i.for.inc.i.i_crit_edge
  %61 = ptrtoint ptr %ch.0130.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %ch.0.i.i = load ptr, ptr %ch.0130.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %ch.0.i.i, %layer2.i153.i
  br i1 %cmp3.not.i.i, label %for.inc.i.i.out.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.out.i.i_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

for.cond42.i.i:                                   ; preds = %for.body47.i.i.for.cond42.i.i_crit_edge, %if.end.i.i.for.cond42.i.i_crit_edge
  %ch.1.in.i.i = phi ptr [ %ch.1.i.i, %for.body47.i.i.for.cond42.i.i_crit_edge ], [ %layer2.i153.i, %if.end.i.i.for.cond42.i.i_crit_edge ]
  %62 = ptrtoint ptr %ch.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %ch.1.i.i = load ptr, ptr %ch.1.in.i.i, align 4
  %cmp45.not.i.i = icmp eq ptr %ch.1.i.i, %layer2.i153.i
  br i1 %cmp45.not.i.i, label %for.end65.i.i, label %for.body47.i.i

for.body47.i.i:                                   ; preds = %for.cond42.i.i
  %addr50.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.1.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %addr50.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr50.i.i, align 4
  %cmp51.i.i = icmp eq i32 %and.i.i, %64
  br i1 %cmp51.i.i, label %if.then52.i.i, label %for.body47.i.i.for.cond42.i.i_crit_edge

for.body47.i.i.for.cond42.i.i_crit_edge:          ; preds = %for.body47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.i.i

if.then52.i.i:                                    ; preds = %for.body47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %send53.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.1.i.i, i32 0, i32 7
  %65 = ptrtoint ptr %send53.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %send53.i.i, align 4
  %call54.i.i = call i32 %66(ptr noundef %ch.1.i.i, ptr noundef %skb.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool55.not.i.i = icmp eq i32 %call54.i.i, 0
  %spec.select.i.i = select i1 %tobool55.not.i.i, ptr null, ptr %skb.0
  br label %out.i.i

for.end65.i.i:                                    ; preds = %for.cond42.i.i
  %67 = ptrtoint ptr %dev80.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev80.i, align 4
  %teimgr.i.i = getelementptr inbounds %struct.mISDNdevice, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %teimgr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %teimgr.i.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctrl.i.i, align 4
  %call68.i.i = call i32 %72(ptr noundef %70, i32 noundef 1024, ptr noundef %skb.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %tobool69.not.i.i = icmp eq i32 %call68.i.i, 0
  br i1 %tobool69.not.i.i, label %for.end65.i.i.out.i.i_crit_edge, label %if.else71.i.i

for.end65.i.i.out.i.i_crit_edge:                  ; preds = %for.end65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

if.else71.i.i:                                    ; preds = %for.end65.i.i
  %73 = load ptr, ptr @debug, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %and72.i.i = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i.i)
  %tobool73.not.i.i = icmp eq i32 %and72.i.i, 0
  br i1 %tobool73.not.i.i, label %if.else71.i.i.out.i.i_crit_edge, label %do.end77.i.i

if.else71.i.i.out.i.i_crit_edge:                  ; preds = %if.else71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

do.end77.i.i:                                     ; preds = %if.else71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %cb.i, align 1
  %call80.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75, i32 noundef %77, i32 noundef %call68.i.i) #13
  br label %out.i.i

out.i.i:                                          ; preds = %do.end77.i.i, %if.else71.i.i.out.i.i_crit_edge, %for.end65.i.i.out.i.i_crit_edge, %if.then52.i.i, %for.inc.i.i.out.i.i_crit_edge, %do.end25.i.i, %if.then1.i.i.out.i.i_crit_edge
  %skb.addr.2.i.i = phi ptr [ %skb.addr.1.i.i, %do.end25.i.i ], [ %skb.0, %do.end77.i.i ], [ %skb.0, %if.else71.i.i.out.i.i_crit_edge ], [ %spec.select.i.i, %if.then52.i.i ], [ null, %for.end65.i.i.out.i.i_crit_edge ], [ %skb.0, %if.then1.i.i.out.i.i_crit_edge ], [ %skb.addr.1.i.i, %for.inc.i.i.out.i.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lmutex.i152.i) #9
  call void @consume_skb(ptr noundef %skb.addr.2.i.i) #9
  br label %if.end59

if.then22.i:                                      ; preds = %if.end.i260
  %id23.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 4
  %78 = ptrtoint ptr %id23.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %id23.i, align 1
  call void @mutex_lock_nested(ptr noundef %lmutex.i152.i, i32 noundef 0) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i148.i.for.cond.i.i_crit_edge, %if.then22.i
  %ch.0.in.i.i = phi ptr [ %layer2.i153.i, %if.then22.i ], [ %ch.0.i146.i, %for.body.i148.i.for.cond.i.i_crit_edge ]
  %80 = ptrtoint ptr %ch.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %ch.0.i146.i = load ptr, ptr %ch.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ch.0.i146.i, %layer2.i153.i
  br i1 %cmp.not.i.i, label %get_channel4id.exit.thread.i, label %for.body.i148.i

get_channel4id.exit.thread.i:                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lmutex.i152.i) #9
  br label %do.end32.i

for.body.i148.i:                                  ; preds = %for.cond.i.i
  %nr.i147.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0.i146.i, i32 0, i32 2
  %81 = ptrtoint ptr %nr.i147.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr.i147.i, align 4
  %cmp2.i.i = icmp eq i32 %82, %79
  br i1 %cmp2.i.i, label %get_channel4id.exit.i, label %for.body.i148.i.for.cond.i.i_crit_edge

for.body.i148.i.for.cond.i.i_crit_edge:           ; preds = %for.body.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

get_channel4id.exit.i:                            ; preds = %for.body.i148.i
  call void @mutex_unlock(ptr noundef %lmutex.i152.i) #9
  %tobool25.not.i = icmp eq ptr %ch.0.i146.i, null
  br i1 %tobool25.not.i, label %get_channel4id.exit.i.do.end32.i_crit_edge, label %if.then26.i

get_channel4id.exit.i.do.end32.i_crit_edge:       ; preds = %get_channel4id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32.i

if.then26.i:                                      ; preds = %get_channel4id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %send27.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0.i146.i, i32 0, i32 7
  %83 = ptrtoint ptr %send27.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %send27.i, align 4
  %call28.i = call i32 %84(ptr noundef nonnull %ch.0.i146.i, ptr noundef %skb.0) #9
  br label %send_msg_to_layer.exit

do.end32.i:                                       ; preds = %get_channel4id.exit.i.do.end32.i_crit_edge, %get_channel4id.exit.thread.i
  %85 = ptrtoint ptr %dev80.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev80.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.mISDNdevice, ptr %86, i32 0, i32 8, i32 3
  %87 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i150.i = icmp eq ptr %88, null
  br i1 %tobool.not.i150.i, label %if.end.i151.i, label %do.end32.i.dev_name.exit.i_crit_edge

do.end32.i.dev_name.exit.i_crit_edge:             ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i151.i:                                    ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev34.i = getelementptr inbounds %struct.mISDNdevice, ptr %86, i32 0, i32 8
  %89 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev34.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i151.i, %do.end32.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %90, %if.end.i151.i ], [ %88, %do.end32.i.dev_name.exit.i_crit_edge ]
  %91 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %cb.i, align 1
  %93 = ptrtoint ptr %id23.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %id23.i, align 1
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i.i, i32 noundef %92, i32 noundef %94) #13
  br label %if.then44

do.end55.i:                                       ; preds = %if.end.i260
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 171, i32 noundef 9, ptr noundef null) #9
  %id69.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 4
  %95 = ptrtoint ptr %id69.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %id69.i, align 1
  call void @mutex_lock_nested(ptr noundef %lmutex.i152.i, i32 noundef 0) #9
  br label %for.cond.i157.i

for.cond.i157.i:                                  ; preds = %for.body.i160.i.for.cond.i157.i_crit_edge, %do.end55.i
  %ch.0.in.i154.i = phi ptr [ %layer2.i153.i, %do.end55.i ], [ %ch.0.i155.i, %for.body.i160.i.for.cond.i157.i_crit_edge ]
  %97 = ptrtoint ptr %ch.0.in.i154.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %ch.0.i155.i = load ptr, ptr %ch.0.in.i154.i, align 4
  %cmp.not.i156.i = icmp eq ptr %ch.0.i155.i, %layer2.i153.i
  br i1 %cmp.not.i156.i, label %get_channel4id.exit162.thread.i, label %for.body.i160.i

get_channel4id.exit162.thread.i:                  ; preds = %for.cond.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lmutex.i152.i) #9
  br label %do.end78.i

for.body.i160.i:                                  ; preds = %for.cond.i157.i
  %nr.i158.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0.i155.i, i32 0, i32 2
  %98 = ptrtoint ptr %nr.i158.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr.i158.i, align 4
  %cmp2.i159.i = icmp eq i32 %99, %96
  br i1 %cmp2.i159.i, label %get_channel4id.exit162.i, label %for.body.i160.i.for.cond.i157.i_crit_edge

for.body.i160.i.for.cond.i157.i_crit_edge:        ; preds = %for.body.i160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i157.i

get_channel4id.exit162.i:                         ; preds = %for.body.i160.i
  call void @mutex_unlock(ptr noundef %lmutex.i152.i) #9
  %tobool71.not.i = icmp eq ptr %ch.0.i155.i, null
  br i1 %tobool71.not.i, label %get_channel4id.exit162.i.do.end78.i_crit_edge, label %if.then72.i

get_channel4id.exit162.i.do.end78.i_crit_edge:    ; preds = %get_channel4id.exit162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78.i

if.then72.i:                                      ; preds = %get_channel4id.exit162.i
  call void @__sanitizer_cov_trace_pc() #11
  %send73.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0.i155.i, i32 0, i32 7
  %100 = ptrtoint ptr %send73.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %send73.i, align 4
  %call74.i = call i32 %101(ptr noundef nonnull %ch.0.i155.i, ptr noundef %skb.0) #9
  br label %send_msg_to_layer.exit

do.end78.i:                                       ; preds = %get_channel4id.exit162.i.do.end78.i_crit_edge, %get_channel4id.exit162.thread.i
  %102 = ptrtoint ptr %dev80.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev80.i, align 4
  %init_name.i163.i = getelementptr inbounds %struct.mISDNdevice, ptr %103, i32 0, i32 8, i32 3
  %104 = ptrtoint ptr %init_name.i163.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i163.i, align 8
  %tobool.not.i164.i = icmp eq ptr %105, null
  br i1 %tobool.not.i164.i, label %if.end.i165.i, label %do.end78.i.dev_name.exit167.i_crit_edge

do.end78.i.dev_name.exit167.i_crit_edge:          ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit167.i

if.end.i165.i:                                    ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev81.i = getelementptr inbounds %struct.mISDNdevice, ptr %103, i32 0, i32 8
  %106 = ptrtoint ptr %dev81.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev81.i, align 4
  br label %dev_name.exit167.i

dev_name.exit167.i:                               ; preds = %if.end.i165.i, %do.end78.i.dev_name.exit167.i_crit_edge
  %retval.0.i166.i = phi ptr [ %107, %if.end.i165.i ], [ %105, %do.end78.i.dev_name.exit167.i_crit_edge ]
  %108 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %cb.i, align 1
  %110 = ptrtoint ptr %id69.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %id69.i, align 1
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i166.i, i32 noundef %109, i32 noundef %111) #13
  br label %if.then44

do.end90.i:                                       ; preds = %if.end.i260
  %112 = ptrtoint ptr %dev80.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev80.i, align 4
  %init_name.i168.i = getelementptr inbounds %struct.mISDNdevice, ptr %113, i32 0, i32 8, i32 3
  %114 = ptrtoint ptr %init_name.i168.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %init_name.i168.i, align 8
  %tobool.not.i169.i = icmp eq ptr %115, null
  br i1 %tobool.not.i169.i, label %if.end.i170.i, label %do.end90.i.dev_name.exit172.i_crit_edge

do.end90.i.dev_name.exit172.i_crit_edge:          ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit172.i

if.end.i170.i:                                    ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev93.i = getelementptr inbounds %struct.mISDNdevice, ptr %113, i32 0, i32 8
  %116 = ptrtoint ptr %dev93.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev93.i, align 4
  br label %dev_name.exit172.i

dev_name.exit172.i:                               ; preds = %if.end.i170.i, %do.end90.i.dev_name.exit172.i_crit_edge
  %retval.0.i171.i = phi ptr [ %117, %if.end.i170.i ], [ %115, %do.end90.i.dev_name.exit172.i_crit_edge ]
  %118 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %cb.i, align 1
  %call96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i171.i, i32 noundef %119) #13
  br label %if.then44

send_msg_to_layer.exit:                           ; preds = %if.then72.i, %if.then26.i, %if.end8.i
  %retval.0.i261 = phi i32 [ %call10.i, %if.end8.i ], [ %call28.i, %if.then26.i ], [ %call74.i, %if.then72.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i261)
  %tobool37.not = icmp eq i32 %retval.0.i261, 0
  br i1 %tobool37.not, label %send_msg_to_layer.exit.if.end59_crit_edge, label %send_msg_to_layer.exit.if.then44_crit_edge, !prof !157

send_msg_to_layer.exit.if.then44_crit_edge:       ; preds = %send_msg_to_layer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

send_msg_to_layer.exit.if.end59_crit_edge:        ; preds = %send_msg_to_layer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then44:                                        ; preds = %send_msg_to_layer.exit.if.then44_crit_edge, %dev_name.exit172.i, %dev_name.exit167.i, %dev_name.exit.i
  %retval.0.i261274 = phi i32 [ %retval.0.i261, %send_msg_to_layer.exit.if.then44_crit_edge ], [ -3, %dev_name.exit167.i ], [ -3, %dev_name.exit172.i ], [ -3, %dev_name.exit.i ]
  %120 = load ptr, ptr @debug, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %and45 = and i32 %122, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then44.if.end58_crit_edge, label %do.end50

if.then44.if.end58_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.end50:                                         ; preds = %if.then44
  %123 = ptrtoint ptr %dev80.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev80.i, align 4
  %init_name.i262 = getelementptr inbounds %struct.mISDNdevice, ptr %124, i32 0, i32 8, i32 3
  %125 = ptrtoint ptr %init_name.i262 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %init_name.i262, align 8
  %tobool.not.i263 = icmp eq ptr %126, null
  br i1 %tobool.not.i263, label %if.end.i264, label %do.end50.dev_name.exit266_crit_edge

do.end50.dev_name.exit266_crit_edge:              ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit266

if.end.i264:                                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.mISDNdevice, ptr %124, i32 0, i32 8
  %127 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev53, align 4
  br label %dev_name.exit266

dev_name.exit266:                                 ; preds = %if.end.i264, %do.end50.dev_name.exit266_crit_edge
  %retval.0.i265 = phi ptr [ %128, %if.end.i264 ], [ %126, %do.end50.dev_name.exit266_crit_edge ]
  %129 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cb.i, align 8
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 4
  %131 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %id, align 4
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, ptr noundef %retval.0.i265, i32 noundef %130, i32 noundef %132, i32 noundef %retval.0.i261274) #13
  br label %if.end58

if.end58:                                         ; preds = %dev_name.exit266, %if.then44.if.end58_crit_edge
  call void @consume_skb(ptr noundef %skb.0) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end59.while.cond.backedge_crit_edge, %if.end58, %if.then25.while.cond.backedge_crit_edge
  %133 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %data, align 4
  %and1.i249 = and i32 %134, 1
  %tobool22.not = icmp eq i32 %and1.i249, 0
  br i1 %tobool22.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end59:                                         ; preds = %send_msg_to_layer.exit.if.end59_crit_edge, %out.i.i, %if.end19.i.if.end59_crit_edge
  %135 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %data, align 4
  %137 = and i32 %136, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool62.not = icmp eq i32 %137, 0
  br i1 %tobool62.not, label %if.end59.while.cond.backedge_crit_edge, label %if.then69, !prof !157

if.end59.while.cond.backedge_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then69:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %call71 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %data) #9
  %call73 = call i32 @_test_and_clear_bit(i32 noundef 30, ptr noundef %data) #9
  br label %while.end

while.end:                                        ; preds = %if.then69, %while.cond.backedge.while.end_crit_edge, %if.end19.while.end_crit_edge
  %138 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %data, align 4
  %140 = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool77.not = icmp eq i32 %140, 0
  br i1 %tobool77.not, label %while.end.if.end87_crit_edge, label %if.then78

while.end.if.end87_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then78:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call80 = call i32 @_test_and_set_bit(i32 noundef 16, ptr noundef %data) #9
  %call82 = call i32 @_test_and_clear_bit(i32 noundef 30, ptr noundef %data) #9
  %call84 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %data) #9
  %call86 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %data) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then78, %while.end.if.end87_crit_edge
  %call89 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end87.if.end103_crit_edge, label %if.then91

if.end87.if.end103_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then91:                                        ; preds = %if.end87
  %call93 = call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %data) #9
  %call95 = call i32 @_test_and_set_bit(i32 noundef 30, ptr noundef %data) #9
  %141 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %msgq, align 4
  %cmp.i.not = icmp eq ptr %142, %msgq
  br i1 %cmp.i.not, label %if.then91.if.end103_crit_edge, label %if.then99

if.then91.if.end103_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then99:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %call101 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %data) #9
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.then91.if.end103_crit_edge, %if.end87.if.end103_crit_edge
  %143 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %data, align 4
  %145 = and i32 %144, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool106.not = icmp eq i32 %145, 0
  br i1 %tobool106.not, label %if.end108, label %for.end169

if.end108:                                        ; preds = %if.end103
  %146 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %notify, align 4
  %cmp110.not = icmp eq ptr %147, null
  br i1 %cmp110.not, label %if.end108.if.end114_crit_edge, label %if.then111

if.end108.if.end114_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  call void @complete(ptr noundef nonnull %147) #9
  %148 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %notify, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end108.if.end114_crit_edge
  %call116 = call i32 @_test_and_clear_bit(i32 noundef 29, ptr noundef %data) #9
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 281) #9
  %149 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %data, align 4
  %and124 = and i32 %150, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.then126, label %if.end114.if.end140_crit_edge

if.end114.if.end140_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then126:                                       ; preds = %if.end114
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %151 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call129294 = call i32 @prepare_to_wait_event(ptr noundef %workq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %152 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %data, align 4
  %and131295 = and i32 %153, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131295)
  %tobool132.not296 = icmp eq i32 %and131295, 0
  br i1 %tobool132.not296, label %if.then126.if.end134_crit_edge, label %if.then126.for.end_crit_edge

if.then126.for.end_crit_edge:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then126.if.end134_crit_edge:                   ; preds = %if.then126
  br label %if.end134

if.end134:                                        ; preds = %cleanup.if.end134_crit_edge, %if.then126.if.end134_crit_edge
  %call129297 = phi i32 [ %call129, %cleanup.if.end134_crit_edge ], [ %call129294, %if.then126.if.end134_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129297)
  %tobool135.not = icmp eq i32 %call129297, 0
  br i1 %tobool135.not, label %cleanup, label %if.end134.__out_crit_edge

if.end134.__out_crit_edge:                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end134
  call void @schedule() #9
  %call129 = call i32 @prepare_to_wait_event(ptr noundef %workq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %154 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %data, align 4
  %and131 = and i32 %155, 65535
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %cleanup.if.end134_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.if.end134_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then126.for.end_crit_edge
  call void @finish_wait(ptr noundef %workq, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end134.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end140

if.end140:                                        ; preds = %__out, %if.end114.if.end140_crit_edge
  %156 = load ptr, ptr @debug, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %and142 = and i32 %158, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end140.if.end154_crit_edge, label %do.end147

if.end140.if.end154_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

do.end147:                                        ; preds = %if.end140
  %159 = ptrtoint ptr %dev80.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev80.i, align 4
  %init_name.i267 = getelementptr inbounds %struct.mISDNdevice, ptr %160, i32 0, i32 8, i32 3
  %161 = ptrtoint ptr %init_name.i267 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %init_name.i267, align 8
  %tobool.not.i268 = icmp eq ptr %162, null
  br i1 %tobool.not.i268, label %if.end.i269, label %do.end147.dev_name.exit271_crit_edge

do.end147.dev_name.exit271_crit_edge:             ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit271

if.end.i269:                                      ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  %dev150 = getelementptr inbounds %struct.mISDNdevice, ptr %160, i32 0, i32 8
  %163 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev150, align 4
  br label %dev_name.exit271

dev_name.exit271:                                 ; preds = %if.end.i269, %do.end147.dev_name.exit271_crit_edge
  %retval.0.i270 = phi ptr [ %164, %if.end.i269 ], [ %162, %do.end147.dev_name.exit271_crit_edge ]
  %165 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data, align 4
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56, ptr noundef %retval.0.i270, i32 noundef %166) #13
  br label %if.end154

if.end154:                                        ; preds = %dev_name.exit271, %if.end140.if.end154_crit_edge
  %call156 = call i32 @_test_and_set_bit(i32 noundef 29, ptr noundef %data) #9
  %call158 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %data) #9
  %167 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %data, align 4
  %169 = and i32 %168, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool161.not = icmp eq i32 %169, 0
  br i1 %tobool161.not, label %if.end154.for.cond.backedge_crit_edge, label %if.then162

if.end154.for.cond.backedge_crit_edge:            ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then162, %if.end154.for.cond.backedge_crit_edge
  br label %for.cond

if.then162:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  %call164 = call i32 @_test_and_clear_bit(i32 noundef 30, ptr noundef %data) #9
  br label %for.cond.backedge

for.end169:                                       ; preds = %if.end103
  %call171 = call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %data) #9
  %call173 = call i32 @_test_and_clear_bit(i32 noundef 30, ptr noundef %data) #9
  %call175 = call i32 @_test_and_clear_bit(i32 noundef 29, ptr noundef %data) #9
  %call177 = call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %data) #9
  call void @skb_queue_purge(ptr noundef %msgq) #9
  %thread = getelementptr inbounds %struct.mISDNstack, ptr %data, i32 0, i32 2
  %170 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %thread, align 4
  %171 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %notify, align 4
  %cmp180.not = icmp eq ptr %172, null
  br i1 %cmp180.not, label %for.end169.if.end184_crit_edge, label %if.then181

for.end169.if.end184_crit_edge:                   ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then181:                                       ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #11
  call void @complete(ptr noundef nonnull %172) #9
  %173 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %notify, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %for.end169.if.end184_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_teimanager(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @connect_layer1(ptr noundef %dev, ptr noundef %ch, i32 noundef %protocol, ptr nocapture noundef readonly %adr) local_unnamed_addr #1 align 64 {
entry:
  %rq = alloca %struct.channel_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rq) #9
  %0 = getelementptr inbounds i8, ptr %rq, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %do.end.dev_name.exit_crit_edge ]
  %dev3 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 1
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dev3, align 2
  %conv = zext i8 %10 to i32
  %channel = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 2
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel, align 1
  %conv4 = zext i8 %12 to i32
  %sapi = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 3
  %13 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sapi, align 2
  %conv5 = zext i8 %14 to i32
  %tei = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 4
  %15 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tei, align 1
  %conv6 = zext i8 %16 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i, i32 noundef %protocol, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #13
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %protocol.off = add i32 %protocol, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %protocol.off)
  %switch = icmp ult i32 %protocol.off, 4
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %recv = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %17 = ptrtoint ptr %recv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mISDN_queue_message, ptr %recv, align 4
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st, align 8
  %own = getelementptr inbounds %struct.mISDNstack, ptr %19, i32 0, i32 8
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %20 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %own, ptr %peer, align 4
  %21 = load ptr, ptr %st, align 8
  %st10 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %22 = ptrtoint ptr %st10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %st10, align 4
  %23 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %protocol, ptr %rq, align 4
  %channel12 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 2
  %24 = ptrtoint ptr %channel12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %channel12, align 1
  %channel14 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %channel14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %channel14, align 1
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 9
  %27 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl, align 8
  %call17 = call i32 %28(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %rq) #9
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 1
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %call17, i32 noundef %30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool23.not = icmp eq i32 %call17, 0
  br i1 %tobool23.not, label %if.end25, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %sw.bb
  %31 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %st, align 8
  %lock = getelementptr inbounds %struct.mISDNstack, ptr %32, i32 0, i32 10, i32 1
  call void @_raw_write_lock_bh(ptr noundef %lock) #9
  %33 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %st, align 8
  %l1sock30 = getelementptr inbounds %struct.mISDNstack, ptr %34, i32 0, i32 10
  %skc_refcnt.i.i = getelementptr i8, ptr %ch, i32 -860
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #9
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #9, !srcloc !158
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end25.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !159

if.end25.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end25
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !157

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end25.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end25.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %37 = getelementptr i8, ptr %ch, i32 -876
  %38 = ptrtoint ptr %l1sock30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %l1sock30, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %37, align 4
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %37, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  %42 = ptrtoint ptr %l1sock30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %37, ptr %l1sock30, align 4
  %pprev34.i.i.i = getelementptr i8, ptr %ch, i32 -872
  %43 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %l1sock30, ptr %pprev34.i.i.i, align 4
  %44 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %st, align 8
  %lock34 = getelementptr inbounds %struct.mISDNstack, ptr %45, i32 0, i32 10, i32 1
  call void @_raw_write_unlock_bh(ptr noundef %lock34) #9
  br label %cleanup

cleanup:                                          ; preds = %sk_add_node.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sk_add_node.exit ], [ %call17, %sw.bb.cleanup_crit_edge ], [ -92, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rq) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @connect_Bstack(ptr noundef %dev, ptr noundef %ch, i32 noundef %protocol, ptr nocapture noundef readonly %adr) local_unnamed_addr #1 align 64 {
entry:
  %rq = alloca %struct.channel_req, align 4
  %rq2 = alloca %struct.channel_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rq) #9
  %0 = call ptr @memset(ptr %rq, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rq2) #9
  %1 = call ptr @memset(ptr %rq2, i32 255, i32 16)
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %do.end.dev_name.exit_crit_edge ]
  %dev2 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 1
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dev2, align 2
  %conv = zext i8 %10 to i32
  %channel = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 2
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel, align 1
  %conv3 = zext i8 %12 to i32
  %sapi = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 3
  %13 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sapi, align 2
  %conv4 = zext i8 %14 to i32
  %tei = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 4
  %15 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tei, align 1
  %conv5 = zext i8 %16 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i, i32 noundef %protocol, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #13
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 5
  %17 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %st, align 8
  %st7 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %19 = ptrtoint ptr %st7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %st7, align 4
  %and8 = and i32 %protocol, 31
  %shl = shl nuw i32 1, %and8
  %Bprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Bprotocols, align 4
  %and9 = and i32 %21, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  %22 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %protocol, ptr %rq, align 4
  %adr13 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %adr13, ptr %adr, i32 6)
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 9
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl, align 8
  %call16 = call i32 %25(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %rq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %ch20 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 2
  %26 = ptrtoint ptr %ch20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch20, align 4
  br label %if.end83

if.else:                                          ; preds = %if.end
  %call31 = tail call ptr @get_Bprotocol4mask(i32 noundef %shl) #9
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.else.cleanup_crit_edge, label %if.end34

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.else
  %28 = ptrtoint ptr %rq2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %protocol, ptr %rq2, align 4
  %adr36 = getelementptr inbounds %struct.channel_req, ptr %rq2, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %adr36, ptr %adr, i32 6)
  %ch37 = getelementptr inbounds %struct.channel_req, ptr %rq2, i32 0, i32 2
  %30 = ptrtoint ptr %ch37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ch, ptr %ch37, align 4
  %create = getelementptr inbounds %struct.Bprotocol, ptr %call31, i32 0, i32 3
  %31 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %create, align 4
  %call38 = call i32 %32(ptr noundef nonnull %rq2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %33 = ptrtoint ptr %ch37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ch37, align 4
  %send43 = getelementptr inbounds %struct.mISDNchannel, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %send43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %send43, align 4
  %recv44 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %37 = ptrtoint ptr %recv44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %recv44, align 4
  %peer46 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %38 = ptrtoint ptr %peer46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %34, ptr %peer46, align 4
  %39 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %st, align 8
  %st50 = getelementptr inbounds %struct.mISDNchannel, ptr %34, i32 0, i32 5
  %41 = ptrtoint ptr %st50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %st50, align 4
  %42 = ptrtoint ptr %rq2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rq2, align 4
  %44 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rq, align 4
  %adr53 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1
  %45 = call ptr @memcpy(ptr %adr53, ptr %adr, i32 6)
  %ctrl55 = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 9
  %46 = ptrtoint ptr %ctrl55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl55, align 8
  %call57 = call i32 %47(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %rq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %if.then59

if.then59:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %ch37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ch37, align 4
  %ctrl61 = getelementptr inbounds %struct.mISDNchannel, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %ctrl61 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl61, align 4
  %call63 = call i32 %51(ptr noundef %49, i32 noundef 512, ptr noundef null) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %ch65 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 2
  %52 = ptrtoint ptr %ch65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ch65, align 4
  %54 = ptrtoint ptr %ch37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ch37, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.end64, %if.end19
  %.sink134 = phi ptr [ %55, %if.end64 ], [ %ch, %if.end19 ]
  %.sink131 = phi ptr [ %53, %if.end64 ], [ %27, %if.end19 ]
  %.sink133.in = getelementptr inbounds %struct.mISDNchannel, ptr %.sink131, i32 0, i32 7
  %56 = ptrtoint ptr %.sink133.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %.sink133 = load ptr, ptr %.sink133.in, align 4
  %recv68 = getelementptr inbounds %struct.mISDNchannel, ptr %.sink134, i32 0, i32 8
  %57 = ptrtoint ptr %recv68 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %.sink133, ptr %recv68, align 4
  %peer71 = getelementptr inbounds %struct.mISDNchannel, ptr %.sink134, i32 0, i32 6
  %58 = ptrtoint ptr %peer71 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %.sink131, ptr %peer71, align 4
  %send73 = getelementptr inbounds %struct.mISDNchannel, ptr %.sink134, i32 0, i32 7
  %59 = ptrtoint ptr %send73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %send73, align 4
  %recv75 = getelementptr inbounds %struct.mISDNchannel, ptr %.sink131, i32 0, i32 8
  %61 = ptrtoint ptr %recv75 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %recv75, align 4
  %peer78 = getelementptr inbounds %struct.mISDNchannel, ptr %.sink131, i32 0, i32 6
  %62 = ptrtoint ptr %peer78 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %.sink134, ptr %peer78, align 4
  %63 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %st, align 8
  %st82 = getelementptr inbounds %struct.mISDNchannel, ptr %.sink131, i32 0, i32 5
  %65 = ptrtoint ptr %st82 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %st82, align 4
  %protocol84 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %66 = ptrtoint ptr %protocol84 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %protocol, ptr %protocol84, align 4
  %ch85 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 2
  %67 = ptrtoint ptr %ch85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ch85, align 4
  %nr = getelementptr inbounds %struct.mISDNchannel, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr, align 4
  %nr86 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 2
  %71 = ptrtoint ptr %nr86 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %nr86, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then59, %if.end34.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end83 ], [ %call57, %if.then59 ], [ %call16, %if.then11.cleanup_crit_edge ], [ -92, %if.else.cleanup_crit_edge ], [ %call38, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rq2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rq) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_Bprotocol4mask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_l2entity(ptr noundef %dev, ptr noundef %ch, i32 noundef %protocol, ptr nocapture noundef readonly %adr) local_unnamed_addr #1 align 64 {
entry:
  %rq = alloca %struct.channel_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rq) #9
  %0 = getelementptr inbounds i8, ptr %rq, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %do.end.dev_name.exit_crit_edge ]
  %dev2 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 1
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dev2, align 2
  %conv = zext i8 %10 to i32
  %channel = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 2
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel, align 1
  %conv3 = zext i8 %12 to i32
  %sapi = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 3
  %13 = ptrtoint ptr %sapi to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sapi, align 2
  %conv4 = zext i8 %14 to i32
  %tei = getelementptr inbounds %struct.sockaddr_mISDN, ptr %adr, i32 0, i32 4
  %15 = ptrtoint ptr %tei to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tei, align 1
  %conv5 = zext i8 %16 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i, i32 noundef %protocol, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #13
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %Dprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %Dprotocols to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Dprotocols, align 8
  %and8 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.store.select = select i1 %tobool9.not, i32 1, i32 3
  %19 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %rq, align 4
  %20 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %protocol, label %if.end.sw.epilog_crit_edge [
    i32 17, label %sw.bb
    i32 16, label %if.end.sw.bb20_crit_edge
  ]

if.end.sw.bb20_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and15 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %spec.store.select94 = select i1 %tobool16.not, i32 2, i32 4
  %21 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select94, ptr %rq, align 4
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb, %if.end.sw.bb20_crit_edge
  %recv = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %22 = ptrtoint ptr %recv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mISDN_queue_message, ptr %recv, align 4
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 5
  %23 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %st, align 8
  %own = getelementptr inbounds %struct.mISDNstack, ptr %24, i32 0, i32 8
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %25 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %own, ptr %peer, align 4
  %26 = load ptr, ptr %st, align 8
  %st23 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %27 = ptrtoint ptr %st23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %st23, align 4
  %channel25 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %channel25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %channel25, align 1
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 9
  %29 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl, align 8
  %call28 = call i32 %30(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %rq) #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %call28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool34.not = icmp eq i32 %call28, 0
  br i1 %tobool34.not, label %if.end36, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end36:                                         ; preds = %sw.bb20
  %adr24 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 1
  %31 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %protocol, ptr %rq, align 4
  %32 = call ptr @memcpy(ptr %adr24, ptr %adr, i32 6)
  %ch39 = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 2
  %33 = ptrtoint ptr %ch39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ch, ptr %ch39, align 4
  %teimgr = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 7
  %34 = ptrtoint ptr %teimgr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %teimgr, align 4
  %ctrl40 = getelementptr inbounds %struct.mISDNchannel, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %ctrl40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl40, align 4
  %call42 = call i32 %37(ptr noundef %35, i32 noundef 256, ptr noundef nonnull %rq) #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef %call42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool48.not = icmp eq i32 %call42, 0
  br i1 %tobool48.not, label %if.then49, label %if.end36.sw.epilog_crit_edge

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then49:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %protocol)
  %cmp = icmp eq i32 %protocol, 17
  br i1 %cmp, label %land.lhs.true, label %if.then49.if.end54_crit_edge

if.then49.if.end54_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true:                                    ; preds = %if.then49
  %38 = ptrtoint ptr %ch39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch39, align 4
  %tobool52.not = icmp eq ptr %39, null
  br i1 %tobool52.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %if.then49.if.end54_crit_edge
  %40 = ptrtoint ptr %ch39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ch39, align 4
  %42 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %st, align 8
  call void @add_layer2(ptr noundef %41, ptr noundef %43)
  %44 = ptrtoint ptr %ch39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ch39, align 4
  %recv59 = getelementptr inbounds %struct.mISDNchannel, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %recv59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mISDN_queue_message, ptr %recv59, align 4
  %47 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %st, align 8
  %own62 = getelementptr inbounds %struct.mISDNstack, ptr %48, i32 0, i32 8
  %peer64 = getelementptr inbounds %struct.mISDNchannel, ptr %45, i32 0, i32 6
  %49 = ptrtoint ptr %peer64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %own62, ptr %peer64, align 4
  %ctrl66 = getelementptr inbounds %struct.mISDNchannel, ptr %45, i32 0, i32 9
  %50 = ptrtoint ptr %ctrl66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl66, align 4
  %call68 = call i32 %51(ptr noundef %45, i32 noundef 256, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end54, %land.lhs.true.sw.epilog_crit_edge, %if.end36.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call28, %sw.bb20.sw.epilog_crit_edge ], [ %call42, %if.end36.sw.epilog_crit_edge ], [ 0, %if.end54 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ -93, %if.end.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rq) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delete_channel(ptr noundef %ch) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %do.end6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end6:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %6, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end6.dev_name.exit_crit_edge

do.end6.dev_name.exit_crit_edge:                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.mISDNdevice, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %do.end6.dev_name.exit_crit_edge ]
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %protocol, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef %retval.0.i, i32 noundef %12) #13
  br label %if.end12

if.end12:                                         ; preds = %dev_name.exit, %if.end.if.end12_crit_edge
  %protocol13 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %13 = ptrtoint ptr %protocol13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %protocol13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp = icmp ugt i32 %14, 31
  br i1 %cmp, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end12
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %15 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peer, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %if.then16

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl, align 4
  %call19 = tail call i32 %18(ptr noundef nonnull %16, i32 noundef 512, ptr noundef null) #9
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %peer, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %20 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %14, label %if.end22.cleanup_crit_edge [
    i32 2, label %if.end22.sw.bb_crit_edge
    i32 1, label %if.end22.sw.bb_crit_edge111
    i32 4, label %if.end22.sw.bb_crit_edge112
    i32 3, label %if.end22.sw.bb_crit_edge113
    i32 16, label %sw.bb36
    i32 17, label %sw.bb56
  ]

if.end22.sw.bb_crit_edge113:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end22.sw.bb_crit_edge112:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end22.sw.bb_crit_edge111:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end22.sw.bb_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end22.sw.bb_crit_edge, %if.end22.sw.bb_crit_edge111, %if.end22.sw.bb_crit_edge112, %if.end22.sw.bb_crit_edge113
  %21 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %st, align 4
  %lock = getelementptr inbounds %struct.mISDNstack, ptr %22, i32 0, i32 10, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #9
  %pprev.i.i.i.i.i = getelementptr i8, ptr %ch, i32 -872
  %23 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i.i.not.i, label %sw.bb.sk_del_node_init.exit_crit_edge, label %if.then.i.i

sw.bb.sk_del_node_init.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %sw.bb
  %25 = getelementptr i8, ptr %ch, i32 -876
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %24, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %24, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %30 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr i8, ptr %ch, i32 -860
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i = icmp eq i32 %32, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i102_crit_edge, !prof !159

if.then.i.if.end.i102_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i102

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 729, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i102

if.end.i102:                                      ; preds = %do.end.i, %if.then.i.if.end.i102_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !161
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i102.sk_del_node_init.exit_crit_edge, !prof !159

if.end.i102.sk_del_node_init.exit_crit_edge:      ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i102.sk_del_node_init.exit_crit_edge, %sw.bb.sk_del_node_init.exit_crit_edge
  %34 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %st, align 4
  %lock28 = getelementptr inbounds %struct.mISDNstack, ptr %35, i32 0, i32 10, i32 1
  tail call void @_raw_write_unlock_bh(ptr noundef %lock28) #9
  %36 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %st, align 4
  %dev30 = getelementptr inbounds %struct.mISDNstack, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev30, align 4
  %ctrl31 = getelementptr inbounds %struct.mISDNchannel, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %ctrl31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl31, align 8
  %call35 = tail call i32 %41(ptr noundef %39, i32 noundef 512, ptr noundef null) #9
  br label %cleanup

sw.bb36:                                          ; preds = %if.end22
  %42 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %st, align 4
  %nr = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 2
  %44 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr, align 4
  %lmutex.i = getelementptr inbounds %struct.mISDNstack, ptr %43, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lmutex.i, i32 noundef 0) #9
  %layer2.i = getelementptr inbounds %struct.mISDNstack, ptr %43, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %sw.bb36
  %ch.0.in.i = phi ptr [ %layer2.i, %sw.bb36 ], [ %ch.0.i, %for.body.i.for.cond.i_crit_edge ]
  %46 = ptrtoint ptr %ch.0.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %ch.0.i = load ptr, ptr %ch.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ch.0.i, %layer2.i
  br i1 %cmp.not.i, label %get_channel4id.exit.thread, label %for.body.i

get_channel4id.exit.thread:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lmutex.i) #9
  br label %do.end52

for.body.i:                                       ; preds = %for.cond.i
  %nr.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0.i, i32 0, i32 2
  %47 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr.i, align 4
  %cmp2.i = icmp eq i32 %48, %45
  br i1 %cmp2.i, label %get_channel4id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_channel4id.exit:                              ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef %lmutex.i) #9
  %tobool39.not = icmp eq ptr %ch.0.i, null
  br i1 %tobool39.not, label %get_channel4id.exit.do.end52_crit_edge, label %if.then40

get_channel4id.exit.do.end52_crit_edge:           ; preds = %get_channel4id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.then40:                                        ; preds = %get_channel4id.exit
  %49 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %st, align 4
  %lmutex = getelementptr inbounds %struct.mISDNstack, ptr %50, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lmutex, i32 noundef 0) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %ch.0.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.list_del.exit_crit_edge

if.then40.list_del.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ch.0.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %ch.0.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ch.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then40.list_del.exit_crit_edge
  %57 = ptrtoint ptr %ch.0.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %ch.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ch.0.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %59 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %st, align 4
  %lmutex43 = getelementptr inbounds %struct.mISDNstack, ptr %60, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %lmutex43) #9
  %ctrl44 = getelementptr inbounds %struct.mISDNchannel, ptr %ch.0.i, i32 0, i32 9
  %61 = ptrtoint ptr %ctrl44 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctrl44, align 4
  %call45 = tail call i32 %62(ptr noundef nonnull %ch.0.i, i32 noundef 512, ptr noundef null) #9
  %63 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %st, align 4
  %dev47 = getelementptr inbounds %struct.mISDNstack, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev47, align 4
  %teimgr = getelementptr inbounds %struct.mISDNdevice, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %teimgr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %teimgr, align 4
  %ctrl48 = getelementptr inbounds %struct.mISDNchannel, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %ctrl48 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrl48, align 4
  %call49 = tail call i32 %70(ptr noundef %68, i32 noundef 512, ptr noundef null) #9
  br label %cleanup

do.end52:                                         ; preds = %get_channel4id.exit.do.end52_crit_edge, %get_channel4id.exit.thread
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32) #13
  br label %cleanup

sw.bb56:                                          ; preds = %if.end22
  %71 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %st, align 4
  %dev58 = getelementptr inbounds %struct.mISDNstack, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev58, align 4
  %teimgr59 = getelementptr inbounds %struct.mISDNdevice, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %teimgr59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %teimgr59, align 4
  %tobool60.not = icmp eq ptr %76, null
  br i1 %tobool60.not, label %do.end67, label %if.then61

if.then61:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl62 = getelementptr inbounds %struct.mISDNchannel, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %ctrl62 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctrl62, align 4
  %call63 = tail call i32 %78(ptr noundef nonnull %76, i32 noundef 512, ptr noundef null) #9
  br label %cleanup

do.end67:                                         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %if.then61, %do.end52, %list_del.exit, %sk_del_node_init.exit, %if.end22.cleanup_crit_edge, %if.then16, %if.then14.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delete_stack(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %st1 = getelementptr inbounds %struct.mISDNchannel, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %st1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st1, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #9
  %2 = getelementptr inbounds i8, ptr %done, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #9
  %5 = load ptr, ptr @debug, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %9, i32 0, i32 8, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.mISDNdevice, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %do.end.dev_name.exit_crit_edge ]
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i) #13
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %teimgr = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %teimgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %teimgr, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @delete_teimanager(ptr noundef nonnull %15) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %thread = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %thread, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %if.end9.if.end25_crit_edge, label %if.then11

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then11:                                        ; preds = %if.end9
  %notify = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notify, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.then11.if.end20_crit_edge, label %do.end16

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #13
  %20 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify, align 4
  call void @complete(ptr noundef %21) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end16, %if.then11.if.end20_crit_edge
  %22 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %done, ptr %notify, align 4
  %call22 = call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %1) #9
  %call24 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %1) #9
  %workq = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 4
  call void @__wake_up(ptr noundef %workq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  call void @wait_for_completion(ptr noundef nonnull %done) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end20, %if.end9.if.end25_crit_edge
  %layer2 = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %layer2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %layer2, align 4
  %cmp.i.not = icmp eq ptr %24, %layer2
  br i1 %cmp.i.not, label %if.end25.if.end34_crit_edge, label %do.end31

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end25.if.end34_crit_edge
  %l1sock = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %l1sock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %l1sock, align 4
  %tobool.not.i56.not = icmp eq ptr %26, null
  br i1 %tobool.not.i56.not, label %if.end34.if.end43_crit_edge, label %do.end40

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41) #13
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end34.if.end43_crit_edge
  call void @kfree(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mISDN_initstack(ptr noundef %dp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %dp, ptr @debug, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_socklist(ptr noundef %sl, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mISDN_sock_list, ptr %sl, i32 0, i32 1
  tail call void @_raw_read_lock(ptr noundef %lock) #9
  %0 = ptrtoint ptr %sl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sl, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -84
  %tobool2.not4750 = icmp eq ptr %add.ptr, null
  %tobool2.not47 = or i1 %tobool.not, %tobool2.not4750
  br i1 %tobool2.not47, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sk.049 = phi ptr [ %add.ptr23, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %cskb.048 = phi ptr [ %cskb.2, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.049, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %tobool4.not = icmp eq ptr %cskb.048, null
  br i1 %tobool4.not, label %if.end6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end6:                                          ; preds = %if.end
  %call = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #9
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %do.end, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73) #13
  br label %for.end

if.end11:                                         ; preds = %if.end6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %cskb.144 = phi ptr [ %call, %if.end6.if.end11_crit_edge ], [ %cskb.048, %if.end.if.end11_crit_edge ]
  %call12 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %sk.049, ptr noundef nonnull %cskb.144) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %spec.select39 = select i1 %tobool13.not, ptr null, ptr %cskb.144
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %cskb.2 = phi ptr [ %cskb.048, %for.body.for.inc_crit_edge ], [ %spec.select39, %if.end11 ]
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk.049, i32 0, i32 15
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool19.not = icmp eq ptr %6, null
  %add.ptr23 = getelementptr i8, ptr %6, i32 -84
  %tobool2.not51 = icmp eq ptr %add.ptr23, null
  %tobool2.not = or i1 %tobool19.not, %tobool2.not51
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %entry.for.end_crit_edge
  %cskb.3 = phi ptr [ null, %do.end ], [ null, %entry.for.end_crit_edge ], [ %cskb.2, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %lock) #9
  tail call void @consume_skb(ptr noundef %cskb.3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/stack.c", i32 371, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @create_stack._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @create_stack._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @create_stack.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/stack.c", i32 377, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @create_stack.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/isdn/mISDN/stack.c", i32 378, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @create_stack.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/isdn/mISDN/stack.c", i32 380, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/isdn/mISDN/stack.c", i32 384, i32 3}
!17 = !{ptr @create_stack._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @create_stack._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/isdn/mISDN/stack.c", i32 399, i32 3}
!21 = !{ptr @create_stack._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @create_stack._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/isdn/mISDN/stack.c", i32 402, i32 18}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/isdn/mISDN/stack.c", i32 406, i32 3}
!27 = !{ptr @create_stack._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @create_stack._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/isdn/mISDN/stack.c", i32 426, i32 3}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @connect_layer1._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @connect_layer1._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/isdn/mISDN/stack.c", i32 440, i32 3}
!36 = !{ptr @connect_layer1._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @connect_layer1._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/mISDN/stack.c", i32 463, i32 3}
!40 = !{ptr @connect_Bstack._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @connect_Bstack._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/mISDN/stack.c", i32 519, i32 3}
!44 = !{ptr @create_l2entity._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @create_l2entity._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/isdn/mISDN/stack.c", i32 538, i32 3}
!48 = !{ptr @create_l2entity._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @create_l2entity._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/isdn/mISDN/stack.c", i32 545, i32 3}
!52 = !{ptr @create_l2entity._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @create_l2entity._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/isdn/mISDN/stack.c", i32 568, i32 3}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @delete_channel._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @delete_channel._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/isdn/mISDN/stack.c", i32 572, i32 3}
!61 = !{ptr @delete_channel._entry.33, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @delete_channel._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/isdn/mISDN/stack.c", i32 601, i32 4}
!65 = !{ptr @delete_channel._entry.36, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @delete_channel._entry_ptr.38, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @delete_channel._entry.39, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/isdn/mISDN/stack.c", i32 609, i32 4}
!69 = !{ptr @delete_channel._entry_ptr.40, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/mISDN/stack.c", i32 625, i32 3}
!72 = !{ptr @delete_stack._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @delete_stack._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/mISDN/stack.c", i32 631, i32 4}
!76 = !{ptr @delete_stack._entry.42, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @delete_stack._entry_ptr.44, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/isdn/mISDN/stack.c", i32 642, i32 3}
!80 = !{ptr @delete_stack._entry.45, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @delete_stack._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/isdn/mISDN/stack.c", i32 645, i32 3}
!84 = !{ptr @delete_stack._entry.48, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @delete_stack._entry_ptr.50, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @debug, !87, !"debug", i1 false, i1 false}
!87 = !{!"../drivers/isdn/mISDN/stack.c", i32 18, i32 15}
!88 = !{ptr @init_completion.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../include/linux/completion.h", i32 87, i32 2}
!90 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @skb_queue_head_init.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!93 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/mISDN/stack.c", i32 26, i32 3}
!96 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @_queue_message._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @_queue_message._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/isdn/mISDN/stack.c", i32 204, i32 3}
!101 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mISDNStackd._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mISDNStackd._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/isdn/mISDN/stack.c", i32 238, i32 6}
!106 = !{ptr @mISDNStackd._entry.57, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mISDNStackd._entry_ptr.59, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/isdn/mISDN/stack.c", i32 283, i32 4}
!110 = !{ptr @mISDNStackd._entry.60, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mISDNStackd._entry_ptr.62, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/isdn/mISDN/stack.c", i32 148, i32 3}
!114 = !{ptr @send_msg_to_layer._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @send_msg_to_layer._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/isdn/mISDN/stack.c", i32 166, i32 4}
!118 = !{ptr @send_msg_to_layer._entry.64, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @send_msg_to_layer._entry_ptr.66, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @send_msg_to_layer._entry.67, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/isdn/mISDN/stack.c", i32 176, i32 4}
!122 = !{ptr @send_msg_to_layer._entry_ptr.68, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/isdn/mISDN/stack.c", i32 182, i32 3}
!125 = !{ptr @send_msg_to_layer._entry.69, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @send_msg_to_layer._entry_ptr.71, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/isdn/mISDN/stack.c", i32 71, i32 4}
!129 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @send_socklist._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @send_socklist._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/isdn/mISDN/stack.c", i32 104, i32 7}
!134 = !{ptr @.str.75, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @send_layer2._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @send_layer2._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/isdn/mISDN/stack.c", i32 112, i32 5}
!139 = !{ptr @send_layer2._entry.76, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @send_layer2._entry_ptr.78, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/isdn/mISDN/stack.c", i32 130, i32 4}
!143 = !{ptr @send_layer2._entry.79, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @send_layer2._entry_ptr.81, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/net/sock.h", i32 729, i32 3}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{i64 2148596623, i64 2148596655, i64 2148596684, i64 2148596718, i64 2148596749, i64 2148596772}
!159 = !{!"branch_weights", i32 1, i32 2000}
!160 = !{i64 2148684648}
!161 = !{i64 2148599088, i64 2148599120, i64 2148599149, i64 2148599183, i64 2148599214, i64 2148599237}
