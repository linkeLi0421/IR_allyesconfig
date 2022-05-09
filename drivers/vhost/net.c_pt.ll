; ModuleID = '/llk/IR_all_yes/drivers/vhost/net.c_pt.bc'
source_filename = "../drivers/vhost/net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.161 }
%union.anon.161 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.162 }
%union.anon.162 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vhost_vring_file = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vhost_dev = type { ptr, %struct.mutex, ptr, i32, ptr, %struct.llist_head, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i64, i8, ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vhost_net = type { %struct.vhost_dev, [2 x %struct.vhost_net_virtqueue], [2 x %struct.vhost_poll], i32, i32, i8, %struct.page_frag, i32 }
%struct.vhost_net_virtqueue = type { %struct.vhost_virtqueue, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.vhost_net_buf, ptr }
%struct.vhost_virtqueue = type { ptr, %struct.mutex, i32, ptr, ptr, ptr, [3 x ptr], ptr, %struct.vhost_vring_call, ptr, ptr, %struct.vhost_poll, ptr, i16, i16, i16, i16, i16, i8, i8, i64, [1024 x %struct.iovec], [64 x %struct.iovec], ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, [64 x %struct.iovec], i8, i8, i32 }
%struct.vhost_vring_call = type { ptr, %struct.irq_bypass_producer }
%struct.irq_bypass_producer = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.vhost_poll = type { %struct.poll_table_struct, ptr, %struct.wait_queue_entry, %struct.vhost_work, i32, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vhost_work = type { %struct.llist_node, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.iovec = type { ptr, i32 }
%struct.vhost_net_buf = type { ptr, i32, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.117, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.118, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.117 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.118 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.vhost_net_ubuf_ref = type { %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.vring_used_elem = type { i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.tun_msg_ctl = type { i16, i16, ptr }
%struct.ubuf_info = type { ptr, %union.anon.186, %struct.refcount_struct, i8, %struct.mmpin }
%union.anon.186 = type { %struct.anon.188 }
%struct.anon.188 = type { i32, i16, i8, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.anon.187 = type { i32, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tun_xdp_hdr = type { i32, %struct.virtio_net_hdr }
%struct.virtio_net_hdr = type { i8, i8, i16, i16, i16, i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.160, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.160 = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.145, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.145 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vhost_log = type { i64, i64 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.xdp_mem_info = type { i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }

@__param_str_experimental_zcopytx = internal constant [31 x i8] c"vhost_net.experimental_zcopytx\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@experimental_zcopytx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_experimental_zcopytx = internal constant %struct.kernel_param { ptr @__param_str_experimental_zcopytx, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.161 { ptr @experimental_zcopytx } }, section "__param", align 4
@__UNIQUE_ID_experimental_zcopytxtype530 = internal constant [44 x i8] c"vhost_net.parmtype=experimental_zcopytx:int\00", section ".modinfo", align 1
@__UNIQUE_ID_experimental_zcopytx531 = internal constant [80 x i8] c"vhost_net.parm=experimental_zcopytx:Enable Zero Copy TX; 1 -Enable; 0 - Disable\00", section ".modinfo", align 1
@__initcall__kmod_vhost_net__550_1797_vhost_net_init6 = internal global ptr @vhost_net_init, section ".initcall6.init", align 4
@__exitcall_vhost_net_exit = internal global ptr @vhost_net_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version551 = internal constant [24 x i8] c"vhost_net.version=0.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vhost_net\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file552 = internal constant [39 x i8] c"vhost_net.file=drivers/vhost/vhost_net\00", section ".modinfo", align 1
@__UNIQUE_ID_license553 = internal constant [25 x i8] c"vhost_net.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author554 = internal constant [36 x i8] c"vhost_net.author=Michael S. Tsirkin\00", section ".modinfo", align 1
@__UNIQUE_ID_description555 = internal constant [61 x i8] c"vhost_net.description=Host kernel accelerator for virtio net\00", section ".modinfo", align 1
@__UNIQUE_ID_alias556 = internal constant [34 x i8] c"vhost_net.alias=char-major-10-238\00", section ".modinfo", align 1
@__UNIQUE_ID_alias557 = internal constant [34 x i8] c"vhost_net.alias=devname:vhost-net\00", section ".modinfo", align 1
@vhost_net_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 238, ptr @.str.3, ptr @vhost_net_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@vhost_net_zcopy_mask = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vhost-net\00", [22 x i8] zeroinitializer }, align 32
@vhost_net_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr @vhost_net_chr_read_iter, ptr @vhost_net_chr_write_iter, ptr null, ptr null, ptr null, ptr @vhost_net_chr_poll, ptr @vhost_net_ioctl, ptr null, ptr null, i32 0, ptr @vhost_net_open, ptr null, ptr @vhost_net_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vhost_net_ubuf_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ubufs->wait\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/vhost/net.c\00", [44 x i8] zeroinitializer }, align 32
@handle_tx_zerocopy.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.8, ptr @.str.10, i8 0, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"handle_tx_zerocopy\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail to send packet: err %d\00", [36 x i8] zeroinitializer }, align 32
@handle_tx_zerocopy.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.8, ptr @.str.11, i8 0, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Truncated TX packet:  len %d != %zd\0A\00", [59 x i8] zeroinitializer }, align 32
@get_tx_bufs.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.8, ptr @.str.13, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_tx_bufs\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unexpected descriptor format for TX: out %d, int %d\0A\00", [43 x i8] zeroinitializer }, align 32
@get_tx_bufs.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.8, ptr @.str.14, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unexpected header len for TX: %zd expected %zd\0A\00", [48 x i8] zeroinitializer }, align 32
@vhost_tx_batch.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.8, ptr @.str.16, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vhost_tx_batch\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fail to batch sending packets\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@handle_tx_copy.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.8, ptr @.str.10, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_tx_copy\00", [17 x i8] zeroinitializer }, align 32
@handle_tx_copy.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.8, ptr @.str.22, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Truncated TX packet: len %d != %zd\0A\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@handle_rx.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.8, ptr @.str.25, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"handle_rx\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Discarded rx packet: len %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_rx.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.8, ptr @.str.26, i8 1, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Discarded rx packet:  len %d, expected %zd\0A\00", [52 x i8] zeroinitializer }, align 32
@handle_rx.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.8, ptr @.str.27, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to write vnet_hdr at addr %p\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_rx.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.8, ptr @.str.28, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed num_buffers write\00", [39 x i8] zeroinitializer }, align 32
@get_rx_bufs.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.8, ptr @.str.30, i8 1, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_rx_bufs\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unexpected descriptor format for RX: out %d, in %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 44801, i64 44802, i64 1074310912, i64 1074310949, i64 1074310960, i64 2148052736, i64 2148052774]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 4294967191, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 4294967191, i64 4294967284, i64 4294967285]
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"experimental_zcopytx\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 38, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1805, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"vhost_net_misc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1785, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1787, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"vhost_net_fops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1773, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 156, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 244, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 260, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 946, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 948, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 633, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 641, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 478, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 717, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 749, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 760, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 843, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 845, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1188, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1206, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1215, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1231, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [23 x i8] c"../drivers/vhost/net.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 1073, i32 4 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias556, ptr @__UNIQUE_ID_alias557, ptr @__UNIQUE_ID_author554, ptr @__UNIQUE_ID_description555, ptr @__UNIQUE_ID_experimental_zcopytx531, ptr @__UNIQUE_ID_experimental_zcopytxtype530, ptr @__UNIQUE_ID_file552, ptr @__UNIQUE_ID_license553, ptr @__UNIQUE_ID_version551, ptr @__exitcall_vhost_net_exit, ptr @__initcall__kmod_vhost_net__550_1797_vhost_net_init6, ptr @__modver_attr, ptr @__param_experimental_zcopytx, ptr @experimental_zcopytx, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vhost_net_misc, ptr @.str.3, ptr @vhost_net_fops, ptr @.str.6, ptr @vhost_net_ubuf_alloc.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @experimental_zcopytx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_net_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_net_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_net_ubuf_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_net_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @experimental_zcopytx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load i32, ptr @vhost_net_zcopy_mask, align 4
  %or.i = or i32 %1, 2
  store i32 %or.i, ptr @vhost_net_zcopy_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @misc_register(ptr noundef nonnull @vhost_net_misc) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_net_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @vhost_net_misc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_net_chr_read_iter(ptr nocapture noundef readonly %iocb, ptr noundef %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  %call = tail call i32 @vhost_chr_read_iter(ptr noundef %3, ptr noundef %to, i32 noundef %and) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_net_chr_write_iter(ptr nocapture noundef readonly %iocb, ptr noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @vhost_chr_write_iter(ptr noundef %3, ptr noundef %from) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_net_chr_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @vhost_chr_poll(ptr noundef %file, ptr noundef %1, ptr noundef %wait) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_net_ioctl(ptr nocapture noundef readonly %f, i32 noundef %ioctl, i32 noundef %arg) #0 align 64 {
entry:
  %tx_sock.i = alloca ptr, align 4
  %rx_sock.i = alloca ptr, align 4
  %r.i.i.i = alloca i32, align 4
  %backend = alloca %struct.vhost_vring_file, align 4
  %features = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %backend) #9
  %3 = ptrtoint ptr %backend to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %backend, align 4, !annotation !111
  %4 = getelementptr inbounds %struct.vhost_vring_file, ptr %backend, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features) #9
  %6 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %features, align 8, !annotation !111
  %7 = zext i32 %ioctl to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ioctl, label %sw.default [
    i32 1074310960, label %if.then.i
    i32 -2146914560, label %sw.bb2
    i32 1074310912, label %if.then.i79
    i32 -2146914522, label %sw.bb16
    i32 1074310949, label %if.then.i112
    i32 44802, label %sw.bb30
    i32 44801, label %sw.bb32
  ]

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #12, !srcloc !112
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !113

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %backend, i32 noundef 8) #9
  %9 = call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !114
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %backend, ptr noundef %2, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !113

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.then.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %backend, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %13 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %backend, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  %mutex.i = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i = call i32 @vhost_dev_check_owner(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.vhost_net_set_backend.exit_crit_edge

if.end.vhost_net_set_backend.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_set_backend.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp ugt i32 %14, 1
  br i1 %cmp.i, label %if.end.i.vhost_net_set_backend.exit_crit_edge, label %if.end3.i

if.end.i.vhost_net_set_backend.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_set_backend.exit

if.end3.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 %14
  %mutex7.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx.i, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex7.i, i32 noundef 0) #9
  %call8.i = call zeroext i1 @vhost_vq_access_ok(ptr noundef %arrayidx.i) #9
  br i1 %call8.i, label %if.end10.i, label %if.end3.i.err_vq.i_crit_edge

if.end3.i.err_vq.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_vq.i

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.i = icmp eq i32 %16, -1
  br i1 %cmp.i.i, label %if.end15.thread.i, label %if.end.i.i131

if.end.i.i131:                                    ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r.i.i.i) #9
  %17 = ptrtoint ptr %r.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %r.i.i.i, align 4, !annotation !111
  %call.i.i.i130 = call ptr @sockfd_lookup(i32 noundef %16, ptr noundef nonnull %r.i.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i130, null
  br i1 %tobool.not.i.i.i, label %get_raw_socket.exit.thread.i.i, label %if.end.i.i.i

get_raw_socket.exit.thread.i.i:                   ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i.i.i) #9
  br label %if.end3.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i131
  %sk.i.i.i = getelementptr inbounds %struct.socket, ptr %call.i.i.i130, i32 0, i32 4
  %18 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk.i.i.i, align 16
  %sk_type.i.i.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 45
  %20 = ptrtoint ptr %sk_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sk_type.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp.not.i.i.i = icmp eq i16 %21, 3
  br i1 %cmp.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.err.i.i.i_crit_edge

if.end.i.i.i.err.i.i.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %skc_family.i.i.i = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %skc_family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %skc_family.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %23)
  %cmp7.not.i.i.i = icmp eq i16 %23, 17
  br i1 %cmp7.not.i.i.i, label %if.end4.i.i.i.get_raw_socket.exit.i.i_crit_edge, label %if.end4.i.i.i.err.i.i.i_crit_edge

if.end4.i.i.i.err.i.i.i_crit_edge:                ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i.i.i

if.end4.i.i.i.get_raw_socket.exit.i.i_crit_edge:  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_raw_socket.exit.i.i

err.i.i.i:                                        ; preds = %if.end4.i.i.i.err.i.i.i_crit_edge, %if.end.i.i.i.err.i.i.i_crit_edge
  %storemerge.i.i.i = phi i32 [ -94, %if.end.i.i.i.err.i.i.i_crit_edge ], [ -96, %if.end4.i.i.i.err.i.i.i_crit_edge ]
  %24 = ptrtoint ptr %r.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge.i.i.i, ptr %r.i.i.i, align 4
  %file.i.i.i = getelementptr inbounds %struct.socket, ptr %call.i.i.i130, i32 0, i32 3
  %25 = ptrtoint ptr %file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %file.i.i.i, align 4
  call void @fput(ptr noundef %26) #9
  %27 = ptrtoint ptr %r.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r.i.i.i, align 4
  %29 = inttoptr i32 %28 to ptr
  br label %get_raw_socket.exit.i.i

get_raw_socket.exit.i.i:                          ; preds = %err.i.i.i, %if.end4.i.i.i.get_raw_socket.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %29, %err.i.i.i ], [ %call.i.i.i130, %if.end4.i.i.i.get_raw_socket.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i.i.i) #9
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %get_raw_socket.exit.i.i.if.end3.i.i_crit_edge, label %get_raw_socket.exit.i.i.get_socket.exit.i_crit_edge

get_raw_socket.exit.i.i.get_socket.exit.i_crit_edge: ; preds = %get_raw_socket.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_socket.exit.i

get_raw_socket.exit.i.i.if.end3.i.i_crit_edge:    ; preds = %get_raw_socket.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %get_raw_socket.exit.i.i.if.end3.i.i_crit_edge, %get_raw_socket.exit.thread.i.i
  %call.i14.i.i = call ptr @fget(i32 noundef %16) #9
  %tobool.not.i15.i.i = icmp eq ptr %call.i14.i.i, null
  br i1 %tobool.not.i15.i.i, label %if.end3.i.i.if.then13.i_crit_edge, label %if.end.i16.i.i

if.end3.i.i.if.then13.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.end.i16.i.i:                                   ; preds = %if.end3.i.i
  %call2.i.i.i = call ptr @tun_get_socket(ptr noundef nonnull %call.i14.i.i) #9
  %cmp.i.i.i.i = icmp ugt ptr %call2.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end5.i.i.i, label %if.end.i16.i.i.get_tap_socket.exit.i.i_crit_edge

if.end.i16.i.i.get_tap_socket.exit.i.i_crit_edge: ; preds = %if.end.i16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_tap_socket.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i16.i.i
  %call6.i.i.i = call ptr @tap_get_socket(ptr noundef nonnull %call.i14.i.i) #9
  %cmp.i17.i.i.i = icmp ugt ptr %call6.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17.i.i.i, label %if.then8.i.i.i, label %if.end5.i.i.i.get_tap_socket.exit.i.i_crit_edge

if.end5.i.i.i.get_tap_socket.exit.i.i_crit_edge:  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_tap_socket.exit.i.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fput(ptr noundef nonnull %call.i14.i.i) #9
  br label %get_tap_socket.exit.i.i

get_tap_socket.exit.i.i:                          ; preds = %if.then8.i.i.i, %if.end5.i.i.i.get_tap_socket.exit.i.i_crit_edge, %if.end.i16.i.i.get_tap_socket.exit.i.i_crit_edge
  %retval.0.i17.i.i = phi ptr [ %call2.i.i.i, %if.end.i16.i.i.get_tap_socket.exit.i.i_crit_edge ], [ %call6.i.i.i, %if.then8.i.i.i ], [ %call6.i.i.i, %if.end5.i.i.i.get_tap_socket.exit.i.i_crit_edge ]
  %cmp.i18.i.i = icmp ugt ptr %retval.0.i17.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18.i.i, label %get_tap_socket.exit.i.i.if.then13.i_crit_edge, label %get_tap_socket.exit.i.i.get_socket.exit.i_crit_edge

get_tap_socket.exit.i.i.get_socket.exit.i_crit_edge: ; preds = %get_tap_socket.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_socket.exit.i

get_tap_socket.exit.i.i.if.then13.i_crit_edge:    ; preds = %get_tap_socket.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

get_socket.exit.i:                                ; preds = %get_tap_socket.exit.i.i.get_socket.exit.i_crit_edge, %get_raw_socket.exit.i.i.get_socket.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %retval.0.i.i.i, %get_raw_socket.exit.i.i.get_socket.exit.i_crit_edge ], [ %retval.0.i17.i.i, %get_tap_socket.exit.i.i.get_socket.exit.i_crit_edge ]
  %cmp.i122.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122.i, label %get_socket.exit.i.if.then13.i_crit_edge, label %if.end15.i

get_socket.exit.i.if.then13.i_crit_edge:          ; preds = %get_socket.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %get_socket.exit.i.if.then13.i_crit_edge, %get_tap_socket.exit.i.i.if.then13.i_crit_edge, %if.end3.i.i.if.then13.i_crit_edge
  %retval.0.i157.i = phi ptr [ %retval.0.i.i, %get_socket.exit.i.if.then13.i_crit_edge ], [ inttoptr (i32 -88 to ptr), %if.end3.i.i.if.then13.i_crit_edge ], [ inttoptr (i32 -88 to ptr), %get_tap_socket.exit.i.i.if.then13.i_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i157.i to i32
  br label %err_vq.i

if.end15.i:                                       ; preds = %get_socket.exit.i
  %private_data.i.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx.i, i32 0, i32 27
  %31 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data.i.i, align 8
  %cmp17.not.i = icmp eq ptr %retval.0.i.i, %32
  br i1 %cmp17.not.i, label %if.end15.i.if.end46.sink.split.i_crit_edge, label %if.then18.i

if.end15.i.if.end46.sink.split.i_crit_edge:       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.sink.split.i

if.end15.thread.i:                                ; preds = %if.end10.i
  %private_data.i163.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %arrayidx.i, i32 0, i32 27
  %33 = ptrtoint ptr %private_data.i163.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data.i163.i, align 8
  %cmp17.not164.i = icmp eq ptr %34, null
  br i1 %cmp17.not164.i, label %if.end15.thread.i.if.end46.sink.split.i_crit_edge, label %if.end15.thread.i.if.end.i127.i_crit_edge

if.end15.thread.i.if.end.i127.i_crit_edge:        ; preds = %if.end15.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i127.i

if.end15.thread.i.if.end46.sink.split.i_crit_edge: ; preds = %if.end15.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.sink.split.i

if.then18.i:                                      ; preds = %if.end15.i
  %tobool19.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool19.not.i, label %if.then18.i.if.end25.i_crit_edge, label %land.rhs.i

if.then18.i.if.end25.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.rhs.i:                                       ; preds = %if.then18.i
  %35 = load i32, ptr @experimental_zcopytx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.if.end25thread-pre-split229.i_crit_edge, label %land.end.i, !prof !113

land.rhs.i.if.end25thread-pre-split229.i_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25thread-pre-split229.i

land.end.i:                                       ; preds = %land.rhs.i
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %retval.0.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk.i.i, align 16
  %38 = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 13
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %41 = and i32 %40, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.i.not.i, label %land.end.i.if.end25thread-pre-split229.i_crit_edge, label %if.end.i123.i

land.end.i.if.end25thread-pre-split229.i_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25thread-pre-split229.i

if.end.i123.i:                                    ; preds = %land.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 60) #13
  %tobool1.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.i123.i.err_ubufs.thread.i_crit_edge, label %vhost_net_ubuf_alloc.exit.i

if.end.i123.i.err_ubufs.thread.i_crit_edge:       ; preds = %if.end.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ubufs.thread.i

vhost_net_ubuf_alloc.exit.i:                      ; preds = %if.end.i123.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %wait.i.i = getelementptr inbounds %struct.vhost_net_ubuf_ref, ptr %call7.i.i.i, i32 0, i32 1
  call void @__init_waitqueue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @vhost_net_ubuf_alloc.__key) #9
  %vq5.i.i = getelementptr inbounds %struct.vhost_net_ubuf_ref, ptr %call7.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %vq5.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.i, ptr %vq5.i.i, align 8
  %cmp.i125.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %vhost_net_ubuf_alloc.exit.i.err_ubufs.thread.i_crit_edge, label %vhost_net_ubuf_alloc.exit.i.if.end25thread-pre-split229.i_crit_edge

vhost_net_ubuf_alloc.exit.i.if.end25thread-pre-split229.i_crit_edge: ; preds = %vhost_net_ubuf_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25thread-pre-split229.i

vhost_net_ubuf_alloc.exit.i.err_ubufs.thread.i_crit_edge: ; preds = %vhost_net_ubuf_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ubufs.thread.i

err_ubufs.thread.i:                               ; preds = %vhost_net_ubuf_alloc.exit.i.err_ubufs.thread.i_crit_edge, %if.end.i123.i.err_ubufs.thread.i_crit_edge
  %retval.0.i124201.i = phi ptr [ %call7.i.i.i, %vhost_net_ubuf_alloc.exit.i.err_ubufs.thread.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i123.i.err_ubufs.thread.i_crit_edge ]
  %45 = ptrtoint ptr %retval.0.i124201.i to i32
  br label %if.then57.i

if.end25thread-pre-split229.i:                    ; preds = %vhost_net_ubuf_alloc.exit.i.if.end25thread-pre-split229.i_crit_edge, %land.end.i.if.end25thread-pre-split229.i_crit_edge, %land.rhs.i.if.end25thread-pre-split229.i_crit_edge
  %retval.0.i124191.ph.ph.i = phi ptr [ %call7.i.i.i, %vhost_net_ubuf_alloc.exit.i.if.end25thread-pre-split229.i_crit_edge ], [ null, %land.end.i.if.end25thread-pre-split229.i_crit_edge ], [ null, %land.rhs.i.if.end25thread-pre-split229.i_crit_edge ]
  %46 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.pr.i = load ptr, ptr %private_data.i.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end25thread-pre-split229.i, %if.then18.i.if.end25.i_crit_edge
  %.pr.i = phi ptr [ %.pr.pr.i, %if.end25thread-pre-split229.i ], [ %32, %if.then18.i.if.end25.i_crit_edge ]
  %retval.0.i124191.ph.i = phi ptr [ %retval.0.i124191.ph.ph.i, %if.end25thread-pre-split229.i ], [ null, %if.then18.i.if.end25.i_crit_edge ]
  %tobool.not.i126.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i126.i, label %if.end25.i.vhost_net_disable_vq.exit.i_crit_edge, label %if.end25.i.if.end.i127.i_crit_edge

if.end25.i.if.end.i127.i_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i127.i

if.end25.i.vhost_net_disable_vq.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_disable_vq.exit.i

if.end.i127.i:                                    ; preds = %if.end25.i.if.end.i127.i_crit_edge, %if.end15.thread.i.if.end.i127.i_crit_edge
  %47 = phi ptr [ %32, %if.end25.i.if.end.i127.i_crit_edge ], [ %34, %if.end15.thread.i.if.end.i127.i_crit_edge ]
  %private_data.i166171179186226.i = phi ptr [ %private_data.i.i, %if.end25.i.if.end.i127.i_crit_edge ], [ %private_data.i163.i, %if.end15.thread.i.if.end.i127.i_crit_edge ]
  %retval.0.i161165172178188224.i = phi ptr [ %retval.0.i.i, %if.end25.i.if.end.i127.i_crit_edge ], [ null, %if.end15.thread.i.if.end.i127.i_crit_edge ]
  %tobool19.not173177190222.i = phi i1 [ %tobool19.not.i, %if.end25.i.if.end.i127.i_crit_edge ], [ true, %if.end15.thread.i.if.end.i127.i_crit_edge ]
  %retval.0.i124191219.i = phi ptr [ %retval.0.i124191.ph.i, %if.end25.i.if.end.i127.i_crit_edge ], [ null, %if.end15.thread.i.if.end.i127.i_crit_edge ]
  %poll1.i.i = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 2
  %add.ptr3.i.i = getelementptr %struct.vhost_poll, ptr %poll1.i.i, i32 %14
  call void @vhost_poll_stop(ptr noundef %add.ptr3.i.i) #9
  br label %vhost_net_disable_vq.exit.i

vhost_net_disable_vq.exit.i:                      ; preds = %if.end.i127.i, %if.end25.i.vhost_net_disable_vq.exit.i_crit_edge
  %48 = phi ptr [ %32, %if.end25.i.vhost_net_disable_vq.exit.i_crit_edge ], [ %47, %if.end.i127.i ]
  %private_data.i166171179186227.i = phi ptr [ %private_data.i.i, %if.end25.i.vhost_net_disable_vq.exit.i_crit_edge ], [ %private_data.i166171179186226.i, %if.end.i127.i ]
  %retval.0.i161165172178188225.i = phi ptr [ %retval.0.i.i, %if.end25.i.vhost_net_disable_vq.exit.i_crit_edge ], [ %retval.0.i161165172178188224.i, %if.end.i127.i ]
  %tobool19.not173177190223.i = phi i1 [ %tobool19.not.i, %if.end25.i.vhost_net_disable_vq.exit.i_crit_edge ], [ %tobool19.not173177190222.i, %if.end.i127.i ]
  %retval.0.i124191220.i = phi ptr [ %retval.0.i124191.ph.i, %if.end25.i.vhost_net_disable_vq.exit.i_crit_edge ], [ %retval.0.i124191219.i, %if.end.i127.i ]
  %49 = ptrtoint ptr %private_data.i166171179186227.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %retval.0.i161165172178188225.i, ptr %private_data.i166171179186227.i, align 8
  call fastcc void @vhost_net_buf_unproduce(ptr noundef %arrayidx.i) #9
  %call26.i = call i32 @vhost_vq_init_access(ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %vhost_net_disable_vq.exit.i.err_used.i_crit_edge

vhost_net_disable_vq.exit.i.err_used.i_crit_edge: ; preds = %vhost_net_disable_vq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_used.i

if.end29.i:                                       ; preds = %vhost_net_disable_vq.exit.i
  %50 = ptrtoint ptr %private_data.i166171179186227.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private_data.i166171179186227.i, align 8
  %tobool.not.i129.i = icmp eq ptr %51, null
  br i1 %tobool.not.i129.i, label %if.end29.i.if.end33.i_crit_edge, label %vhost_net_enable_vq.exit.i

if.end29.i.if.end33.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

vhost_net_enable_vq.exit.i:                       ; preds = %if.end29.i
  %poll1.i130.i = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 2
  %add.ptr3.i136.i = getelementptr %struct.vhost_poll, ptr %poll1.i130.i, i32 %14
  %file.i.i = getelementptr inbounds %struct.socket, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %file.i.i, align 4
  %call4.i.i = call i32 @vhost_poll_start(ptr noundef %add.ptr3.i136.i, ptr noundef %53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool31.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool31.not.i, label %vhost_net_enable_vq.exit.i.if.end33.i_crit_edge, label %vhost_net_enable_vq.exit.i.err_used.i_crit_edge

vhost_net_enable_vq.exit.i.err_used.i_crit_edge:  ; preds = %vhost_net_enable_vq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_used.i

vhost_net_enable_vq.exit.i.if.end33.i_crit_edge:  ; preds = %vhost_net_enable_vq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %vhost_net_enable_vq.exit.i.if.end33.i_crit_edge, %if.end29.i.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34.i = icmp eq i32 %14, 0
  br i1 %cmp34.i, label %if.then35.i, label %if.end33.i.if.end40.i_crit_edge

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i = call fastcc ptr @get_tap_ptr_ring(i32 noundef %16) #9
  %rx_ring.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 8
  %54 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call36.i, ptr %rx_ring.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end40.i_crit_edge
  %ubufs38.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 %14, i32 7
  %55 = ptrtoint ptr %ubufs38.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ubufs38.i, align 8
  store ptr %retval.0.i124191220.i, ptr %ubufs38.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %tx_packets.i, align 8
  %tx_zcopy_err.i = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %tx_zcopy_err.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %tx_zcopy_err.i, align 4
  %tx_flush.i = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %tx_flush.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %tx_flush.i, align 8
  call void @mutex_unlock(ptr noundef %mutex7.i) #9
  %tobool42.not.i = icmp eq ptr %56, null
  br i1 %tobool42.not.i, label %if.end40.i.if.end46.i_crit_edge, label %if.then43.i

if.end40.i.if.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @vhost_net_ubuf_put_and_wait(ptr noundef nonnull %56) #9
  call void @kfree(ptr noundef nonnull %56) #9
  call void @mutex_lock_nested(ptr noundef %mutex7.i, i32 noundef 0) #9
  call fastcc void @vhost_zerocopy_signal_used(ptr noundef %1, ptr noundef %arrayidx.i) #9
  br label %if.end46.sink.split.i

if.end46.sink.split.i:                            ; preds = %if.then43.i, %if.end15.thread.i.if.end46.sink.split.i_crit_edge, %if.end15.i.if.end46.sink.split.i_crit_edge
  %.ph.i = phi ptr [ %48, %if.then43.i ], [ null, %if.end15.thread.i.if.end46.sink.split.i_crit_edge ], [ %retval.0.i.i, %if.end15.i.if.end46.sink.split.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex7.i) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46.sink.split.i, %if.end40.i.if.end46.i_crit_edge
  %60 = phi ptr [ %48, %if.end40.i.if.end46.i_crit_edge ], [ %.ph.i, %if.end46.sink.split.i ]
  %tobool47.not.i = icmp eq ptr %60, null
  br i1 %tobool47.not.i, label %if.end46.i.vhost_net_set_backend.exit_crit_edge, label %if.then48.i

if.end46.i.vhost_net_set_backend.exit_crit_edge:  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_set_backend.exit

if.then48.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %poll.i.i = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 2
  %add.ptr.i.i132 = getelementptr %struct.vhost_poll, ptr %poll.i.i, i32 %14
  call void @vhost_poll_flush(ptr noundef %add.ptr.i.i132) #9
  %poll1.i139.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 %14, i32 0, i32 11
  call void @vhost_poll_flush(ptr noundef %poll1.i139.i) #9
  %file.i = getelementptr inbounds %struct.socket, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %file.i, align 4
  call void @fput(ptr noundef %62) #9
  br label %vhost_net_set_backend.exit

err_used.i:                                       ; preds = %vhost_net_enable_vq.exit.i.err_used.i_crit_edge, %vhost_net_disable_vq.exit.i.err_used.i_crit_edge
  %r.0.i = phi i32 [ %call26.i, %vhost_net_disable_vq.exit.i.err_used.i_crit_edge ], [ %call4.i.i, %vhost_net_enable_vq.exit.i.err_used.i_crit_edge ]
  %63 = ptrtoint ptr %private_data.i166171179186227.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %48, ptr %private_data.i166171179186227.i, align 8
  %tobool.not.i142.i = icmp eq ptr %48, null
  br i1 %tobool.not.i142.i, label %err_used.i.vhost_net_enable_vq.exit154.i_crit_edge, label %if.end.i152.i

err_used.i.vhost_net_enable_vq.exit154.i_crit_edge: ; preds = %err_used.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_enable_vq.exit154.i

if.end.i152.i:                                    ; preds = %err_used.i
  call void @__sanitizer_cov_trace_pc() #11
  %poll1.i143.i = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 2
  %add.ptr3.i149.i = getelementptr %struct.vhost_poll, ptr %poll1.i143.i, i32 %14
  %file.i150.i = getelementptr inbounds %struct.socket, ptr %48, i32 0, i32 3
  %64 = ptrtoint ptr %file.i150.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %file.i150.i, align 4
  %call4.i151.i = call i32 @vhost_poll_start(ptr noundef %add.ptr3.i149.i, ptr noundef %65) #9
  br label %vhost_net_enable_vq.exit154.i

vhost_net_enable_vq.exit154.i:                    ; preds = %if.end.i152.i, %err_used.i.vhost_net_enable_vq.exit154.i_crit_edge
  %tobool53.not.i = icmp eq ptr %retval.0.i124191220.i, null
  br i1 %tobool53.not.i, label %err_ubufs.i, label %if.then54.i

if.then54.i:                                      ; preds = %vhost_net_enable_vq.exit154.i
  call fastcc void @vhost_net_ubuf_put_and_wait(ptr noundef nonnull %retval.0.i124191220.i) #9
  call void @kfree(ptr noundef nonnull %retval.0.i124191220.i) #9
  br i1 %tobool19.not173177190223.i, label %if.then54.i.err_vq.i_crit_edge, label %if.then54.i.if.then57.i_crit_edge

if.then54.i.if.then57.i_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.i

if.then54.i.err_vq.i_crit_edge:                   ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_vq.i

err_ubufs.i:                                      ; preds = %vhost_net_enable_vq.exit154.i
  br i1 %tobool19.not173177190223.i, label %err_ubufs.i.err_vq.i_crit_edge, label %err_ubufs.i.if.then57.i_crit_edge

err_ubufs.i.if.then57.i_crit_edge:                ; preds = %err_ubufs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.i

err_ubufs.i.err_vq.i_crit_edge:                   ; preds = %err_ubufs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_vq.i

if.then57.i:                                      ; preds = %err_ubufs.i.if.then57.i_crit_edge, %if.then54.i.if.then57.i_crit_edge, %err_ubufs.thread.i
  %r.1211.i = phi i32 [ %45, %err_ubufs.thread.i ], [ %r.0.i, %err_ubufs.i.if.then57.i_crit_edge ], [ %r.0.i, %if.then54.i.if.then57.i_crit_edge ]
  %retval.0.i161165172178187210.i = phi ptr [ %retval.0.i.i, %err_ubufs.thread.i ], [ %retval.0.i161165172178188225.i, %err_ubufs.i.if.then57.i_crit_edge ], [ %retval.0.i161165172178188225.i, %if.then54.i.if.then57.i_crit_edge ]
  %file58.i = getelementptr inbounds %struct.socket, ptr %retval.0.i161165172178187210.i, i32 0, i32 3
  %66 = ptrtoint ptr %file58.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %file58.i, align 4
  call void @fput(ptr noundef %67) #9
  br label %err_vq.i

err_vq.i:                                         ; preds = %if.then57.i, %err_ubufs.i.err_vq.i_crit_edge, %if.then54.i.err_vq.i_crit_edge, %if.then13.i, %if.end3.i.err_vq.i_crit_edge
  %r.2.i = phi i32 [ %30, %if.then13.i ], [ %r.1211.i, %if.then57.i ], [ %r.0.i, %err_ubufs.i.err_vq.i_crit_edge ], [ -14, %if.end3.i.err_vq.i_crit_edge ], [ %r.0.i, %if.then54.i.err_vq.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex7.i) #9
  br label %vhost_net_set_backend.exit

vhost_net_set_backend.exit:                       ; preds = %err_vq.i, %if.then48.i, %if.end46.i.vhost_net_set_backend.exit_crit_edge, %if.end.i.vhost_net_set_backend.exit_crit_edge, %if.end.vhost_net_set_backend.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then48.i ], [ 0, %if.end46.i.vhost_net_set_backend.exit_crit_edge ], [ %call.i, %if.end.vhost_net_set_backend.exit_crit_edge ], [ %r.2.i, %err_vq.i ], [ -105, %if.end.i.vhost_net_set_backend.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %68 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 13908344832, ptr %features, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i69 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i69, label %sw.bb2.cleanup_crit_edge, label %if.end.i.i73

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i73:                                     ; preds = %sw.bb2
  %69 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #12, !srcloc !117
  %asmresult.i.i71 = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i71)
  %cmp.i1.i72 = icmp eq i32 %asmresult.i.i71, 0
  br i1 %cmp.i1.i72, label %copy_to_user.exit, label %if.end.i.i73.cleanup_crit_edge

if.end.i.i73.cleanup_crit_edge:                   ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i74 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %features, i32 noundef 8) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %features, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool4.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %cleanup

if.then.i79:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i78 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i78, label %if.then.i79.if.then11.i.i94_crit_edge, label %land.lhs.true.i.i82

if.then.i79.if.then11.i.i94_crit_edge:            ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i94

land.lhs.true.i.i82:                              ; preds = %if.then.i79
  %70 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #12, !srcloc !112
  %asmresult.i.i80 = extractvalue { i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i80)
  %cmp.i1.i81 = icmp eq i32 %asmresult.i.i80, 0
  br i1 %cmp.i1.i81, label %if.end.i.i90, label %land.lhs.true.i.i82.if.then11.i.i94_crit_edge, !prof !113

land.lhs.true.i.i82.if.then11.i.i94_crit_edge:    ; preds = %land.lhs.true.i.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i94

if.end.i.i90:                                     ; preds = %land.lhs.true.i.i82
  %call.i.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %features, i32 noundef 8) #9
  %71 = call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i.i.i84 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i84 to ptr
  %cpu_domain.i.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 4
  %73 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i85) #3, !srcloc !114
  %and.i.i.i.i86 = and i32 %73, -13
  %or.i.i.i.i87 = or i32 %and.i.i.i.i86, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i87) #9, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  %call1.i.i.i88 = call i32 @arm_copy_from_user(ptr noundef nonnull %features, ptr noundef %2, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #9, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i88)
  %tobool4.not.i.i89 = icmp eq i32 %call1.i.i.i88, 0
  br i1 %tobool4.not.i.i89, label %if.end11, label %if.end.i.i90.if.then11.i.i94_crit_edge, !prof !113

if.end.i.i90.if.then11.i.i94_crit_edge:           ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i94

if.then11.i.i94:                                  ; preds = %if.end.i.i90.if.then11.i.i94_crit_edge, %land.lhs.true.i.i82.if.then11.i.i94_crit_edge, %if.then.i79.if.then11.i.i94_crit_edge
  %res.03.i.i91 = phi i32 [ %call1.i.i.i88, %if.end.i.i90.if.then11.i.i94_crit_edge ], [ 8, %if.then.i79.if.then11.i.i94_crit_edge ], [ 8, %land.lhs.true.i.i82.if.then11.i.i94_crit_edge ]
  %sub.i.i92 = sub i32 8, %res.03.i.i91
  %add.ptr.i.i93 = getelementptr i8, ptr %features, i32 %sub.i.i92
  %74 = call ptr @memset(ptr %add.ptr.i.i93, i32 0, i32 %res.03.i.i91)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i90
  %75 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %features, align 8
  %and = and i64 %76, -13908344833
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call fastcc i32 @vhost_net_set_features(ptr noundef %1, i64 noundef %76)
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %77 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 2, ptr %features, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i99 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i99, label %sw.bb16.cleanup_crit_edge, label %if.end.i.i103

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i103:                                    ; preds = %sw.bb16
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #12, !srcloc !117
  %asmresult.i.i101 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i101)
  %cmp.i1.i102 = icmp eq i32 %asmresult.i.i101, 0
  br i1 %cmp.i1.i102, label %copy_to_user.exit108, label %if.end.i.i103.cleanup_crit_edge

if.end.i.i103.cleanup_crit_edge:                  ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit108:                             ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i104 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %features, i32 noundef 8) #9
  %call.i1.i.i105 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %features, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i105)
  %tobool18.not = icmp eq i32 %call.i1.i.i105, 0
  %spec.select156 = select i1 %tobool18.not, i32 0, i32 -14
  br label %cleanup

if.then.i112:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i111 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i111, label %if.then.i112.if.then11.i.i127_crit_edge, label %land.lhs.true.i.i115

if.then.i112.if.then11.i.i127_crit_edge:          ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i127

land.lhs.true.i.i115:                             ; preds = %if.then.i112
  %79 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #12, !srcloc !112
  %asmresult.i.i113 = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i113)
  %cmp.i1.i114 = icmp eq i32 %asmresult.i.i113, 0
  br i1 %cmp.i1.i114, label %if.end.i.i123, label %land.lhs.true.i.i115.if.then11.i.i127_crit_edge, !prof !113

land.lhs.true.i.i115.if.then11.i.i127_crit_edge:  ; preds = %land.lhs.true.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i127

if.end.i.i123:                                    ; preds = %land.lhs.true.i.i115
  %call.i.i.i116 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %features, i32 noundef 8) #9
  %80 = call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i.i.i.i117 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i.i117 to ptr
  %cpu_domain.i.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 4
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i118) #3, !srcloc !114
  %and.i.i.i.i119 = and i32 %82, -13
  %or.i.i.i.i120 = or i32 %and.i.i.i.i119, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i120) #9, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  %call1.i.i.i121 = call i32 @arm_copy_from_user(ptr noundef nonnull %features, ptr noundef %2, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #9, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i121)
  %tobool4.not.i.i122 = icmp eq i32 %call1.i.i.i121, 0
  br i1 %tobool4.not.i.i122, label %if.end25, label %if.end.i.i123.if.then11.i.i127_crit_edge, !prof !113

if.end.i.i123.if.then11.i.i127_crit_edge:         ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i127

if.then11.i.i127:                                 ; preds = %if.end.i.i123.if.then11.i.i127_crit_edge, %land.lhs.true.i.i115.if.then11.i.i127_crit_edge, %if.then.i112.if.then11.i.i127_crit_edge
  %res.03.i.i124 = phi i32 [ %call1.i.i.i121, %if.end.i.i123.if.then11.i.i127_crit_edge ], [ 8, %if.then.i112.if.then11.i.i127_crit_edge ], [ 8, %land.lhs.true.i.i115.if.then11.i.i127_crit_edge ]
  %sub.i.i125 = sub i32 8, %res.03.i.i124
  %add.ptr.i.i126 = getelementptr i8, ptr %features, i32 %sub.i.i125
  %83 = call ptr @memset(ptr %add.ptr.i.i126, i32 0, i32 %res.03.i.i124)
  br label %cleanup

if.end25:                                         ; preds = %if.end.i.i123
  %84 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %features, align 8
  %and26 = and i64 %85, -3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @vhost_set_backend_features(ptr noundef %1, i64 noundef %85) #9
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_sock.i) #9
  %86 = ptrtoint ptr %tx_sock.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %tx_sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_sock.i) #9
  %87 = ptrtoint ptr %rx_sock.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %rx_sock.i, align 4
  %mutex.i133 = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i133, i32 noundef 0) #9
  %call.i134 = tail call i32 @vhost_dev_check_owner(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %if.end.i136, label %sw.bb30.done.i_crit_edge

sw.bb30.done.i_crit_edge:                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end.i136:                                      ; preds = %sw.bb30
  %call2.i = tail call ptr @vhost_dev_reset_owner_prepare() #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i136.done.i_crit_edge, label %if.end5.i

if.end.i136.done.i_crit_edge:                     ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.end5.i:                                        ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @vhost_net_stop(ptr noundef %1, ptr noundef nonnull %tx_sock.i, ptr noundef nonnull %rx_sock.i) #9
  tail call fastcc void @vhost_net_flush(ptr noundef %1) #9
  tail call void @vhost_dev_stop(ptr noundef %1) #9
  tail call void @vhost_dev_reset_owner(ptr noundef %1, ptr noundef nonnull %call2.i) #9
  %ubuf_info.i.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 6
  %88 = ptrtoint ptr %ubuf_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ubuf_info.i.i.i, align 4
  tail call void @kfree(ptr noundef %89) #9
  %90 = ptrtoint ptr %ubuf_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %ubuf_info.i.i.i, align 4
  %ubuf_info.1.i.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 6
  %91 = ptrtoint ptr %ubuf_info.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ubuf_info.1.i.i.i, align 4
  tail call void @kfree(ptr noundef %92) #9
  %93 = ptrtoint ptr %ubuf_info.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %ubuf_info.1.i.i.i, align 4
  %ubufs.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 7
  %94 = ptrtoint ptr %ubufs.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %ubufs.i.i, align 8
  %vhost_hlen.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 1
  %tail.i.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 9, i32 1
  %95 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %tail.i.i.i, align 4
  %head.i.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 9, i32 2
  %96 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %head.i.i.i, align 4
  %ubufs.1.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 7
  %97 = ptrtoint ptr %ubufs.1.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %ubufs.1.i.i, align 8
  %vhost_hlen.1.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 1
  %tail.i.1.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 9, i32 1
  %98 = ptrtoint ptr %tail.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %tail.i.1.i.i, align 4
  %head.i.1.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 9, i32 2
  %99 = ptrtoint ptr %head.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %head.i.1.i.i, align 4
  %100 = call ptr @memset(ptr %vhost_hlen.i.i, i32 0, i32 16)
  %101 = call ptr @memset(ptr %vhost_hlen.1.i.i, i32 0, i32 16)
  br label %done.i

done.i:                                           ; preds = %if.end5.i, %if.end.i136.done.i_crit_edge, %sw.bb30.done.i_crit_edge
  %err.0.i = phi i32 [ %call.i134, %sw.bb30.done.i_crit_edge ], [ 0, %if.end5.i ], [ -12, %if.end.i136.done.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i133) #9
  %102 = ptrtoint ptr %tx_sock.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_sock.i, align 4
  %tobool10.not.i = icmp eq ptr %103, null
  br i1 %tobool10.not.i, label %done.i.if.end12.i_crit_edge, label %if.then11.i

done.i.if.end12.i_crit_edge:                      ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then11.i:                                      ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  %file.i137 = getelementptr inbounds %struct.socket, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %file.i137 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %file.i137, align 4
  tail call void @fput(ptr noundef %105) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %done.i.if.end12.i_crit_edge
  %106 = ptrtoint ptr %rx_sock.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx_sock.i, align 4
  %tobool13.not.i = icmp eq ptr %107, null
  br i1 %tobool13.not.i, label %if.end12.i.vhost_net_reset_owner.exit_crit_edge, label %if.then14.i

if.end12.i.vhost_net_reset_owner.exit_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_reset_owner.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %file15.i = getelementptr inbounds %struct.socket, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %file15.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %file15.i, align 4
  tail call void @fput(ptr noundef %109) #9
  br label %vhost_net_reset_owner.exit

vhost_net_reset_owner.exit:                       ; preds = %if.then14.i, %if.end12.i.vhost_net_reset_owner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_sock.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_sock.i) #9
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %mutex.i138 = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i138, i32 noundef 0) #9
  %call.i139 = tail call zeroext i1 @vhost_dev_has_owner(ptr noundef %1) #9
  br i1 %call.i139, label %sw.bb32.vhost_net_set_owner.exit_crit_edge, label %if.end.i141

sw.bb32.vhost_net_set_owner.exit_crit_edge:       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_set_owner.exit

if.end.i141:                                      ; preds = %sw.bb32
  %110 = load i32, ptr @vhost_net_zcopy_mask, align 4
  %and.i.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i140 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i140, label %if.end.i141.for.inc.i.i_crit_edge, label %if.end.i.i142

if.end.i141.for.inc.i.i_crit_edge:                ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i142:                                    ; preds = %if.end.i141
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #14
  %ubuf_info.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 6
  %111 = ptrtoint ptr %ubuf_info.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call1.i.i.i.i.i, ptr %ubuf_info.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i142.vhost_net_set_ubuf_info.exit.i_crit_edge, label %if.end.i.i142.for.inc.i.i_crit_edge

if.end.i.i142.for.inc.i.i_crit_edge:              ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i142.vhost_net_set_ubuf_info.exit.i_crit_edge: ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_set_ubuf_info.exit.i

for.inc.i.i:                                      ; preds = %if.end.i.i142.for.inc.i.i_crit_edge, %if.end.i141.for.inc.i.i_crit_edge
  %112 = load i32, ptr @vhost_net_zcopy_mask, align 4
  %and.1.i.i = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.if.end4.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.if.end4.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  %call1.i.i.i.1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #14
  %ubuf_info.1.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 6
  %113 = ptrtoint ptr %ubuf_info.1.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call1.i.i.i.1.i.i, ptr %ubuf_info.1.i.i, align 4
  %tobool5.not.1.i.i = icmp eq ptr %call1.i.i.i.1.i.i, null
  br i1 %tobool5.not.1.i.i, label %if.end.1.i.i.vhost_net_set_ubuf_info.exit.i_crit_edge, label %if.end.1.i.i.if.end4.i_crit_edge

if.end.1.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.1.i.i.vhost_net_set_ubuf_info.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_set_ubuf_info.exit.i

vhost_net_set_ubuf_info.exit.i:                   ; preds = %if.end.1.i.i.vhost_net_set_ubuf_info.exit.i_crit_edge, %if.end.i.i142.vhost_net_set_ubuf_info.exit.i_crit_edge
  %ubuf_info.i.i.i143 = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 6
  %114 = ptrtoint ptr %ubuf_info.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ubuf_info.i.i.i143, align 4
  tail call void @kfree(ptr noundef %115) #9
  %116 = ptrtoint ptr %ubuf_info.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %ubuf_info.i.i.i143, align 4
  %ubuf_info.1.i.i.i144 = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 6
  %117 = ptrtoint ptr %ubuf_info.1.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ubuf_info.1.i.i.i144, align 4
  tail call void @kfree(ptr noundef %118) #9
  %119 = ptrtoint ptr %ubuf_info.1.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %ubuf_info.1.i.i.i144, align 4
  br label %vhost_net_set_owner.exit

if.end4.i:                                        ; preds = %if.end.1.i.i.if.end4.i_crit_edge, %for.inc.i.i.if.end4.i_crit_edge
  %call6.i = tail call i32 @vhost_dev_set_owner(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then8.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %ubuf_info.i20.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 6
  %120 = ptrtoint ptr %ubuf_info.i20.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ubuf_info.i20.i, align 4
  tail call void @kfree(ptr noundef %121) #9
  %122 = ptrtoint ptr %ubuf_info.i20.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %ubuf_info.i20.i, align 4
  %ubuf_info.1.i21.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 6
  %123 = ptrtoint ptr %ubuf_info.1.i21.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ubuf_info.1.i21.i, align 4
  tail call void @kfree(ptr noundef %124) #9
  %125 = ptrtoint ptr %ubuf_info.1.i21.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %ubuf_info.1.i21.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end4.i.if.end9.i_crit_edge
  tail call fastcc void @vhost_net_flush(ptr noundef %1) #9
  br label %vhost_net_set_owner.exit

vhost_net_set_owner.exit:                         ; preds = %if.end9.i, %vhost_net_set_ubuf_info.exit.i, %sw.bb32.vhost_net_set_owner.exit_crit_edge
  %r.0.i145 = phi i32 [ -12, %vhost_net_set_ubuf_info.exit.i ], [ %call6.i, %if.end9.i ], [ -16, %sw.bb32.vhost_net_set_owner.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i138) #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  %mutex = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call36 = tail call i32 @vhost_dev_ioctl(ptr noundef %1, i32 noundef %ioctl, ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call36)
  %cmp = icmp eq i32 %call36, -515
  br i1 %cmp, label %if.then37, label %if.else

if.then37:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 @vhost_vring_ioctl(ptr noundef %1, i32 noundef %ioctl, ptr noundef %2) #9
  br label %if.end40

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @vhost_net_flush(ptr noundef %1)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37
  %r.0 = phi i32 [ %call39, %if.then37 ], [ %call36, %if.else ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %vhost_net_set_owner.exit, %vhost_net_reset_owner.exit, %if.end29, %if.end25.cleanup_crit_edge, %if.then11.i.i127, %copy_to_user.exit108, %if.end.i.i103.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %if.end14, %if.end11.cleanup_crit_edge, %if.then11.i.i94, %copy_to_user.exit, %if.end.i.i73.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %vhost_net_set_backend.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %r.0, %if.end40 ], [ %r.0.i145, %vhost_net_set_owner.exit ], [ %err.0.i, %vhost_net_reset_owner.exit ], [ 0, %if.end29 ], [ %call15, %if.end14 ], [ %retval.0.i, %vhost_net_set_backend.exit ], [ -95, %if.end11.cleanup_crit_edge ], [ -95, %if.end25.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %sw.bb2.cleanup_crit_edge ], [ -14, %if.end.i.i73.cleanup_crit_edge ], [ -14, %if.then11.i.i94 ], [ -14, %sw.bb16.cleanup_crit_edge ], [ -14, %if.end.i.i103.cleanup_crit_edge ], [ -14, %if.then11.i.i127 ], [ %spec.select, %copy_to_user.exit ], [ %spec.select156, %copy_to_user.exit108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %backend) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_net_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 19528, i32 noundef 19648, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i104 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #13
  %tobool6.not = icmp eq ptr %call7.i.i104, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  tail call void @kvfree(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %rxq = getelementptr inbounds %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 0, i32 9
  %2 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i104, ptr %rxq, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i105 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1792) #13
  %tobool12.not = icmp eq ptr %call7.i.i105, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  tail call void @kvfree(ptr noundef nonnull %call.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i104) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %vqs9 = getelementptr inbounds %struct.vhost_net, ptr %call.i, i32 0, i32 1
  %arrayidx16 = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 1
  %xdp17 = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 1, i32 10
  %4 = ptrtoint ptr %xdp17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i105, ptr %xdp17, align 4
  %arrayidx21 = getelementptr ptr, ptr %call7.i.i, i32 1
  %5 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx16, ptr %arrayidx21, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vqs9, ptr %call7.i.i, align 8
  %handle_kick = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 1, i32 0, i32 12
  %7 = ptrtoint ptr %handle_kick to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @handle_tx_kick, ptr %handle_kick, align 8
  %handle_kick32 = getelementptr inbounds %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 12
  %8 = ptrtoint ptr %handle_kick32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @handle_rx_kick, ptr %handle_kick32, align 8
  %vhost_hlen = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %tail.i = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tail.i, align 4
  %head.i = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %head.i, align 4
  %vhost_hlen.1 = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %tail.i.1 = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 1, i32 9, i32 1
  %11 = ptrtoint ptr %tail.i.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tail.i.1, align 4
  %head.i.1 = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 1, i32 1, i32 9, i32 2
  %12 = ptrtoint ptr %head.i.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %head.i.1, align 4
  %13 = call ptr @memset(ptr %vhost_hlen, i32 0, i32 32)
  %14 = call ptr @memset(ptr %vhost_hlen.1, i32 0, i32 32)
  tail call void @vhost_dev_init(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i, i32 noundef 2, i32 noundef 1088, i32 noundef 256, i32 noundef 524288, i1 noundef zeroext true, ptr noundef null) #9
  %poll = getelementptr inbounds %struct.vhost_net, ptr %call.i, i32 0, i32 2
  %add.ptr = getelementptr %struct.vhost_net, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @vhost_poll_init(ptr noundef %add.ptr, ptr noundef nonnull @handle_tx_net, i32 noundef 4, ptr noundef nonnull %call.i) #9
  tail call void @vhost_poll_init(ptr noundef %poll, ptr noundef nonnull @handle_rx_net, i32 noundef 1, ptr noundef nonnull %call.i) #9
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %private_data, align 4
  %page_frag = getelementptr inbounds %struct.vhost_net, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %page_frag to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %page_frag, align 4
  %refcnt_bias = getelementptr inbounds %struct.vhost_net, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %refcnt_bias to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %refcnt_bias, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %if.then13 ], [ -12, %if.then7 ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_net_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  %tx_sock = alloca ptr, align 4
  %rx_sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_sock) #9
  %2 = ptrtoint ptr %tx_sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tx_sock, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_sock) #9
  %3 = ptrtoint ptr %rx_sock to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %rx_sock, align 4, !annotation !111
  call fastcc void @vhost_net_stop(ptr noundef %1, ptr noundef nonnull %tx_sock, ptr noundef nonnull %rx_sock)
  tail call fastcc void @vhost_net_flush(ptr noundef %1)
  tail call void @vhost_dev_stop(ptr noundef %1) #9
  tail call void @vhost_dev_cleanup(ptr noundef %1) #9
  %ubuf_info.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %ubuf_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubuf_info.i.i, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = ptrtoint ptr %ubuf_info.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ubuf_info.i.i, align 4
  %ubuf_info.1.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 6
  %7 = ptrtoint ptr %ubuf_info.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ubuf_info.1.i.i, align 4
  tail call void @kfree(ptr noundef %8) #9
  %9 = ptrtoint ptr %ubuf_info.1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ubuf_info.1.i.i, align 4
  %ubufs.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 7
  %10 = ptrtoint ptr %ubufs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ubufs.i, align 8
  %vhost_hlen.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 1
  %tail.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tail.i.i, align 4
  %head.i.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %head.i.i, align 4
  %ubufs.1.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 7
  %13 = ptrtoint ptr %ubufs.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ubufs.1.i, align 8
  %vhost_hlen.1.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 1
  %tail.i.1.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 9, i32 1
  %14 = ptrtoint ptr %tail.i.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tail.i.1.i, align 4
  %head.i.1.i = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 9, i32 2
  %15 = ptrtoint ptr %head.i.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %head.i.1.i, align 4
  %16 = call ptr @memset(ptr %vhost_hlen.i, i32 0, i32 16)
  %17 = call ptr @memset(ptr %vhost_hlen.1.i, i32 0, i32 16)
  %18 = ptrtoint ptr %tx_sock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_sock, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %file = getelementptr inbounds %struct.socket, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %21) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %rx_sock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_sock, align 4
  %tobool2.not = icmp eq ptr %23, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %file4 = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %file4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %file4, align 4
  tail call void @fput(ptr noundef %25) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @synchronize_rcu() #9
  tail call fastcc void @vhost_net_flush(ptr noundef %1)
  %rxq = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 1, i32 0, i32 9
  %26 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxq, align 8
  tail call void @kfree(ptr noundef %27) #9
  %xdp = getelementptr %struct.vhost_net, ptr %1, i32 0, i32 1, i32 1, i32 10
  %28 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xdp, align 4
  tail call void @kfree(ptr noundef %29) #9
  %vqs9 = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %vqs9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vqs9, align 8
  tail call void @kfree(ptr noundef %31) #9
  %page_frag = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %page_frag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %page_frag, align 4
  %tobool10.not = icmp eq ptr %33, null
  br i1 %tobool10.not, label %if.end5.if.end14_crit_edge, label %if.then11

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %refcnt_bias = getelementptr inbounds %struct.vhost_net, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %refcnt_bias to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %refcnt_bias, align 4
  tail call void @__page_frag_cache_drain(ptr noundef nonnull %33, i32 noundef %35) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end5.if.end14_crit_edge
  tail call void @kvfree(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_sock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_sock) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_chr_read_iter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_chr_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_chr_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_net_set_features(ptr noundef %n, i64 noundef %features) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %features, 4295000064
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 10, i32 12
  %and1 = and i64 %features, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  %.cond = select i1 %tobool2.not, i32 0, i32 %cond
  %cond. = select i1 %tobool2.not, i32 %cond, i32 0
  %mutex = getelementptr inbounds %struct.vhost_dev, ptr %n, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %and3 = and i64 %features, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @vhost_log_access_ok(ptr noundef %n) #9
  br i1 %call, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %and8 = and i64 %features, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %if.then10

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then10:                                        ; preds = %if.end7
  %call12 = tail call i32 @vhost_init_device_iotlb(ptr noundef %n, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then10.if.end16_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %mutex17 = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 0, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex17, i32 noundef 0) #9
  %acked_features = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 0, i32 0, i32 28
  %0 = ptrtoint ptr %acked_features to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %features, ptr %acked_features, align 8
  %vhost_hlen23 = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %vhost_hlen23 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.cond, ptr %vhost_hlen23, align 8
  %sock_hlen26 = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %sock_hlen26 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond., ptr %sock_hlen26, align 4
  tail call void @mutex_unlock(ptr noundef %mutex17) #9
  %mutex17.1 = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex17.1, i32 noundef 0) #9
  %acked_features.1 = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 0, i32 28
  %3 = ptrtoint ptr %acked_features.1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %features, ptr %acked_features.1, align 8
  %vhost_hlen23.1 = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %vhost_hlen23.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.cond, ptr %vhost_hlen23.1, align 8
  %sock_hlen26.1 = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 2
  %5 = ptrtoint ptr %sock_hlen26.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond., ptr %sock_hlen26.1, align 4
  tail call void @mutex_unlock(ptr noundef %mutex17.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -14, %if.then10.cleanup_crit_edge ], [ -14, %land.lhs.true.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_set_backend_features(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_dev_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_vring_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_net_flush(ptr noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %poll.i = getelementptr inbounds %struct.vhost_net, ptr %n, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 2, i32 1
  tail call void @vhost_poll_flush(ptr noundef %add.ptr.i) #9
  %poll1.i = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 0, i32 11
  tail call void @vhost_poll_flush(ptr noundef %poll1.i) #9
  tail call void @vhost_poll_flush(ptr noundef %poll.i) #9
  %poll1.i33 = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 0, i32 0, i32 11
  tail call void @vhost_poll_flush(ptr noundef %poll1.i33) #9
  %ubufs = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 7
  %0 = ptrtoint ptr %ubufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ubufs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %tx_flush = getelementptr inbounds %struct.vhost_net, ptr %n, i32 0, i32 5
  %2 = ptrtoint ptr %tx_flush to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tx_flush, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %3 = ptrtoint ptr %ubufs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ubufs, align 8
  tail call fastcc void @vhost_net_ubuf_put_and_wait(ptr noundef %4)
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %5 = ptrtoint ptr %tx_flush to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tx_flush, align 8
  %6 = ptrtoint ptr %ubufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ubufs, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_dev_check_owner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_vq_access_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_net_buf_unproduce(ptr nocapture noundef %nvq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq1 = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 9
  %rx_ring = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 8
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tail.i = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not = icmp eq i32 %3, %5
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxq1, align 4
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head.i, align 4
  %add.ptr = getelementptr ptr, ptr %7, i32 %9
  %sub.i = sub i32 %3, %5
  %consumer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %consumer_lock.i) #9
  %producer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %producer_lock.i) #9
  %size.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %done.i, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %consumer_head.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %consumer_head.i, align 128
  %consumer_tail.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 4
  %head.01.i = add i32 %13, -1
  %14 = ptrtoint ptr %consumer_tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %consumer_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %head.01.i, i32 %15)
  %cmp5.not2.i = icmp slt i32 %head.01.i, %15
  br i1 %cmp5.not2.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i, !prof !118

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %queue.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %head.03.i = phi i32 [ %head.01.i, %while.body.lr.ph.i ], [ %head.0.i, %while.body.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %head.03.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.i, align 4
  %head.0.i = add i32 %head.03.i, -1
  %19 = ptrtoint ptr %consumer_tail.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %consumer_tail.i, align 4
  %cmp5.not.i = icmp slt i32 %head.0.i, %20
  br i1 %cmp5.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge, !prof !118

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %21 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %consumer_head.i, align 128
  %23 = ptrtoint ptr %consumer_tail.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %consumer_tail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool12.not4.i = icmp eq i32 %sub.i, 0
  br i1 %tobool12.not4.i, label %while.end.i.ptr_ring_unconsume.exit_crit_edge, label %while.body13.lr.ph.i

while.end.i.ptr_ring_unconsume.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ptr_ring_unconsume.exit

while.body13.lr.ph.i:                             ; preds = %while.end.i
  %queue22.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 9
  br label %while.body13.i

while.body13.i:                                   ; preds = %if.end26.i.while.body13.i_crit_edge, %while.body13.lr.ph.i
  %n.addr.05.i = phi i32 [ %sub.i, %while.body13.lr.ph.i ], [ %dec27.i, %if.end26.i.while.body13.i_crit_edge ]
  %24 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %consumer_head.i, align 128
  %sub15.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i)
  %cmp16.i = icmp slt i32 %sub15.i, 0
  br i1 %cmp16.i, label %if.then18.i, label %while.body13.i.if.end21.i_crit_edge

while.body13.i.if.end21.i_crit_edge:              ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then18.i:                                      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 128
  %sub20.i = add i32 %27, -1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %while.body13.i.if.end21.i_crit_edge
  %head.1.i = phi i32 [ %sub20.i, %if.then18.i ], [ %sub15.i, %while.body13.i.if.end21.i_crit_edge ]
  %28 = ptrtoint ptr %queue22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue22.i, align 8
  %arrayidx23.i = getelementptr ptr, ptr %29, i32 %head.1.i
  %30 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx23.i, align 4
  %tobool24.not.i = icmp eq ptr %31, null
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end21.i.while.body45.i.preheader_crit_edge

if.end21.i.while.body45.i.preheader_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body45.i.preheader

if.end26.i:                                       ; preds = %if.end21.i
  %dec27.i = add i32 %n.addr.05.i, -1
  %arrayidx28.i = getelementptr ptr, ptr %add.ptr, i32 %dec27.i
  %32 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx28.i, align 4
  %34 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %arrayidx23.i, align 4
  %35 = ptrtoint ptr %consumer_tail.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %head.1.i, ptr %consumer_tail.i, align 4
  %36 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %head.1.i, ptr %consumer_head.i, align 128
  %tobool12.not.i = icmp eq i32 %dec27.i, 0
  br i1 %tobool12.not.i, label %if.end26.i.ptr_ring_unconsume.exit_crit_edge, label %if.end26.i.while.body13.i_crit_edge

if.end26.i.while.body13.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body13.i

if.end26.i.ptr_ring_unconsume.exit_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ptr_ring_unconsume.exit

done.i:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool44.not7.i = icmp eq i32 %sub.i, 0
  br i1 %tobool44.not7.i, label %done.i.ptr_ring_unconsume.exit_crit_edge, label %done.i.while.body45.i.preheader_crit_edge

done.i.while.body45.i.preheader_crit_edge:        ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body45.i.preheader

done.i.ptr_ring_unconsume.exit_crit_edge:         ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ptr_ring_unconsume.exit

while.body45.i.preheader:                         ; preds = %done.i.while.body45.i.preheader_crit_edge, %if.end21.i.while.body45.i.preheader_crit_edge
  %n.addr.28.i.ph = phi i32 [ %sub.i, %done.i.while.body45.i.preheader_crit_edge ], [ %n.addr.05.i, %if.end21.i.while.body45.i.preheader_crit_edge ]
  br label %while.body45.i

while.body45.i:                                   ; preds = %while.body45.i.while.body45.i_crit_edge, %while.body45.i.preheader
  %n.addr.28.i = phi i32 [ %dec46.i, %while.body45.i.while.body45.i_crit_edge ], [ %n.addr.28.i.ph, %while.body45.i.preheader ]
  %dec46.i = add i32 %n.addr.28.i, -1
  %arrayidx47.i = getelementptr ptr, ptr %add.ptr, i32 %dec46.i
  %37 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx47.i, align 4
  tail call void @tun_ptr_free(ptr noundef %38) #9
  %tobool44.not.i = icmp eq i32 %dec46.i, 0
  br i1 %tobool44.not.i, label %while.body45.i.ptr_ring_unconsume.exit_crit_edge, label %while.body45.i.while.body45.i_crit_edge

while.body45.i.while.body45.i_crit_edge:          ; preds = %while.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body45.i

while.body45.i.ptr_ring_unconsume.exit_crit_edge: ; preds = %while.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ptr_ring_unconsume.exit

ptr_ring_unconsume.exit:                          ; preds = %while.body45.i.ptr_ring_unconsume.exit_crit_edge, %done.i.ptr_ring_unconsume.exit_crit_edge, %if.end26.i.ptr_ring_unconsume.exit_crit_edge, %while.end.i.ptr_ring_unconsume.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %producer_lock.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %consumer_lock.i, i32 noundef %call2.i) #9
  %39 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tail.i, align 4
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %head.i, align 4
  br label %if.end

if.end:                                           ; preds = %ptr_ring_unconsume.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_vq_init_access(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_tap_ptr_ring(i32 noundef %fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fget(i32 noundef %fd) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @tun_get_tx_ring(ptr noundef nonnull %call) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call ptr @tap_get_ptr_ring(ptr noundef nonnull %call) #9
  %cmp.i15 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i15, ptr null, ptr %call5
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge
  %ring.0 = phi ptr [ %call1, %if.end.out_crit_edge ], [ %spec.select, %if.end4 ]
  tail call void @fput(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ring.0, %out ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_zerocopy_signal_used(ptr nocapture noundef %net, ptr noundef %vq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %done_idx = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %vq, i32 0, i32 4
  %0 = ptrtoint ptr %done_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %done_idx, align 4
  %upend_idx = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %vq, i32 0, i32 3
  %2 = ptrtoint ptr %upend_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %upend_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not45 = icmp eq i32 %1, %3
  br i1 %cmp.not45, label %entry.while.end_crit_edge, label %for.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.body.lr.ph:                                   ; preds = %entry
  %heads = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 24
  %tx_zcopy_err.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.then6.for.body_crit_edge, %for.body.lr.ph
  %j.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.then6.for.body_crit_edge ]
  %i.046 = phi i32 [ %1, %for.body.lr.ph ], [ %rem, %if.then6.for.body_crit_edge ]
  %4 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %heads, align 4
  %len = getelementptr %struct.vring_used_elem, ptr %5, i32 %i.046, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp1 = icmp eq i32 %7, 3
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %tx_zcopy_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_zcopy_err.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %tx_zcopy_err.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %heads, align 4
  %len4 = getelementptr %struct.vring_used_elem, ptr %11, i32 %i.046, i32 1
  %12 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp5 = icmp ugt i32 %13, 1
  br i1 %cmp5, label %if.then6, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then6:                                         ; preds = %if.end
  %14 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %len4, align 4
  %inc = add i32 %j.047, 1
  %add11 = add i32 %i.046, 1
  %rem = srem i32 %add11, 1024
  %15 = ptrtoint ptr %upend_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %upend_idx, align 8
  %cmp.not = icmp eq i32 %rem, %16
  br i1 %cmp.not, label %if.then6.for.end_crit_edge, label %if.then6.for.body_crit_edge

if.then6.for.body_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.then6.for.end_crit_edge, %if.end.for.end_crit_edge
  %j.0.lcssa = phi i32 [ %inc, %if.then6.for.end_crit_edge ], [ %j.047, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.lcssa)
  %tobool.not49 = icmp eq i32 %j.0.lcssa, 0
  br i1 %tobool.not49, label %for.end.while.end_crit_edge, label %while.body.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %heads15 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %j.150 = phi i32 [ %j.0.lcssa, %while.body.lr.ph ], [ %sub22, %while.body.while.body_crit_edge ]
  %17 = ptrtoint ptr %done_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %done_idx, align 4
  %sub = sub i32 1024, %18
  %19 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %j.150)
  %20 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vq, align 8
  %22 = ptrtoint ptr %heads15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %heads15, align 4
  %arrayidx17 = getelementptr %struct.vring_used_elem, ptr %23, i32 %18
  tail call void @vhost_add_used_and_signal_n(ptr noundef %21, ptr noundef %vq, ptr noundef %arrayidx17, i32 noundef %19) #9
  %24 = ptrtoint ptr %done_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %done_idx, align 4
  %add19 = add i32 %25, %19
  %rem20 = srem i32 %add19, 1024
  store i32 %rem20, ptr %done_idx, align 4
  %sub22 = sub i32 %j.150, %19
  %tobool.not = icmp eq i32 %sub22, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tun_get_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tap_get_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_poll_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tun_ptr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_poll_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tun_get_tx_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tap_get_ptr_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_net_ubuf_put_and_wait(ptr noundef %ubufs) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ubufs, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %ubufs, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ubufs, ptr %ubufs, i32 1, ptr elementtype(i32) %ubufs) #9, !srcloc !120
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.vhost_net_ubuf_put.exit_crit_edge, !prof !118

entry.vhost_net_ubuf_put.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_ubuf_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wait.i = getelementptr inbounds %struct.vhost_net_ubuf_ref, ptr %ubufs, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %vhost_net_ubuf_put.exit

vhost_net_ubuf_put.exit:                          ; preds = %if.then.i, %entry.vhost_net_ubuf_put.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 260) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ubufs, i32 noundef 4) #9
  %1 = ptrtoint ptr %ubufs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %ubufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %vhost_net_ubuf_put.exit.do.end12_crit_edge, label %if.end

vhost_net_ubuf_put.exit.do.end12_crit_edge:       ; preds = %vhost_net_ubuf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.end:                                           ; preds = %vhost_net_ubuf_put.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait = getelementptr inbounds %struct.vhost_net_ubuf_ref, ptr %ubufs, i32 0, i32 1
  %call520 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i1721 = call zeroext i1 @__kasan_check_read(ptr noundef %ubufs, i32 noundef 4) #9
  %4 = ptrtoint ptr %ubufs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ubufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not22 = icmp eq i32 %5, 0
  br i1 %tobool8.not22, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #9
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i17 = call zeroext i1 @__kasan_check_read(ptr noundef %ubufs, i32 noundef 4) #9
  %6 = ptrtoint ptr %ubufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ubufs, align 4
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.end12

do.end12:                                         ; preds = %for.end, %vhost_net_ubuf_put.exit.do.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhost_net_ubuf_put(ptr noundef %ubufs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ubufs, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %ubufs, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ubufs, ptr %ubufs, i32 1, ptr elementtype(i32) %ubufs) #9, !srcloc !120
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !118

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wait = getelementptr inbounds %struct.vhost_net_ubuf_ref, ptr %ubufs, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %asmresult.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_add_used_and_signal_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_poll_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_log_access_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_init_device_iotlb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_dev_reset_owner_prepare() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_net_stop(ptr noundef %n, ptr nocapture noundef writeonly %tx_sock, ptr nocapture noundef writeonly %rx_sock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1
  %mutex.i = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %private_data.i.i = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 0, i32 27
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.vhost_net_stop_vq.exit_crit_edge, label %if.end.i.i

entry.vhost_net_stop_vq.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_stop_vq.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3.i.i = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 2, i32 1
  tail call void @vhost_poll_stop(ptr noundef %add.ptr3.i.i) #9
  br label %vhost_net_stop_vq.exit

vhost_net_stop_vq.exit:                           ; preds = %if.end.i.i, %entry.vhost_net_stop_vq.exit_crit_edge
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data.i.i, align 8
  tail call fastcc void @vhost_net_buf_unproduce(ptr noundef %arrayidx) #9
  %rx_ring.i = getelementptr %struct.vhost_net, ptr %n, i32 0, i32 1, i32 1, i32 8
  %3 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rx_ring.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %4 = ptrtoint ptr %tx_sock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %tx_sock, align 4
  %mutex.i8 = getelementptr inbounds %struct.vhost_net, ptr %n, i32 0, i32 1, i32 0, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i8, i32 noundef 0) #9
  %private_data.i.i9 = getelementptr inbounds %struct.vhost_net, ptr %n, i32 0, i32 1, i32 0, i32 0, i32 27
  %5 = ptrtoint ptr %private_data.i.i9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data.i.i9, align 8
  %tobool.not.i.i10 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i10, label %vhost_net_stop_vq.exit.vhost_net_stop_vq.exit17_crit_edge, label %if.end.i.i15

vhost_net_stop_vq.exit.vhost_net_stop_vq.exit17_crit_edge: ; preds = %vhost_net_stop_vq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_stop_vq.exit17

if.end.i.i15:                                     ; preds = %vhost_net_stop_vq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %poll1.i.i11 = getelementptr inbounds %struct.vhost_net, ptr %n, i32 0, i32 2
  tail call void @vhost_poll_stop(ptr noundef %poll1.i.i11) #9
  br label %vhost_net_stop_vq.exit17

vhost_net_stop_vq.exit17:                         ; preds = %if.end.i.i15, %vhost_net_stop_vq.exit.vhost_net_stop_vq.exit17_crit_edge
  %vqs = getelementptr inbounds %struct.vhost_net, ptr %n, i32 0, i32 1
  %7 = ptrtoint ptr %private_data.i.i9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %private_data.i.i9, align 8
  tail call fastcc void @vhost_net_buf_unproduce(ptr noundef %vqs) #9
  %rx_ring.i16 = getelementptr inbounds %struct.vhost_net, ptr %n, i32 0, i32 1, i32 0, i32 8
  %8 = ptrtoint ptr %rx_ring.i16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx_ring.i16, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i8) #9
  %9 = ptrtoint ptr %rx_sock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %rx_sock, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_reset_owner(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_dev_has_owner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_dev_set_owner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_tx_kick(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @handle_tx(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_rx_kick(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @handle_rx(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_poll_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_tx_net(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -19484
  tail call fastcc void @handle_tx(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_rx_net(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -19432
  tail call fastcc void @handle_rx(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_tx(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1
  %mutex = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 1) #9
  %private_data.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 27
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @vq_meta_prefetch(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  tail call void @vhost_disable_notify(ptr noundef %net, ptr noundef %arrayidx) #9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end5.vhost_net_disable_vq.exit_crit_edge, label %if.end.i

if.end5.vhost_net_disable_vq.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_disable_vq.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 2, i32 1
  tail call void @vhost_poll_stop(ptr noundef %add.ptr3.i) #9
  br label %vhost_net_disable_vq.exit

vhost_net_disable_vq.exit:                        ; preds = %if.end.i, %if.end5.vhost_net_disable_vq.exit_crit_edge
  %4 = load i32, ptr @experimental_zcopytx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i22 = icmp eq i32 %4, 0
  br i1 %tobool.not.i22, label %vhost_net_disable_vq.exit.if.else_crit_edge, label %vhost_sock_zcopy.exit, !prof !113

vhost_net_disable_vq.exit.if.else_crit_edge:      ; preds = %vhost_net_disable_vq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

vhost_sock_zcopy.exit:                            ; preds = %vhost_net_disable_vq.exit
  %sk.i = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk.i, align 16
  %7 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.i.not, label %vhost_sock_zcopy.exit.if.else_crit_edge, label %if.then7

vhost_sock_zcopy.exit.if.else_crit_edge:          ; preds = %vhost_sock_zcopy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then7:                                         ; preds = %vhost_sock_zcopy.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @handle_tx_zerocopy(ptr noundef %net, ptr noundef nonnull %1)
  br label %out

if.else:                                          ; preds = %vhost_sock_zcopy.exit.if.else_crit_edge, %vhost_net_disable_vq.exit.if.else_crit_edge
  tail call fastcc void @handle_tx_copy(ptr noundef %net, ptr noundef nonnull %1)
  br label %out

out:                                              ; preds = %if.else, %if.then7, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vq_meta_prefetch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_disable_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_tx_zerocopy(ptr noundef %net, ptr noundef %sock) unnamed_addr #0 align 64 {
entry:
  %out = alloca i32, align 4
  %in = alloca i32, align 4
  %msg = alloca %struct.msghdr, align 8
  %ctl = alloca %struct.tun_msg_ctl, align 8
  %len = alloca i32, align 4
  %busyloop_intr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #9
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %out, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #9
  %1 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %in, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %2 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %3 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.46, %union.anon.47 }, %union.anon.49, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctl) #9
  %5 = getelementptr inbounds %struct.tun_msg_ctl, ptr %ctl, i32 0, i32 2
  %6 = ptrtoint ptr %ctl to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %ctl, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len, align 4, !annotation !111
  %done_idx.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 4
  %upend_idx.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 3
  %heads.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 24
  %tx_zcopy_err.i.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 4
  %num = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 2
  %tx_flush.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 5
  %tx_packets.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 3
  %ubuf_info = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 6
  %is_le.i.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 33
  %ubufs37 = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 7
  %8 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond134.do.body_crit_edge, %entry
  %ubuf.0 = phi ptr [ inttoptr (i32 -1 to ptr), %entry ], [ %ubuf.2, %do.cond134.do.body_crit_edge ]
  %sent_pkts.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond134.do.body_crit_edge ]
  %total_len.0 = phi i32 [ 0, %entry ], [ %total_len.1, %do.cond134.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %busyloop_intr) #9
  %9 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %done_idx.i, align 4
  %11 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %upend_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not45.i = icmp eq i32 %10, %12
  br i1 %cmp.not45.i, label %do.body.vhost_zerocopy_signal_used.exit_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.vhost_zerocopy_signal_used.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_zerocopy_signal_used.exit

for.body.i:                                       ; preds = %if.then6.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %j.047.i = phi i32 [ %inc.i, %if.then6.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %i.046.i = phi i32 [ %rem.i, %if.then6.i.for.body.i_crit_edge ], [ %10, %do.body.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %heads.i, align 4
  %len.i = getelementptr %struct.vring_used_elem, ptr %14, i32 %i.046.i, i32 1
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp1.i = icmp eq i32 %16, 3
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %tx_zcopy_err.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_zcopy_err.i.i, align 4
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr %tx_zcopy_err.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %19 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %heads.i, align 4
  %len4.i = getelementptr %struct.vring_used_elem, ptr %20, i32 %i.046.i, i32 1
  %21 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp5.i = icmp ugt i32 %22, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then6.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %len4.i, align 4
  %inc.i = add i32 %j.047.i, 1
  %add11.i = add i32 %i.046.i, 1
  %rem.i = srem i32 %add11.i, 1024
  %24 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %upend_idx.i, align 8
  %cmp.not.i = icmp eq i32 %rem.i, %25
  br i1 %cmp.not.i, label %if.then6.i.for.end.i_crit_edge, label %if.then6.i.for.body.i_crit_edge

if.then6.i.for.body.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then6.i.for.end.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.then6.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ %inc.i, %if.then6.i.for.end.i_crit_edge ], [ %j.047.i, %if.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.lcssa.i)
  %tobool.not49.i = icmp eq i32 %j.0.lcssa.i, 0
  br i1 %tobool.not49.i, label %for.end.i.vhost_zerocopy_signal_used.exit_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  br label %while.body.i

for.end.i.vhost_zerocopy_signal_used.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_zerocopy_signal_used.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.end.i.while.body.i_crit_edge
  %j.150.i = phi i32 [ %sub22.i, %while.body.i.while.body.i_crit_edge ], [ %j.0.lcssa.i, %for.end.i.while.body.i_crit_edge ]
  %26 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %done_idx.i, align 4
  %sub.i = sub i32 1024, %27
  %28 = call i32 @llvm.smin.i32(i32 %sub.i, i32 %j.150.i) #9
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 8
  %31 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %heads.i, align 4
  %arrayidx17.i = getelementptr %struct.vring_used_elem, ptr %32, i32 %27
  call void @vhost_add_used_and_signal_n(ptr noundef %30, ptr noundef %arrayidx, ptr noundef %arrayidx17.i, i32 noundef %28) #9
  %33 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %done_idx.i, align 4
  %add19.i = add i32 %34, %28
  %rem20.i = srem i32 %add19.i, 1024
  store i32 %rem20.i, ptr %done_idx.i, align 4
  %sub22.i = sub i32 %j.150.i, %28
  %tobool.not.i = icmp eq i32 %sub22.i, 0
  br i1 %tobool.not.i, label %while.body.i.vhost_zerocopy_signal_used.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.vhost_zerocopy_signal_used.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_zerocopy_signal_used.exit

vhost_zerocopy_signal_used.exit:                  ; preds = %while.body.i.vhost_zerocopy_signal_used.exit_crit_edge, %for.end.i.vhost_zerocopy_signal_used.exit_crit_edge, %do.body.vhost_zerocopy_signal_used.exit_crit_edge
  %35 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %busyloop_intr, align 1
  %call = call fastcc i32 @get_tx_bufs(ptr noundef %net, ptr noundef %arrayidx, ptr noundef nonnull %msg, ptr noundef nonnull %out, ptr noundef nonnull %in, ptr noundef nonnull %len, ptr noundef nonnull %busyloop_intr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %vhost_zerocopy_signal_used.exit.cleanup.thread_crit_edge, label %if.end, !prof !118

vhost_zerocopy_signal_used.exit.cleanup.thread_crit_edge: ; preds = %vhost_zerocopy_signal_used.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end:                                           ; preds = %vhost_zerocopy_signal_used.exit
  %36 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %37)
  %cmp3 = icmp eq i32 %call, %37
  br i1 %cmp3, label %if.then4, label %if.end24

if.then4:                                         ; preds = %if.end
  %38 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %busyloop_intr, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool5.not = icmp eq i8 %39, 0
  br i1 %tobool5.not, label %if.else, label %if.then12, !prof !113

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %poll = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 11
  call void @vhost_poll_queue(ptr noundef %poll) #9
  br label %cleanup.thread

if.else:                                          ; preds = %if.then4
  %call13 = call zeroext i1 @vhost_enable_notify(ptr noundef %net, ptr noundef %arrayidx) #9
  br i1 %call13, label %if.then20, label %if.else.cleanup.thread_crit_edge, !prof !118

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @vhost_disable_notify(ptr noundef %net, ptr noundef %arrayidx) #9
  br label %do.cond134

if.end24:                                         ; preds = %if.end
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %41)
  %cmp25 = icmp ugt i32 %41, 255
  br i1 %cmp25, label %land.lhs.true, label %if.end24.if.else42_crit_edge

if.end24.if.else42_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else42

land.lhs.true:                                    ; preds = %if.end24
  %42 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %upend_idx.i, align 8
  %44 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %done_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 515, i32 %37)
  %cmp.i = icmp ugt i32 %37, 515
  %shr.i = lshr i32 %37, 2
  %cond.i = select i1 %cmp.i, i32 128, i32 %shr.i
  %add.i = add i32 %43, 1024
  %sub.i208 = sub i32 %add.i, %45
  %rem.i209 = srem i32 %sub.i208, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i209, i32 %cond.i)
  %cmp2.i = icmp ugt i32 %rem.i209, %cond.i
  br i1 %cmp2.i, label %land.lhs.true.if.else42_crit_edge, label %land.rhs

land.lhs.true.if.else42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else42

land.rhs:                                         ; preds = %land.lhs.true
  %46 = ptrtoint ptr %tx_flush.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tx_flush.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i210 = icmp eq i8 %47, 0
  br i1 %tobool.not.i210, label %land.end, label %land.rhs.if.else42_crit_edge

land.rhs.if.else42_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else42

land.end:                                         ; preds = %land.rhs
  %48 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_packets.i, align 8
  %div3.i = lshr i32 %49, 6
  %50 = ptrtoint ptr %tx_zcopy_err.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_zcopy_err.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %51)
  %cmp.i211.not = icmp ult i32 %div3.i, %51
  br i1 %cmp.i211.not, label %land.end.if.else42_crit_edge, label %if.then29

land.end.if.else42_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else42

if.then29:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %ubuf_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ubuf_info, align 4
  %54 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %upend_idx.i, align 8
  %add.ptr = getelementptr %struct.ubuf_info, ptr %53, i32 %55
  %56 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_le.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.i.not.i = icmp eq i8 %57, 0
  %58 = call i32 @llvm.bswap.i32(i32 %call) #9
  %retval.0.i.i = select i1 %tobool.i.not.i, i32 %call, i32 %58
  %59 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %heads.i, align 4
  %arrayidx32 = getelementptr %struct.vring_used_elem, ptr %60, i32 %55
  %61 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i, ptr %arrayidx32, align 4
  %62 = load ptr, ptr %heads.i, align 4
  %63 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %upend_idx.i, align 8
  %len36 = getelementptr %struct.vring_used_elem, ptr %62, i32 %64, i32 1
  %65 = ptrtoint ptr %len36 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %len36, align 4
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @vhost_zerocopy_callback, ptr %add.ptr, align 4
  %67 = ptrtoint ptr %ubufs37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ubufs37, align 8
  %69 = getelementptr %struct.ubuf_info, ptr %53, i32 %55, i32 1
  %ctx = getelementptr inbounds %struct.anon.187, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %ctx, align 4
  %71 = load i32, ptr %upend_idx.i, align 8
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %69, align 4
  %flags = getelementptr %struct.ubuf_info, ptr %53, i32 %55, i32 3
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 3, ptr %flags, align 4
  %refcnt = getelementptr %struct.ubuf_info, ptr %53, i32 %55, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  %74 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 1, ptr %refcnt, align 4
  %75 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ctl, ptr %8, align 8
  %76 = ptrtoint ptr %ctl to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %ctl, align 8
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr, ptr %5, align 4
  %78 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8, ptr %msg_controllen, align 8
  %79 = ptrtoint ptr %ubufs37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ubufs37, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %80, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %80, i32 1, i32 3, i32 1) #9
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #9, !srcloc !123
  %82 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %upend_idx.i, align 8
  %add = add i32 %83, 1
  %rem = srem i32 %add, 1024
  store i32 %rem, ptr %upend_idx.i, align 8
  br label %if.end43

if.else42:                                        ; preds = %land.end.if.else42_crit_edge, %land.rhs.if.else42_crit_edge, %land.lhs.true.if.else42_crit_edge, %if.end24.if.else42_crit_edge
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %8, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then29
  %85 = phi i1 [ true, %if.then29 ], [ false, %if.else42 ]
  %ubufs.0 = phi ptr [ %80, %if.then29 ], [ null, %if.else42 ]
  %ubuf.1 = phi ptr [ %add.ptr, %if.then29 ], [ %ubuf.0, %if.else42 ]
  %add44 = add i32 %41, %total_len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %add44)
  %cmp.i212 = icmp ult i32 %add44, 524288
  br i1 %cmp.i212, label %tx_can_batch.exit, label %if.end43.if.else57_crit_edge

if.end43.if.else57_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else57

tx_can_batch.exit:                                ; preds = %if.end43
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx, align 8
  %call.i = call zeroext i1 @vhost_vq_avail_empty(ptr noundef %87, ptr noundef %arrayidx) #9
  br i1 %call.i, label %tx_can_batch.exit.if.else57_crit_edge, label %land.lhs.true46

tx_can_batch.exit.if.else57_crit_edge:            ; preds = %tx_can_batch.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else57

land.lhs.true46:                                  ; preds = %tx_can_batch.exit
  %88 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %upend_idx.i, align 8
  %90 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %done_idx.i, align 4
  %92 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 515, i32 %93)
  %cmp.i217 = icmp ugt i32 %93, 515
  %shr.i218 = lshr i32 %93, 2
  %cond.i219 = select i1 %cmp.i217, i32 128, i32 %shr.i218
  %add.i220 = add i32 %89, 1024
  %sub.i221 = sub i32 %add.i220, %91
  %rem.i222 = srem i32 %sub.i221, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i222, i32 %cond.i219)
  %cmp2.i223 = icmp ugt i32 %rem.i222, %cond.i219
  br i1 %cmp2.i223, label %land.lhs.true46.if.else57_crit_edge, label %if.then56, !prof !118

land.lhs.true46.if.else57_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else57

if.then56:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %3, align 4
  %or = or i32 %95, 32768
  br label %if.end59

if.else57:                                        ; preds = %land.lhs.true46.if.else57_crit_edge, %tx_can_batch.exit.if.else57_crit_edge, %if.end43.if.else57_crit_edge
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %3, align 4
  %and = and i32 %97, -32769
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then56
  %storemerge = phi i32 [ %and, %if.else57 ], [ %or, %if.then56 ]
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge, ptr %3, align 4
  %99 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops, align 4
  %sendmsg = getelementptr inbounds %struct.proto_ops, ptr %100, i32 0, i32 16
  %101 = ptrtoint ptr %sendmsg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sendmsg, align 4
  %call60 = call i32 %102(ptr noundef %sock, ptr noundef nonnull %msg, i32 noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then68, label %if.else102, !prof !118

if.then68:                                        ; preds = %if.end59
  br i1 %85, label %if.then70, label %if.then68.if.end82_crit_edge

if.then68.if.end82_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then70:                                        ; preds = %if.then68
  %103 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %heads.i, align 4
  %105 = getelementptr inbounds %struct.ubuf_info, ptr %ubuf.1, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %len74 = getelementptr %struct.vring_used_elem, ptr %104, i32 %107, i32 1
  %108 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp75 = icmp eq i32 %109, 1
  br i1 %cmp75, label %if.then76, label %if.then70.if.end78_crit_edge

if.then70.if.end78_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then76:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = call fastcc i32 @vhost_net_ubuf_put(ptr noundef %ubufs.0)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.then70.if.end78_crit_edge
  %110 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %upend_idx.i, align 8
  %sub = add i32 %111, 1023
  %rem80 = and i32 %sub, 1023
  store i32 %rem80, ptr %upend_idx.i, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.end78, %if.then68.if.end82_crit_edge
  %112 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call60, label %do.body90 [
    i32 -11, label %if.end82.if.then87_crit_edge
    i32 -12, label %if.end82.if.then87_crit_edge275
    i32 -105, label %if.end82.if.then87_crit_edge276
  ]

if.end82.if.then87_crit_edge276:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

if.end82.if.then87_crit_edge275:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

if.end82.if.then87_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

if.then87:                                        ; preds = %if.end82.if.then87_crit_edge, %if.end82.if.then87_crit_edge275, %if.end82.if.then87_crit_edge276
  call void @vhost_discard_vq_desc(ptr noundef %arrayidx, i32 noundef 1) #9
  %private_data.i.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 27
  %113 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %private_data.i.i, align 8
  %tobool.not.i224 = icmp eq ptr %114, null
  br i1 %tobool.not.i224, label %if.then87.cleanup.thread_crit_edge, label %if.end.i225

if.then87.cleanup.thread_crit_edge:               ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end.i225:                                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 2, i32 1
  %file.i = getelementptr inbounds %struct.socket, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %file.i, align 4
  %call4.i = call i32 @vhost_poll_start(ptr noundef %add.ptr3.i, ptr noundef %116) #9
  br label %cleanup.thread

do.body90:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_tx_zerocopy.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_tx_zerocopy, %if.then100)) #9
          to label %if.end128 [label %if.then100], !srcloc !124

if.then100:                                       ; preds = %do.body90
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_tx_zerocopy.__UNIQUE_ID_ddebug543, ptr noundef nonnull @.str.10, i32 noundef %call60) #9
  br i1 %85, label %if.then100.if.else132_crit_edge, label %if.then100.if.then130_crit_edge

if.then100.if.then130_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.then100.if.else132_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else132

if.else102:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_cmp4(i32 %call60, i32 %41)
  %cmp103.not = icmp eq i32 %call60, %41
  br i1 %cmp103.not, label %if.else102.if.end128_crit_edge, label %do.body111, !prof !113

if.else102.if.end128_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

do.body111:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_tx_zerocopy.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_tx_zerocopy, %if.then123)) #9
          to label %if.end128 [label %if.then123], !srcloc !124

if.then123:                                       ; preds = %do.body111
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_tx_zerocopy.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.11, i32 noundef %call60, i32 noundef %41) #9
  br i1 %85, label %if.then123.if.else132_crit_edge, label %if.then123.if.then130_crit_edge

if.then123.if.then130_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.then123.if.else132_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else132

if.end128:                                        ; preds = %do.body111, %if.else102.if.end128_crit_edge, %do.body90
  br i1 %85, label %if.end128.if.else132_crit_edge, label %if.end128.if.then130_crit_edge

if.end128.if.then130_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.end128.if.else132_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else132

if.then130:                                       ; preds = %if.end128.if.then130_crit_edge, %if.then123.if.then130_crit_edge, %if.then100.if.then130_crit_edge
  call void @vhost_add_used_and_signal(ptr noundef %net, ptr noundef %arrayidx, i32 noundef %call, i32 noundef 0) #9
  br label %if.end133

if.else132:                                       ; preds = %if.end128.if.else132_crit_edge, %if.then123.if.else132_crit_edge, %if.then100.if.else132_crit_edge
  %117 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %done_idx.i, align 4
  %119 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %upend_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp.not45.i229 = icmp eq i32 %118, %120
  br i1 %cmp.not45.i229, label %if.else132.if.end133_crit_edge, label %if.else132.for.body.i237_crit_edge

if.else132.for.body.i237_crit_edge:               ; preds = %if.else132
  br label %for.body.i237

if.else132.if.end133_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

for.body.i237:                                    ; preds = %if.then6.i247.for.body.i237_crit_edge, %if.else132.for.body.i237_crit_edge
  %j.047.i233 = phi i32 [ %inc.i243, %if.then6.i247.for.body.i237_crit_edge ], [ 0, %if.else132.for.body.i237_crit_edge ]
  %i.046.i234 = phi i32 [ %rem.i245, %if.then6.i247.for.body.i237_crit_edge ], [ %118, %if.else132.for.body.i237_crit_edge ]
  %121 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %heads.i, align 4
  %len.i235 = getelementptr %struct.vring_used_elem, ptr %122, i32 %i.046.i234, i32 1
  %123 = ptrtoint ptr %len.i235 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp1.i236 = icmp eq i32 %124, 3
  br i1 %cmp1.i236, label %if.then.i239, label %for.body.i237.if.end.i242_crit_edge

for.body.i237.if.end.i242_crit_edge:              ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i242

if.then.i239:                                     ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %tx_zcopy_err.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_zcopy_err.i.i, align 4
  %inc.i.i238 = add i32 %126, 1
  store i32 %inc.i.i238, ptr %tx_zcopy_err.i.i, align 4
  br label %if.end.i242

if.end.i242:                                      ; preds = %if.then.i239, %for.body.i237.if.end.i242_crit_edge
  %127 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %heads.i, align 4
  %len4.i240 = getelementptr %struct.vring_used_elem, ptr %128, i32 %i.046.i234, i32 1
  %129 = ptrtoint ptr %len4.i240 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len4.i240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp5.i241 = icmp ugt i32 %130, 1
  br i1 %cmp5.i241, label %if.then6.i247, label %if.end.i242.for.end.i250_crit_edge

if.end.i242.for.end.i250_crit_edge:               ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i250

if.then6.i247:                                    ; preds = %if.end.i242
  %131 = ptrtoint ptr %len4.i240 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %len4.i240, align 4
  %inc.i243 = add i32 %j.047.i233, 1
  %add11.i244 = add i32 %i.046.i234, 1
  %rem.i245 = srem i32 %add11.i244, 1024
  %132 = ptrtoint ptr %upend_idx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %upend_idx.i, align 8
  %cmp.not.i246 = icmp eq i32 %rem.i245, %133
  br i1 %cmp.not.i246, label %if.then6.i247.for.end.i250_crit_edge, label %if.then6.i247.for.body.i237_crit_edge

if.then6.i247.for.body.i237_crit_edge:            ; preds = %if.then6.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i237

if.then6.i247.for.end.i250_crit_edge:             ; preds = %if.then6.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i250

for.end.i250:                                     ; preds = %if.then6.i247.for.end.i250_crit_edge, %if.end.i242.for.end.i250_crit_edge
  %j.0.lcssa.i248 = phi i32 [ %inc.i243, %if.then6.i247.for.end.i250_crit_edge ], [ %j.047.i233, %if.end.i242.for.end.i250_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.lcssa.i248)
  %tobool.not49.i249 = icmp eq i32 %j.0.lcssa.i248, 0
  br i1 %tobool.not49.i249, label %for.end.i250.if.end133_crit_edge, label %for.end.i250.while.body.i260_crit_edge

for.end.i250.while.body.i260_crit_edge:           ; preds = %for.end.i250
  br label %while.body.i260

for.end.i250.if.end133_crit_edge:                 ; preds = %for.end.i250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

while.body.i260:                                  ; preds = %while.body.i260.while.body.i260_crit_edge, %for.end.i250.while.body.i260_crit_edge
  %j.150.i253 = phi i32 [ %sub22.i258, %while.body.i260.while.body.i260_crit_edge ], [ %j.0.lcssa.i248, %for.end.i250.while.body.i260_crit_edge ]
  %134 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %done_idx.i, align 4
  %sub.i254 = sub i32 1024, %135
  %136 = call i32 @llvm.smin.i32(i32 %sub.i254, i32 %j.150.i253) #9
  %137 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx, align 8
  %139 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %heads.i, align 4
  %arrayidx17.i255 = getelementptr %struct.vring_used_elem, ptr %140, i32 %135
  call void @vhost_add_used_and_signal_n(ptr noundef %138, ptr noundef %arrayidx, ptr noundef %arrayidx17.i255, i32 noundef %136) #9
  %141 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %done_idx.i, align 4
  %add19.i256 = add i32 %142, %136
  %rem20.i257 = srem i32 %add19.i256, 1024
  store i32 %rem20.i257, ptr %done_idx.i, align 4
  %sub22.i258 = sub i32 %j.150.i253, %136
  %tobool.not.i259 = icmp eq i32 %sub22.i258, 0
  br i1 %tobool.not.i259, label %while.body.i260.if.end133_crit_edge, label %while.body.i260.while.body.i260_crit_edge

while.body.i260.while.body.i260_crit_edge:        ; preds = %while.body.i260
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i260

while.body.i260.if.end133_crit_edge:              ; preds = %while.body.i260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.end133:                                        ; preds = %while.body.i260.if.end133_crit_edge, %for.end.i250.if.end133_crit_edge, %if.else132.if.end133_crit_edge, %if.then130
  %143 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tx_packets.i, align 8
  %inc.i263 = add i32 %144, 1
  store i32 %inc.i263, ptr %tx_packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i263)
  %cmp.i264 = icmp ult i32 %inc.i263, 1024
  br i1 %cmp.i264, label %if.end133.do.cond134_crit_edge, label %if.end.i266

if.end133.do.cond134_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond134

if.end.i266:                                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %tx_packets.i, align 8
  %146 = ptrtoint ptr %tx_zcopy_err.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %tx_zcopy_err.i.i, align 4
  br label %do.cond134

cleanup.thread:                                   ; preds = %if.end.i225, %if.then87.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.then12, %vhost_zerocopy_signal_used.exit.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %busyloop_intr) #9
  br label %do.end144

do.cond134:                                       ; preds = %if.end.i266, %if.end133.do.cond134_crit_edge, %if.then20
  %ubuf.2 = phi ptr [ %ubuf.0, %if.then20 ], [ %ubuf.1, %if.end133.do.cond134_crit_edge ], [ %ubuf.1, %if.end.i266 ]
  %total_len.1 = phi i32 [ %total_len.0, %if.then20 ], [ %add44, %if.end133.do.cond134_crit_edge ], [ %add44, %if.end.i266 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %busyloop_intr) #9
  %inc = add i32 %sent_pkts.0, 1
  %call135 = call zeroext i1 @vhost_exceeds_weight(ptr noundef %arrayidx, i32 noundef %inc, i32 noundef %total_len.1) #9
  br i1 %call135, label %do.cond134.do.end144_crit_edge, label %do.cond134.do.body_crit_edge, !prof !118

do.cond134.do.body_crit_edge:                     ; preds = %do.cond134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond134.do.end144_crit_edge:                   ; preds = %do.cond134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end144

do.end144:                                        ; preds = %do.cond134.do.end144_crit_edge, %cleanup.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctl) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_tx_copy(ptr noundef %net, ptr noundef %sock) unnamed_addr #0 align 64 {
entry:
  %out = alloca i32, align 4
  %in = alloca i32, align 4
  %msg = alloca %struct.msghdr, align 8
  %len = alloca i32, align 4
  %busyloop_intr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #9
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %out, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #9
  %1 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %in, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %2 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %3 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.46, %union.anon.47 }, %union.anon.49, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len, align 4, !annotation !111
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_sndbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %9)
  %cmp = icmp eq i32 %9, 2147483647
  %done_idx = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 4
  %num = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 2
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %private_data.i.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 27
  %xdp2.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 10
  %batched_xdp.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 5
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %sock_hlen.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 2
  %is_le.i.i.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 33
  %10 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %heads = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 24
  br label %do.body

do.body:                                          ; preds = %do.cond116.do.body_crit_edge, %entry
  %sent_pkts.0 = phi i32 [ 0, %entry ], [ %inc117, %do.cond116.do.body_crit_edge ]
  %total_len.0 = phi i32 [ 0, %entry ], [ %total_len.1, %do.cond116.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %busyloop_intr) #9
  %11 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %busyloop_intr, align 1
  %12 = ptrtoint ptr %done_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %done_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp2 = icmp eq i32 %13, 64
  br i1 %cmp2, label %if.then, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @vhost_tx_batch(ptr noundef %arrayidx, ptr noundef %sock, ptr noundef nonnull %msg)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %call = call fastcc i32 @get_tx_bufs(ptr noundef %net, ptr noundef %arrayidx, ptr noundef nonnull %msg, ptr noundef nonnull %out, ptr noundef nonnull %in, ptr noundef nonnull %len, ptr noundef nonnull %busyloop_intr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup.thread_crit_edge, label %if.end6, !prof !118

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end6:                                          ; preds = %if.end
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %15)
  %cmp7 = icmp eq i32 %call, %15
  br i1 %cmp7, label %if.then8, label %if.end28

if.then8:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %busyloop_intr, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.else, label %if.then16, !prof !113

if.then16:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %poll = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1, i32 0, i32 11
  call void @vhost_poll_queue(ptr noundef %poll) #9
  br label %cleanup.thread

if.else:                                          ; preds = %if.then8
  %call17 = call zeroext i1 @vhost_enable_notify(ptr noundef %net, ptr noundef %arrayidx) #9
  br i1 %call17, label %if.then24, label %if.else.cleanup.thread_crit_edge, !prof !118

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @vhost_disable_notify(ptr noundef %net, ptr noundef %arrayidx) #9
  br label %do.cond116

if.end28:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add = add i32 %19, %total_len.0
  br i1 %cmp, label %if.then30, label %if.else46

if.then30:                                        ; preds = %if.end28
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 8
  %22 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data.i.i, align 8
  %page_frag.i = getelementptr inbounds %struct.vhost_net, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %xdp2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xdp2.i, align 4
  %26 = ptrtoint ptr %batched_xdp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %batched_xdp.i, align 8
  %arrayidx.i = getelementptr %struct.xdp_buff, ptr %25, i32 %27
  %28 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i.i, align 8
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 4
  %30 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk.i.i, align 16
  %32 = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.i.not.i = icmp eq i32 %35, 0
  %add.i = select i1 %tobool.i.i.not.i, i32 130, i32 386
  %36 = ptrtoint ptr %sock_hlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sock_hlen.i, align 4
  %add5.i = add i32 %37, 127
  %add6.i = add i32 %add5.i, %add.i
  %and.i = and i32 %add6.i, -128
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %37)
  %cmp.i = icmp ult i32 %29, %37
  br i1 %cmp.i, label %if.then30.if.then42_crit_edge, label %if.end.i, !prof !118

if.then30.if.then42_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end.i:                                         ; preds = %if.then30
  %add11.i = add i32 %29, 383
  %38 = add i32 %add11.i, %and.i
  %add14.i = and i32 %38, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add14.i)
  %cmp15.i = icmp ugt i32 %add14.i, 4096
  br i1 %cmp15.i, label %if.end45, label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i
  %offset.i = getelementptr inbounds %struct.vhost_net, ptr %21, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %offset.i, align 4
  %add22.i = add i16 %40, 127
  %and23.i = and i16 %add22.i, -128
  store i16 %and23.i, ptr %offset.i, align 4
  %call26.i = call fastcc zeroext i1 @vhost_net_page_frag_refill(ptr noundef %21, i32 noundef %add14.i, ptr noundef %page_frag.i) #9
  br i1 %call26.i, label %if.end36.i, label %if.end17.i.if.then42_crit_edge, !prof !113

if.end17.i.if.then42_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end36.i:                                       ; preds = %if.end17.i
  %41 = ptrtoint ptr %page_frag.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %page_frag.i, align 4
  %call37.i = call ptr @page_address(ptr noundef %42) #9
  %43 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %offset.i, align 4
  %conv39.i = zext i16 %44 to i32
  %add.ptr40.i = getelementptr i8, ptr %call37.i, i32 %conv39.i
  %45 = ptrtoint ptr %page_frag.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %page_frag.i, align 4
  %add44.i = add nuw nsw i32 %conv39.i, 4
  %call45.i = call i32 @copy_page_from_iter(ptr noundef %46, i32 noundef %add44.i, i32 noundef %37, ptr noundef %msg_iter) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call45.i, i32 %37)
  %cmp46.not.i = icmp eq i32 %call45.i, %37
  br i1 %cmp46.not.i, label %if.end49.i, label %if.end36.i.if.then42_crit_edge

if.end36.i.if.then42_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end49.i:                                       ; preds = %if.end36.i
  %gso50.i = getelementptr inbounds %struct.tun_xdp_hdr, ptr %add.ptr40.i, i32 0, i32 1
  %47 = ptrtoint ptr %gso50.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %gso50.i, align 2
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool53.not.i = icmp eq i8 %49, 0
  br i1 %tobool53.not.i, label %if.end49.i.if.end83.i_crit_edge, label %land.lhs.true.i

if.end49.i.if.end83.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

land.lhs.true.i:                                  ; preds = %if.end49.i
  %csum_start.i = getelementptr inbounds %struct.virtio_net_hdr, ptr %gso50.i, i32 0, i32 4
  %50 = ptrtoint ptr %csum_start.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %csum_start.i, align 2
  %52 = ptrtoint ptr %is_le.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_le.i.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.i.not.i.i = icmp eq i8 %53, 0
  %54 = call i16 @llvm.bswap.i16(i16 %51) #9
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i, i16 %51, i16 %54
  %conv55.i = zext i16 %retval.0.i.i.i to i32
  %csum_offset.i = getelementptr inbounds %struct.virtio_net_hdr, ptr %gso50.i, i32 0, i32 5
  %55 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %csum_offset.i, align 2
  %57 = call i16 @llvm.bswap.i16(i16 %56) #9
  %retval.0.i.i168.i = select i1 %tobool.i.not.i.i, i16 %56, i16 %57
  %conv57.i = zext i16 %retval.0.i.i168.i to i32
  %add58.i = add nuw nsw i32 %conv55.i, 2
  %add59.i = add nuw nsw i32 %add58.i, %conv57.i
  %hdr_len.i = getelementptr inbounds %struct.virtio_net_hdr, ptr %gso50.i, i32 0, i32 2
  %58 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hdr_len.i, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59) #9
  %retval.0.i.i171.i = select i1 %tobool.i.not.i.i, i16 %59, i16 %60
  %conv61.i = zext i16 %retval.0.i.i171.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i, i32 %conv61.i)
  %cmp62.i = icmp ugt i32 %add59.i, %conv61.i
  br i1 %cmp62.i, label %if.then64.i, label %land.lhs.true.i.if.end83.i_crit_edge

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then64.i:                                      ; preds = %land.lhs.true.i
  %add71.i = add i16 %retval.0.i.i.i, 2
  %add72.i = add i16 %add71.i, %retval.0.i.i168.i
  %61 = call i16 @llvm.bswap.i16(i16 %add72.i) #9
  %retval.0.i.i180.i = select i1 %tobool.i.not.i.i, i16 %add72.i, i16 %61
  %62 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %retval.0.i.i180.i, ptr %hdr_len.i, align 2
  %63 = ptrtoint ptr %is_le.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_le.i.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.i.not.i182.i = icmp eq i8 %64, 0
  %65 = call i16 @llvm.bswap.i16(i16 %retval.0.i.i180.i) #9
  %retval.0.i.i183.i = select i1 %tobool.i.not.i182.i, i16 %retval.0.i.i180.i, i16 %65
  %conv78.i = zext i16 %retval.0.i.i183.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv78.i)
  %cmp79.i = icmp ult i32 %29, %conv78.i
  br i1 %cmp79.i, label %if.then64.i.if.then42_crit_edge, label %if.then64.i.if.end83.i_crit_edge

if.then64.i.if.end83.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then64.i.if.then42_crit_edge:                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end83.i:                                       ; preds = %if.then64.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge, %if.end49.i.if.end83.i_crit_edge
  %sub.i = sub i32 %29, %37
  %66 = ptrtoint ptr %page_frag.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %page_frag.i, align 4
  %68 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %offset.i, align 4
  %conv86.i = zext i16 %69 to i32
  %add87.i = add i32 %and.i, %conv86.i
  %call88.i = call i32 @copy_page_from_iter(ptr noundef %67, i32 noundef %add87.i, i32 noundef %sub.i, ptr noundef %msg_iter) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call88.i, i32 %sub.i)
  %cmp89.not.i = icmp eq i32 %call88.i, %sub.i
  br i1 %cmp89.not.i, label %vhost_net_build_xdp.exit.thread200, label %if.end83.i.if.then42_crit_edge

if.end83.i.if.then42_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

vhost_net_build_xdp.exit.thread200:               ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  %frame_sz1.i.i = getelementptr %struct.xdp_buff, ptr %25, i32 %27, i32 6
  %70 = ptrtoint ptr %frame_sz1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add14.i, ptr %frame_sz1.i.i, align 4
  %rxq2.i.i = getelementptr %struct.xdp_buff, ptr %25, i32 %27, i32 4
  %71 = ptrtoint ptr %rxq2.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %rxq2.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr40.i, i32 %and.i
  %data_hard_start.i.i = getelementptr %struct.xdp_buff, ptr %25, i32 %27, i32 3
  %72 = ptrtoint ptr %data_hard_start.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr40.i, ptr %data_hard_start.i.i, align 4
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr.i.i, ptr %arrayidx.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub.i
  %data_end.i.i = getelementptr %struct.xdp_buff, ptr %25, i32 %27, i32 1
  %74 = ptrtoint ptr %data_end.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr2.i.i, ptr %data_end.i.i, align 4
  %data_meta.i.i = getelementptr %struct.xdp_buff, ptr %25, i32 %27, i32 2
  %75 = ptrtoint ptr %data_meta.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.i.i, ptr %data_meta.i.i, align 4
  %76 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add14.i, ptr %add.ptr40.i, align 4
  %refcnt_bias.i = getelementptr inbounds %struct.vhost_net, ptr %21, i32 0, i32 7
  %77 = ptrtoint ptr %refcnt_bias.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %refcnt_bias.i, align 4
  %dec.i = add i32 %78, -1
  store i32 %dec.i, ptr %refcnt_bias.i, align 4
  %79 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %offset.i, align 4
  %81 = trunc i32 %add14.i to i16
  %conv97.i = add i16 %80, %81
  store i16 %conv97.i, ptr %offset.i, align 4
  %82 = ptrtoint ptr %batched_xdp.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %batched_xdp.i, align 8
  %inc.i = add i32 %83, 1
  store i32 %inc.i, ptr %batched_xdp.i, align 8
  br label %done

if.then42:                                        ; preds = %if.end83.i.if.then42_crit_edge, %if.then64.i.if.then42_crit_edge, %if.end36.i.if.then42_crit_edge, %if.end17.i.if.then42_crit_edge, %if.then30.if.then42_crit_edge
  call fastcc void @vhost_tx_batch(ptr noundef %arrayidx, ptr noundef %sock, ptr noundef nonnull %msg)
  call void @vhost_discard_vq_desc(ptr noundef %arrayidx, i32 noundef 1) #9
  %84 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %private_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %85, null
  br i1 %tobool.not.i, label %if.then42.cleanup.thread_crit_edge, label %if.end.i182

if.then42.cleanup.thread_crit_edge:               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end.i182:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 2, i32 1
  %file.i = getelementptr inbounds %struct.socket, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %file.i, align 4
  %call4.i = call i32 @vhost_poll_start(ptr noundef %add.ptr3.i, ptr noundef %87) #9
  br label %cleanup.thread

if.end45:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @vhost_tx_batch(ptr noundef %arrayidx, ptr noundef %sock, ptr noundef nonnull %msg)
  %88 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %10, align 8
  br label %if.end52

if.else46:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %add)
  %cmp.i184 = icmp ult i32 %add, 524288
  br i1 %cmp.i184, label %tx_can_batch.exit, label %if.else46.if.else49_crit_edge

if.else46.if.else49_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else49

tx_can_batch.exit:                                ; preds = %if.else46
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx, align 8
  %call.i = call zeroext i1 @vhost_vq_avail_empty(ptr noundef %90, ptr noundef %arrayidx) #9
  br i1 %call.i, label %tx_can_batch.exit.if.else49_crit_edge, label %if.then48

tx_can_batch.exit.if.else49_crit_edge:            ; preds = %tx_can_batch.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else49

if.then48:                                        ; preds = %tx_can_batch.exit
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %3, align 4
  %or = or i32 %92, 32768
  store i32 %or, ptr %3, align 4
  br label %if.end52

if.else49:                                        ; preds = %tx_can_batch.exit.if.else49_crit_edge, %if.else46.if.else49_crit_edge
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %3, align 4
  %and = and i32 %94, -32769
  store i32 %and, ptr %3, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then48, %if.end45
  %95 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops, align 4
  %sendmsg = getelementptr inbounds %struct.proto_ops, ptr %96, i32 0, i32 16
  %97 = ptrtoint ptr %sendmsg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sendmsg, align 4
  %call53 = call i32 %98(ptr noundef %sock, ptr noundef nonnull %msg, i32 noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then61, label %if.else81, !prof !118

if.then61:                                        ; preds = %if.end52
  %99 = zext i32 %call53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call53, label %do.body69 [
    i32 -11, label %if.then61.if.then66_crit_edge
    i32 -12, label %if.then61.if.then66_crit_edge208
    i32 -105, label %if.then61.if.then66_crit_edge209
  ]

if.then61.if.then66_crit_edge209:                 ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66

if.then61.if.then66_crit_edge208:                 ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66

if.then61.if.then66_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66

if.then66:                                        ; preds = %if.then61.if.then66_crit_edge, %if.then61.if.then66_crit_edge208, %if.then61.if.then66_crit_edge209
  call void @vhost_discard_vq_desc(ptr noundef %arrayidx, i32 noundef 1) #9
  %100 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %private_data.i.i, align 8
  %tobool.not.i186 = icmp eq ptr %101, null
  br i1 %tobool.not.i186, label %if.then66.cleanup.thread_crit_edge, label %if.end.i196

if.then66.cleanup.thread_crit_edge:               ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end.i196:                                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3.i193 = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 2, i32 1
  %file.i194 = getelementptr inbounds %struct.socket, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %file.i194 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %file.i194, align 4
  %call4.i195 = call i32 @vhost_poll_start(ptr noundef %add.ptr3.i193, ptr noundef %103) #9
  br label %cleanup.thread

do.body69:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_tx_copy.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_tx_copy, %if.then79)) #9
          to label %done [label %if.then79], !srcloc !124

if.then79:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_tx_copy.__UNIQUE_ID_ddebug541, ptr noundef nonnull @.str.10, i32 noundef %call53) #9
  br label %done

if.else81:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_cmp4(i32 %call53, i32 %19)
  %cmp82.not = icmp eq i32 %call53, %19
  br i1 %cmp82.not, label %if.else81.done_crit_edge, label %do.body90, !prof !113

if.else81.done_crit_edge:                         ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body90:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_tx_copy.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_tx_copy, %if.then102)) #9
          to label %done [label %if.then102], !srcloc !124

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_tx_copy.__UNIQUE_ID_ddebug542, ptr noundef nonnull @.str.22, i32 noundef %call53, i32 noundef %19) #9
  br label %done

done:                                             ; preds = %if.then102, %do.body90, %if.else81.done_crit_edge, %if.then79, %do.body69, %vhost_net_build_xdp.exit.thread200
  %104 = ptrtoint ptr %is_le.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %is_le.i.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.i.not.i = icmp eq i8 %105, 0
  %106 = call i32 @llvm.bswap.i32(i32 %call) #9
  %retval.0.i.i = select i1 %tobool.i.not.i, i32 %call, i32 %106
  %107 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %heads, align 4
  %109 = ptrtoint ptr %done_idx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %done_idx, align 4
  %arrayidx110 = getelementptr %struct.vring_used_elem, ptr %108, i32 %110
  %111 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %retval.0.i.i, ptr %arrayidx110, align 4
  %112 = load ptr, ptr %heads, align 4
  %113 = load i32, ptr %done_idx, align 4
  %len114 = getelementptr %struct.vring_used_elem, ptr %112, i32 %113, i32 1
  %114 = ptrtoint ptr %len114 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %len114, align 4
  %115 = load i32, ptr %done_idx, align 4
  %inc = add i32 %115, 1
  store i32 %inc, ptr %done_idx, align 4
  br label %do.cond116

cleanup.thread:                                   ; preds = %if.end.i196, %if.then66.cleanup.thread_crit_edge, %if.end.i182, %if.then42.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.then16, %if.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %busyloop_intr) #9
  br label %do.end127

do.cond116:                                       ; preds = %done, %if.then24
  %total_len.1 = phi i32 [ %total_len.0, %if.then24 ], [ %add, %done ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %busyloop_intr) #9
  %inc117 = add i32 %sent_pkts.0, 1
  %call118 = call zeroext i1 @vhost_exceeds_weight(ptr noundef %arrayidx, i32 noundef %inc117, i32 noundef %total_len.1) #9
  br i1 %call118, label %do.cond116.do.end127_crit_edge, label %do.cond116.do.body_crit_edge, !prof !118

do.cond116.do.body_crit_edge:                     ; preds = %do.cond116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond116.do.end127_crit_edge:                   ; preds = %do.cond116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end127

do.end127:                                        ; preds = %do.cond116.do.end127_crit_edge, %cleanup.thread
  call fastcc void @vhost_tx_batch(ptr noundef %arrayidx, ptr noundef %sock, ptr noundef nonnull %msg)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_tx_bufs(ptr noundef %net, ptr noundef %nvq, ptr noundef %msg, ptr noundef %out, ptr noundef %in, ptr nocapture noundef %len, ptr nocapture noundef writeonly %busyloop_intr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1
  %iov.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %nvq, i32 0, i32 21
  %call.i = tail call i32 @vhost_get_vq_desc(ptr noundef %nvq, ptr noundef %iov.i, i32 noundef 1024, ptr noundef %out, ptr noundef %in, ptr noundef null, ptr noundef null) #9
  %num.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %nvq, i32 0, i32 2
  %0 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %1)
  %cmp.i = icmp eq i32 %call.i, %1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.vhost_net_tx_get_vq_desc.exit_crit_edge

entry.vhost_net_tx_get_vq_desc.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_tx_get_vq_desc.exit

land.lhs.true.i:                                  ; preds = %entry
  %busyloop_timeout.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %nvq, i32 0, i32 35
  %2 = ptrtoint ptr %busyloop_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busyloop_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.vhost_net_tx_get_vq_desc.exit_crit_edge, label %if.then.i

land.lhs.true.i.vhost_net_tx_get_vq_desc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_tx_get_vq_desc.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %private_data.i.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %nvq, i32 0, i32 27
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 8
  %6 = load i32, ptr @experimental_zcopytx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.then4.i_crit_edge, label %vhost_sock_zcopy.exit.i, !prof !113

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

vhost_sock_zcopy.exit.i:                          ; preds = %if.then.i
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk.i.i, align 16
  %9 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.i.not.i, label %vhost_sock_zcopy.exit.i.if.then4.i_crit_edge, label %vhost_sock_zcopy.exit.i.if.end.i_crit_edge

vhost_sock_zcopy.exit.i.if.end.i_crit_edge:       ; preds = %vhost_sock_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

vhost_sock_zcopy.exit.i.if.then4.i_crit_edge:     ; preds = %vhost_sock_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

if.then4.i:                                       ; preds = %vhost_sock_zcopy.exit.i.if.then4.i_crit_edge, %if.then.i.if.then4.i_crit_edge
  tail call fastcc void @vhost_tx_batch(ptr noundef %nvq, ptr noundef %5, ptr noundef %msg) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %vhost_sock_zcopy.exit.i.if.end.i_crit_edge
  tail call fastcc void @vhost_net_busy_poll(ptr noundef %net, ptr noundef %vqs.i, ptr noundef %nvq, ptr noundef %busyloop_intr, i1 noundef zeroext false) #9
  %call8.i = tail call i32 @vhost_get_vq_desc(ptr noundef %nvq, ptr noundef %iov.i, i32 noundef 1024, ptr noundef %out, ptr noundef %in, ptr noundef null, ptr noundef null) #9
  br label %vhost_net_tx_get_vq_desc.exit

vhost_net_tx_get_vq_desc.exit:                    ; preds = %if.end.i, %land.lhs.true.i.vhost_net_tx_get_vq_desc.exit_crit_edge, %entry.vhost_net_tx_get_vq_desc.exit_crit_edge
  %r.0.i = phi i32 [ %call8.i, %if.end.i ], [ %call.i, %land.lhs.true.i.vhost_net_tx_get_vq_desc.exit_crit_edge ], [ %call.i, %entry.vhost_net_tx_get_vq_desc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %cmp = icmp slt i32 %r.0.i, 0
  br i1 %cmp, label %vhost_net_tx_get_vq_desc.exit.cleanup_crit_edge, label %lor.lhs.false

vhost_net_tx_get_vq_desc.exit.cleanup_crit_edge:  ; preds = %vhost_net_tx_get_vq_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %vhost_net_tx_get_vq_desc.exit
  %13 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0.i, i32 %14)
  %cmp2 = icmp eq i32 %r.0.i, %14
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end18, label %do.body4

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_tx_bufs.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_tx_bufs, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !124

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out, align 4
  %19 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %in, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_tx_bufs.__UNIQUE_ID_ddebug537, ptr noundef nonnull @.str.13, i32 noundef %18, i32 noundef %20) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body4
  %error_ctx = getelementptr inbounds %struct.vhost_virtqueue, ptr %nvq, i32 0, i32 9
  %21 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %error_ctx, align 4
  %tobool11.not = icmp eq ptr %22, null
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %vhost_hlen = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 1
  %23 = ptrtoint ptr %vhost_hlen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vhost_hlen, align 8
  %25 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp4.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp4.not.i.i, label %if.end18.init_iov_iter.exit_crit_edge, label %if.end18.for.body.i.i_crit_edge

if.end18.for.body.i.i_crit_edge:                  ; preds = %if.end18
  br label %for.body.i.i

if.end18.init_iov_iter.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_iov_iter.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end18.for.body.i.i_crit_edge
  %ret.06.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end18.for.body.i.i_crit_edge ]
  %seg.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end18.for.body.i.i_crit_edge ]
  %iov_len.i.i = getelementptr %struct.iovec, ptr %iov.i, i32 %seg.05.i.i, i32 1
  %27 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iov_len.i.i, align 4
  %add.i.i = add i32 %28, %ret.06.i.i
  %inc.i.i = add nuw i32 %seg.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %26
  br i1 %exitcond.not.i.i, label %for.body.i.i.init_iov_iter.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.init_iov_iter.exit_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_iov_iter.exit

init_iov_iter.exit:                               ; preds = %for.body.i.i.init_iov_iter.exit_crit_edge, %if.end18.init_iov_iter.exit_crit_edge
  %ret.0.lcssa.i.i = phi i32 [ 0, %if.end18.init_iov_iter.exit_crit_edge ], [ %add.i.i, %for.body.i.i.init_iov_iter.exit_crit_edge ]
  tail call void @iov_iter_init(ptr noundef %msg_iter, i32 noundef 1, ptr noundef %iov.i, i32 noundef %26, i32 noundef %ret.0.lcssa.i.i) #9
  tail call void @iov_iter_advance(ptr noundef %msg_iter, i32 noundef %24) #9
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i.i, align 8
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp20 = icmp eq i32 %30, 0
  br i1 %cmp20, label %do.body23, label %init_iov_iter.exit.cleanup_crit_edge

init_iov_iter.exit.cleanup_crit_edge:             ; preds = %init_iov_iter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body23:                                        ; preds = %init_iov_iter.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_tx_bufs.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_tx_bufs, %if.then35)) #9
          to label %do.end39 [label %if.then35], !srcloc !124

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %34 = ptrtoint ptr %vhost_hlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vhost_hlen, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_tx_bufs.__UNIQUE_ID_ddebug538, ptr noundef nonnull @.str.14, i32 noundef %33, i32 noundef %35) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %error_ctx40 = getelementptr inbounds %struct.vhost_virtqueue, ptr %nvq, i32 0, i32 9
  %36 = ptrtoint ptr %error_ctx40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %error_ctx40, align 4
  %tobool41.not = icmp eq ptr %37, null
  br i1 %tobool41.not, label %do.end39.cleanup_crit_edge, label %do.end39.cleanup.sink.split_crit_edge

do.end39.cleanup.sink.split_crit_edge:            ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end39.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %22, %do.end.cleanup.sink.split_crit_edge ], [ %37, %do.end39.cleanup.sink.split_crit_edge ]
  %call44 = tail call i64 @eventfd_signal(ptr noundef nonnull %.sink, i64 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end39.cleanup_crit_edge, %init_iov_iter.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %vhost_net_tx_get_vq_desc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0.i, %lor.lhs.false.cleanup_crit_edge ], [ %r.0.i, %vhost_net_tx_get_vq_desc.exit.cleanup_crit_edge ], [ -14, %do.end.cleanup_crit_edge ], [ -14, %do.end39.cleanup_crit_edge ], [ %r.0.i, %init_iov_iter.exit.cleanup_crit_edge ], [ -14, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_poll_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_enable_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_zerocopy_callback(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %ubuf, i1 noundef zeroext %success) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ubuf_info, ptr %ubuf, i32 0, i32 1
  %ctx = getelementptr inbounds %struct.ubuf_info, ptr %ubuf, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %vq1 = getelementptr inbounds %struct.vhost_net_ubuf_ref, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %vq1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vq1, align 4
  tail call fastcc void @local_bh_disable() #9
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 750, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %cond = select i1 %success, i32 2, i32 3
  %heads = getelementptr inbounds %struct.vhost_virtqueue, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %heads, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %len = getelementptr %struct.vring_used_elem, ptr %6, i32 %8, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %len, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %2, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %2, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !120
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not.i7 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i7, label %vhost_net_ubuf_put.exit.thread, label %vhost_net_ubuf_put.exit, !prof !118

vhost_net_ubuf_put.exit.thread:                   ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wait.i = getelementptr inbounds %struct.vhost_net_ubuf_ref, ptr %2, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.then

vhost_net_ubuf_put.exit:                          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 2
  %11 = and i32 %asmresult.i.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  %or.cond = or i1 %cmp, %tobool2.not
  br i1 %or.cond, label %vhost_net_ubuf_put.exit.if.then_crit_edge, label %vhost_net_ubuf_put.exit.if.end_crit_edge

vhost_net_ubuf_put.exit.if.end_crit_edge:         ; preds = %vhost_net_ubuf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

vhost_net_ubuf_put.exit.if.then_crit_edge:        ; preds = %vhost_net_ubuf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %vhost_net_ubuf_put.exit.if.then_crit_edge, %vhost_net_ubuf_put.exit.thread
  %poll = getelementptr inbounds %struct.vhost_virtqueue, ptr %4, i32 0, i32 11
  tail call void @vhost_poll_queue(ptr noundef %poll) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %vhost_net_ubuf_put.exit.if.end_crit_edge
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i9, label %if.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i12

if.end.rcu_read_unlock_bh.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i12:                                ; preds = %if.end
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 761, ptr noundef nonnull @.str.20) #9
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock_bh.exit_crit_edge, %if.end.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #9
  tail call fastcc void @local_bh_enable() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_discard_vq_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_add_used_and_signal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_exceeds_weight(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_get_vq_desc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_tx_batch(ptr noundef %nvq, ptr noundef %sock, ptr noundef %msghdr) unnamed_addr #0 align 64 {
entry:
  %ctl = alloca %struct.tun_msg_ctl, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctl) #9
  %0 = getelementptr inbounds %struct.tun_msg_ctl, ptr %ctl, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tun_msg_ctl, ptr %ctl, i32 0, i32 2
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %ctl, align 4
  %batched_xdp = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 5
  %3 = ptrtoint ptr %batched_xdp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %batched_xdp, align 8
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %0, align 2
  %xdp = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 10
  %6 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.signal_used_crit_edge, label %if.end

entry.signal_used_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %signal_used

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.msghdr, ptr %msghdr, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ctl, ptr %9, align 8
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %sendmsg = getelementptr inbounds %struct.proto_ops, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %sendmsg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sendmsg, align 4
  %call = call i32 %14(ptr noundef %sock, ptr noundef %msghdr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %do.body7, label %if.end.signal_used_crit_edge, !prof !118

if.end.signal_used_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %signal_used

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_tx_batch.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_tx_batch, %if.then16)) #9
          to label %do.end [label %if.then16], !srcloc !124

if.then16:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_tx_batch.__UNIQUE_ID_ddebug534, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body7
  %error_ctx = getelementptr inbounds %struct.vhost_virtqueue, ptr %nvq, i32 0, i32 9
  %15 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %error_ctx, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %do.end.do.end25_crit_edge, label %if.then19

do.end.do.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i64 @eventfd_signal(ptr noundef nonnull %16, i64 noundef 1) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.end.do.end25_crit_edge
  %17 = ptrtoint ptr %batched_xdp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %batched_xdp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp272 = icmp sgt i32 %18, 0
  br i1 %cmp272, label %do.end25.for.body_crit_edge, label %do.end25.for.end_crit_edge

do.end25.for.end_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

for.body:                                         ; preds = %virt_to_head_page.exit.for.body_crit_edge, %do.end25.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %virt_to_head_page.exit.for.body_crit_edge ], [ 0, %do.end25.for.body_crit_edge ]
  %19 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xdp, align 4
  %arrayidx = getelementptr %struct.xdp_buff, ptr %20, i32 %i.03
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %22 to i32
  %sub.i = add i32 %24, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %25 = getelementptr %struct.page, ptr %23, i32 %shr.i, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !113

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %27, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr %struct.page, ptr %23, i32 %shr.i
  %28 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  call fastcc void @put_page(ptr noundef %29)
  %inc = add nuw nsw i32 %i.03, 1
  %30 = ptrtoint ptr %batched_xdp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %batched_xdp, align 8
  %cmp27 = icmp slt i32 %inc, %31
  br i1 %cmp27, label %virt_to_head_page.exit.for.body_crit_edge, label %virt_to_head_page.exit.for.end_crit_edge

virt_to_head_page.exit.for.end_crit_edge:         ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

virt_to_head_page.exit.for.body_crit_edge:        ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %virt_to_head_page.exit.for.end_crit_edge, %do.end25.for.end_crit_edge
  %32 = ptrtoint ptr %batched_xdp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %batched_xdp, align 8
  %done_idx = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 4
  %33 = ptrtoint ptr %done_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %done_idx, align 4
  br label %cleanup

signal_used:                                      ; preds = %if.end.signal_used_crit_edge, %entry.signal_used_crit_edge
  %done_idx.i = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %nvq, i32 0, i32 4
  %34 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %done_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %signal_used.vhost_net_signal_used.exit_crit_edge, label %if.end.i

signal_used.vhost_net_signal_used.exit_crit_edge: ; preds = %signal_used
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_signal_used.exit

if.end.i:                                         ; preds = %signal_used
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %nvq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nvq, align 8
  %heads.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %nvq, i32 0, i32 24
  %38 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %heads.i, align 4
  call void @vhost_add_used_and_signal_n(ptr noundef %37, ptr noundef %nvq, ptr noundef %39, i32 noundef %35) #9
  %40 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %done_idx.i, align 4
  br label %vhost_net_signal_used.exit

vhost_net_signal_used.exit:                       ; preds = %if.end.i, %signal_used.vhost_net_signal_used.exit_crit_edge
  %41 = ptrtoint ptr %batched_xdp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %batched_xdp, align 8
  br label %cleanup

cleanup:                                          ; preds = %vhost_net_signal_used.exit, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctl) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_net_busy_poll(ptr noundef %net, ptr noundef %rvq, ptr noundef %tvq, ptr nocapture noundef writeonly %busyloop_intr, i1 noundef zeroext %poll_rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tvq.rvq = select i1 %poll_rx, ptr %tvq, ptr %rvq
  %mutex = getelementptr inbounds %struct.vhost_virtqueue, ptr %tvq.rvq, i32 0, i32 1
  %call = tail call i32 @mutex_trylock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @vhost_disable_notify(ptr noundef %net, ptr noundef %tvq.rvq) #9
  %private_data.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %rvq, i32 0, i32 27
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %rvq.tvq = select i1 %poll_rx, ptr %rvq, ptr %tvq
  %cond9.in = getelementptr inbounds %struct.vhost_virtqueue, ptr %rvq.tvq, i32 0, i32 35
  %2 = ptrtoint ptr %cond9.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond9 = load i32, ptr %cond9.in, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %call.i.i = tail call i64 @sched_clock() #9
  %shr.i = lshr i64 %call.i.i, 10
  %conv.i = trunc i64 %shr.i to i32
  %add = add i32 %cond9, %conv.i
  %7 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i7193 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i7193 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 16384
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i94 = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i94, label %land.lhs.true.i.lr.ph, label %if.end.do.body33_crit_edge, !prof !113

if.end.do.body33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

land.lhs.true.i.lr.ph:                            ; preds = %if.end
  %tobool.not.i = icmp eq ptr %1, null
  %ops.i = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  %sk.i = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end28.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %call.i.i.i = tail call i64 @sched_clock() #9
  %shr.i.i = lshr i64 %call.i.i.i, 10
  %conv.i.i = trunc i64 %shr.i.i to i32
  %sub.i72 = sub i32 %add, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i72)
  %cmp.i = icmp slt i32 %sub.i72, 0
  br i1 %cmp.i, label %land.lhs.true.i.do.body33_crit_edge, label %land.rhs.i, !prof !118

land.lhs.true.i.do.body33_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %vhost_can_busy_poll.exit, label %land.rhs.i.do.body33_crit_edge, !prof !113

land.rhs.i.do.body33_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

vhost_can_busy_poll.exit:                         ; preds = %land.rhs.i
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %phi.cmp.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i, label %while.body, label %vhost_can_busy_poll.exit.do.body33_crit_edge

vhost_can_busy_poll.exit.do.body33_crit_edge:     ; preds = %vhost_can_busy_poll.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

while.body:                                       ; preds = %vhost_can_busy_poll.exit
  %call13 = tail call zeroext i1 @vhost_has_work(ptr noundef %net) #9
  br i1 %call13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %busyloop_intr, align 1
  br label %do.body33

if.end15:                                         ; preds = %while.body
  br i1 %tobool.not.i, label %if.end15.lor.lhs.false_crit_edge, label %if.end.i, !prof !118

if.end15.lor.lhs.false_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.end15
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %peek_len.i = getelementptr inbounds %struct.proto_ops, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %peek_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peek_len.i, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %if.end8.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %27(ptr noundef nonnull %1) #9
  br label %sock_has_rx_data.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk.i, align 16
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i = icmp eq ptr %31, %sk_receive_queue.i
  %conv.i.i73 = zext i1 %cmp.i.i to i32
  br label %sock_has_rx_data.exit

sock_has_rx_data.exit:                            ; preds = %if.end8.i, %if.then5.i
  %retval.0.i = phi i32 [ %call.i, %if.then5.i ], [ %conv.i.i73, %if.end8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool17.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool17.not, label %sock_has_rx_data.exit.lor.lhs.false_crit_edge, label %land.lhs.true

sock_has_rx_data.exit.lor.lhs.false_crit_edge:    ; preds = %sock_has_rx_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %sock_has_rx_data.exit
  %call19 = tail call zeroext i1 @vhost_vq_avail_empty(ptr noundef %net, ptr noundef %rvq) #9
  br i1 %call19, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.do.body33_crit_edge

land.lhs.true.do.body33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %sock_has_rx_data.exit.lor.lhs.false_crit_edge, %if.end15.lor.lhs.false_crit_edge
  %call21 = tail call zeroext i1 @vhost_vq_avail_empty(ptr noundef %net, ptr noundef %tvq) #9
  br i1 %call21, label %do.end28, label %lor.lhs.false.do.body33_crit_edge

lor.lhs.false.do.body33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

do.end28:                                         ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !127
  %32 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i71 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i71 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 16384
  %36 = and i32 %35, 2
  %tobool.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i, label %do.end28.land.lhs.true.i_crit_edge, label %do.end28.do.body33_crit_edge, !prof !113

do.end28.do.body33_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

do.end28.land.lhs.true.i_crit_edge:               ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

do.body33:                                        ; preds = %do.end28.do.body33_crit_edge, %lor.lhs.false.do.body33_crit_edge, %land.lhs.true.do.body33_crit_edge, %if.then14, %vhost_can_busy_poll.exit.do.body33_crit_edge, %land.rhs.i.do.body33_crit_edge, %land.lhs.true.i.do.body33_crit_edge, %if.end.do.body33_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %37 = tail call i32 @llvm.read_register.i32(metadata !101) #9
  %and.i.i.i69 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i69 to ptr
  %preempt_count.i.i70 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i70, align 4
  %sub.i = add i32 %40, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i70, align 4
  br i1 %poll_rx, label %do.body33.if.then40_crit_edge, label %lor.lhs.false37

do.body33.if.then40_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

lor.lhs.false37:                                  ; preds = %do.body33
  %tobool.not.i74 = icmp eq ptr %1, null
  br i1 %tobool.not.i74, label %lor.lhs.false37.if.then42_crit_edge, label %if.end.i78, !prof !118

lor.lhs.false37.if.then42_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end.i78:                                       ; preds = %lor.lhs.false37
  %ops.i75 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %ops.i75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i75, align 4
  %peek_len.i76 = getelementptr inbounds %struct.proto_ops, ptr %42, i32 0, i32 22
  %43 = ptrtoint ptr %peek_len.i76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %peek_len.i76, align 4
  %tobool4.not.i77 = icmp eq ptr %44, null
  br i1 %tobool4.not.i77, label %if.end8.i85, label %if.then5.i80

if.then5.i80:                                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  %call.i79 = tail call i32 %44(ptr noundef nonnull %1) #9
  br label %sock_has_rx_data.exit87

if.end8.i85:                                      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  %sk.i81 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %sk.i81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk.i81, align 16
  %sk_receive_queue.i82 = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %sk_receive_queue.i82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk_receive_queue.i82, align 4
  %cmp.i.i83 = icmp eq ptr %48, %sk_receive_queue.i82
  %conv.i.i84 = zext i1 %cmp.i.i83 to i32
  br label %sock_has_rx_data.exit87

sock_has_rx_data.exit87:                          ; preds = %if.end8.i85, %if.then5.i80
  %retval.0.i86 = phi i32 [ %call.i79, %if.then5.i80 ], [ %conv.i.i84, %if.end8.i85 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i86)
  %tobool39.not = icmp eq i32 %retval.0.i86, 0
  br i1 %tobool39.not, label %sock_has_rx_data.exit87.if.then42_crit_edge, label %sock_has_rx_data.exit87.if.then40_crit_edge

sock_has_rx_data.exit87.if.then40_crit_edge:      ; preds = %sock_has_rx_data.exit87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

sock_has_rx_data.exit87.if.then42_crit_edge:      ; preds = %sock_has_rx_data.exit87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then40:                                        ; preds = %sock_has_rx_data.exit87.if.then40_crit_edge, %do.body33.if.then40_crit_edge
  %call.i88 = tail call zeroext i1 @vhost_vq_avail_empty(ptr noundef %net, ptr noundef %tvq.rvq) #9
  br i1 %call.i88, label %if.else.i, label %if.then40.if.end7.sink.split.i_crit_edge

if.then40.if.end7.sink.split.i_crit_edge:         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.sink.split.i

if.else.i:                                        ; preds = %if.then40
  %call2.i = tail call zeroext i1 @vhost_enable_notify(ptr noundef %net, ptr noundef %tvq.rvq) #9
  br i1 %call2.i, label %if.then4.i, label %if.else.i.if.end46_crit_edge, !prof !118

if.else.i.if.end46_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vhost_disable_notify(ptr noundef %net, ptr noundef %tvq.rvq) #9
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %if.then4.i, %if.then40.if.end7.sink.split.i_crit_edge
  %poll6.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %tvq.rvq, i32 0, i32 11
  tail call void @vhost_poll_queue(ptr noundef %poll6.i) #9
  br label %if.end46

if.then42:                                        ; preds = %sock_has_rx_data.exit87.if.then42_crit_edge, %lor.lhs.false37.if.then42_crit_edge
  %call44 = tail call zeroext i1 @vhost_enable_notify(ptr noundef %net, ptr noundef %rvq) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end7.sink.split.i, %if.else.i.if.end46_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !113

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !118

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.17) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !129
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !124

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %4) #9
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_has_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_vq_avail_empty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vhost_net_page_frag_refill(ptr nocapture noundef %net, i32 noundef %sz, ptr nocapture noundef %pfrag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfrag, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then9_crit_edge, label %if.then

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset, align 4
  %conv = zext i16 %3 to i32
  %add = add i32 %conv, %sz
  %size = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 2
  %conv1 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1)
  %cmp.not = icmp ugt i32 %add, %conv1
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %refcnt_bias = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 7
  %6 = ptrtoint ptr %refcnt_bias to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt_bias, align 4
  tail call void @__page_frag_cache_drain(ptr noundef nonnull %1, i32 noundef %7) #9
  br label %if.then9

if.then9:                                         ; preds = %if.end, %entry.if.then9_crit_edge
  %offset6 = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 1
  %8 = ptrtoint ptr %offset6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %offset6, align 4
  %refcnt_bias7 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 7
  %9 = ptrtoint ptr %refcnt_bias7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %refcnt_bias7, align 4
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 338112, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %10 = ptrtoint ptr %pfrag to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call38.i.i.i, ptr %pfrag, align 4
  %tobool16.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool16.not, label %if.end24, label %if.then9.done_crit_edge, !prof !118

if.then9.done_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end24:                                         ; preds = %if.then9
  %call38.i.i.i1 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %11 = ptrtoint ptr %pfrag to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38.i.i.i1, ptr %pfrag, align 4
  %tobool28.not = icmp eq ptr %call38.i.i.i1, null
  br i1 %tobool28.not, label %if.end24.return_crit_edge, label %if.end24.done_crit_edge, !prof !118

if.end24.done_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end24.return_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

done:                                             ; preds = %if.end24.done_crit_edge, %if.then9.done_crit_edge
  %.sink = phi i16 [ -32768, %if.then9.done_crit_edge ], [ 4096, %if.end24.done_crit_edge ]
  %size36 = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 2
  %12 = ptrtoint ptr %size36 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink, ptr %size36, align 2
  %13 = ptrtoint ptr %refcnt_bias7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %refcnt_bias7, align 4
  %14 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pfrag, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 65534, ptr elementtype(i32) %_refcount.i) #9, !srcloc !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@vhost_net_page_frag_refill, %if.then.i)) #9
          to label %return [label %if.then.i], !srcloc !124

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %15, i32 noundef 65534) #9
  br label %return

return:                                           ; preds = %if.then.i, %done, %if.end24.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then.return_crit_edge ], [ false, %if.end24.return_crit_edge ], [ true, %done ], [ true, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_frag_cache_drain(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_rx(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  %in = alloca i32, align 4
  %log = alloca i32, align 4
  %msg = alloca %struct.msghdr, align 8
  %hdr = alloca %struct.virtio_net_hdr, align 2
  %busyloop_intr = alloca i8, align 1
  %fixup = alloca %struct.iov_iter, align 8
  %num_buffers = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #9
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %in, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %log) #9
  %1 = ptrtoint ptr %log to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %log, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %2 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %3 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.46, %union.anon.47 }, %union.anon.49, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %hdr) #9
  %5 = call ptr @memset(ptr %hdr, i32 0, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %busyloop_intr) #9
  %6 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %busyloop_intr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fixup) #9
  %7 = call ptr @memset(ptr %fixup, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num_buffers) #9
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %num_buffers, align 2, !annotation !111
  %mutex = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %private_data.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 27
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @vq_meta_prefetch(ptr noundef %vqs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  tail call void @vhost_disable_notify(ptr noundef %net, ptr noundef %vqs) #9
  %11 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end5.vhost_net_disable_vq.exit_crit_edge, label %if.end.i

if.end5.vhost_net_disable_vq.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_disable_vq.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %poll1.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 2
  tail call void @vhost_poll_stop(ptr noundef %poll1.i) #9
  br label %vhost_net_disable_vq.exit

vhost_net_disable_vq.exit:                        ; preds = %if.end.i, %if.end5.vhost_net_disable_vq.exit_crit_edge
  %vhost_hlen6 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %vhost_hlen6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vhost_hlen6, align 8
  %sock_hlen7 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %sock_hlen7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sock_hlen7, align 4
  %acked_features.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 28
  %17 = ptrtoint ptr %acked_features.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %acked_features.i, align 8
  %and.i = and i64 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %vhost_net_disable_vq.exit.cond.end_crit_edge, label %cond.true, !prof !113

vhost_net_disable_vq.exit.cond.end_crit_edge:     ; preds = %vhost_net_disable_vq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %vhost_net_disable_vq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %log11 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 31
  %19 = ptrtoint ptr %log11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %log11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %vhost_net_disable_vq.exit.cond.end_crit_edge
  %cond = phi ptr [ %20, %cond.true ], [ null, %vhost_net_disable_vq.exit.cond.end_crit_edge ]
  %and.i353 = and i64 %18, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i353)
  %tobool.i354.not = icmp eq i64 %and.i353, 0
  %sk = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %arrayidx2.i = getelementptr %struct.vhost_net, ptr %net, i32 0, i32 1, i32 1
  %busyloop_timeout.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 35
  %done_idx.i.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 4
  %heads.i.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 24
  %cond25 = select i1 %tobool.i354.not, i32 1, i32 1024
  %rx_ring = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 8
  %tail.i.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 9, i32 1
  %head.i.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 9, i32 2
  %rxq = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 9
  %21 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %msg_iter88 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %iov89 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool92.not = icmp eq i32 %14, 0
  %ops102 = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 5
  %is_le.i.i = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 33
  %tobool220.not = icmp eq ptr %cond, null
  br label %do.body

do.body:                                          ; preds = %do.cond234.do.body_crit_edge, %cond.end
  %recv_pkts.0 = phi i32 [ 0, %cond.end ], [ %inc, %do.cond234.do.body_crit_edge ]
  %total_len.0 = phi i32 [ 0, %cond.end ], [ %total_len.1, %do.cond234.do.body_crit_edge ]
  %22 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk, align 16
  %call.i = call fastcc i32 @peek_head_len(ptr noundef %vqs, ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i356 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i356, label %land.lhs.true.i, label %do.body.if.end16_crit_edge

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.i:                                  ; preds = %do.body
  %24 = ptrtoint ptr %busyloop_timeout.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %busyloop_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not.i = icmp eq i32 %25, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end244_crit_edge, label %if.then.i

land.lhs.true.i.do.end244_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end244

if.then.i:                                        ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %done_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %if.then.i.vhost_net_rx_peek_head_len.exit_crit_edge, label %if.end.i.i

if.then.i.vhost_net_rx_peek_head_len.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_rx_peek_head_len.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vqs, align 8
  %30 = ptrtoint ptr %heads.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %heads.i.i, align 4
  call void @vhost_add_used_and_signal_n(ptr noundef %29, ptr noundef %vqs, ptr noundef %31, i32 noundef %27) #9
  %32 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %done_idx.i.i, align 4
  br label %vhost_net_rx_peek_head_len.exit

vhost_net_rx_peek_head_len.exit:                  ; preds = %if.end.i.i, %if.then.i.vhost_net_rx_peek_head_len.exit_crit_edge
  call fastcc void @vhost_net_busy_poll(ptr noundef %net, ptr noundef %vqs, ptr noundef %arrayidx2.i, ptr noundef nonnull %busyloop_intr, i1 noundef zeroext true) #9
  %call5.i = call fastcc i32 @peek_head_len(ptr noundef %vqs, ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool14.not = icmp eq i32 %call5.i, 0
  br i1 %tobool14.not, label %vhost_net_rx_peek_head_len.exit.do.end244_crit_edge, label %vhost_net_rx_peek_head_len.exit.if.end16_crit_edge

vhost_net_rx_peek_head_len.exit.if.end16_crit_edge: ; preds = %vhost_net_rx_peek_head_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

vhost_net_rx_peek_head_len.exit.do.end244_crit_edge: ; preds = %vhost_net_rx_peek_head_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end244

if.end16:                                         ; preds = %vhost_net_rx_peek_head_len.exit.if.end16_crit_edge, %do.body.if.end16_crit_edge
  %len.0.i380 = phi i32 [ %call5.i, %vhost_net_rx_peek_head_len.exit.if.end16_crit_edge ], [ %call.i, %do.body.if.end16_crit_edge ]
  %add = add i32 %len.0.i380, %16
  %add17 = add i32 %add, %14
  %33 = ptrtoint ptr %heads.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %heads.i.i, align 4
  %35 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %done_idx.i.i, align 4
  %add.ptr = getelementptr %struct.vring_used_elem, ptr %34, i32 %36
  %call26 = call fastcc i32 @get_rx_bufs(ptr noundef %vqs, ptr noundef %add.ptr, i32 noundef %add17, ptr noundef nonnull %in, ptr noundef %cond, ptr noundef nonnull %log, i32 noundef %cond25)
  %conv27 = trunc i32 %call26 to i16
  %sext = shl i32 %call26, 16
  %conv28 = ashr exact i32 %sext, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp = icmp slt i32 %sext, 0
  br i1 %cmp, label %if.end16.out_crit_edge, label %if.end37, !prof !118

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end37:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv27)
  %tobool38.not = icmp eq i16 %conv27, 0
  br i1 %tobool38.not, label %if.then39, label %if.end60

if.then39:                                        ; preds = %if.end37
  %37 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %busyloop_intr, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool40.not = icmp eq i8 %38, 0
  br i1 %tobool40.not, label %if.else, label %if.then47, !prof !113

if.then47:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %poll = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 11
  call void @vhost_poll_queue(ptr noundef %poll) #9
  br label %out

if.else:                                          ; preds = %if.then39
  %call49 = call zeroext i1 @vhost_enable_notify(ptr noundef %net, ptr noundef %vqs) #9
  br i1 %call49, label %if.then56, label %if.else.out_crit_edge, !prof !118

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @vhost_disable_notify(ptr noundef %net, ptr noundef %vqs) #9
  br label %do.cond234

if.end60:                                         ; preds = %if.end37
  %39 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %busyloop_intr, align 1
  %40 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_ring, align 4
  %tobool61.not = icmp eq ptr %41, null
  br i1 %tobool61.not, label %if.end60.if.end64_crit_edge, label %if.then62

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then62:                                        ; preds = %if.end60
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail.i.i, align 4
  %44 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.not.i.i = icmp eq i32 %43, %45
  br i1 %cmp.not.i.i, label %if.then62.vhost_net_buf_consume.exit_crit_edge, label %if.then.i.i358

if.then62.vhost_net_buf_consume.exit_crit_edge:   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_buf_consume.exit

if.then.i.i358:                                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rxq, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %47, i32 %45
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  br label %vhost_net_buf_consume.exit

vhost_net_buf_consume.exit:                       ; preds = %if.then.i.i358, %if.then62.vhost_net_buf_consume.exit_crit_edge
  %retval.0.i.i = phi ptr [ %49, %if.then.i.i358 ], [ null, %if.then62.vhost_net_buf_consume.exit_crit_edge ]
  %inc.i = add i32 %45, 1
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc.i, ptr %head.i.i, align 4
  %51 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i.i, ptr %21, align 8
  br label %if.end64

if.end64:                                         ; preds = %vhost_net_buf_consume.exit, %if.end60.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %sext)
  %cmp66 = icmp ugt i32 %sext, 67108864
  br i1 %cmp66, label %if.then74, label %if.end87, !prof !118

if.then74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  call void @iov_iter_init(ptr noundef %msg_iter88, i32 noundef 0, ptr noundef %iov89, i32 noundef 1, i32 noundef 1) #9
  %52 = ptrtoint ptr %ops102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops102, align 4
  %recvmsg = getelementptr inbounds %struct.proto_ops, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %recvmsg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %recvmsg, align 4
  %call75 = call i32 %55(ptr noundef nonnull %10, ptr noundef nonnull %msg, i32 noundef 1, i32 noundef 96) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_rx.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_rx, %if.then85)) #9
          to label %do.cond234 [label %if.then85], !srcloc !124

if.then85:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_rx.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.25, i32 noundef %add) #9
  br label %do.cond234

if.end87:                                         ; preds = %if.end64
  %56 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in, align 4
  call void @iov_iter_init(ptr noundef %msg_iter88, i32 noundef 0, ptr noundef %iov89, i32 noundef %57, i32 noundef %add17) #9
  %58 = call ptr @memcpy(ptr %fixup, ptr %msg_iter88, i32 24)
  br i1 %tobool92.not, label %if.end87.if.end101_crit_edge, label %if.then99, !prof !113

if.end87.if.end101_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then99:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  call void @iov_iter_advance(ptr noundef %msg_iter88, i32 noundef %14) #9
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end87.if.end101_crit_edge
  %59 = ptrtoint ptr %ops102 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops102, align 4
  %recvmsg103 = getelementptr inbounds %struct.proto_ops, ptr %60, i32 0, i32 17
  %61 = ptrtoint ptr %recvmsg103 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %recvmsg103, align 4
  %call104 = call i32 %62(ptr noundef nonnull %10, ptr noundef nonnull %msg, i32 noundef %add, i32 noundef 96) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call104, i32 %add)
  %cmp105.not = icmp eq i32 %call104, %add
  br i1 %cmp105.not, label %if.end131, label %do.body114, !prof !113

do.body114:                                       ; preds = %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_rx.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_rx, %if.then126)) #9
          to label %do.end129 [label %if.then126], !srcloc !124

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_rx.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.26, i32 noundef %call104, i32 noundef %add) #9
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.body114
  call void @vhost_discard_vq_desc(ptr noundef %vqs, i32 noundef %conv28) #9
  br label %do.cond234

if.end131:                                        ; preds = %if.end101
  br i1 %tobool92.not, label %if.else171, label %copy_to_iter.exit, !prof !113

copy_to_iter.exit:                                ; preds = %if.end131
  %call3.i = call i32 @_copy_to_iter(ptr noundef nonnull %hdr, i32 noundef 10, ptr noundef nonnull %fixup) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call3.i)
  %cmp141.not = icmp eq i32 %call3.i, 10
  br i1 %cmp141.not, label %copy_to_iter.exit.if.end172_crit_edge, label %do.body145

copy_to_iter.exit.if.end172_crit_edge:            ; preds = %copy_to_iter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

do.body145:                                       ; preds = %copy_to_iter.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_rx.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_rx, %if.then157)) #9
          to label %do.end162 [label %if.then157], !srcloc !124

if.then157:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %iov89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iov89, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_rx.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.27, ptr noundef %64) #9
  br label %do.end162

do.end162:                                        ; preds = %if.then157, %do.body145
  %error_ctx = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 9
  %65 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %error_ctx, align 4
  %tobool163.not = icmp eq ptr %66, null
  br i1 %tobool163.not, label %do.end162.out_crit_edge, label %if.then164

do.end162.out_crit_edge:                          ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then164:                                       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #11
  %call166 = call i64 @eventfd_signal(ptr noundef nonnull %66, i64 noundef 1) #9
  br label %out

if.else171:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  call void @iov_iter_advance(ptr noundef nonnull %fixup, i32 noundef 10) #9
  br label %if.end172

if.end172:                                        ; preds = %if.else171, %copy_to_iter.exit.if.end172_crit_edge
  %67 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_le.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.i.not.i = icmp eq i8 %68, 0
  %69 = call i16 @llvm.bswap.i16(i16 %conv27) #9
  %retval.0.i.i359 = select i1 %tobool.i.not.i, i16 %conv27, i16 %69
  %70 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %retval.0.i.i359, ptr %num_buffers, align 2
  br i1 %tobool.i354.not, label %if.end172.if.end211_crit_edge, label %copy_to_iter.exit348, !prof !118

if.end172.if.end211_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

copy_to_iter.exit348:                             ; preds = %if.end172
  %call3.i346 = call i32 @_copy_to_iter(ptr noundef nonnull %num_buffers, i32 noundef 2, ptr noundef nonnull %fixup) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3.i346)
  %cmp182.not = icmp eq i32 %call3.i346, 2
  br i1 %cmp182.not, label %copy_to_iter.exit348.if.end211_crit_edge, label %do.body186

copy_to_iter.exit348.if.end211_crit_edge:         ; preds = %copy_to_iter.exit348
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

do.body186:                                       ; preds = %copy_to_iter.exit348
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_rx.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_rx, %if.then198)) #9
          to label %do.end201 [label %if.then198], !srcloc !124

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_rx.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.28) #9
  br label %do.end201

do.end201:                                        ; preds = %if.then198, %do.body186
  %error_ctx202 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 9
  %71 = ptrtoint ptr %error_ctx202 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %error_ctx202, align 4
  %tobool203.not = icmp eq ptr %72, null
  br i1 %tobool203.not, label %do.end201.do.end209_crit_edge, label %if.then204

do.end201.do.end209_crit_edge:                    ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end209

if.then204:                                       ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #11
  %call206 = call i64 @eventfd_signal(ptr noundef nonnull %72, i64 noundef 1) #9
  br label %do.end209

do.end209:                                        ; preds = %if.then204, %do.end201.do.end209_crit_edge
  call void @vhost_discard_vq_desc(ptr noundef %vqs, i32 noundef %conv28) #9
  br label %out

if.end211:                                        ; preds = %copy_to_iter.exit348.if.end211_crit_edge, %if.end172.if.end211_crit_edge
  %73 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %done_idx.i.i, align 4
  %add214 = add i32 %74, %conv28
  store i32 %add214, ptr %done_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add214)
  %cmp216 = icmp sgt i32 %add214, 64
  br i1 %cmp216, label %if.then218, label %if.end211.if.end219_crit_edge

if.end211.if.end219_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then218:                                       ; preds = %if.end211
  %75 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %done_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i360 = icmp eq i32 %76, 0
  br i1 %tobool.not.i360, label %if.then218.if.end219_crit_edge, label %if.end.i361

if.then218.if.end219_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.end.i361:                                      ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vqs, align 8
  %79 = ptrtoint ptr %heads.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %heads.i.i, align 4
  call void @vhost_add_used_and_signal_n(ptr noundef %78, ptr noundef %vqs, ptr noundef %80, i32 noundef %76) #9
  %81 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %done_idx.i.i, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.end.i361, %if.then218.if.end219_crit_edge, %if.end211.if.end219_crit_edge
  br i1 %tobool220.not, label %if.end219.if.end232_crit_edge, label %if.then227, !prof !113

if.end219.if.end232_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232

if.then227:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %log, align 4
  %conv228 = zext i32 %add17 to i64
  %call231 = call i32 @vhost_log_write(ptr noundef %vqs, ptr noundef nonnull %cond, i32 noundef %83, i64 noundef %conv228, ptr noundef %iov89, i32 noundef %57) #9
  br label %if.end232

if.end232:                                        ; preds = %if.then227, %if.end219.if.end232_crit_edge
  %add233 = add i32 %add17, %total_len.0
  br label %do.cond234

do.cond234:                                       ; preds = %if.end232, %do.end129, %if.then85, %if.then74, %if.then56
  %total_len.1 = phi i32 [ %total_len.0, %if.then85 ], [ %total_len.0, %do.end129 ], [ %add233, %if.end232 ], [ %total_len.0, %if.then56 ], [ %total_len.0, %if.then74 ]
  %inc = add i32 %recv_pkts.0, 1
  %call235 = call zeroext i1 @vhost_exceeds_weight(ptr noundef %vqs, i32 noundef %inc, i32 noundef %total_len.1) #9
  br i1 %call235, label %do.cond234.do.end244_crit_edge, label %do.cond234.do.body_crit_edge, !prof !118

do.cond234.do.body_crit_edge:                     ; preds = %do.cond234
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond234.do.end244_crit_edge:                   ; preds = %do.cond234
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end244

do.end244:                                        ; preds = %do.cond234.do.end244_crit_edge, %vhost_net_rx_peek_head_len.exit.do.end244_crit_edge, %land.lhs.true.i.do.end244_crit_edge
  %sock_len.0 = phi i32 [ %add, %do.cond234.do.end244_crit_edge ], [ 0, %vhost_net_rx_peek_head_len.exit.do.end244_crit_edge ], [ 0, %land.lhs.true.i.do.end244_crit_edge ]
  %84 = ptrtoint ptr %busyloop_intr to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %busyloop_intr, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool245.not = icmp eq i8 %85, 0
  br i1 %tobool245.not, label %if.else254, label %if.then252, !prof !113

if.then252:                                       ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #11
  %poll253 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 11
  call void @vhost_poll_queue(ptr noundef %poll253) #9
  br label %out

if.else254:                                       ; preds = %do.end244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sock_len.0)
  %tobool255.not = icmp eq i32 %sock_len.0, 0
  br i1 %tobool255.not, label %if.then256, label %if.else254.out_crit_edge

if.else254.out_crit_edge:                         ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then256:                                       ; preds = %if.else254
  %86 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %private_data.i, align 8
  %tobool.not.i363 = icmp eq ptr %87, null
  br i1 %tobool.not.i363, label %if.then256.out_crit_edge, label %if.end.i368

if.then256.out_crit_edge:                         ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i368:                                      ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #11
  %poll1.i364 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 2
  %file.i = getelementptr inbounds %struct.socket, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %file.i, align 4
  %call4.i = call i32 @vhost_poll_start(ptr noundef %poll1.i364, ptr noundef %89) #9
  br label %out

out:                                              ; preds = %if.end.i368, %if.then256.out_crit_edge, %if.else254.out_crit_edge, %if.then252, %do.end209, %if.then164, %do.end162.out_crit_edge, %if.else.out_crit_edge, %if.then47, %if.end16.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %done_idx.i370 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 4
  %90 = ptrtoint ptr %done_idx.i370 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %done_idx.i370, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i371 = icmp eq i32 %91, 0
  br i1 %tobool.not.i371, label %out.vhost_net_signal_used.exit374_crit_edge, label %if.end.i373

out.vhost_net_signal_used.exit374_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_signal_used.exit374

if.end.i373:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vqs, align 8
  %heads.i372 = getelementptr inbounds %struct.vhost_net, ptr %net, i32 0, i32 1, i32 0, i32 0, i32 24
  %94 = ptrtoint ptr %heads.i372 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %heads.i372, align 4
  call void @vhost_add_used_and_signal_n(ptr noundef %93, ptr noundef %vqs, ptr noundef %95, i32 noundef %91) #9
  %96 = ptrtoint ptr %done_idx.i370 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %done_idx.i370, align 4
  br label %vhost_net_signal_used.exit374

vhost_net_signal_used.exit374:                    ; preds = %if.end.i373, %out.vhost_net_signal_used.exit374_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_buffers) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fixup) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %busyloop_intr) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %hdr) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %log) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_rx_bufs(ptr noundef %vq, ptr nocapture noundef writeonly %heads, i32 noundef %datalen, ptr nocapture noundef writeonly %iovcount, ptr noundef %log, ptr noundef %log_num, i32 noundef %quota) unnamed_addr #0 align 64 {
entry:
  %out = alloca i32, align 4
  %in = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #9
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %out, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #9
  %1 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %in, align 4, !annotation !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datalen)
  %cmp153 = icmp sgt i32 %datalen, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota)
  %cmp1154 = icmp ne i32 %quota, 0
  %or.cond155 = and i1 %cmp153, %cmp1154
  br i1 %or.cond155, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %iov = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21
  %num = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 2
  %is_le.i.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 33
  br label %while.body

while.body:                                       ; preds = %iov_length.exit.while.body_crit_edge, %while.body.lr.ph
  %datalen.addr.0160 = phi i32 [ %datalen, %while.body.lr.ph ], [ %sub62, %iov_length.exit.while.body_crit_edge ]
  %nlogs.0159 = phi i32 [ 0, %while.body.lr.ph ], [ %nlogs.1, %iov_length.exit.while.body_crit_edge ]
  %headcount.0158 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %iov_length.exit.while.body_crit_edge ]
  %seg.0157 = phi i32 [ 0, %while.body.lr.ph ], [ %add63, %iov_length.exit.while.body_crit_edge ]
  %log.addr.0156 = phi ptr [ %log, %while.body.lr.ph ], [ %log.addr.1, %iov_length.exit.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %seg.0157)
  %cmp2 = icmp sgt i32 %seg.0157, 1023
  br i1 %cmp2, label %while.body.err_crit_edge, label %if.end, !prof !118

while.body.err_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr %struct.iovec, ptr %iov, i32 %seg.0157
  %sub = sub i32 1024, %seg.0157
  %call = call i32 @vhost_get_vq_desc(ptr noundef %vq, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %out, ptr noundef nonnull %in, ptr noundef %log.addr.0156, ptr noundef %log_num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end.err_crit_edge, label %if.end12, !prof !118

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end12:                                         ; preds = %if.end
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp13 = icmp eq i32 %call, %3
  br i1 %cmp13, label %if.end12.err_crit_edge, label %if.end15

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end15:                                         ; preds = %if.end12
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %lor.rhs, label %if.end15.do.body25_crit_edge, !prof !113

if.end15.do.body25_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

lor.rhs:                                          ; preds = %if.end15
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17 = icmp eq i32 %7, 0
  br i1 %cmp17, label %lor.rhs.do.body25_crit_edge, label %if.end43, !prof !118

lor.rhs.do.body25_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

do.body25:                                        ; preds = %lor.rhs.do.body25_crit_edge, %if.end15.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_rx_bufs.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_rx_bufs, %if.then34)) #9
          to label %do.end [label %if.then34], !srcloc !124

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  %10 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_rx_bufs.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.30, i32 noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body25
  %error_ctx = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %12 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %error_ctx, align 4
  %tobool36.not = icmp eq ptr %13, null
  br i1 %tobool36.not, label %do.end.err_crit_edge, label %if.then37

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call i64 @eventfd_signal(ptr noundef nonnull %13, i64 noundef 1) #9
  br label %err

if.end43:                                         ; preds = %lor.rhs
  %tobool44.not = icmp eq ptr %log.addr.0156, null
  br i1 %tobool44.not, label %if.end43.if.end53_crit_edge, label %if.then51, !prof !113

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %log_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %log_num, align 4
  %add = add i32 %15, %nlogs.0159
  %add.ptr52 = getelementptr %struct.vhost_log, ptr %log.addr.0156, i32 %15
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end43.if.end53_crit_edge
  %log.addr.1 = phi ptr [ %add.ptr52, %if.then51 ], [ null, %if.end43.if.end53_crit_edge ]
  %nlogs.1 = phi i32 [ %add, %if.then51 ], [ %nlogs.0159, %if.end43.if.end53_crit_edge ]
  %16 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_le.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not.i = icmp eq i8 %17, 0
  %18 = call i32 @llvm.bswap.i32(i32 %call) #9
  %retval.0.i.i = select i1 %tobool.i.not.i, i32 %call, i32 %18
  %arrayidx = getelementptr %struct.vring_used_elem, ptr %heads, i32 %headcount.0158
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.i, ptr %arrayidx, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end53
  %ret.06.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end53 ]
  %seg.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end53 ]
  %iov_len.i = getelementptr %struct.iovec, ptr %add.ptr, i32 %seg.05.i, i32 1
  %20 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %21, %ret.06.i
  %inc.i = add nuw i32 %seg.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %iov_length.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

iov_length.exit:                                  ; preds = %for.body.i
  %22 = ptrtoint ptr %is_le.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_le.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i132 = icmp eq i8 %23, 0
  %24 = call i32 @llvm.bswap.i32(i32 %add.i) #9
  %retval.0.i.i133 = select i1 %tobool.i.not.i132, i32 %add.i, i32 %24
  %len61 = getelementptr %struct.vring_used_elem, ptr %heads, i32 %headcount.0158, i32 1
  %25 = ptrtoint ptr %len61 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.i133, ptr %len61, align 4
  %sub62 = sub i32 %datalen.addr.0160, %add.i
  %inc = add nuw i32 %headcount.0158, 1
  %add63 = add i32 %7, %seg.0157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62)
  %cmp = icmp sgt i32 %sub62, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %quota)
  %cmp1 = icmp ult i32 %inc, %quota
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %iov_length.exit.while.body_crit_edge, label %iov_length.exit.while.end_crit_edge

iov_length.exit.while.end_crit_edge:              ; preds = %iov_length.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

iov_length.exit.while.body_crit_edge:             ; preds = %iov_length.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %iov_length.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %log.addr.0.lcssa = phi ptr [ %log, %entry.while.end_crit_edge ], [ %log.addr.1, %iov_length.exit.while.end_crit_edge ]
  %seg.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add63, %iov_length.exit.while.end_crit_edge ]
  %headcount.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %iov_length.exit.while.end_crit_edge ]
  %nlogs.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %nlogs.1, %iov_length.exit.while.end_crit_edge ]
  %len.0.lcssa = phi i32 [ -1, %entry.while.end_crit_edge ], [ %add.i, %iov_length.exit.while.end_crit_edge ]
  %datalen.addr.0.lcssa = phi i32 [ %datalen, %entry.while.end_crit_edge ], [ %sub62, %iov_length.exit.while.end_crit_edge ]
  %cmp.lcssa = phi i1 [ %cmp153, %entry.while.end_crit_edge ], [ %cmp, %iov_length.exit.while.end_crit_edge ]
  %add64 = add i32 %datalen.addr.0.lcssa, %len.0.lcssa
  %is_le.i.i134 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 33
  %26 = ptrtoint ptr %is_le.i.i134 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_le.i.i134, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.not.i135 = icmp eq i8 %27, 0
  %28 = call i32 @llvm.bswap.i32(i32 %add64) #9
  %retval.0.i.i136 = select i1 %tobool.i.not.i135, i32 %add64, i32 %28
  %sub66 = add i32 %headcount.0.lcssa, -1
  %len68 = getelementptr %struct.vring_used_elem, ptr %heads, i32 %sub66, i32 1
  %29 = ptrtoint ptr %len68 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i136, ptr %len68, align 4
  %30 = ptrtoint ptr %iovcount to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %seg.0.lcssa, ptr %iovcount, align 4
  %tobool69.not = icmp eq ptr %log.addr.0.lcssa, null
  br i1 %tobool69.not, label %while.end.if.end77_crit_edge, label %if.then76, !prof !113

while.end.if.end77_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then76:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %log_num to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %nlogs.0.lcssa, ptr %log_num, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %while.end.if.end77_crit_edge
  br i1 %cmp.lcssa, label %if.end77.err_crit_edge, label %if.end77.cleanup_crit_edge, !prof !118

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77.err_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

err:                                              ; preds = %if.end77.err_crit_edge, %if.then37, %do.end.err_crit_edge, %if.end12.err_crit_edge, %if.end.err_crit_edge, %while.body.err_crit_edge
  %headcount.0148 = phi i32 [ %headcount.0158, %if.then37 ], [ %headcount.0158, %do.end.err_crit_edge ], [ %headcount.0.lcssa, %if.end77.err_crit_edge ], [ %headcount.0158, %if.end.err_crit_edge ], [ %headcount.0158, %while.body.err_crit_edge ], [ %headcount.0158, %if.end12.err_crit_edge ]
  %r.0 = phi i32 [ -22, %if.then37 ], [ -22, %do.end.err_crit_edge ], [ 1025, %if.end77.err_crit_edge ], [ 0, %if.end12.err_crit_edge ], [ -105, %while.body.err_crit_edge ], [ %call, %if.end.err_crit_edge ]
  call void @vhost_discard_vq_desc(ptr noundef %vq, i32 noundef %headcount.0148) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end77.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err ], [ %headcount.0.lcssa, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_log_write(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @peek_head_len(ptr nocapture noundef %rvq, ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %rvq, i32 0, i32 8
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  %rxq1.i = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %rvq, i32 0, i32 9
  %tail.i.i = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %rvq, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.vhost_net_virtqueue, ptr %rvq, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not.i = icmp eq i32 %3, %5
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.out.i_crit_edge

if.then.out.i_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %head.i.i, align 4
  %7 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxq1.i, align 4
  %consumer_lock.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i.i.i) #9
  %size.i.i.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 7
  %queue.i.i.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 9
  %consumer_head.i.i.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 3
  %consumer_tail.i.i.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 4
  %batch.i.i.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 8
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %__ptr_ring_consume.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i
  %i.03.i.i.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i.i.i, %__ptr_ring_consume.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %size.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i.i.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %for.body.i.i.i.i.vhost_net_buf_produce.exit.i_crit_edge, label %__ptr_ring_peek.exit.i.i.i.i.i, !prof !118

for.body.i.i.i.i.vhost_net_buf_produce.exit.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_buf_produce.exit.i

__ptr_ring_peek.exit.i.i.i.i.i:                   ; preds = %for.body.i.i.i.i
  %11 = ptrtoint ptr %queue.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue.i.i.i.i.i.i, align 8
  %13 = ptrtoint ptr %consumer_head.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %consumer_head.i.i.i.i.i.i, align 128
  %arrayidx.i.i.i.i.i.i = getelementptr ptr, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i.i.i, label %__ptr_ring_peek.exit.i.i.i.i.i.vhost_net_buf_produce.exit.i_crit_edge, label %if.then.i.i.i.i.i

__ptr_ring_peek.exit.i.i.i.i.i.vhost_net_buf_produce.exit.i_crit_edge: ; preds = %__ptr_ring_peek.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhost_net_buf_produce.exit.i

if.then.i.i.i.i.i:                                ; preds = %__ptr_ring_peek.exit.i.i.i.i.i
  %inc.i.i.i.i.i.i = add i32 %14, 1
  %17 = ptrtoint ptr %consumer_tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %consumer_tail.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = sub i32 %inc.i.i.i.i.i.i, %18
  %19 = ptrtoint ptr %batch.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %batch.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.i.i, i32 %20)
  %cmp.not.i.i.i.i.i.i = icmp slt i32 %sub.i.i.i.i.i.i, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i.i.i, i32 %10)
  %cmp2.not.i.i.i.i.i.i = icmp slt i32 %inc.i.i.i.i.i.i, %10
  %or.cond.i.i.i.i.i = select i1 %cmp.not.i.i.i.i.i.i, i1 %cmp2.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.i.i, !prof !130

if.then.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge:   ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i.i.i

while.cond.preheader.i.i.i.i.i.i:                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp5.not46.i.i.i.i.i.i = icmp slt i32 %14, %18
  br i1 %cmp5.not46.i.i.i.i.i.i, label %while.cond.preheader.i.i.i.i.i.i.while.end.i.i.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, !prof !118

while.cond.preheader.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i.i.i
  br label %while.body.i.i.i.i.i.i

while.cond.preheader.i.i.i.i.i.i.while.end.i.i.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge
  %head.047.i.i.i.i.i.i = phi i32 [ %dec.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %14, %while.cond.preheader.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %queue.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i = add i32 %head.047.i.i.i.i.i.i, -1
  %arrayidx.i5.i.i.i.i.i = getelementptr ptr, ptr %22, i32 %head.047.i.i.i.i.i.i
  %23 = ptrtoint ptr %arrayidx.i5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.i5.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %consumer_tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %consumer_tail.i.i.i.i.i.i, align 4
  %cmp5.not.i.i.i.i.i.i = icmp slt i32 %dec.i.i.i.i.i.i, %25
  br i1 %cmp5.not.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.while.end.i.i.i.i.i.i_crit_edge, label %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, !prof !118

while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i.i.i.i

while.body.i.i.i.i.i.i.while.end.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i.i.i.i

while.end.i.i.i.i.i.i:                            ; preds = %while.body.i.i.i.i.i.i.while.end.i.i.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.i.i.while.end.i.i.i.i.i.i_crit_edge
  %26 = ptrtoint ptr %consumer_tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc.i.i.i.i.i.i, ptr %consumer_tail.i.i.i.i.i.i, align 4
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %while.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %27 = ptrtoint ptr %size.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i.i.i, i32 %28)
  %cmp14.not.i.i.i.i.i.i = icmp slt i32 %inc.i.i.i.i.i.i, %28
  br i1 %cmp14.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.__ptr_ring_consume.exit.i.i.i.i_crit_edge, label %if.then21.i.i.i.i.i.i, !prof !113

if.end.i.i.i.i.i.i.__ptr_ring_consume.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ptr_ring_consume.exit.i.i.i.i

if.then21.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %consumer_tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %consumer_tail.i.i.i.i.i.i, align 4
  br label %__ptr_ring_consume.exit.i.i.i.i

__ptr_ring_consume.exit.i.i.i.i:                  ; preds = %if.then21.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.__ptr_ring_consume.exit.i.i.i.i_crit_edge
  %consumer_head.0.i.i.i.i.i.i = phi i32 [ 0, %if.then21.i.i.i.i.i.i ], [ %inc.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.__ptr_ring_consume.exit.i.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %consumer_head.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %consumer_head.0.i.i.i.i.i.i, ptr %consumer_head.i.i.i.i.i.i, align 128
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %8, i32 %i.03.i.i.i.i
  %31 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %16, ptr %arrayidx.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 64
  br i1 %exitcond.not.i.i.i.i, label %vhost_net_buf_produce.exit.thread.i, label %__ptr_ring_consume.exit.i.i.i.i.for.body.i.i.i.i_crit_edge

__ptr_ring_consume.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %__ptr_ring_consume.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

vhost_net_buf_produce.exit.thread.i:              ; preds = %__ptr_ring_consume.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i.i.i) #9
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 64, ptr %tail.i.i, align 4
  br label %out.i

vhost_net_buf_produce.exit.i:                     ; preds = %__ptr_ring_peek.exit.i.i.i.i.i.vhost_net_buf_produce.exit.i_crit_edge, %for.body.i.i.i.i.vhost_net_buf_produce.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i.i.i) #9
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.03.i.i.i.i, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03.i.i.i.i)
  %tobool3.not.i = icmp eq i32 %i.03.i.i.i.i, 0
  br i1 %tobool3.not.i, label %vhost_net_buf_produce.exit.i.cleanup_crit_edge, label %vhost_net_buf_produce.exit.i.out.i_crit_edge

vhost_net_buf_produce.exit.i.out.i_crit_edge:     ; preds = %vhost_net_buf_produce.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

vhost_net_buf_produce.exit.i.cleanup_crit_edge:   ; preds = %vhost_net_buf_produce.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out.i:                                            ; preds = %vhost_net_buf_produce.exit.i.out.i_crit_edge, %vhost_net_buf_produce.exit.thread.i, %if.then.out.i_crit_edge
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail.i.i, align 4
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.not.i.i = icmp eq i32 %35, %37
  br i1 %cmp.not.i.i, label %out.i.cleanup_crit_edge, label %vhost_net_buf_get_ptr.exit.i

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vhost_net_buf_get_ptr.exit.i:                     ; preds = %out.i
  %38 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rxq1.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %39, i32 %37
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  %and.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.then.i15.i

if.then.i15.i:                                    ; preds = %vhost_net_buf_get_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i5.i.i = and i32 %42, -2
  %43 = inttoptr i32 %and.i5.i.i to ptr
  %len.i.i = getelementptr inbounds %struct.xdp_frame, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len.i.i, align 4
  %conv.i14.i = zext i16 %45 to i32
  br label %cleanup

if.end.i.i:                                       ; preds = %vhost_net_buf_get_ptr.exit.i
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then.i.i.i, !prof !118

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %len3.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 6
  %46 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len3.i.i.i, align 4
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 15, i32 0, i32 3
  %48 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %add.i.i.i = add i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i)
  %tobool4.not9.i.i.i = icmp slt i32 %bf.load.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool4.not9.i.i.i, i32 %add.i.i.i, i32 %47
  br label %cleanup

do.body1:                                         ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %49 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %50, %sk_receive_queue
  %tobool8.not27 = icmp eq ptr %50, null
  %tobool8.not = or i1 %cmp.i, %tobool8.not27
  br i1 %tobool8.not, label %do.body1.if.end16_crit_edge, label %if.then11, !prof !118

do.body1.if.end16_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len12, align 4
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 15, i32 0, i32 3
  %53 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  %add = add i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load)
  %tobool13.not28 = icmp slt i32 %bf.load, 0
  %spec.select = select i1 %tobool13.not28, i32 %add, i32 %52
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %do.body1.if.end16_crit_edge
  %len.0 = phi i32 [ 0, %do.body1.if.end16_crit_edge ], [ %spec.select, %if.then11 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then.i.i.i, %if.end.i.i.cleanup_crit_edge, %if.then.i15.i, %out.i.cleanup_crit_edge, %vhost_net_buf_produce.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.0, %if.end16 ], [ 0, %vhost_net_buf_produce.exit.i.cleanup_crit_edge ], [ %conv.i14.i, %if.then.i15.i ], [ %spec.select.i.i.i, %if.then.i.i.i ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %out.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !47, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__param_experimental_zcopytx, !1, !"__param_experimental_zcopytx", i1 false, i1 false}
!1 = !{!"../drivers/vhost/net.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_experimental_zcopytxtype530, !1, !"__UNIQUE_ID_experimental_zcopytxtype530", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_experimental_zcopytx531, !4, !"__UNIQUE_ID_experimental_zcopytx531", i1 false, i1 false}
!4 = !{!"../drivers/vhost/net.c", i32 40, i32 1}
!5 = !{ptr @__initcall__kmod_vhost_net__550_1797_vhost_net_init6, !6, !"__initcall__kmod_vhost_net__550_1797_vhost_net_init6", i1 false, i1 false}
!6 = !{!"../drivers/vhost/net.c", i32 1797, i32 1}
!7 = !{ptr @__exitcall_vhost_net_exit, !8, !"__exitcall_vhost_net_exit", i1 false, i1 false}
!8 = !{!"../drivers/vhost/net.c", i32 1803, i32 1}
!9 = !{ptr @__UNIQUE_ID_version551, !10, !"__UNIQUE_ID_version551", i1 false, i1 false}
!10 = !{!"../drivers/vhost/net.c", i32 1805, i32 1}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__modver_attr, !10, !"__modver_attr", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_file552, !16, !"__UNIQUE_ID_file552", i1 false, i1 false}
!16 = !{!"../drivers/vhost/net.c", i32 1806, i32 1}
!17 = !{ptr @__UNIQUE_ID_license553, !16, !"__UNIQUE_ID_license553", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author554, !19, !"__UNIQUE_ID_author554", i1 false, i1 false}
!19 = !{!"../drivers/vhost/net.c", i32 1807, i32 1}
!20 = !{ptr @__UNIQUE_ID_description555, !21, !"__UNIQUE_ID_description555", i1 false, i1 false}
!21 = !{!"../drivers/vhost/net.c", i32 1808, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias556, !23, !"__UNIQUE_ID_alias556", i1 false, i1 false}
!23 = !{!"../drivers/vhost/net.c", i32 1809, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias557, !25, !"__UNIQUE_ID_alias557", i1 false, i1 false}
!25 = !{!"../drivers/vhost/net.c", i32 1810, i32 1}
!26 = !{ptr @__param_str_experimental_zcopytx, !1, !"__param_str_experimental_zcopytx", i1 false, i1 false}
!27 = !{ptr @experimental_zcopytx, !28, !"experimental_zcopytx", i1 false, i1 false}
!28 = !{!"../drivers/vhost/net.c", i32 38, i32 12}
!29 = !{ptr @vhost_net_zcopy_mask, !30, !"vhost_net_zcopy_mask", i1 false, i1 false}
!30 = !{!"../drivers/vhost/net.c", i32 149, i32 17}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/vhost/net.c", i32 1787, i32 10}
!33 = !{ptr @vhost_net_misc, !34, !"vhost_net_misc", i1 false, i1 false}
!34 = !{!"../drivers/vhost/net.c", i32 1785, i32 26}
!35 = !{ptr @vhost_net_fops, !36, !"vhost_net_fops", i1 false, i1 false}
!36 = !{!"../drivers/vhost/net.c", i32 1773, i32 37}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!39 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!44 = !{ptr @vhost_net_ubuf_alloc.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/vhost/net.c", i32 244, i32 2}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/vhost/net.c", i32 260, i32 2}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/vhost/net.c", i32 946, i32 4}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @handle_tx_zerocopy.__UNIQUE_ID_ddebug543, !50, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/vhost/net.c", i32 948, i32 4}
!55 = !{ptr @handle_tx_zerocopy.__UNIQUE_ID_ddebug544, !54, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/vhost/net.c", i32 633, i32 3}
!58 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @get_tx_bufs.__UNIQUE_ID_ddebug537, !57, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/vhost/net.c", i32 641, i32 3}
!62 = !{ptr @get_tx_bufs.__UNIQUE_ID_ddebug538, !61, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/vhost/net.c", i32 478, i32 3}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vhost_tx_batch.__UNIQUE_ID_ddebug534, !64, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/mm.h", i32 717, i32 2}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!71 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!75 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/vhost/net.c", i32 843, i32 4}
!78 = !{ptr @handle_tx_copy.__UNIQUE_ID_ddebug541, !77, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/vhost/net.c", i32 845, i32 4}
!81 = !{ptr @handle_tx_copy.__UNIQUE_ID_ddebug542, !80, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/vhost/net.c", i32 1188, i32 4}
!86 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @handle_rx.__UNIQUE_ID_ddebug546, !85, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/vhost/net.c", i32 1206, i32 4}
!90 = !{ptr @handle_rx.__UNIQUE_ID_ddebug547, !89, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/vhost/net.c", i32 1215, i32 5}
!93 = !{ptr @handle_rx.__UNIQUE_ID_ddebug548, !92, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/vhost/net.c", i32 1231, i32 4}
!96 = !{ptr @handle_rx.__UNIQUE_ID_ddebug549, !95, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/vhost/net.c", i32 1073, i32 4}
!99 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @get_rx_bufs.__UNIQUE_ID_ddebug545, !98, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"auto-init"}
!112 = !{i64 2152306850, i64 2152306875}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 4802405}
!115 = !{i64 4802602}
!116 = !{i64 2152287835}
!117 = !{i64 2152307531, i64 2152307556}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i64 2148364103}
!120 = !{i64 2148278836, i64 2148278868, i64 2148278897, i64 2148278931, i64 2148278962, i64 2148278985}
!121 = !{i64 2148364332}
!122 = !{i8 0, i8 2}
!123 = !{i64 2148275651, i64 2148275677, i64 2148275706, i64 2148275740, i64 2148275771, i64 2148275794}
!124 = !{i64 2148975581, i64 2148975586, i64 2148975599, i64 2148975643, i64 2148975677, i64 2148975698}
!125 = !{i64 2158132859}
!126 = !{i64 2158133088}
!127 = !{i64 2158132930}
!128 = !{i64 2158133231}
!129 = !{i64 2153315463, i64 2153315946, i64 2153315500, i64 2153315556, i64 2153315590, i64 2153315614, i64 2153315655, i64 2153315676, i64 2153315704, i64 2153315738}
!130 = !{!"branch_weights", i32 4000000, i32 4001}
