; ModuleID = '/llk/IR_all_yes/net/can/isotp.c_pt.bc'
source_filename = "../net/can/isotp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.70, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.70 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.isotp_sock = type { %struct.sock, i32, i32, i32, i32, i64, i64, %struct.hrtimer, %struct.hrtimer, %struct.can_isotp_options, %struct.can_isotp_fc_options, %struct.can_isotp_fc_options, %struct.can_isotp_ll_options, i32, i32, %struct.tpcon, %struct.tpcon, %struct.list_head, %struct.wait_queue_head, %struct.spinlock }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.can_isotp_options = type { i32, i32, i8, i8, i8, i8 }
%struct.can_isotp_fc_options = type { i8, i8, i8 }
%struct.can_isotp_ll_options = type { i8, i8, i8 }
%struct.tpcon = type { i32, i32, i32, i8, i8, i8, [8201 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.144 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.sockaddr_can = type { i16, i32, %union.anon.146 }
%union.anon.146 = type { %struct.anon.148 }
%struct.anon.148 = type { i64, i32, i8 }
%struct.anon.147 = type { i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
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
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.149, i8, i8, i8, [8 x i8] }
%union.anon.149 = type { i8 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__UNIQUE_ID_description457 = internal constant [57 x i8] c"can_isotp.description=PF_CAN isotp 15765-2:2016 protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file458 = internal constant [33 x i8] c"can_isotp.file=net/can/can-isotp\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [31 x i8] c"can_isotp.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author460 = internal constant [58 x i8] c"can_isotp.author=Oliver Hartkopp <socketcan@hartkopp.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias461 = internal constant [28 x i8] c"can_isotp.alias=can-proto-6\00", section ".modinfo", align 1
@isotp_can_proto = internal constant { %struct.can_proto, [16 x i8] } { %struct.can_proto { i32 2, i32 6, ptr @isotp_ops, ptr @isotp_proto }, [16 x i8] zeroinitializer }, align 32
@canisotp_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @isotp_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_can_isotp__476_1537_isotp_module_init6 = internal global ptr @isotp_module_init, section ".initcall6.init", align 4
@__exitcall_isotp_module_exit = internal global ptr @isotp_module_exit, section ".exitcall.exit", align 4
@isotp_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 29, ptr null, ptr @isotp_release, ptr @isotp_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @isotp_getname, ptr @datagram_poll, ptr @isotp_sock_no_ioctlcmd, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @isotp_setsockopt, ptr @isotp_getsockopt, ptr null, ptr @isotp_sendmsg, ptr @isotp_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@isotp_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isotp_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 17656, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.70 zeroinitializer, ptr null, [32 x i8] c"CAN_ISOTP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, section ".data..read_mostly", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/can/isotp.c\00", [16 x i8] zeroinitializer }, align 32
@isotp_notifier_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@isotp_busy_notifier = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isotp_notifier_lock\00", [44 x i8] zeroinitializer }, align 32
@padlen.plen = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\08\08\08\08\08\08\08\08\08\0C\0C\0C\0C\10\10\10\10\14\14\14\14\18\18\18\18        0000000000000000", [47 x i8] zeroinitializer }, align 32
@isotp_send_fc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@isotp_send_fc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015can-isotp: %s: can_send_ret %pe\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isotp_send_fc\00", [18 x i8] zeroinitializer }, align 32
@isotp_send_fc._entry_ptr = internal global ptr @isotp_send_fc._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"isotp\00", [26 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@isotp_sendmsg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@isotp_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.8, ptr @.str, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isotp_sendmsg\00", [18 x i8] zeroinitializer }, align 32
@isotp_sendmsg._entry_ptr = internal global ptr @isotp_sendmsg._entry, section ".printk_index", align 4
@isotp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&so->wait\00", [22 x i8] zeroinitializer }, align 32
@isotp_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&so->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@isotp_notifier_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @isotp_notifier_list, ptr @isotp_notifier_list }, [24 x i8] zeroinitializer }, align 32
@isotp_tx_timer_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@isotp_tx_timer_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.12, ptr @.str, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isotp_tx_timer_handler\00", [41 x i8] zeroinitializer }, align 32
@isotp_tx_timer_handler._entry_ptr = internal global ptr @isotp_tx_timer_handler._entry, section ".printk_index", align 4
@isotp_tx_timer_handler.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@isotp_tx_timer_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015can-isotp: tx queue is full, increasing txqueuelen may prevent this error\0A\00", [51 x i8] zeroinitializer }, align 32
@isotp_tx_timer_handler._entry_ptr.16 = internal global ptr @isotp_tx_timer_handler._entry.14, section ".printk_index", align 4
@isotp_tx_timer_handler.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@isotp_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 1520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016can: isotp protocol\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isotp_module_init\00", [46 x i8] zeroinitializer }, align 32
@isotp_module_init._entry_ptr = internal global ptr @isotp_module_init._entry, section ".printk_index", align 4
@isotp_module_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013can: registration of isotp protocol failed %pe\0A\00", [46 x i8] zeroinitializer }, align 32
@isotp_module_init._entry_ptr.22 = internal global ptr @isotp_module_init._entry.20, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 72]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"isotp_can_proto\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1505, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"canisotp_notifier\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1512, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"isotp_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1477, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1055, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"isotp_notifier_lock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"isotp_busy_notifier\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 154, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 153, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [5 x i8] c"plen\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 262, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 230, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1167, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 230, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 214, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 156, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 977, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1460, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1461, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"isotp_notifier_list\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 152, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 816, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 819, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1520, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [19 x i8] c"../net/can/isotp.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1524, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias461, ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description457, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_license459, ptr @__exitcall_isotp_module_exit, ptr @__initcall__kmod_can_isotp__476_1537_isotp_module_init6, ptr @isotp_module_exit, ptr @isotp_module_init._entry, ptr @isotp_module_init._entry.20, ptr @isotp_module_init._entry_ptr, ptr @isotp_module_init._entry_ptr.22, ptr @isotp_send_fc._entry, ptr @isotp_send_fc._entry_ptr, ptr @isotp_sendmsg._entry, ptr @isotp_sendmsg._entry_ptr, ptr @isotp_tx_timer_handler._entry, ptr @isotp_tx_timer_handler._entry.14, ptr @isotp_tx_timer_handler._entry_ptr, ptr @isotp_tx_timer_handler._entry_ptr.16, ptr @isotp_can_proto, ptr @canisotp_notifier, ptr @isotp_ops, ptr @.str, ptr @isotp_notifier_lock, ptr @isotp_busy_notifier, ptr @.str.1, ptr @padlen.plen, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @isotp_init.__key, ptr @.str.9, ptr @isotp_init.__key.10, ptr @.str.11, ptr @isotp_notifier_list, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_can_proto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @canisotp_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_notifier_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_busy_notifier to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padlen.plen to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_send_fc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_notifier_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_tx_timer_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_tx_timer_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isotp_module_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isotp_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @can_proto_unregister(ptr noundef nonnull @isotp_can_proto) #14
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @canisotp_notifier) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #17
  %call1 = tail call i32 @can_proto_register(ptr noundef nonnull @isotp_can_proto) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end4, label %if.else

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = inttoptr i32 %call1 to ptr
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %0) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @canisotp_notifier) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.end:                                           ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1055) #14
  %state = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 16, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.if.end18_crit_edge, label %if.then6

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %wait = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 18
  %call879 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1180 = icmp eq i32 %8, 0
  br i1 %cmp1180, label %if.then6.for.end_crit_edge, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  br label %if.end13

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end13:                                         ; preds = %cleanup.if.end13_crit_edge, %if.then6.if.end13_crit_edge
  %call881 = phi i32 [ %call8, %cleanup.if.end13_crit_edge ], [ %call879, %if.then6.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call881)
  %tobool14.not = icmp eq i32 %call881, 0
  br i1 %tobool14.not, label %cleanup, label %if.end13.__out_crit_edge

if.end13.__out_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end13
  call void @schedule() #14
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  %cmp11 = icmp eq i32 %10, 0
  br i1 %cmp11, label %cleanup.for.end_crit_edge, label %cleanup.if.end13_crit_edge

cleanup.if.end13_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then6.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end13.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end18

if.end18:                                         ; preds = %__out, %if.end.if.end18_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @isotp_notifier_lock) #14
  %11 = load ptr, ptr @isotp_busy_notifier, align 4
  %cmp2082 = icmp eq ptr %11, %1
  br i1 %cmp2082, label %if.end18.while.body_crit_edge, label %if.end18.while.end_crit_edge

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end18.while.body_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @isotp_notifier_lock) #14
  %call21 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  call void @_raw_spin_lock(ptr noundef nonnull @isotp_notifier_lock) #14
  %12 = load ptr, ptr @isotp_busy_notifier, align 4
  %cmp20 = icmp eq ptr %12, %1
  br i1 %cmp20, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end18.while.end_crit_edge
  %notifier = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 17
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %notifier) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_del.exit_crit_edge

while.end.list_del.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %notifier, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %notifier, align 4
  %prev.i = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @isotp_notifier_lock) #14
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %bound = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not = icmp eq i32 %22, 0
  br i1 %tobool22.not, label %list_del.exit.if.end36_crit_edge, label %land.lhs.true

list_del.exit.if.end36_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.lhs.true:                                    ; preds = %list_del.exit
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %opt, align 8
  %and = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then24:                                        ; preds = %land.lhs.true
  %ifindex = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool25.not = icmp eq i32 %26, 0
  br i1 %tobool25.not, label %if.then24.if.end36_crit_edge, label %if.then26

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then26:                                        ; preds = %if.then24
  %call28 = call ptr @dev_get_by_index(ptr noundef %3, i32 noundef %26) #14
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then26.if.end36_crit_edge, label %do.body1.i

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

do.body1.i:                                       ; preds = %if.then26
  %rxid = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %rxid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool33.not = icmp sgt i32 %28, -1
  %cond = select i1 %tobool33.not, i32 -1073739777, i32 -536870913
  call void @can_rx_unregister(ptr noundef %3, ptr noundef nonnull %call28, i32 noundef %28, i32 noundef %cond, ptr noundef nonnull @isotp_rcv, ptr noundef nonnull %1) #14
  %29 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !89
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 118
  %30 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcpu_refcnt.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %38, %32
  %39 = inttoptr i32 %add.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add13.i = add i32 %41, -1
  store i32 %add13.i, ptr %39, align 4
  %42 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !90
  %and.i.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !91

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #14, !srcloc !92
  call void @synchronize_rcu() #14
  br label %if.end36

if.end36:                                         ; preds = %dev_put.exit, %if.then26.if.end36_crit_edge, %if.then24.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %list_del.exit.if.end36_crit_edge
  %txtimer = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 8
  %call37 = call i32 @hrtimer_cancel(ptr noundef %txtimer) #14
  %rxtimer = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 7
  %call38 = call i32 @hrtimer_cancel(ptr noundef %rxtimer) #14
  %ifindex39 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %ifindex39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ifindex39, align 4
  %44 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %bound, align 8
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #14
  %45 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %or.i.i.i = or i32 %47, 1
  store i32 %or.i.i.i, ptr %45, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %48 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %sk_socket.i.i, align 8
  %49 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %49, align 8
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #14
  %51 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %sk1, align 16
  call void @release_sock(ptr noundef nonnull %1) #14
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup42_crit_edge, label %if.then10.i.i.i.i, !prof !95

if.end5.i.i.i.i.cleanup42_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #14
  br label %cleanup42

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !96
  call void @sk_free(ptr noundef %1) #14
  br label %cleanup42

cleanup42:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %uaddr, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp ult i32 %len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_addr = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2
  %tx_id = getelementptr inbounds %struct.anon.147, ptr %can_addr, i32 0, i32 1
  %4 = ptrtoint ptr %tx_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_id, align 4
  %and = and i32 %5, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %6 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opt, align 8
  %and8 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then13, label %if.end7.if.end26_crit_edge

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then13:                                        ; preds = %if.end7
  %10 = ptrtoint ptr %can_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %can_addr, align 8
  %12 = ptrtoint ptr %tx_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp17 = icmp ne i32 %11, %13
  %and22 = and i32 %11, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond = and i1 %cmp17, %tobool23.not
  br i1 %or.cond, label %if.then13.if.end26_crit_edge, label %if.then13.out.thread_crit_edge

if.then13.out.thread_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.then13.if.end26_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end26:                                         ; preds = %if.then13.if.end26_crit_edge, %if.end7.if.end26_crit_edge
  %bound = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  br i1 %tobool27.not, label %if.end26.if.end40_crit_edge, label %land.lhs.true

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end26
  %16 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %can_ifindex, align 4
  %ifindex29 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %ifindex29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifindex29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp30 = icmp eq i32 %17, %19
  br i1 %cmp30, label %land.lhs.true31, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true31:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %can_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %can_addr, align 8
  %rxid = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %rxid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rxid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp34 = icmp eq i32 %21, %23
  br i1 %cmp34, label %land.lhs.true35, label %land.lhs.true31.if.end40_crit_edge

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %24 = ptrtoint ptr %tx_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_id, align 4
  %txid = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %txid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %txid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp38 = icmp eq i32 %25, %27
  br i1 %cmp38, label %land.lhs.true35.out.thread_crit_edge, label %land.lhs.true35.if.end40_crit_edge

land.lhs.true35.if.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true35.out.thread_crit_edge:             ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end40:                                         ; preds = %land.lhs.true35.if.end40_crit_edge, %land.lhs.true31.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.end26.if.end40_crit_edge
  %28 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %can_ifindex, align 4
  %call42 = tail call ptr @dev_get_by_index(ptr noundef %3, i32 noundef %29) #14
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end40.out.thread_crit_edge, label %if.end45

if.end40.out.thread_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end45:                                         ; preds = %if.end40
  %type = getelementptr inbounds %struct.net_device, ptr %call42, i32 0, i32 32
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %31)
  %cmp46.not = icmp eq i16 %31, 280
  br i1 %cmp46.not, label %if.end49, label %do.body1.i

do.body1.i:                                       ; preds = %if.end45
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !89
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call42, i32 0, i32 118
  %33 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcpu_refcnt.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add13.i = add i32 %44, -1
  store i32 %add13.i, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !90
  %and.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !91

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #14, !srcloc !92
  br label %out.thread

if.end49:                                         ; preds = %if.end45
  %mtu = getelementptr inbounds %struct.net_device, ptr %call42, i32 0, i32 20
  %46 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mtu, align 4
  %ll = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 12
  %48 = ptrtoint ptr %ll to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ll, align 2
  %conv51 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv51)
  %cmp52 = icmp ult i32 %47, %conv51
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @dev_put(ptr noundef nonnull %call42)
  br label %out.thread

if.end55:                                         ; preds = %if.end49
  %flags56 = getelementptr inbounds %struct.net_device, ptr %call42, i32 0, i32 14
  %50 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags56, align 8
  %and57 = and i32 %51, 1
  %ifindex61 = getelementptr inbounds %struct.net_device, ptr %call42, i32 0, i32 17
  %52 = ptrtoint ptr %ifindex61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ifindex61, align 4
  br i1 %tobool9.not, label %if.then63, label %if.end55.if.end71_crit_edge

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then63:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %can_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %can_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %tobool69.not = icmp sgt i32 %55, -1
  %cond = select i1 %tobool69.not, i32 -1073739777, i32 -536870913
  %call70 = tail call i32 @can_rx_register(ptr noundef %3, ptr noundef nonnull %call42, i32 noundef %55, i32 noundef %cond, ptr noundef nonnull @isotp_rcv, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %1) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then63, %if.end55.if.end71_crit_edge
  tail call fastcc void @dev_put(ptr noundef nonnull %call42)
  %56 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool73.not = icmp eq i32 %57, 0
  %tobool9.not.not = xor i1 %tobool9.not, true
  %brmerge = select i1 %tobool73.not, i1 true, i1 %tobool9.not.not
  br i1 %brmerge, label %if.end71.out_crit_edge, label %if.then76

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then76:                                        ; preds = %if.end71
  %ifindex77 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %ifindex77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ifindex77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool78.not = icmp eq i32 %59, 0
  br i1 %tobool78.not, label %if.then76.out_crit_edge, label %if.then79

if.then76.out_crit_edge:                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then79:                                        ; preds = %if.then76
  %call81 = tail call ptr @dev_get_by_index(ptr noundef %3, i32 noundef %59) #14
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.then79.out_crit_edge, label %if.then83

if.then79.out_crit_edge:                          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  %rxid84 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %rxid84 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rxid84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %tobool87.not = icmp sgt i32 %61, -1
  %cond88 = select i1 %tobool87.not, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef %3, ptr noundef nonnull %call81, i32 noundef %61, i32 noundef %cond88, ptr noundef nonnull @isotp_rcv, ptr noundef %1) #14
  tail call fastcc void @dev_put(ptr noundef nonnull %call81)
  br label %out

out.thread:                                       ; preds = %if.then54, %dev_put.exit, %if.end40.out.thread_crit_edge, %land.lhs.true35.out.thread_crit_edge, %if.then13.out.thread_crit_edge
  %err.0.ph = phi i32 [ -19, %if.end40.out.thread_crit_edge ], [ -99, %if.then13.out.thread_crit_edge ], [ -22, %if.then54 ], [ -19, %dev_put.exit ], [ 0, %land.lhs.true35.out.thread_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #14
  br label %cleanup

out:                                              ; preds = %if.then83, %if.then79.out_crit_edge, %if.then76.out_crit_edge, %if.end71.out_crit_edge
  %ifindex92 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %ifindex92 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %53, ptr %ifindex92, align 4
  %63 = ptrtoint ptr %can_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %can_addr, align 8
  %rxid95 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 4
  %65 = ptrtoint ptr %rxid95 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %rxid95, align 4
  %66 = ptrtoint ptr %tx_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_id, align 4
  %txid98 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %txid98 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %txid98, align 8
  %69 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %bound, align 8
  tail call void @release_sock(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool100.not.not = icmp eq i32 %and57, 0
  br i1 %tobool100.not.not, label %if.then101, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then101:                                       ; preds = %out
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %70 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 100, ptr %sk_err, align 4
  %71 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  %74 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not = icmp eq i32 %74, 0
  br i1 %tobool.i.not, label %if.then103, label %if.then101.cleanup_crit_edge

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then103:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sk_error_report(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %if.then101.cleanup_crit_edge, %out.cleanup_crit_edge, %out.thread, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ 0, %if.then101.cleanup_crit_edge ], [ 0, %if.then103 ], [ 0, %out.cleanup_crit_edge ], [ %err.0.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isotp_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = call ptr @memset(ptr %uaddr, i32 0, i32 16)
  %3 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 29, ptr %uaddr, align 8
  %ifindex = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %can_ifindex = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 1
  %6 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %can_ifindex, align 4
  %rxid = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %rxid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxid, align 4
  %can_addr = getelementptr inbounds %struct.sockaddr_can, ptr %uaddr, i32 0, i32 2
  %9 = ptrtoint ptr %can_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %can_addr, align 8
  %txid = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %txid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txid, align 8
  %tx_id = getelementptr inbounds %struct.anon.147, ptr %can_addr, i32 0, i32 1
  %12 = ptrtoint ptr %tx_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isotp_sock_no_ioctlcmd(ptr nocapture noundef readnone %sock, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -515
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #2 align 64 {
entry:
  %ll.i = alloca %struct.can_isotp_ll_options, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %level)
  %cmp.not = icmp eq i32 %level, 106
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  %bound.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bound.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.isotp_setsockopt_locked.exit_crit_edge

if.end.isotp_setsockopt_locked.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.end.i:                                         ; preds = %if.end
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %optname, label %if.end.i.isotp_setsockopt_locked.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb14.i
    i32 3, label %sw.bb22.i
    i32 4, label %sw.bb30.i
    i32 5, label %sw.bb38.i
  ]

if.end.i.isotp_setsockopt_locked.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %optlen)
  %cmp.not.i = icmp eq i32 %optlen, 12
  br i1 %cmp.not.i, label %if.end3.i, label %sw.bb.i.isotp_setsockopt_locked.exit_crit_edge

sw.bb.i.isotp_setsockopt_locked.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.end3.i:                                        ; preds = %sw.bb.i
  %opt.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 9
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %7 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.end3.i
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #14
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i.i, label %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:  ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end8.i.i.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 12, i32 -1226833920) #18, !srcloc !97
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !95

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opt.i, i32 noundef 12) #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #7, !srcloc !98
  %and.i.i.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  %call1.i.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %opt.i, ptr noundef %7, i32 noundef 12) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end7.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !95

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.if.end7.i_crit_edge:             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i115.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 12, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 12, %res.0.i.i.i.i115.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %opt.i, i32 %sub.i.i.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i115.i)
  br label %isotp_setsockopt_locked.exit

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = call ptr @memcpy(ptr %opt.i, ptr %7, i32 12)
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.if.end7.i_crit_edge
  %14 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opt.i, align 8
  %and.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end7.i.isotp_setsockopt_locked.exit_crit_edge

if.end7.i.isotp_setsockopt_locked.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %ext_address.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %ext_address.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ext_address.i, align 8
  %rx_ext_address.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 9, i32 5
  %18 = ptrtoint ptr %rx_ext_address.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %rx_ext_address.i, align 1
  br label %isotp_setsockopt_locked.exit

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %optlen)
  %cmp15.not.i = icmp eq i32 %optlen, 3
  br i1 %cmp15.not.i, label %if.end17.i, label %sw.bb14.i.isotp_setsockopt_locked.exit_crit_edge

sw.bb14.i.isotp_setsockopt_locked.exit_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.end17.i:                                       ; preds = %sw.bb14.i
  %rxfc.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 10
  %src.coerce.fca.0.extract.i.i1.i = extractvalue [2 x i32] %optval.coerce, 0
  %19 = inttoptr i32 %src.coerce.fca.0.extract.i.i1.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i2.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i2.i)
  %bf.cast.i.i.i3.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i2.i, 0
  br i1 %bf.cast.i.i.i3.i, label %if.end.i.i26.i, label %if.end8.i.i.i.i8.i

if.end8.i.i.i.i8.i:                               ; preds = %if.end17.i
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #14
  %call.i.i.i.i9.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i9.i, label %if.end8.i.i.i.i8.i.if.then11.i.i.i.i25.i_crit_edge, label %land.lhs.true.i.i.i.i12.i

if.end8.i.i.i.i8.i.if.then11.i.i.i.i25.i_crit_edge: ; preds = %if.end8.i.i.i.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i25.i

land.lhs.true.i.i.i.i12.i:                        ; preds = %if.end8.i.i.i.i8.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 3, i32 -1226833920) #18, !srcloc !97
  %asmresult.i.i.i.i10.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i10.i)
  %cmp.i6.i.i.i11.i = icmp eq i32 %asmresult.i.i.i.i10.i, 0
  br i1 %cmp.i6.i.i.i11.i, label %if.end.i.i.i.i22.i, label %land.lhs.true.i.i.i.i12.i.if.then11.i.i.i.i25.i_crit_edge, !prof !95

land.lhs.true.i.i.i.i12.i.if.then11.i.i.i.i25.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i25.i

if.end.i.i.i.i22.i:                               ; preds = %land.lhs.true.i.i.i.i12.i
  %call.i.i.i.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxfc.i, i32 noundef 3) #14
  %21 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i.i.i.i14.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i.i14.i to ptr
  %cpu_domain.i.i.i.i.i.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i15.i) #7, !srcloc !98
  %and.i.i.i.i.i.i16.i = and i32 %23, -13
  %or.i.i.i.i.i.i17.i = or i32 %and.i.i.i.i.i.i16.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i17.i) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  %call1.i.i.i.i.i18.i = tail call i32 @arm_copy_from_user(ptr noundef %rxfc.i, ptr noundef %19, i32 noundef 3) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i18.i)
  %tobool4.not.i.i.i.i21.i = icmp eq i32 %call1.i.i.i.i.i18.i, 0
  br i1 %tobool4.not.i.i.i.i21.i, label %if.end.i.i.i.i22.i.isotp_setsockopt_locked.exit_crit_edge, label %if.end.i.i.i.i22.i.if.then11.i.i.i.i25.i_crit_edge, !prof !95

if.end.i.i.i.i22.i.if.then11.i.i.i.i25.i_crit_edge: ; preds = %if.end.i.i.i.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i25.i

if.end.i.i.i.i22.i.isotp_setsockopt_locked.exit_crit_edge: ; preds = %if.end.i.i.i.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.then11.i.i.i.i25.i:                            ; preds = %if.end.i.i.i.i22.i.if.then11.i.i.i.i25.i_crit_edge, %land.lhs.true.i.i.i.i12.i.if.then11.i.i.i.i25.i_crit_edge, %if.end8.i.i.i.i8.i.if.then11.i.i.i.i25.i_crit_edge
  %res.0.i.i.i.i20120.i = phi i32 [ %call1.i.i.i.i.i18.i, %if.end.i.i.i.i22.i.if.then11.i.i.i.i25.i_crit_edge ], [ 3, %if.end8.i.i.i.i8.i.if.then11.i.i.i.i25.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.i12.i.if.then11.i.i.i.i25.i_crit_edge ]
  %sub.i.i.i.i23.i = sub i32 3, %res.0.i.i.i.i20120.i
  %add.ptr.i.i.i.i24.i = getelementptr i8, ptr %rxfc.i, i32 %sub.i.i.i.i23.i
  %24 = call ptr @memset(ptr %add.ptr.i.i.i.i24.i, i32 0, i32 %res.0.i.i.i.i20120.i)
  br label %isotp_setsockopt_locked.exit

if.end.i.i26.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = call ptr @memcpy(ptr %rxfc.i, ptr %19, i32 3)
  br label %isotp_setsockopt_locked.exit

sw.bb22.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp23.not.i = icmp eq i32 %optlen, 4
  br i1 %cmp23.not.i, label %if.end25.i, label %sw.bb22.i.isotp_setsockopt_locked.exit_crit_edge

sw.bb22.i.isotp_setsockopt_locked.exit_crit_edge: ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.end25.i:                                       ; preds = %sw.bb22.i
  %force_tx_stmin.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 13
  %src.coerce.fca.0.extract.i.i29.i = extractvalue [2 x i32] %optval.coerce, 0
  %26 = inttoptr i32 %src.coerce.fca.0.extract.i.i29.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i30.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i30.i)
  %bf.cast.i.i.i31.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i30.i, 0
  br i1 %bf.cast.i.i.i31.i, label %if.end.i.i54.i, label %if.end8.i.i.i.i36.i

if.end8.i.i.i.i36.i:                              ; preds = %if.end25.i
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #14
  %call.i.i.i.i37.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i37.i, label %if.end8.i.i.i.i36.i.if.then11.i.i.i.i53.i_crit_edge, label %land.lhs.true.i.i.i.i40.i

if.end8.i.i.i.i36.i.if.then11.i.i.i.i53.i_crit_edge: ; preds = %if.end8.i.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i53.i

land.lhs.true.i.i.i.i40.i:                        ; preds = %if.end8.i.i.i.i36.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 4, i32 -1226833920) #18, !srcloc !97
  %asmresult.i.i.i.i38.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i38.i)
  %cmp.i6.i.i.i39.i = icmp eq i32 %asmresult.i.i.i.i38.i, 0
  br i1 %cmp.i6.i.i.i39.i, label %if.end.i.i.i.i50.i, label %land.lhs.true.i.i.i.i40.i.if.then11.i.i.i.i53.i_crit_edge, !prof !95

land.lhs.true.i.i.i.i40.i.if.then11.i.i.i.i53.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i53.i

if.end.i.i.i.i50.i:                               ; preds = %land.lhs.true.i.i.i.i40.i
  %call.i.i.i.i.i41.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %force_tx_stmin.i, i32 noundef 4) #14
  %28 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i.i.i.i42.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i.i.i42.i to ptr
  %cpu_domain.i.i.i.i.i.i.i43.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i43.i) #7, !srcloc !98
  %and.i.i.i.i.i.i44.i = and i32 %30, -13
  %or.i.i.i.i.i.i45.i = or i32 %and.i.i.i.i.i.i44.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i45.i) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  %call1.i.i.i.i.i46.i = tail call i32 @arm_copy_from_user(ptr noundef %force_tx_stmin.i, ptr noundef %26, i32 noundef 4) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i46.i)
  %tobool4.not.i.i.i.i49.i = icmp eq i32 %call1.i.i.i.i.i46.i, 0
  br i1 %tobool4.not.i.i.i.i49.i, label %if.end.i.i.i.i50.i.isotp_setsockopt_locked.exit_crit_edge, label %if.end.i.i.i.i50.i.if.then11.i.i.i.i53.i_crit_edge, !prof !95

if.end.i.i.i.i50.i.if.then11.i.i.i.i53.i_crit_edge: ; preds = %if.end.i.i.i.i50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i53.i

if.end.i.i.i.i50.i.isotp_setsockopt_locked.exit_crit_edge: ; preds = %if.end.i.i.i.i50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.then11.i.i.i.i53.i:                            ; preds = %if.end.i.i.i.i50.i.if.then11.i.i.i.i53.i_crit_edge, %land.lhs.true.i.i.i.i40.i.if.then11.i.i.i.i53.i_crit_edge, %if.end8.i.i.i.i36.i.if.then11.i.i.i.i53.i_crit_edge
  %res.0.i.i.i.i48125.i = phi i32 [ %call1.i.i.i.i.i46.i, %if.end.i.i.i.i50.i.if.then11.i.i.i.i53.i_crit_edge ], [ 4, %if.end8.i.i.i.i36.i.if.then11.i.i.i.i53.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i40.i.if.then11.i.i.i.i53.i_crit_edge ]
  %sub.i.i.i.i51.i = sub i32 4, %res.0.i.i.i.i48125.i
  %add.ptr.i.i.i.i52.i = getelementptr i8, ptr %force_tx_stmin.i, i32 %sub.i.i.i.i51.i
  %31 = call ptr @memset(ptr %add.ptr.i.i.i.i52.i, i32 0, i32 %res.0.i.i.i.i48125.i)
  br label %isotp_setsockopt_locked.exit

if.end.i.i54.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %26, align 1
  %34 = ptrtoint ptr %force_tx_stmin.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %force_tx_stmin.i, align 1
  br label %isotp_setsockopt_locked.exit

sw.bb30.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp31.not.i = icmp eq i32 %optlen, 4
  br i1 %cmp31.not.i, label %if.end33.i, label %sw.bb30.i.isotp_setsockopt_locked.exit_crit_edge

sw.bb30.i.isotp_setsockopt_locked.exit_crit_edge: ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.end33.i:                                       ; preds = %sw.bb30.i
  %force_rx_stmin.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 14
  %src.coerce.fca.0.extract.i.i57.i = extractvalue [2 x i32] %optval.coerce, 0
  %35 = inttoptr i32 %src.coerce.fca.0.extract.i.i57.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i58.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i58.i)
  %bf.cast.i.i.i59.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i58.i, 0
  br i1 %bf.cast.i.i.i59.i, label %if.end.i.i82.i, label %if.end8.i.i.i.i64.i

if.end8.i.i.i.i64.i:                              ; preds = %if.end33.i
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #14
  %call.i.i.i.i65.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i65.i, label %if.end8.i.i.i.i64.i.if.then11.i.i.i.i81.i_crit_edge, label %land.lhs.true.i.i.i.i68.i

if.end8.i.i.i.i64.i.if.then11.i.i.i.i81.i_crit_edge: ; preds = %if.end8.i.i.i.i64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i81.i

land.lhs.true.i.i.i.i68.i:                        ; preds = %if.end8.i.i.i.i64.i
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 4, i32 -1226833920) #18, !srcloc !97
  %asmresult.i.i.i.i66.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i66.i)
  %cmp.i6.i.i.i67.i = icmp eq i32 %asmresult.i.i.i.i66.i, 0
  br i1 %cmp.i6.i.i.i67.i, label %if.end.i.i.i.i78.i, label %land.lhs.true.i.i.i.i68.i.if.then11.i.i.i.i81.i_crit_edge, !prof !95

land.lhs.true.i.i.i.i68.i.if.then11.i.i.i.i81.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i81.i

if.end.i.i.i.i78.i:                               ; preds = %land.lhs.true.i.i.i.i68.i
  %call.i.i.i.i.i69.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %force_rx_stmin.i, i32 noundef 4) #14
  %37 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i.i.i.i70.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i.i70.i to ptr
  %cpu_domain.i.i.i.i.i.i.i71.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i71.i) #7, !srcloc !98
  %and.i.i.i.i.i.i72.i = and i32 %39, -13
  %or.i.i.i.i.i.i73.i = or i32 %and.i.i.i.i.i.i72.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i73.i) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  %call1.i.i.i.i.i74.i = tail call i32 @arm_copy_from_user(ptr noundef %force_rx_stmin.i, ptr noundef %35, i32 noundef 4) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i74.i)
  %tobool4.not.i.i.i.i77.i = icmp eq i32 %call1.i.i.i.i.i74.i, 0
  br i1 %tobool4.not.i.i.i.i77.i, label %if.end.i.i.i.i78.i.isotp_setsockopt_locked.exit_crit_edge, label %if.end.i.i.i.i78.i.if.then11.i.i.i.i81.i_crit_edge, !prof !95

if.end.i.i.i.i78.i.if.then11.i.i.i.i81.i_crit_edge: ; preds = %if.end.i.i.i.i78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i81.i

if.end.i.i.i.i78.i.isotp_setsockopt_locked.exit_crit_edge: ; preds = %if.end.i.i.i.i78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.then11.i.i.i.i81.i:                            ; preds = %if.end.i.i.i.i78.i.if.then11.i.i.i.i81.i_crit_edge, %land.lhs.true.i.i.i.i68.i.if.then11.i.i.i.i81.i_crit_edge, %if.end8.i.i.i.i64.i.if.then11.i.i.i.i81.i_crit_edge
  %res.0.i.i.i.i76130.i = phi i32 [ %call1.i.i.i.i.i74.i, %if.end.i.i.i.i78.i.if.then11.i.i.i.i81.i_crit_edge ], [ 4, %if.end8.i.i.i.i64.i.if.then11.i.i.i.i81.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i68.i.if.then11.i.i.i.i81.i_crit_edge ]
  %sub.i.i.i.i79.i = sub i32 4, %res.0.i.i.i.i76130.i
  %add.ptr.i.i.i.i80.i = getelementptr i8, ptr %force_rx_stmin.i, i32 %sub.i.i.i.i79.i
  %40 = call ptr @memset(ptr %add.ptr.i.i.i.i80.i, i32 0, i32 %res.0.i.i.i.i76130.i)
  br label %isotp_setsockopt_locked.exit

if.end.i.i82.i:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %35, align 1
  %43 = ptrtoint ptr %force_rx_stmin.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %force_rx_stmin.i, align 1
  br label %isotp_setsockopt_locked.exit

sw.bb38.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %optlen)
  %cmp39.i = icmp eq i32 %optlen, 3
  br i1 %cmp39.i, label %if.then40.i, label %sw.bb38.i.isotp_setsockopt_locked.exit_crit_edge

sw.bb38.i.isotp_setsockopt_locked.exit_crit_edge: ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_setsockopt_locked.exit

if.then40.i:                                      ; preds = %sw.bb38.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ll.i) #14
  %44 = ptrtoint ptr %ll.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %ll.i, align 1, !annotation !101
  %45 = getelementptr inbounds %struct.can_isotp_ll_options, ptr %ll.i, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %45, align 1, !annotation !101
  %47 = getelementptr inbounds %struct.can_isotp_ll_options, ptr %ll.i, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %47, align 1, !annotation !101
  %src.coerce.fca.0.extract.i.i85.i = extractvalue [2 x i32] %optval.coerce, 0
  %49 = inttoptr i32 %src.coerce.fca.0.extract.i.i85.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i86.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i86.i)
  %bf.cast.i.i.i87.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i86.i, 0
  br i1 %bf.cast.i.i.i87.i, label %if.end.i.i110.i, label %if.end8.i.i.i.i92.i

if.end8.i.i.i.i92.i:                              ; preds = %if.then40.i
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #14
  %call.i.i.i.i93.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i93.i, label %if.end8.i.i.i.i92.i.if.then11.i.i.i.i109.i_crit_edge, label %land.lhs.true.i.i.i.i96.i

if.end8.i.i.i.i92.i.if.then11.i.i.i.i109.i_crit_edge: ; preds = %if.end8.i.i.i.i92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i109.i

land.lhs.true.i.i.i.i96.i:                        ; preds = %if.end8.i.i.i.i92.i
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 3, i32 -1226833920) #18, !srcloc !97
  %asmresult.i.i.i.i94.i = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i94.i)
  %cmp.i6.i.i.i95.i = icmp eq i32 %asmresult.i.i.i.i94.i, 0
  br i1 %cmp.i6.i.i.i95.i, label %if.end.i.i.i.i106.i, label %land.lhs.true.i.i.i.i96.i.if.then11.i.i.i.i109.i_crit_edge, !prof !95

land.lhs.true.i.i.i.i96.i.if.then11.i.i.i.i109.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i109.i

if.end.i.i.i.i106.i:                              ; preds = %land.lhs.true.i.i.i.i96.i
  %call.i.i.i.i.i97.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ll.i, i32 noundef 3) #14
  %51 = call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i.i.i.i98.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i.i.i98.i to ptr
  %cpu_domain.i.i.i.i.i.i.i99.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i99.i) #7, !srcloc !98
  %and.i.i.i.i.i.i100.i = and i32 %53, -13
  %or.i.i.i.i.i.i101.i = or i32 %and.i.i.i.i.i.i100.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i101.i) #14, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  %call1.i.i.i.i.i102.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ll.i, ptr noundef %49, i32 noundef 3) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #14, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i102.i)
  %tobool4.not.i.i.i.i105.i = icmp eq i32 %call1.i.i.i.i.i102.i, 0
  br i1 %tobool4.not.i.i.i.i105.i, label %if.end.i.i.i.i106.i.if.end44.i_crit_edge, label %if.end.i.i.i.i106.i.if.then11.i.i.i.i109.i_crit_edge, !prof !95

if.end.i.i.i.i106.i.if.then11.i.i.i.i109.i_crit_edge: ; preds = %if.end.i.i.i.i106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i109.i

if.end.i.i.i.i106.i.if.end44.i_crit_edge:         ; preds = %if.end.i.i.i.i106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then11.i.i.i.i109.i:                           ; preds = %if.end.i.i.i.i106.i.if.then11.i.i.i.i109.i_crit_edge, %land.lhs.true.i.i.i.i96.i.if.then11.i.i.i.i109.i_crit_edge, %if.end8.i.i.i.i92.i.if.then11.i.i.i.i109.i_crit_edge
  %res.0.i.i.i.i104135.i = phi i32 [ %call1.i.i.i.i.i102.i, %if.end.i.i.i.i106.i.if.then11.i.i.i.i109.i_crit_edge ], [ 3, %if.end8.i.i.i.i92.i.if.then11.i.i.i.i109.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.i96.i.if.then11.i.i.i.i109.i_crit_edge ]
  %sub.i.i.i.i107.i = sub i32 3, %res.0.i.i.i.i104135.i
  %add.ptr.i.i.i.i108.i = getelementptr i8, ptr %ll.i, i32 %sub.i.i.i.i107.i
  %54 = call ptr @memset(ptr %add.ptr.i.i.i.i108.i, i32 0, i32 %res.0.i.i.i.i104135.i)
  br label %cleanup.thread.i

if.end.i.i110.i:                                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = call ptr @memcpy(ptr %ll.i, ptr %49, i32 3)
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end.i.i110.i, %if.end.i.i.i.i106.i.if.end44.i_crit_edge
  %56 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %57)
  %cmp.i.i = icmp ugt i8 %57, 48
  br i1 %cmp.i.i, label %if.end44.i.padlen.exit.i_crit_edge, label %if.end.i.i

if.end44.i.padlen.exit.i_crit_edge:               ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit.i

if.end.i.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i = zext i8 %57 to i32
  %arrayidx.i.i = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv.i.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i, align 1
  br label %padlen.exit.i

padlen.exit.i:                                    ; preds = %if.end.i.i, %if.end44.i.padlen.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %59, %if.end.i.i ], [ 64, %if.end44.i.padlen.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %retval.0.i.i)
  %cmp48.not.i = icmp eq i8 %57, %retval.0.i.i
  br i1 %cmp48.not.i, label %if.end51.i, label %padlen.exit.i.cleanup.thread.i_crit_edge

padlen.exit.i.cleanup.thread.i_crit_edge:         ; preds = %padlen.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end51.i:                                       ; preds = %padlen.exit.i
  %60 = ptrtoint ptr %ll.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ll.i, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %61, label %if.end51.i.cleanup.thread.i_crit_edge [
    i8 16, label %land.lhs.true65.i
    i8 72, label %if.end51.i.cleanup.i_crit_edge
  ]

if.end51.i.cleanup.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end51.i.cleanup.thread.i_crit_edge:            ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

land.lhs.true65.i:                                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %57)
  %cmp68.i = icmp ugt i8 %57, 8
  br i1 %cmp68.i, label %land.lhs.true65.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i

land.lhs.true65.i.cleanup.thread.i_crit_edge:     ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true65.i
  %63 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp71.not.i = icmp eq i8 %64, 0
  br i1 %cmp71.not.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %lor.lhs.false.i.cleanup.thread.i_crit_edge

lor.lhs.false.i.cleanup.thread.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %lor.lhs.false.i.cleanup.thread.i_crit_edge, %land.lhs.true65.i.cleanup.thread.i_crit_edge, %if.end51.i.cleanup.thread.i_crit_edge, %padlen.exit.i.cleanup.thread.i_crit_edge, %if.then11.i.i.i.i109.i
  %retval.0.ph.i = phi i32 [ -14, %if.then11.i.i.i.i109.i ], [ -22, %land.lhs.true65.i.cleanup.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.cleanup.thread.i_crit_edge ], [ -22, %if.end51.i.cleanup.thread.i_crit_edge ], [ -22, %padlen.exit.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ll.i) #14
  br label %isotp_setsockopt_locked.exit

cleanup.i:                                        ; preds = %lor.lhs.false.i.cleanup.i_crit_edge, %if.end51.i.cleanup.i_crit_edge
  %ll75.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 12
  %65 = call ptr @memcpy(ptr %ll75.i, ptr %ll.i, i32 3)
  %ll_dl.i = getelementptr inbounds %struct.isotp_sock, ptr %3, i32 0, i32 16, i32 5
  %66 = ptrtoint ptr %ll_dl.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %57, ptr %ll_dl.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ll.i) #14
  br label %isotp_setsockopt_locked.exit

isotp_setsockopt_locked.exit:                     ; preds = %cleanup.i, %cleanup.thread.i, %sw.bb38.i.isotp_setsockopt_locked.exit_crit_edge, %if.end.i.i82.i, %if.then11.i.i.i.i81.i, %if.end.i.i.i.i78.i.isotp_setsockopt_locked.exit_crit_edge, %sw.bb30.i.isotp_setsockopt_locked.exit_crit_edge, %if.end.i.i54.i, %if.then11.i.i.i.i53.i, %if.end.i.i.i.i50.i.isotp_setsockopt_locked.exit_crit_edge, %sw.bb22.i.isotp_setsockopt_locked.exit_crit_edge, %if.end.i.i26.i, %if.then11.i.i.i.i25.i, %if.end.i.i.i.i22.i.isotp_setsockopt_locked.exit_crit_edge, %sw.bb14.i.isotp_setsockopt_locked.exit_crit_edge, %if.then10.i, %if.end7.i.isotp_setsockopt_locked.exit_crit_edge, %if.then11.i.i.i.i.i, %sw.bb.i.isotp_setsockopt_locked.exit_crit_edge, %if.end.i.isotp_setsockopt_locked.exit_crit_edge, %if.end.isotp_setsockopt_locked.exit_crit_edge
  %retval.1.i = phi i32 [ -106, %if.end.isotp_setsockopt_locked.exit_crit_edge ], [ -22, %sw.bb.i.isotp_setsockopt_locked.exit_crit_edge ], [ -22, %sw.bb14.i.isotp_setsockopt_locked.exit_crit_edge ], [ -22, %sw.bb22.i.isotp_setsockopt_locked.exit_crit_edge ], [ -22, %sw.bb30.i.isotp_setsockopt_locked.exit_crit_edge ], [ -22, %sw.bb38.i.isotp_setsockopt_locked.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i ], [ -14, %if.then11.i.i.i.i25.i ], [ -14, %if.then11.i.i.i.i53.i ], [ -14, %if.then11.i.i.i.i81.i ], [ %retval.0.ph.i, %cleanup.thread.i ], [ 0, %cleanup.i ], [ 0, %if.end7.i.isotp_setsockopt_locked.exit_crit_edge ], [ 0, %if.then10.i ], [ -92, %if.end.i.isotp_setsockopt_locked.exit_crit_edge ], [ 0, %if.end.i.i26.i ], [ 0, %if.end.i.i.i.i22.i.isotp_setsockopt_locked.exit_crit_edge ], [ 0, %if.end.i.i54.i ], [ 0, %if.end.i.i.i.i50.i.isotp_setsockopt_locked.exit_crit_edge ], [ 0, %if.end.i.i82.i ], [ 0, %if.end.i.i.i.i78.i.isotp_setsockopt_locked.exit_crit_edge ]
  call void @release_sock(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %isotp_setsockopt_locked.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %isotp_setsockopt_locked.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %level)
  %cmp.not = icmp eq i32 %level, 106
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1327) #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !98
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #14, !srcloc !102
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult3 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3)
  %cmp7 = icmp slt i32 %asmresult3, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %optname, label %if.end9.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb19
    i32 4, label %sw.bb26
    i32 5, label %sw.bb33
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %7 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 12)
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 9
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %8 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 3)
  %rxfc = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 10
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 4)
  %force_tx_stmin = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 13
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %10 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 4)
  %force_rx_stmin = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 14
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %11 = tail call i32 @llvm.umin.i32(i32 %asmresult3, i32 3)
  %ll = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb26, %sw.bb19, %sw.bb12, %sw.bb
  %val.0 = phi ptr [ %ll, %sw.bb33 ], [ %force_rx_stmin, %sw.bb26 ], [ %force_tx_stmin, %sw.bb19 ], [ %rxfc, %sw.bb12 ], [ %opt, %sw.bb ]
  %len.0 = phi i32 [ %11, %sw.bb33 ], [ %10, %sw.bb26 ], [ %9, %sw.bb19 ], [ %8, %sw.bb12 ], [ %7, %sw.bb ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1362) #14
  %12 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i85 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i85 to ptr
  %cpu_domain.i.i86 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i86) #7, !srcloc !98
  %and.i87 = and i32 %14, -13
  %or.i88 = or i32 %and.i87, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i88) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %len.0, i32 -1226833921) #14, !srcloc !103
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #14, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool49.not = icmp eq i32 %15, 0
  br i1 %tobool49.not, label %if.then.i.i.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.epilog
  tail call void @__check_object_size(ptr noundef %val.0, i32 noundef %len.0, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %len.0, i32 -1226833920) #18, !srcloc !104
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %val.0, i32 noundef %len.0) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %val.0, i32 noundef %len.0) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %len.0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len.0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool53.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool53.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %sw.epilog.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -92, %if.end9.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size) #2 align 64 {
entry:
  %err = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry184 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tx = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 16
  %state = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 16, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opt, align 8
  %and = lshr i32 %5, 1
  %and.lobit = and i32 %and, 1
  %and4 = lshr i32 %5, 10
  %and4.lobit = and i32 %and4, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #14
  %bound = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bound, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %entry.cleanup223_crit_edge, label %if.end

entry.cleanup223_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup223

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #14
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state, i32 0, i32 4) #14, !srcloc !106
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp.not = icmp eq i32 %asmresult1.i, 0
  br i1 %cmp.not, label %lor.lhs.false, label %__cmpxchg.exit.if.then26_crit_edge

__cmpxchg.exit.if.then26_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

lor.lhs.false:                                    ; preds = %__cmpxchg.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  %head.i.i = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %10, %head.i.i
  br i1 %cmp.i.i.i.not, label %lor.lhs.false.if.end60_crit_edge, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

lor.lhs.false.if.end60_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %__cmpxchg.exit.if.then26_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %11 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_flags, align 4
  %and27 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then26.err_out_crit_edge

if.then26.err_out_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.end30:                                         ; preds = %if.then26
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 883) #14
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp40 = icmp eq i32 %14, 0
  br i1 %cmp40, label %if.end30.if.end60_crit_edge, label %if.then41

if.end30.if.end60_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then41:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %wait43 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 18
  %call44341 = call i32 @prepare_to_wait_event(ptr noundef %wait43, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp47342 = icmp eq i32 %17, 0
  br i1 %cmp47342, label %if.then41.if.end55.thread326_crit_edge, label %if.then41.if.end49_crit_edge

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  br label %if.end49

if.then41.if.end55.thread326_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.thread326

if.end49:                                         ; preds = %cleanup.if.end49_crit_edge, %if.then41.if.end49_crit_edge
  %call44343 = phi i32 [ %call44, %cleanup.if.end49_crit_edge ], [ %call44341, %if.then41.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44343)
  %tobool50.not = icmp eq i32 %call44343, 0
  br i1 %tobool50.not, label %cleanup, label %if.end55

cleanup:                                          ; preds = %if.end49
  call void @schedule() #14
  %call44 = call i32 @prepare_to_wait_event(ptr noundef %wait43, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  %cmp47 = icmp eq i32 %19, 0
  br i1 %cmp47, label %cleanup.if.end55.thread326_crit_edge, label %cleanup.if.end49_crit_edge

cleanup.if.end49_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

cleanup.if.end55.thread326_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.thread326

if.end55.thread326:                               ; preds = %cleanup.if.end55.thread326_crit_edge, %if.then41.if.end55.thread326_crit_edge
  call void @finish_wait(ptr noundef %wait43, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end60

if.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %err_out

if.end60:                                         ; preds = %if.end55.thread326, %if.end30.if.end60_crit_edge, %lor.lhs.false.if.end60_crit_edge
  %20 = add i32 %size, -8201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8200, i32 %20)
  %21 = icmp ult i32 %20, -8200
  br i1 %21, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -22, ptr %err, align 4
  br label %err_out.thread

if.end65:                                         ; preds = %if.end60
  %ll_dl = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 16, i32 5
  %23 = ptrtoint ptr %ll_dl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ll_dl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %24)
  %cmp67 = icmp ugt i8 %24, 8
  %cond69.neg348 = sext i1 %cmp67 to i32
  %25 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opt, align 8
  %and72 = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end65.if.end82_crit_edge, label %land.lhs.true

if.end65.if.end82_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end65
  %conv = zext i8 %24 to i32
  %27 = xor i32 %and.lobit, -1
  %sub77 = add nsw i32 %conv, %27
  %sub78 = add nsw i32 %sub77, %cond69.neg348
  call void @__sanitizer_cov_trace_cmp4(i32 %sub78, i32 %size)
  %cmp79 = icmp ult i32 %sub78, %size
  br i1 %cmp79, label %if.then81, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then81:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -22, ptr %err, align 4
  br label %err_out.thread

if.end82:                                         ; preds = %land.lhs.true.if.end82_crit_edge, %if.end65.if.end82_crit_edge
  %buf = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 16, i32 6
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %buf, i32 noundef %size, i1 noundef zeroext false) #14
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %buf, i32 noundef %size, ptr noundef %msg_iter.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %size)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %size
  br i1 %cmp.i.i, label %if.end88, label %memcpy_from_msg.exit.thread, !prof !95

memcpy_from_msg.exit.thread:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #14
  %29 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -14, ptr %err, align 4
  br label %err_out.thread

if.end88:                                         ; preds = %if.end82
  %30 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %err, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skc_net.i, align 4
  %ifindex = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ifindex, align 4
  %call90 = call ptr @dev_get_by_index(ptr noundef %32, i32 noundef %34) #14
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -6, ptr %err, align 4
  br label %err_out.thread

if.end93:                                         ; preds = %if.end88
  %ll = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 12
  %36 = ptrtoint ptr %ll to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ll, align 2
  %conv94 = zext i8 %37 to i32
  %add = add nuw nsw i32 %conv94, 16
  %msg_flags95 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %38 = ptrtoint ptr %msg_flags95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_flags95, align 4
  %and96 = and i32 %39, 64
  %call97 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add, i32 noundef %and96, ptr noundef nonnull %err) #14
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @dev_put(ptr noundef nonnull %call90)
  br label %err_out.thread

if.end100:                                        ; preds = %if.end93
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call97, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call97, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %43, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %ifindex101 = getelementptr inbounds %struct.net_device, ptr %call90, i32 0, i32 17
  %44 = ptrtoint ptr %ifindex101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ifindex101, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call97, i32 0, i32 18
  %46 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %47, align 8
  %49 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %skbcnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %skbcnt, align 4
  %len = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 16, i32 1
  %51 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %size, ptr %len, align 4
  %52 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tx, align 8
  %53 = load ptr, ptr %data.i.i, align 4
  %54 = ptrtoint ptr %ll to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ll, align 2
  %conv109 = zext i8 %55 to i32
  %call.i316 = call ptr @skb_put(ptr noundef nonnull %call97, i32 noundef %conv109) #14
  %56 = call ptr @memset(ptr %call.i316, i32 0, i32 %conv109)
  %57 = ptrtoint ptr %ll_dl to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ll_dl, align 2
  %conv113 = zext i8 %58 to i32
  %59 = xor i32 %and.lobit, -1
  %sub115 = add nsw i32 %cond69.neg348, %59
  %sub116 = add nsw i32 %sub115, %conv113
  call void @__sanitizer_cov_trace_cmp4(i32 %sub116, i32 %size)
  %cmp117.not = icmp ult i32 %sub116, %size
  br i1 %cmp117.not, label %if.else140, label %if.then119

if.then119:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %sub120 = xor i32 %and.lobit, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub120, i32 %size)
  %cmp121.not = icmp ult i32 %sub120, %size
  %narrow = select i1 %cmp121.not, i1 %cmp67, i1 false
  %spec.select = zext i1 %narrow to i32
  call fastcc void @isotp_fill_dataframe(ptr noundef %53, ptr noundef %1, i32 noundef %and.lobit, i32 noundef %spec.select)
  %arrayidx = getelementptr %struct.canfd_frame, ptr %53, i32 0, i32 5, i32 %and.lobit
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx, align 1
  %conv128 = trunc i32 %size to i8
  %add130 = add nuw nsw i32 %and.lobit, 1
  %arrayidx131 = getelementptr %struct.canfd_frame, ptr %53, i32 0, i32 5, i32 %add130
  %arrayidx.sink = select i1 %narrow, ptr %arrayidx131, ptr %arrayidx
  %61 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv128, ptr %arrayidx.sink, align 1
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %state, align 8
  %wait139 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 18
  call void @__wake_up(ptr noundef %wait139, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %if.end142

if.else140:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @isotp_create_fframe(ptr noundef %53, ptr noundef %1, i32 noundef %and.lobit)
  %txtimer = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 8
  call void @hrtimer_start_range_ns(ptr noundef %txtimer, i64 noundef 1000000000, i64 noundef 0, i32 noundef 5) #14
  br label %if.end142

if.end142:                                        ; preds = %if.else140, %if.then119
  %wait_tx_done.0 = phi i32 [ 0, %if.then119 ], [ %and4.lobit, %if.else140 ]
  %tx_flags = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 12, i32 2
  %63 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tx_flags, align 2
  %flags144 = getelementptr inbounds %struct.canfd_frame, ptr %53, i32 0, i32 2
  %65 = ptrtoint ptr %flags144 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %flags144, align 1
  %66 = getelementptr inbounds %struct.anon.51, ptr %call97, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call90, ptr %66, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %call97, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %1, ptr %68, align 4
  %call145 = call i32 @can_send(ptr noundef nonnull %call97, i32 noundef 1) #14
  %70 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call145, ptr %err, align 4
  call fastcc void @dev_put(ptr noundef nonnull %call90)
  %71 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool146.not = icmp eq i32 %72, 0
  br i1 %tobool146.not, label %if.end169, label %land.end

land.end:                                         ; preds = %if.end142
  %.b313 = load i1, ptr @isotp_sendmsg.__already_done, align 1
  br i1 %.b313, label %land.end.err_out.thread_crit_edge, label %if.then154, !prof !95

land.end.err_out.thread_crit_edge:                ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out.thread

if.then154:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @isotp_sendmsg.__already_done, align 1
  %73 = inttoptr i32 %72 to ptr
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef nonnull %73) #17
  br label %err_out.thread

if.end169:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_tx_done.0)
  %tobool170.not = icmp eq i32 %wait_tx_done.0, 0
  br i1 %tobool170.not, label %if.end169.cleanup223_crit_edge, label %if.then171

if.end169.cleanup223_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup223

if.then171:                                       ; preds = %if.end169
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 984) #14
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp181 = icmp eq i32 %75, 0
  br i1 %cmp181, label %if.then171.if.end206_crit_edge, label %if.then183

if.then171.if.end206_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end206

if.then183:                                       ; preds = %if.then171
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry184) #14
  %76 = call ptr @memset(ptr %__wq_entry184, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry184, i32 noundef 0) #14
  %wait188 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 18
  %call189344 = call i32 @prepare_to_wait_event(ptr noundef %wait188, ptr noundef nonnull %__wq_entry184, i32 noundef 1) #14
  %77 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp192345 = icmp eq i32 %78, 0
  br i1 %cmp192345, label %if.then183.for.end202_crit_edge, label %if.then183.if.end195_crit_edge

if.then183.if.end195_crit_edge:                   ; preds = %if.then183
  br label %if.end195

if.then183.for.end202_crit_edge:                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end202

if.end195:                                        ; preds = %cleanup199.if.end195_crit_edge, %if.then183.if.end195_crit_edge
  %call189346 = phi i32 [ %call189, %cleanup199.if.end195_crit_edge ], [ %call189344, %if.then183.if.end195_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189346)
  %tobool196.not = icmp eq i32 %call189346, 0
  br i1 %tobool196.not, label %cleanup199, label %if.end195.__out204_crit_edge

if.end195.__out204_crit_edge:                     ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out204

cleanup199:                                       ; preds = %if.end195
  call void @schedule() #14
  %call189 = call i32 @prepare_to_wait_event(ptr noundef %wait188, ptr noundef nonnull %__wq_entry184, i32 noundef 1) #14
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state, align 8
  %cmp192 = icmp eq i32 %80, 0
  br i1 %cmp192, label %cleanup199.for.end202_crit_edge, label %cleanup199.if.end195_crit_edge

cleanup199.if.end195_crit_edge:                   ; preds = %cleanup199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end195

cleanup199.for.end202_crit_edge:                  ; preds = %cleanup199
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end202

for.end202:                                       ; preds = %cleanup199.for.end202_crit_edge, %if.then183.for.end202_crit_edge
  call void @finish_wait(ptr noundef %wait188, ptr noundef nonnull %__wq_entry184) #14
  br label %__out204

__out204:                                         ; preds = %for.end202, %if.end195.__out204_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry184) #14
  br label %if.end206

if.end206:                                        ; preds = %__out204, %if.then171.if.end206_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %81 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool208.not = icmp eq i32 %82, 0
  %sub211 = sub i32 0, %82
  %spec.select314 = select i1 %tobool208.not, i32 %size, i32 %sub211
  br label %cleanup223

err_out.thread:                                   ; preds = %if.then154, %land.end.err_out.thread_crit_edge, %if.then99, %if.then92, %memcpy_from_msg.exit.thread, %if.then81, %if.then64
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %state, align 8
  br label %if.then220

err_out:                                          ; preds = %if.end55, %if.then26.err_out_crit_edge
  %storemerge = phi i32 [ %call44343, %if.end55 ], [ -11, %if.then26.err_out_crit_edge ]
  %84 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %storemerge, ptr %err, align 4
  %85 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %3, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp218 = icmp eq i32 %3, 0
  br i1 %cmp218, label %err_out.if.then220_crit_edge, label %err_out.if.end222_crit_edge

err_out.if.end222_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end222

err_out.if.then220_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then220

if.then220:                                       ; preds = %err_out.if.then220_crit_edge, %err_out.thread
  %wait221 = getelementptr inbounds %struct.isotp_sock, ptr %1, i32 0, i32 18
  call void @__wake_up(ptr noundef %wait221, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %err_out.if.end222_crit_edge
  %86 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %err, align 4
  br label %cleanup223

cleanup223:                                       ; preds = %if.end222, %if.end206, %if.end169.cleanup223_crit_edge, %entry.cleanup223_crit_edge
  %retval.0 = phi i32 [ %87, %if.end222 ], [ -99, %entry.cleanup223_crit_edge ], [ %size, %if.end169.cleanup223_crit_edge ], [ %spec.select314, %if.end206 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #14
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %and = and i32 %flags, 64
  %and2 = and i32 %flags, -65
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and2, i32 noundef %and, ptr noundef nonnull %err) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %size)
  %cmp = icmp ugt i32 %6, %size
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %or = or i32 %8, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %size.addr.0 = phi i32 [ %size, %if.then3 ], [ %6, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %cmp9.i.i.i = icmp slt i32 %size.addr.0, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end5
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge, label %if.then27.i.i.i, !prof !95

land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge:    ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memcpy_to_msg.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %memcpy_to_msg.exit

if.then.i.i.i.i:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void @__check_object_size(ptr noundef %10, i32 noundef %size.addr.0, i1 noundef zeroext true) #14
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef %10, i32 noundef %size.addr.0, ptr noundef %msg_iter.i) #14
  br label %memcpy_to_msg.exit

memcpy_to_msg.exit:                               ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %size.addr.0)
  %cmp.i = icmp eq i32 %retval.0.i.i, %size.addr.0
  %cond.i = select i1 %cmp.i, i32 0, i32 -14
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %err, align 4
  br i1 %cmp.i, label %if.end9, label %if.then8

if.then8:                                         ; preds = %memcpy_to_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #14
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  br label %cleanup

if.end9:                                          ; preds = %memcpy_to_msg.exit
  %14 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 7
  %19 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end9.if.then.i_crit_edge

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end9
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %23 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sk_tsflags.i, align 8
  %conv.i = zext i16 %24 to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool3.not.i = icmp eq i64 %16, 0
  %and6.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %lor.lhs.false8.i, label %lor.lhs.false2.i.if.then.i_crit_edge

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false2.i
  %25 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %hwtstamps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool9.not.i = icmp eq i64 %26, 0
  %27 = and i16 %24, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool14.not.i = icmp eq i16 %27, 0
  %or.cond36.i = select i1 %tobool9.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond36.i, label %if.else.i, label %lor.lhs.false8.i.if.then.i_crit_edge

lor.lhs.false8.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false8.i.if.then.i_crit_edge, %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end9.if.then.i_crit_edge
  call void @__sock_recv_timestamp(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call) #14
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #16
  %sk_stamp_seq.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64
  %lock.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #14
  %28 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %29, 1
  store i32 %inc.i.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !109
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 0, i32 0, i32 1
  %30 = call ptr @llvm.returnaddress(i32 0) #14
  %31 = ptrtoint ptr %30 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %31) #14
  %sk_stamp.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  %32 = ptrtoint ptr %sk_stamp.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %16, ptr %sk_stamp.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %31) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  %33 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %19, align 4
  %37 = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i35.not.i = icmp eq i32 %37, 0
  br i1 %tobool.i35.not.i, label %if.end.i.sock_recv_timestamp.exit_crit_edge, label %land.lhs.true17.i

if.end.i.sock_recv_timestamp.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_recv_timestamp.exit

land.lhs.true17.i:                                ; preds = %if.end.i
  %wifi_acked_valid.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15
  %38 = ptrtoint ptr %wifi_acked_valid.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i = load i16, ptr %wifi_acked_valid.i, align 8
  %39 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool19.not.i = icmp eq i16 %39, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, label %if.then20.i

land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_recv_timestamp.exit

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sock_recv_wifi_status(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call) #14
  br label %sock_recv_timestamp.exit

sock_recv_timestamp.exit:                         ; preds = %if.then20.i, %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, %if.end.i.sock_recv_timestamp.exit_crit_edge
  %40 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msg, align 8
  %tobool10.not = icmp eq ptr %41, null
  br i1 %tobool10.not, label %sock_recv_timestamp.exit.if.end14_crit_edge, label %do.end

sock_recv_timestamp.exit.if.end14_crit_edge:      ; preds = %sock_recv_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

do.end:                                           ; preds = %sock_recv_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #16
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %42 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %msg_namelen, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %43 = call ptr @memcpy(ptr %41, ptr %cb, i32 16)
  br label %if.end14

if.end14:                                         ; preds = %do.end, %sock_recv_timestamp.exit.if.end14_crit_edge
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then8, %if.then
  %retval.0 = phi i32 [ %13, %if.then8 ], [ %size.addr.0, %if.end14 ], [ %4, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isotp_rcv(ptr nocapture noundef readonly %skb, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opt, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %ll = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 12
  %4 = ptrtoint ptr %ll to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ll, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp eq i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data2, align 4
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %data4 = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %data4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data4, align 8
  %rx_ext_address = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 9, i32 5
  %10 = ptrtoint ptr %rx_ext_address to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_ext_address, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp8.not = icmp eq i8 %9, %11
  br i1 %cmp8.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %arrayidx13 = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %cond
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %rx_lock = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %rx_lock) #14
  %14 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opt, align 8
  %and19 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end11.if.end37_crit_edge, label %if.then21

if.end11.if.end37_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then21:                                        ; preds = %if.end11
  %16 = and i8 %13, -16
  %state = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 16, i32 2
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %16)
  %cmp26.not = icmp eq i8 %16, 48
  %or.cond = select i1 %cmp22.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %lor.lhs.false, label %if.then21.out_unlock_crit_edge

if.then21.out_unlock_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.then21
  %state28 = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 2
  %19 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29.not = icmp ne i32 %20, 0
  %or.cond117 = select i1 %cmp29.not, i1 %cmp26.not, i1 false
  br i1 %or.cond117, label %lor.lhs.false.out_unlock_crit_edge, label %lor.lhs.false.if.end37_crit_edge

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end37:                                         ; preds = %lor.lhs.false.if.end37_crit_edge, %if.end11.if.end37_crit_edge
  %21 = lshr i8 %13, 4
  %22 = zext i8 %21 to i32
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %22, label %if.end37.out_unlock_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %sw.bb40
    i32 1, label %sw.bb70
    i32 2, label %sw.bb72
  ]

if.end37.out_unlock_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

sw.bb:                                            ; preds = %if.end37
  %state.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 16, i32 2
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 8
  %.off.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i, label %sw.bb.out_unlock_crit_edge

sw.bb.out_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end.i:                                         ; preds = %sw.bb
  %txtimer.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 8
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %txtimer.i) #14
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %len.i, align 4
  %conv.i = zext i8 %27 to i32
  %add.i = select i1 %tobool.not, i32 3, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp5.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp5.i, label %if.end.i.if.then12.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %28 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opt, align 8
  %and.i = and i32 %29, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end18.i_crit_edge, label %land.lhs.true7.i

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i
  %rxpad_content.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 9, i32 4
  %30 = ptrtoint ptr %rxpad_content.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rxpad_content.i, align 2
  %and.i.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end6.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.then12.i_crit_edge, label %if.then5.i.i

if.then.i.i.if.then12.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %27)
  %cmp.i.i.i = icmp ult i8 %27, 9
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp4.i.i.not.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp4.i.i.not.i, label %if.then.i.i.i.if.end18.i_crit_edge, label %if.then.i.i.i.if.then12.i_crit_edge

if.then.i.i.i.if.then12.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.then.i.i.i.if.end18.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end.i.i.i:                                     ; preds = %if.then5.i.i
  %arrayidx.i.i.i.i = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %add.i
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %33)
  %cmp10.i.i.not.i = icmp eq i8 %27, %33
  br i1 %cmp10.i.i.not.i, label %if.end.i.i.i.if.end18.i_crit_edge, label %if.end.i.i.i.if.then12.i_crit_edge

if.end.i.i.i.if.then12.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.end.i.i.i.if.end18.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end6.i.i:                                      ; preds = %land.lhs.true7.i
  br i1 %tobool4.not.i.i, label %if.end6.i.i.if.end16.i.i_crit_edge, label %land.lhs.true.i.i

if.end6.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i

land.lhs.true.i.i:                                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %27)
  %cmp.i43.i.i = icmp ugt i8 %27, 48
  br i1 %cmp.i43.i.i, label %land.lhs.true.i.i.padlen.exit.i.i_crit_edge, label %if.end.i45.i.i

land.lhs.true.i.i.padlen.exit.i.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit.i.i

if.end.i45.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i.i, align 1
  br label %padlen.exit.i.i

padlen.exit.i.i:                                  ; preds = %if.end.i45.i.i, %land.lhs.true.i.i.padlen.exit.i.i_crit_edge
  %retval.0.i46.i.i = phi i8 [ %35, %if.end.i45.i.i ], [ 64, %land.lhs.true.i.i.padlen.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %retval.0.i46.i.i)
  %cmp.not.i.i = icmp eq i8 %27, %retval.0.i46.i.i
  br i1 %cmp.not.i.i, label %padlen.exit.i.i.if.end16.i.i_crit_edge, label %padlen.exit.i.i.if.then12.i_crit_edge

padlen.exit.i.i.if.then12.i_crit_edge:            ; preds = %padlen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

padlen.exit.i.i.if.end16.i.i_crit_edge:           ; preds = %padlen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %padlen.exit.i.i.if.end16.i.i_crit_edge, %if.end6.i.i.if.end16.i.i_crit_edge
  %and19.i.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp ne i32 %and19.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp2447.i.i = icmp ult i32 %add.i, %conv.i
  %or.cond8.i = select i1 %tobool20.not.i.i, i1 %cmp2447.i.i, i1 false
  br i1 %or.cond8.i, label %if.end16.i.i.for.body.i.i_crit_edge, label %if.end16.i.i.if.end18.i_crit_edge

if.end16.i.i.if.end18.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end16.i.i.for.body.i.i_crit_edge:              ; preds = %if.end16.i.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.048.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end18.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.cond.i.i.if.end18.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end16.i.i.for.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %add.i, %if.end16.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %i.048.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %31)
  %cmp28.not.i.i = icmp eq i8 %37, %31
  br i1 %cmp28.not.i.i, label %for.cond.i.i, label %for.body.i.i.if.then12.i_crit_edge

for.body.i.i.if.then12.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.then12.i:                                      ; preds = %for.body.i.i.if.then12.i_crit_edge, %padlen.exit.i.i.if.then12.i_crit_edge, %if.end.i.i.i.if.then12.i_crit_edge, %if.then.i.i.i.if.then12.i_crit_edge, %if.then.i.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %data, i32 0, i32 51
  %38 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 74, ptr %sk_err.i, align 4
  %39 = getelementptr inbounds %struct.sock_common, ptr %data, i32 0, i32 13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i, label %if.then14.i, label %if.then12.i.if.end15.i_crit_edge

if.then12.i.if.end15.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sk_error_report(ptr noundef %data) #14
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.then12.i.if.end15.i_crit_edge
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %state.i, align 8
  %wait.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %out_unlock

if.end18.i:                                       ; preds = %for.cond.i.i.if.end18.i_crit_edge, %if.end16.i.i.if.end18.i_crit_edge, %if.end.i.i.i.if.end18.i_crit_edge, %if.then.i.i.i.if.end18.i_crit_edge, %lor.lhs.false.i.if.end18.i_crit_edge
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp21.i = icmp eq i32 %45, 1
  br i1 %cmp21.i, label %if.then23.i, label %if.end18.i.if.end91.i_crit_edge

if.end18.i.if.end91.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91.i

if.then23.i:                                      ; preds = %if.end18.i
  %add24.i = select i1 %tobool.not, i32 1, i32 2
  %arrayidx.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %add24.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %txfc.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 11
  %48 = ptrtoint ptr %txfc.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %txfc.i, align 1
  %add26.i = select i1 %tobool.not, i32 2, i32 3
  %arrayidx27.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %add26.i
  %49 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx27.i, align 1
  %stmin.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 11, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp32.i = icmp slt i8 %50, 0
  %51 = add i8 %50, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %51)
  %52 = icmp ult i8 %51, -9
  %or.cond.i = and i1 %cmp32.i, %52
  %spec.store.select.i = select i1 %or.cond.i, i8 127, i8 %50
  %53 = ptrtoint ptr %stmin.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %spec.store.select.i, ptr %stmin.i, align 1
  %tx_gap.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 5
  %frame_txtime.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %frame_txtime.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %frame_txtime.i, align 4
  %conv53.i = zext i32 %55 to i64
  %and58.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.else.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %force_tx_stmin.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 13
  %56 = ptrtoint ptr %force_tx_stmin.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %force_tx_stmin.i, align 8
  %conv62.i = zext i32 %57 to i64
  br label %if.end88.i

if.else.i:                                        ; preds = %if.then23.i
  %conv67.i = zext i8 %spec.store.select.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %spec.store.select.i)
  %cmp68.i = icmp sgt i8 %spec.store.select.i, -1
  br i1 %cmp68.i, label %if.then70.i, label %if.else78.i

if.then70.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul nuw nsw i32 %conv67.i, 1000000
  %58 = zext i32 %mul.i to i64
  br label %if.end88.i

if.else78.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = mul nuw nsw i32 %conv67.i, 100000
  %mul83.i = add nsw i32 %59, -24000000
  %conv84.i = sext i32 %mul83.i to i64
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else78.i, %if.then70.i, %if.then60.i
  %.sink.i = phi i64 [ %58, %if.then70.i ], [ %conv84.i, %if.else78.i ], [ %conv62.i, %if.then60.i ]
  %add76.i = add nsw i64 %.sink.i, %conv53.i
  %60 = ptrtoint ptr %tx_gap.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add76.i, ptr %tx_gap.i, align 8
  %61 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %state.i, align 8
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end88.i, %if.end18.i.if.end91.i_crit_edge
  %62 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx13, align 1
  %64 = and i8 %63, 15
  %and95.i = zext i8 %64 to i32
  %65 = zext i32 %and95.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and95.i, label %if.end91.i.sw.default.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb102.i
    i32 2, label %sw.bb105.i
  ]

if.end91.i.sw.default.i_crit_edge:                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #16
  %bs97.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 16, i32 3
  %66 = ptrtoint ptr %bs97.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %bs97.i, align 4
  %67 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %state.i, align 8
  %tx_gap101.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 5
  %68 = ptrtoint ptr %tx_gap101.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %tx_gap101.i, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %txtimer.i, i64 noundef %69, i64 noundef 0, i32 noundef 5) #14
  br label %out_unlock

sw.bb102.i:                                       ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hrtimer_start_range_ns(ptr noundef %txtimer.i, i64 noundef 1000000000, i64 noundef 0, i32 noundef 5) #14
  br label %out_unlock

sw.bb105.i:                                       ; preds = %if.end91.i
  %sk_err106.i = getelementptr inbounds %struct.sock, ptr %data, i32 0, i32 51
  %70 = ptrtoint ptr %sk_err106.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 90, ptr %sk_err106.i, align 4
  %71 = getelementptr inbounds %struct.sock_common, ptr %data, i32 0, i32 13
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  %74 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i1.not.i = icmp eq i32 %74, 0
  br i1 %tobool.i1.not.i, label %if.then108.i, label %sw.bb105.i.sw.default.i_crit_edge

sw.bb105.i.sw.default.i_crit_edge:                ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default.i

if.then108.i:                                     ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sk_error_report(ptr noundef %data) #14
  br label %sw.default.i

sw.default.i:                                     ; preds = %if.then108.i, %sw.bb105.i.sw.default.i_crit_edge, %if.end91.i.sw.default.i_crit_edge
  %75 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %state.i, align 8
  %wait112.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %wait112.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %out_unlock

sw.bb40:                                          ; preds = %if.end37
  %76 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx13, align 1
  %78 = and i8 %77, 15
  %len46 = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 1
  %79 = ptrtoint ptr %len46 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %len46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %80)
  %cmp48 = icmp ult i8 %80, 9
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  %add = select i1 %tobool.not, i32 1, i32 2
  %conv51 = zext i8 %78 to i32
  tail call fastcc void @isotp_rcv_sf(ptr noundef %data, ptr noundef %7, i32 noundef %add, ptr noundef %skb, i32 noundef %conv51)
  br label %out_unlock

if.else:                                          ; preds = %sw.bb40
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %82)
  %cmp54 = icmp eq i32 %82, 72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp58 = icmp eq i8 %78, 0
  %or.cond118 = select i1 %cmp54, i1 %cmp58, i1 false
  br i1 %or.cond118, label %if.then60, label %if.else.out_unlock_crit_edge

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add61 = select i1 %tobool.not, i32 2, i32 3
  %add63 = select i1 %tobool.not, i32 1, i32 2
  %arrayidx64 = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %add63
  %83 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %84 to i32
  tail call fastcc void @isotp_rcv_sf(ptr noundef %data, ptr noundef %7, i32 noundef %add61, ptr noundef %skb, i32 noundef %conv65)
  br label %out_unlock

sw.bb70:                                          ; preds = %if.end37
  %rxtimer.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 7
  %call1.i = tail call i32 @hrtimer_cancel(ptr noundef %rxtimer.i) #14
  %rx.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15
  %state.i119 = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 2
  %85 = ptrtoint ptr %state.i119 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %state.i119, align 8
  %len.i120 = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 1
  %86 = ptrtoint ptr %len.i120 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %len.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %87)
  %cmp.i.i = icmp ugt i8 %87, 48
  br i1 %cmp.i.i, label %sw.bb70.padlen.exit.i_crit_edge, label %if.end.i.i

sw.bb70.padlen.exit.i_crit_edge:                  ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit.i

if.end.i.i:                                       ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i = zext i8 %87 to i32
  %arrayidx.i.i121 = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv.i.i
  %88 = ptrtoint ptr %arrayidx.i.i121 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i121, align 1
  br label %padlen.exit.i

padlen.exit.i:                                    ; preds = %if.end.i.i, %sw.bb70.padlen.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %89, %if.end.i.i ], [ 64, %sw.bb70.padlen.exit.i_crit_edge ]
  %ll_dl.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 5
  %90 = ptrtoint ptr %ll_dl.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %retval.0.i.i, ptr %ll_dl.i, align 2
  %91 = ptrtoint ptr %len.i120 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %len.i120, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %retval.0.i.i)
  %cmp.not.i = icmp eq i8 %92, %retval.0.i.i
  br i1 %cmp.not.i, label %if.end.i126, label %padlen.exit.i.out_unlock_crit_edge

padlen.exit.i.out_unlock_crit_edge:               ; preds = %padlen.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end.i126:                                      ; preds = %padlen.exit.i
  %93 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx13, align 1
  %95 = and i8 %94, 15
  %and.i123 = zext i8 %95 to i32
  %shl.i = shl nuw nsw i32 %and.i123, 8
  %len11.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 1
  %96 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shl.i, ptr %len11.i, align 4
  %add.i124 = select i1 %tobool.not, i32 1, i32 2
  %arrayidx13.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %add.i124
  %97 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %98 to i32
  %add17.i = or i32 %shl.i, %conv14.i
  store i32 %add17.i, ptr %len11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.i)
  %tobool.not.i125 = icmp eq i32 %add17.i, 0
  br i1 %tobool.not.i125, label %if.else.i127, label %if.end.i126.if.end51.i_crit_edge

if.end.i126.if.end51.i_crit_edge:                 ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51.i

if.else.i127:                                     ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #16
  %add22.i = select i1 %tobool.not, i32 2, i32 3
  %arrayidx23.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %add22.i
  %99 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %100 to i32
  %shl25.i = shl nuw i32 %conv24.i, 24
  %101 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %shl25.i, ptr %len11.i, align 4
  %add29.i = select i1 %tobool.not, i32 3, i32 4
  %arrayidx30.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %add29.i
  %102 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %103 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 16
  %add35.i = or i32 %shl32.i, %shl25.i
  store i32 %add35.i, ptr %len11.i, align 4
  %add37.i = select i1 %tobool.not, i32 4, i32 5
  %arrayidx38.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %add37.i
  %104 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %105 to i32
  %shl40.i = shl nuw nsw i32 %conv39.i, 8
  %add43.i = or i32 %shl40.i, %add35.i
  store i32 %add43.i, ptr %len11.i, align 4
  %add45.i = select i1 %tobool.not, i32 5, i32 6
  %arrayidx46.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %add45.i
  %106 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %107 to i32
  %add50.i = or i32 %add43.i, %conv47.i
  store i32 %add50.i, ptr %len11.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else.i127, %if.end.i126.if.end51.i_crit_edge
  %108 = phi i32 [ %add17.i, %if.end.i126.if.end51.i_crit_edge ], [ %add50.i, %if.else.i127 ]
  %ff_pci_sz.0.i = phi i32 [ 2, %if.end.i126.if.end51.i_crit_edge ], [ 6, %if.else.i127 ]
  %conv54.i = zext i8 %retval.0.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %retval.0.i.i)
  %cmp55.i = icmp ugt i8 %retval.0.i.i, 8
  %cond.i = zext i1 %cmp55.i to i32
  %add59.i = or i32 %ff_pci_sz.0.i, %cond
  %add60.i = add i32 %108, %cond.i
  %add61.i = add i32 %add60.i, %add59.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add61.i, i32 %conv54.i)
  %cmp65.i = icmp ult i32 %add61.i, %conv54.i
  br i1 %cmp65.i, label %if.end51.i.out_unlock_crit_edge, label %if.end68.i

if.end51.i.out_unlock_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end68.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %108)
  %cmp71.i = icmp ugt i32 %108, 8200
  br i1 %cmp71.i, label %if.end68.i.cleanup.sink.split.i_crit_edge, label %if.end75.i

if.end68.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

if.end75.i:                                       ; preds = %if.end68.i
  %109 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %rx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i, i32 %conv54.i)
  %cmp812.i = icmp ult i32 %add59.i, %conv54.i
  br i1 %cmp812.i, label %if.end75.i.for.body.i_crit_edge, label %if.end75.i.for.end.i_crit_edge

if.end75.i.for.end.i_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end75.i.for.body.i_crit_edge:                  ; preds = %if.end75.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end75.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc89.i, %for.body.i.for.body.i_crit_edge ], [ %add59.i, %if.end75.i.for.body.i_crit_edge ]
  %arrayidx84.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %i.03.i
  %110 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx84.i, align 1
  %112 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx.i, align 8
  %inc.i = add i32 %113, 1
  store i32 %inc.i, ptr %rx.i, align 8
  %arrayidx88.i = getelementptr %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 6, i32 %113
  %114 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %111, ptr %arrayidx88.i, align 1
  %inc89.i = add nuw nsw i32 %i.03.i, 1
  %115 = ptrtoint ptr %ll_dl.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ll_dl.i, align 2
  %conv80.i = zext i8 %116 to i32
  %cmp81.i = icmp ult i32 %inc89.i, %conv80.i
  br i1 %cmp81.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end75.i.for.end.i_crit_edge
  %sn.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 4
  %117 = ptrtoint ptr %sn.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %sn.i, align 1
  %118 = ptrtoint ptr %state.i119 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 3, ptr %state.i119, align 8
  %119 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %opt, align 8
  %and93.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %for.end.i.out_unlock_crit_edge

for.end.i.out_unlock_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end.i.cleanup.sink.split.i_crit_edge, %if.end68.i.cleanup.sink.split.i_crit_edge
  %.sink.i129 = phi i8 [ 2, %if.end68.i.cleanup.sink.split.i_crit_edge ], [ 0, %for.end.i.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @isotp_send_fc(ptr noundef %data, i32 noundef %cond, i8 noundef zeroext %.sink.i129) #14
  br label %out_unlock

sw.bb72:                                          ; preds = %if.end37
  %rx.i130 = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15
  %state.i131 = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 2
  %121 = ptrtoint ptr %state.i131 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %state.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %122)
  %cmp.not.i132 = icmp eq i32 %122, 3
  br i1 %cmp.not.i132, label %if.end.i136, label %sw.bb72.out_unlock_crit_edge

sw.bb72.out_unlock_crit_edge:                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end.i136:                                      ; preds = %sw.bb72
  %and.i134 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool.not.i135 = icmp eq i32 %and.i134, 0
  br i1 %tobool.not.i135, label %if.end.i136.if.end8.i_crit_edge, label %if.then1.i

if.end.i136.if.end8.i_crit_edge:                  ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then1.i:                                       ; preds = %if.end.i136
  %123 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %123, align 8
  %lastrxcf_tstamp.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 6
  %126 = ptrtoint ptr %lastrxcf_tstamp.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %lastrxcf_tstamp.i, align 8
  %sub.i = sub i64 %125, %127
  %force_rx_stmin.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 14
  %128 = ptrtoint ptr %force_rx_stmin.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %force_rx_stmin.i, align 4
  %conv.i137 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv.i137)
  %cmp3.i = icmp slt i64 %sub.i, %conv.i137
  br i1 %cmp3.i, label %if.then1.i.out_unlock_crit_edge, label %if.end6.i

if.then1.i.out_unlock_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end6.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #16
  %130 = ptrtoint ptr %lastrxcf_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %125, ptr %lastrxcf_tstamp.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end6.i, %if.end.i136.if.end8.i_crit_edge
  %rxtimer.i138 = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 7
  %call9.i = tail call i32 @hrtimer_cancel(ptr noundef %rxtimer.i138) #14
  %len.i139 = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 1
  %131 = ptrtoint ptr %len.i139 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %len.i139, align 4
  %ll_dl.i140 = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 5
  %133 = ptrtoint ptr %ll_dl.i140 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ll_dl.i140, align 2
  %conv12.i = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp13.i = icmp ugt i8 %132, %134
  br i1 %cmp13.i, label %if.end8.i.out_unlock_crit_edge, label %if.end16.i

if.end8.i.out_unlock_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end16.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp22.i = icmp ult i8 %132, %134
  br i1 %cmp22.i, label %if.then24.i, label %if.end16.i.if.end38.i_crit_edge

if.end16.i.if.end38.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then24.i:                                      ; preds = %if.end16.i
  %len26.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 1
  %135 = ptrtoint ptr %len26.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len26.i, align 4
  %137 = ptrtoint ptr %rx.i130 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rx.i130, align 8
  %sub28.i = sub i32 %136, %138
  %139 = xor i32 %cond, -1
  %sub33.i = add nsw i32 %conv12.i, %139
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28.i, i32 %sub33.i)
  %cmp34.i = icmp ugt i32 %sub28.i, %sub33.i
  br i1 %cmp34.i, label %if.then24.i.out_unlock_crit_edge, label %if.then24.i.if.end38.i_crit_edge

if.then24.i.if.end38.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then24.i.out_unlock_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end38.i:                                       ; preds = %if.then24.i.if.end38.i_crit_edge, %if.end16.i.if.end38.i_crit_edge
  %140 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx13, align 1
  %142 = and i8 %141, 15
  %sn.i142 = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 4
  %143 = ptrtoint ptr %sn.i142 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %sn.i142, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %144)
  %cmp43.not.i = icmp eq i8 %142, %144
  br i1 %cmp43.not.i, label %if.end51.i146, label %if.then45.i

if.then45.i:                                      ; preds = %if.end38.i
  %sk_err.i143 = getelementptr inbounds %struct.sock, ptr %data, i32 0, i32 51
  %145 = ptrtoint ptr %sk_err.i143 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 84, ptr %sk_err.i143, align 4
  %146 = getelementptr inbounds %struct.sock_common, ptr %data, i32 0, i32 13
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %146, align 4
  %149 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.i.not.i144 = icmp eq i32 %149, 0
  br i1 %tobool.i.not.i144, label %if.then47.i, label %if.then45.i.if.end48.i_crit_edge

if.then45.i.if.end48.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sk_error_report(ptr noundef %data) #14
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.then45.i.if.end48.i_crit_edge
  %150 = ptrtoint ptr %state.i131 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %state.i131, align 8
  br label %out_unlock

if.end51.i146:                                    ; preds = %if.end38.i
  %inc.i145 = add i8 %141, 1
  %151 = and i8 %inc.i145, 15
  %152 = ptrtoint ptr %sn.i142 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %sn.i142, align 1
  %len72.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i147.for.cond.i_crit_edge, %if.end51.i146
  %i.0.in.i = phi i32 [ %cond, %if.end51.i146 ], [ %i.0.i, %for.body.i147.for.cond.i_crit_edge ]
  %i.0.i = add nuw nsw i32 %i.0.in.i, 1
  %153 = ptrtoint ptr %len.i139 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %len.i139, align 4
  %conv59.i = zext i8 %154 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %conv59.i)
  %cmp60.i = icmp ult i32 %i.0.i, %conv59.i
  br i1 %cmp60.i, label %for.body.i147, label %for.cond.i.for.end.i148_crit_edge

for.cond.i.for.end.i148_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i148

for.body.i147:                                    ; preds = %for.cond.i
  %arrayidx63.i = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %i.0.i
  %155 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx63.i, align 1
  %157 = ptrtoint ptr %rx.i130 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rx.i130, align 8
  %inc67.i = add i32 %158, 1
  store i32 %inc67.i, ptr %rx.i130, align 8
  %arrayidx68.i = getelementptr %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 6, i32 %158
  %159 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %156, ptr %arrayidx68.i, align 1
  %160 = load i32, ptr %rx.i130, align 8
  %161 = ptrtoint ptr %len72.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %len72.i, align 4
  %cmp73.not.i = icmp ult i32 %160, %162
  br i1 %cmp73.not.i, label %for.body.i147.for.cond.i_crit_edge, label %for.body.i147.for.end.i148_crit_edge

for.body.i147.for.end.i148_crit_edge:             ; preds = %for.body.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i148

for.body.i147.for.cond.i_crit_edge:               ; preds = %for.body.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.end.i148:                                     ; preds = %for.body.i147.for.end.i148_crit_edge, %for.cond.i.for.end.i148_crit_edge
  %163 = ptrtoint ptr %rx.i130 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rx.i130, align 8
  %165 = ptrtoint ptr %len72.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len72.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp82.not.i = icmp ult i32 %164, %166
  br i1 %cmp82.not.i, label %if.end115.i, label %if.then84.i

if.then84.i:                                      ; preds = %for.end.i148
  %167 = ptrtoint ptr %state.i131 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %state.i131, align 8
  %168 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %opt, align 8
  %and89.i = and i32 %169, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.then84.i.if.end100.i_crit_edge, label %land.lhs.true.i

if.then84.i.if.end100.i_crit_edge:                ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

land.lhs.true.i:                                  ; preds = %if.then84.i
  %add91.i = add nuw i32 %i.0.in.i, 2
  %rxpad_content.i149 = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 9, i32 4
  %170 = ptrtoint ptr %rxpad_content.i149 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %rxpad_content.i149, align 2
  %and.i.i150 = and i32 %169, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i150)
  %tobool.not.i.i151 = icmp eq i32 %and.i.i150, 0
  %and3.i.i152 = and i32 %169, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i152)
  %tobool4.not.i.i153 = icmp eq i32 %and3.i.i152, 0
  br i1 %tobool.not.i.i151, label %if.then.i.i154, label %if.end6.i.i165

if.then.i.i154:                                   ; preds = %land.lhs.true.i
  br i1 %tobool4.not.i.i153, label %if.then.i.i154.if.then95.i_crit_edge, label %if.then5.i.i156

if.then.i.i154.if.then95.i_crit_edge:             ; preds = %if.then.i.i154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then95.i

if.then5.i.i156:                                  ; preds = %if.then.i.i154
  %172 = ptrtoint ptr %len.i139 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %len.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %173)
  %cmp.i.i.i155 = icmp ult i8 %173, 9
  br i1 %cmp.i.i.i155, label %if.then.i.i.i158, label %if.end.i.i.i161

if.then.i.i.i158:                                 ; preds = %if.then5.i.i156
  %conv.i.i.i = zext i8 %173 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add91.i, i32 %conv.i.i.i)
  %cmp4.i.i.not.i157 = icmp eq i32 %add91.i, %conv.i.i.i
  br i1 %cmp4.i.i.not.i157, label %if.then.i.i.i158.if.end100.i_crit_edge, label %if.then.i.i.i158.if.then95.i_crit_edge

if.then.i.i.i158.if.then95.i_crit_edge:           ; preds = %if.then.i.i.i158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then95.i

if.then.i.i.i158.if.end100.i_crit_edge:           ; preds = %if.then.i.i.i158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

if.end.i.i.i161:                                  ; preds = %if.then5.i.i156
  %conv8.i.i.i159 = trunc i32 %add91.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv8.i.i.i159)
  %cmp.i.i.i.i160 = icmp ugt i8 %conv8.i.i.i159, 48
  br i1 %cmp.i.i.i.i160, label %if.end.i.i.i161.check_pad.exit.i186_crit_edge, label %if.end.i.i.i.i164

if.end.i.i.i161.check_pad.exit.i186_crit_edge:    ; preds = %if.end.i.i.i161
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_pad.exit.i186

if.end.i.i.i.i164:                                ; preds = %if.end.i.i.i161
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i162 = and i32 %add91.i, 255
  %arrayidx.i.i.i.i163 = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv.i.i.i.i162
  %174 = ptrtoint ptr %arrayidx.i.i.i.i163 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.i.i.i.i163, align 1
  br label %check_pad.exit.i186

if.end6.i.i165:                                   ; preds = %land.lhs.true.i
  br i1 %tobool4.not.i.i153, label %if.end6.i.i165.if.end16.i.i175_crit_edge, label %land.lhs.true.i.i167

if.end6.i.i165.if.end16.i.i175_crit_edge:         ; preds = %if.end6.i.i165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i175

land.lhs.true.i.i167:                             ; preds = %if.end6.i.i165
  %176 = ptrtoint ptr %len.i139 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %len.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %177)
  %cmp.i43.i.i166 = icmp ugt i8 %177, 48
  br i1 %cmp.i43.i.i166, label %land.lhs.true.i.i167.padlen.exit.i.i172_crit_edge, label %if.end.i45.i.i169

land.lhs.true.i.i167.padlen.exit.i.i172_crit_edge: ; preds = %land.lhs.true.i.i167
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit.i.i172

if.end.i45.i.i169:                                ; preds = %land.lhs.true.i.i167
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i44.i.i = zext i8 %177 to i32
  %arrayidx.i.i.i168 = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv.i44.i.i
  %178 = ptrtoint ptr %arrayidx.i.i.i168 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.i.i.i168, align 1
  br label %padlen.exit.i.i172

padlen.exit.i.i172:                               ; preds = %if.end.i45.i.i169, %land.lhs.true.i.i167.padlen.exit.i.i172_crit_edge
  %retval.0.i46.i.i170 = phi i8 [ %179, %if.end.i45.i.i169 ], [ 64, %land.lhs.true.i.i167.padlen.exit.i.i172_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %177, i8 %retval.0.i46.i.i170)
  %cmp.not.i.i171 = icmp eq i8 %177, %retval.0.i46.i.i170
  br i1 %cmp.not.i.i171, label %padlen.exit.i.i172.if.end16.i.i175_crit_edge, label %padlen.exit.i.i172.if.then95.i_crit_edge

padlen.exit.i.i172.if.then95.i_crit_edge:         ; preds = %padlen.exit.i.i172
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then95.i

padlen.exit.i.i172.if.end16.i.i175_crit_edge:     ; preds = %padlen.exit.i.i172
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i175

if.end16.i.i175:                                  ; preds = %padlen.exit.i.i172.if.end16.i.i175_crit_edge, %if.end6.i.i165.if.end16.i.i175_crit_edge
  %and19.i.i173 = and i32 %169, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i173)
  %tobool20.not.i.i174 = icmp eq i32 %and19.i.i173, 0
  br i1 %tobool20.not.i.i174, label %if.end16.i.i175.if.end100.i_crit_edge, label %for.cond.preheader.i.i

if.end16.i.i175.if.end100.i_crit_edge:            ; preds = %if.end16.i.i175
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

for.cond.preheader.i.i:                           ; preds = %if.end16.i.i175
  %180 = ptrtoint ptr %len.i139 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %len.i139, align 4
  %conv23.i.i = zext i8 %181 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add91.i, i32 %conv23.i.i)
  %cmp2447.i.i176 = icmp slt i32 %add91.i, %conv23.i.i
  br i1 %cmp2447.i.i176, label %for.cond.preheader.i.i.for.body.i.i183_crit_edge, label %for.cond.preheader.i.i.if.end100.i_crit_edge

for.cond.preheader.i.i.if.end100.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

for.cond.preheader.i.i.for.body.i.i183_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i183

for.cond.i.i179:                                  ; preds = %for.body.i.i183
  %inc.i.i177 = add i32 %i.048.i.i180, 1
  %exitcond.not.i.i178 = icmp eq i32 %inc.i.i177, %conv23.i.i
  br i1 %exitcond.not.i.i178, label %for.cond.i.i179.if.end100.i_crit_edge, label %for.cond.i.i179.for.body.i.i183_crit_edge

for.cond.i.i179.for.body.i.i183_crit_edge:        ; preds = %for.cond.i.i179
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i183

for.cond.i.i179.if.end100.i_crit_edge:            ; preds = %for.cond.i.i179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

for.body.i.i183:                                  ; preds = %for.cond.i.i179.for.body.i.i183_crit_edge, %for.cond.preheader.i.i.for.body.i.i183_crit_edge
  %i.048.i.i180 = phi i32 [ %inc.i.i177, %for.cond.i.i179.for.body.i.i183_crit_edge ], [ %add91.i, %for.cond.preheader.i.i.for.body.i.i183_crit_edge ]
  %arrayidx.i.i181 = getelementptr %struct.canfd_frame, ptr %7, i32 0, i32 5, i32 %i.048.i.i180
  %182 = ptrtoint ptr %arrayidx.i.i181 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i.i181, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %183, i8 %171)
  %cmp28.not.i.i182 = icmp eq i8 %183, %171
  br i1 %cmp28.not.i.i182, label %for.cond.i.i179, label %for.body.i.i183.if.then95.i_crit_edge

for.body.i.i183.if.then95.i_crit_edge:            ; preds = %for.body.i.i183
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then95.i

check_pad.exit.i186:                              ; preds = %if.end.i.i.i.i164, %if.end.i.i.i161.check_pad.exit.i186_crit_edge
  %retval.0.i.i.i.i184 = phi i8 [ %175, %if.end.i.i.i.i164 ], [ 64, %if.end.i.i.i161.check_pad.exit.i186_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %173, i8 %retval.0.i.i.i.i184)
  %cmp10.i.i.not.i185 = icmp eq i8 %173, %retval.0.i.i.i.i184
  br i1 %cmp10.i.i.not.i185, label %check_pad.exit.i186.if.end100.i_crit_edge, label %check_pad.exit.i186.if.then95.i_crit_edge

check_pad.exit.i186.if.then95.i_crit_edge:        ; preds = %check_pad.exit.i186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then95.i

check_pad.exit.i186.if.end100.i_crit_edge:        ; preds = %check_pad.exit.i186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

if.then95.i:                                      ; preds = %check_pad.exit.i186.if.then95.i_crit_edge, %for.body.i.i183.if.then95.i_crit_edge, %padlen.exit.i.i172.if.then95.i_crit_edge, %if.then.i.i.i158.if.then95.i_crit_edge, %if.then.i.i154.if.then95.i_crit_edge
  %sk_err96.i = getelementptr inbounds %struct.sock, ptr %data, i32 0, i32 51
  %184 = ptrtoint ptr %sk_err96.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 74, ptr %sk_err96.i, align 4
  %185 = getelementptr inbounds %struct.sock_common, ptr %data, i32 0, i32 13
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %185, align 4
  %188 = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.i1.not.i187 = icmp eq i32 %188, 0
  br i1 %tobool.i1.not.i187, label %if.then98.i, label %if.then95.i.out_unlock_crit_edge

if.then95.i.out_unlock_crit_edge:                 ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then98.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sk_error_report(ptr noundef %data) #14
  br label %out_unlock

if.end100.i:                                      ; preds = %check_pad.exit.i186.if.end100.i_crit_edge, %for.cond.i.i179.if.end100.i_crit_edge, %for.cond.preheader.i.i.if.end100.i_crit_edge, %if.end16.i.i175.if.end100.i_crit_edge, %if.then.i.i.i158.if.end100.i_crit_edge, %if.then84.i.if.end100.i_crit_edge
  %189 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i = and i32 %189, -16384
  %190 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i2.i = and i32 %192, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  %cond.i.i = select i1 %tobool.not.i3.i, i32 3264, i32 2592
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %166, i32 noundef %cond.i.i, i32 noundef 0, i32 noundef -1) #14
  %tobool105.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool105.not.i, label %if.end100.i.out_unlock_crit_edge, label %if.end107.i

if.end100.i.out_unlock_crit_edge:                 ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end107.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #16
  %193 = ptrtoint ptr %len72.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %len72.i, align 4
  %call110.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %194) #14
  %buf112.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 6
  %195 = ptrtoint ptr %len72.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %len72.i, align 4
  %197 = call ptr @memcpy(ptr %call110.i, ptr %buf112.i, i32 %196)
  %198 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %198, align 8
  %201 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %200, ptr %201, align 8
  %203 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 8
  %206 = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 2
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %205, ptr %206, align 8
  tail call fastcc void @isotp_rcv_skb(ptr noundef nonnull %call.i.i, ptr noundef %data) #14
  br label %out_unlock

if.end115.i:                                      ; preds = %for.end.i148
  %rxfc.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 10
  %208 = ptrtoint ptr %rxfc.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %rxfc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool116.not.i = icmp eq i8 %209, 0
  br i1 %tobool116.not.i, label %if.end115.i.if.then126.i_crit_edge, label %lor.lhs.false.i188

if.end115.i.if.then126.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then126.i

lor.lhs.false.i188:                               ; preds = %if.end115.i
  %bs118.i = getelementptr inbounds %struct.isotp_sock, ptr %data, i32 0, i32 15, i32 3
  %210 = ptrtoint ptr %bs118.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %bs118.i, align 4
  %inc119.i = add i8 %211, 1
  store i8 %inc119.i, ptr %bs118.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %inc119.i, i8 %209)
  %cmp124.i = icmp ult i8 %inc119.i, %209
  br i1 %cmp124.i, label %lor.lhs.false.i188.if.then126.i_crit_edge, label %if.end129.i

lor.lhs.false.i188.if.then126.i_crit_edge:        ; preds = %lor.lhs.false.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then126.i

if.then126.i:                                     ; preds = %lor.lhs.false.i188.if.then126.i_crit_edge, %if.end115.i.if.then126.i_crit_edge
  tail call void @hrtimer_start_range_ns(ptr noundef %rxtimer.i138, i64 noundef 1000000000, i64 noundef 0, i32 noundef 5) #14
  br label %out_unlock

if.end129.i:                                      ; preds = %lor.lhs.false.i188
  %212 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %opt, align 8
  %and132.i = and i32 %213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i)
  %tobool133.not.i = icmp eq i32 %and132.i, 0
  br i1 %tobool133.not.i, label %if.end135.i, label %if.end129.i.out_unlock_crit_edge

if.end129.i.out_unlock_crit_edge:                 ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end135.i:                                      ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @isotp_send_fc(ptr noundef %data, i32 noundef %cond, i8 noundef zeroext 0) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.end135.i, %if.end129.i.out_unlock_crit_edge, %if.then126.i, %if.end107.i, %if.end100.i.out_unlock_crit_edge, %if.then98.i, %if.then95.i.out_unlock_crit_edge, %if.end48.i, %if.then24.i.out_unlock_crit_edge, %if.end8.i.out_unlock_crit_edge, %if.then1.i.out_unlock_crit_edge, %sw.bb72.out_unlock_crit_edge, %cleanup.sink.split.i, %for.end.i.out_unlock_crit_edge, %if.end51.i.out_unlock_crit_edge, %padlen.exit.i.out_unlock_crit_edge, %if.then60, %if.else.out_unlock_crit_edge, %if.then50, %sw.default.i, %sw.bb102.i, %sw.bb.i, %if.end15.i, %sw.bb.out_unlock_crit_edge, %if.end37.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %if.then21.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !89
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !90
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !91

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !92
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isotp_rcv_sf(ptr noundef %sk, ptr nocapture noundef readonly %cf, i32 noundef %pcilen, ptr nocapture noundef readonly %skb, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rxtimer = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 7
  %call1 = tail call i32 @hrtimer_cancel(ptr noundef %rxtimer) #14
  %state = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %len2 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %1 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len2, align 4
  %conv = zext i8 %2 to i32
  %sub = sub i32 %conv, %pcilen
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp = icmp slt i32 %sub, %len
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opt, align 8
  %and = and i32 %4, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %add = add i32 %len, %pcilen
  %rxpad_content = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9, i32 4
  %5 = ptrtoint ptr %rxpad_content to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rxpad_content, align 2
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %land.lhs.true
  br i1 %tobool4.not.i, label %if.then.i.if.then8_crit_edge, label %if.then5.i

if.then.i.if.then8_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %2)
  %cmp.i.i = icmp ult i8 %2, 9
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp4.i.i.not = icmp eq i32 %add, %conv
  br i1 %cmp4.i.i.not, label %if.then.i.i.if.end12_crit_edge, label %if.then.i.i.if.then8_crit_edge

if.then.i.i.if.then8_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then.i.i.if.end12_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end.i.i:                                       ; preds = %if.then5.i
  %conv8.i.i = trunc i32 %add to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv8.i.i)
  %cmp.i.i.i = icmp ugt i8 %conv8.i.i, 48
  br i1 %cmp.i.i.i, label %if.end.i.i.check_pad.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.check_pad.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_pad.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i = and i32 %add, 255
  %arrayidx.i.i.i = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  br label %check_pad.exit

if.end6.i:                                        ; preds = %land.lhs.true
  br i1 %tobool4.not.i, label %if.end6.i.if.end16.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end16.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %2)
  %cmp.i43.i = icmp ugt i8 %2, 48
  br i1 %cmp.i43.i, label %land.lhs.true.i.padlen.exit.i_crit_edge, label %if.end.i45.i

land.lhs.true.i.padlen.exit.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit.i

if.end.i45.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  br label %padlen.exit.i

padlen.exit.i:                                    ; preds = %if.end.i45.i, %land.lhs.true.i.padlen.exit.i_crit_edge
  %retval.0.i46.i = phi i8 [ %10, %if.end.i45.i ], [ 64, %land.lhs.true.i.padlen.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %retval.0.i46.i)
  %cmp.not.i = icmp eq i8 %2, %retval.0.i46.i
  br i1 %cmp.not.i, label %padlen.exit.i.if.end16.i_crit_edge, label %padlen.exit.i.if.then8_crit_edge

padlen.exit.i.if.then8_crit_edge:                 ; preds = %padlen.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

padlen.exit.i.if.end16.i_crit_edge:               ; preds = %padlen.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.end16.i:                                       ; preds = %padlen.exit.i.if.end16.i_crit_edge, %if.end6.i.if.end16.i_crit_edge
  %and19.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp ne i32 %and19.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp2447.i = icmp slt i32 %add, %conv
  %or.cond = select i1 %tobool20.not.i, i1 %cmp2447.i, i1 false
  br i1 %or.cond, label %if.end16.i.for.body.i_crit_edge, label %if.end16.i.if.end12_crit_edge

if.end16.i.if.end12_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.cond.i.if.end12_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ %add, %if.end16.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.048.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %6)
  %cmp28.not.i = icmp eq i8 %12, %6
  br i1 %cmp28.not.i, label %for.cond.i, label %for.body.i.if.then8_crit_edge

for.body.i.if.then8_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

check_pad.exit:                                   ; preds = %if.end.i.i.i, %if.end.i.i.check_pad.exit_crit_edge
  %retval.0.i.i.i = phi i8 [ %8, %if.end.i.i.i ], [ 64, %if.end.i.i.check_pad.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %retval.0.i.i.i)
  %cmp10.i.i.not = icmp eq i8 %2, %retval.0.i.i.i
  br i1 %cmp10.i.i.not, label %check_pad.exit.if.end12_crit_edge, label %check_pad.exit.if.then8_crit_edge

check_pad.exit.if.then8_crit_edge:                ; preds = %check_pad.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

check_pad.exit.if.end12_crit_edge:                ; preds = %check_pad.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then8:                                         ; preds = %check_pad.exit.if.then8_crit_edge, %for.body.i.if.then8_crit_edge, %padlen.exit.i.if.then8_crit_edge, %if.then.i.i.if.then8_crit_edge, %if.then.i.if.then8_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %13 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 74, ptr %sk_err, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %if.then10, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sk_error_report(ptr noundef %sk) #14
  br label %cleanup

if.end12:                                         ; preds = %check_pad.exit.if.end12_crit_edge, %for.cond.i.if.end12_crit_edge, %if.end16.i.if.end12_crit_edge, %if.then.i.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i1 = and i32 %21, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.not.i2 = icmp eq i32 %and.i1, 0
  %cond.i = select i1 %tobool.not.i2, i32 3264, i32 2592
  %call.i = tail call ptr @__alloc_skb(i32 noundef %len, i32 noundef %cond.i, i32 noundef 0, i32 noundef -1) #14
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #14
  %arrayidx = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %pcilen
  %22 = call ptr @memcpy(ptr %call18, ptr %arrayidx, i32 %len)
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %23, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %25, ptr %26, align 8
  %28 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %31, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %33 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %34 = ptrtoint ptr %cb.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 29, ptr %cb.i, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 17
  %35 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifindex.i, align 4
  %can_ifindex.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %can_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %can_ifindex.i, align 4
  %call.i3 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.i = icmp slt i32 %call.i3, 0
  br i1 %cmp.i, label %if.then.i4, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i4:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %if.then8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isotp_rcv_skb(ptr noundef %skb, ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %1 = ptrtoint ptr %cb to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 29, ptr %cb, align 8
  %2 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  %can_ifindex = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %can_ifindex to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %can_ifindex, align 4
  %call = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isotp_send_fc(ptr noundef %sk, i32 noundef %ae, i8 noundef zeroext %flowstatus) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ll = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 12
  %0 = ptrtoint ptr %ll to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ll, align 2
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 16
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %5, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %cond.i, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %ifindex = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 2
  %8 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex, align 4
  %call4 = tail call ptr @dev_get_by_index(ptr noundef %7, i32 noundef %9) #14
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %13, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %ifindex8 = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 17
  %14 = ptrtoint ptr %ifindex8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex8, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %17, align 8
  %19 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %skbcnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %skbcnt, align 4
  %21 = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call4, ptr %21, align 8
  %tobool.not.i3 = icmp eq ptr %sk, null
  br i1 %tobool.not.i3, label %if.end7.can_skb_set_owner.exit_crit_edge, label %land.lhs.true.i

if.end7.can_skb_set_owner.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %can_skb_set_owner.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  %23 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %25 = phi i32 [ %24, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %25, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %27 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %29 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %28, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !111
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %28
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !95

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %30 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %31, 1
  %32 = or i32 %add5.i.i.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !95

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #14
  %33 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %34 = phi i32 [ %31, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool12.i.i.i.not.i = icmp eq i32 %34, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, label %if.then.i

refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %can_skb_set_owner.exit

if.then.i:                                        ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @sock_efree, ptr %destructor.i, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sk, ptr %36, align 4
  br label %can_skb_set_owner.exit

can_skb_set_owner.exit:                           ; preds = %if.then.i, %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, %if.end7.can_skb_set_owner.exit_crit_edge
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %40 = ptrtoint ptr %ll to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ll, align 2
  %conv14 = zext i8 %41 to i32
  %call.i4 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv14) #14
  %42 = call ptr @memset(ptr %call.i4, i32 0, i32 %conv14)
  %txid = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 3
  %43 = ptrtoint ptr %txid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %txid, align 8
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %39, align 8
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9
  %46 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %opt, align 8
  %and = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %can_skb_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #16
  %data18 = getelementptr inbounds %struct.canfd_frame, ptr %39, i32 0, i32 5
  %txpad_content = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9, i32 3
  %48 = ptrtoint ptr %txpad_content to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %txpad_content, align 1
  %50 = zext i8 %49 to i32
  %51 = call ptr @memset(ptr %data18, i32 %50, i32 8)
  br label %if.end24

if.else:                                          ; preds = %can_skb_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #16
  %52 = trunc i32 %ae to i8
  %conv22 = add i8 %52, 3
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %.sink = phi i8 [ %conv22, %if.else ], [ 8, %if.then17 ]
  %53 = getelementptr inbounds %struct.canfd_frame, ptr %39, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink, ptr %53, align 4
  %55 = or i8 %flowstatus, 48
  %arrayidx = getelementptr %struct.canfd_frame, ptr %39, i32 0, i32 5, i32 %ae
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx, align 1
  %rxfc = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 10
  %57 = ptrtoint ptr %rxfc to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rxfc, align 4
  %add29 = add i32 %ae, 1
  %arrayidx30 = getelementptr %struct.canfd_frame, ptr %39, i32 0, i32 5, i32 %add29
  %59 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx30, align 1
  %stmin = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %stmin to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %stmin, align 1
  %add33 = add i32 %ae, 2
  %arrayidx34 = getelementptr %struct.canfd_frame, ptr %39, i32 0, i32 5, i32 %add33
  %62 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ae)
  %tobool35.not = icmp eq i32 %ae, 0
  br i1 %tobool35.not, label %if.end24.if.end40_crit_edge, label %if.then36

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then36:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %data27 = getelementptr inbounds %struct.canfd_frame, ptr %39, i32 0, i32 5
  %ext_address = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9, i32 2
  %63 = ptrtoint ptr %ext_address to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ext_address, align 8
  %65 = ptrtoint ptr %data27 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %data27, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end24.if.end40_crit_edge
  %tx_flags = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 12, i32 2
  %66 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %tx_flags, align 2
  %flags42 = getelementptr inbounds %struct.canfd_frame, ptr %39, i32 0, i32 2
  %68 = ptrtoint ptr %flags42 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %flags42, align 1
  %call43 = call i32 @can_send(ptr noundef nonnull %call.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end40.do.body1.i_crit_edge, label %land.end

if.end40.do.body1.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i

land.end:                                         ; preds = %if.end40
  %.b1 = load i1, ptr @isotp_send_fc.__already_done, align 1
  br i1 %.b1, label %land.end.do.body1.i_crit_edge, label %if.then52, !prof !95

land.end.do.body1.i_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i

if.then52:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @isotp_send_fc.__already_done, align 1
  %69 = inttoptr i32 %call43 to ptr
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %69) #17
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then52, %land.end.do.body1.i_crit_edge, %if.end40.do.body1.i_crit_edge
  %70 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !89
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 118
  %71 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pcpu_refcnt.i, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %79, %73
  %80 = inttoptr i32 %add.i to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add13.i = add i32 %82, -1
  store i32 %add13.i, ptr %80, align 4
  %83 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !90
  %and.i.i.i6 = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i6)
  %tobool24.not.i = icmp eq i32 %and.i.i.i6, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !91

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %70) #14, !srcloc !92
  %bs64 = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 15, i32 3
  %84 = ptrtoint ptr %bs64 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %bs64, align 4
  %lastrxcf_tstamp = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 6
  %85 = ptrtoint ptr %lastrxcf_tstamp to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %lastrxcf_tstamp, align 8
  %rxtimer = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 7
  call void @hrtimer_start_range_ns(ptr noundef %rxtimer, i64 noundef 1000000000, i64 noundef 0, i32 noundef 5) #14
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_send(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isotp_fill_dataframe(ptr nocapture noundef writeonly %cf, ptr nocapture noundef %so, i32 noundef %ae, i32 noundef %off) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %ae, 1
  %add1 = add i32 %add, %off
  %tx = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 16
  %ll_dl = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 16, i32 5
  %0 = ptrtoint ptr %ll_dl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ll_dl, align 2
  %conv = zext i8 %1 to i32
  %sub = sub i32 %conv, %add1
  %len = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx, align 8
  %sub4 = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4, i32 %sub)
  %cmp = icmp slt i32 %sub4, %sub
  %6 = tail call i32 @llvm.smin.i32(i32 %sub4, i32 %sub)
  %txid = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 3
  %7 = ptrtoint ptr %txid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txid, align 8
  %9 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cf, align 8
  %add6 = add i32 %6, %add1
  %conv7 = trunc i32 %add6 to i8
  %len8 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %10 = ptrtoint ptr %len8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %len8, align 4
  br i1 %cmp, label %if.then, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then:                                          ; preds = %entry
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 9
  %11 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opt, align 8
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv7)
  %cmp.i = icmp ugt i8 %conv7, 48
  br i1 %cmp.i, label %if.then11.padlen.exit_crit_edge, label %if.end.i

if.then11.padlen.exit_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = and i32 %add6, 255
  %arrayidx.i = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  br label %padlen.exit

padlen.exit:                                      ; preds = %if.end.i, %if.then11.padlen.exit_crit_edge
  %retval.0.i = phi i8 [ %14, %if.end.i ], [ 64, %if.then11.padlen.exit_crit_edge ]
  %15 = ptrtoint ptr %len8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i, ptr %len8, align 4
  %data = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %txpad_content = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %txpad_content to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %txpad_content, align 1
  %conv17 = zext i8 %retval.0.i to i32
  %18 = zext i8 %17 to i32
  %19 = call ptr @memset(ptr %data, i32 %18, i32 %conv17)
  br label %if.end31

if.else:                                          ; preds = %if.then
  %conv19 = and i32 %add6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv19)
  %cmp20 = icmp ugt i32 %conv19, 8
  br i1 %cmp20, label %if.then22, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv7)
  %cmp.i77 = icmp ugt i8 %conv7, 48
  br i1 %cmp.i77, label %if.then22.padlen.exit82_crit_edge, label %if.end.i80

if.then22.padlen.exit82_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit82

if.end.i80:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i79 = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv19
  %20 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i79, align 1
  br label %padlen.exit82

padlen.exit82:                                    ; preds = %if.end.i80, %if.then22.padlen.exit82_crit_edge
  %retval.0.i81 = phi i8 [ %21, %if.end.i80 ], [ 64, %if.then22.padlen.exit82_crit_edge ]
  %22 = ptrtoint ptr %len8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %retval.0.i81, ptr %len8, align 4
  %data26 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %conv29 = zext i8 %retval.0.i81 to i32
  %23 = call ptr @memset(ptr %data26, i32 204, i32 %conv29)
  br label %if.end31

if.end31:                                         ; preds = %padlen.exit82, %if.else.if.end31_crit_edge, %padlen.exit, %entry.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3283 = icmp sgt i32 %6, 0
  br i1 %cmp3283, label %if.end31.for.body_crit_edge, label %if.end31.for.end_crit_edge

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end31.for.body_crit_edge
  %i.084 = phi i32 [ %inc40, %for.body.for.body_crit_edge ], [ 0, %if.end31.for.body_crit_edge ]
  %24 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %tx, align 8
  %arrayidx = getelementptr %struct.isotp_sock, ptr %so, i32 0, i32 16, i32 6, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %add38 = add i32 %i.084, %add1
  %arrayidx39 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %add38
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx39, align 1
  %inc40 = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc40, %6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end31.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ae)
  %tobool41.not = icmp eq i32 %ae, 0
  br i1 %tobool41.not, label %for.end.if.end46_crit_edge, label %if.then42

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %ext_address = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %ext_address to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ext_address, align 8
  %data44 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %31 = ptrtoint ptr %data44 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %data44, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %for.end.if.end46_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isotp_create_fframe(ptr nocapture noundef writeonly %cf, ptr nocapture noundef %so, i32 noundef %ae) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %txid = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 3
  %0 = ptrtoint ptr %txid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txid, align 8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cf, align 8
  %tx = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 16
  %ll_dl = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 16, i32 5
  %3 = ptrtoint ptr %ll_dl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ll_dl, align 2
  %len = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ae)
  %tobool.not = icmp eq i32 %ae, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ext_address = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %ext_address to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ext_address, align 8
  %data = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len2 = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %10)
  %cmp = icmp ugt i32 %10, 4095
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %ae
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %arrayidx5, align 1
  %add = add i32 %ae, 1
  %arrayidx7 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %add
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx7, align 1
  %13 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len2, align 4
  %shr = lshr i32 %14, 24
  %conv11 = trunc i32 %shr to i8
  %add13 = add i32 %ae, 2
  %arrayidx14 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %add13
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv11, ptr %arrayidx14, align 1
  %16 = load i32, ptr %len2, align 4
  %shr17 = lshr i32 %16, 16
  %conv21 = trunc i32 %shr17 to i8
  %add23 = add i32 %ae, 3
  %arrayidx24 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %add23
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv21, ptr %arrayidx24, align 1
  %18 = load i32, ptr %len2, align 4
  %shr27 = lshr i32 %18, 8
  %conv31 = trunc i32 %shr27 to i8
  %add33 = add i32 %ae, 4
  br label %if.end61

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %shr46 = lshr i32 %10, 8
  %19 = trunc i32 %shr46 to i8
  %conv49 = or i8 %19, 16
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then3
  %ae.sink = phi i32 [ %ae, %if.else ], [ %add33, %if.then3 ]
  %conv49.sink = phi i8 [ %conv49, %if.else ], [ %conv31, %if.then3 ]
  %.sink = phi i32 [ 1, %if.else ], [ 5, %if.then3 ]
  %ff_pci_sz.0 = phi i32 [ 2, %if.else ], [ 6, %if.then3 ]
  %arrayidx51 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %ae.sink
  %20 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv49.sink, ptr %arrayidx51, align 1
  %21 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len2, align 4
  %conv57 = trunc i32 %22 to i8
  %add59 = add i32 %.sink, %ae
  %arrayidx60 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %add59
  %23 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv57, ptr %arrayidx60, align 1
  %add62 = add i32 %ff_pci_sz.0, %ae
  %24 = ptrtoint ptr %ll_dl to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ll_dl, align 2
  %conv65112 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %conv65112)
  %cmp66113 = icmp slt i32 %add62, %conv65112
  br i1 %cmp66113, label %if.end61.for.body_crit_edge, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end61.for.body_crit_edge
  %i.0114 = phi i32 [ %inc73, %for.body.for.body_crit_edge ], [ %add62, %if.end61.for.body_crit_edge ]
  %26 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx, align 8
  %arrayidx70 = getelementptr %struct.isotp_sock, ptr %so, i32 0, i32 16, i32 6, i32 %27
  %28 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx70, align 1
  %arrayidx72 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.0114
  %30 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx72, align 1
  %inc73 = add nsw i32 %i.0114, 1
  %31 = ptrtoint ptr %ll_dl to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ll_dl, align 2
  %conv65 = zext i8 %32 to i32
  %cmp66 = icmp slt i32 %inc73, %conv65
  br i1 %cmp66, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end61.for.end_crit_edge
  %sn = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 16, i32 4
  %33 = ptrtoint ptr %sn to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %sn, align 1
  %state = getelementptr inbounds %struct.isotp_sock, ptr %so, i32 0, i32 16, i32 2
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_init(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ifindex = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 2
  %0 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ifindex, align 4
  %bound = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 1
  %1 = ptrtoint ptr %bound to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bound, align 8
  %opt = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %opt, align 8
  %ext_address = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %ext_address to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ext_address, align 8
  %rx_ext_address = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9, i32 5
  %4 = ptrtoint ptr %rx_ext_address to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rx_ext_address, align 1
  %rxpad_content = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9, i32 4
  %5 = ptrtoint ptr %rxpad_content to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -52, ptr %rxpad_content, align 2
  %txpad_content = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %txpad_content to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -52, ptr %txpad_content, align 1
  %frame_txtime = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %frame_txtime to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %frame_txtime, align 4
  %rxfc = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 10
  %8 = ptrtoint ptr %rxfc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rxfc, align 4
  %stmin = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %stmin to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %stmin, align 1
  %wftmax = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %wftmax to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %wftmax, align 2
  %ll = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 12
  %11 = ptrtoint ptr %ll to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %ll, align 2
  %tx_dl = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %tx_dl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %tx_dl, align 1
  %tx_flags = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %tx_flags, align 2
  %ll_dl = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 16, i32 5
  %14 = ptrtoint ptr %ll_dl to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %ll_dl, align 2
  %state = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 15, i32 2
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state, align 8
  %state13 = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state13, align 8
  %rxtimer = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 7
  tail call void @hrtimer_init(ptr noundef %rxtimer, i32 noundef 1, i32 noundef 5) #14
  %function = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @isotp_rx_timer_handler, ptr %function, align 8
  %txtimer = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 8
  tail call void @hrtimer_init(ptr noundef %txtimer, i32 noundef 1, i32 noundef 5) #14
  %function16 = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %function16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @isotp_tx_timer_handler, ptr %function16, align 8
  %wait = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.9, ptr noundef nonnull @isotp_init.__key) #14
  %rx_lock = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @isotp_init.__key.10, i16 noundef signext 3) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @isotp_notifier_lock) #14
  %notifier = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 17
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @isotp_notifier_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %notifier, ptr noundef %19, ptr noundef nonnull @isotp_notifier_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %notifier, ptr getelementptr inbounds (%struct.list_head, ptr @isotp_notifier_list, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @isotp_notifier_list, ptr %notifier, align 4
  %prev3.i.i = getelementptr inbounds %struct.isotp_sock, ptr %sk, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %notifier, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @isotp_notifier_lock) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_rx_timer_handler(ptr noundef %hrtimer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -992
  %state = getelementptr i8, ptr %hrtimer, i32 136
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %sk_err = getelementptr i8, ptr %hrtimer, i32 -300
  %2 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %sk_err, align 4
  %3 = getelementptr i8, ptr %hrtimer, i32 -912
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sk_error_report(ptr noundef %add.ptr) #14
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_tx_timer_handler(ptr noundef %hrtimer) #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -1040
  %opt = getelementptr i8, ptr %hrtimer, i32 48
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opt, align 8
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %tx = getelementptr i8, ptr %hrtimer, i32 8296
  %state = getelementptr i8, ptr %hrtimer, i32 8304
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %3, label %land.end128 [
    i32 2, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge273
    i32 4, label %sw.bb4
  ]

entry.sw.bb_crit_edge273:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge273
  %sk_err = getelementptr i8, ptr %hrtimer, i32 -348
  %5 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 70, ptr %sk_err, align 4
  %6 = getelementptr i8, ptr %hrtimer, i32 -960
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sk_error_report(ptr noundef %add.ptr) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 8
  %wait = getelementptr i8, ptr %hrtimer, i32 16520
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %skc_net.i = getelementptr i8, ptr %hrtimer, i32 -1004
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %ifindex = getelementptr i8, ptr %hrtimer, i32 -76
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %call6 = tail call ptr @dev_get_by_index(ptr noundef %12, i32 noundef %14) #14
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %sw.bb4.sw.epilog_crit_edge, label %isotp_tx_burst.preheader

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

isotp_tx_burst.preheader:                         ; preds = %sw.bb4
  %ll = getelementptr i8, ptr %hrtimer, i32 66
  %ifindex14 = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 17
  %add.i227 = add nuw nsw i32 %and.lobit, 1
  %ll_dl.i = getelementptr i8, ptr %hrtimer, i32 8310
  %len.i = getelementptr i8, ptr %hrtimer, i32 8300
  %txid.i = getelementptr i8, ptr %hrtimer, i32 -72
  %txpad_content.i = getelementptr i8, ptr %hrtimer, i32 57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit)
  %tobool41.not.i = icmp eq i32 %and.lobit, 0
  %ext_address.i = getelementptr i8, ptr %hrtimer, i32 56
  %sn = getelementptr i8, ptr %hrtimer, i32 8309
  %bs = getelementptr i8, ptr %hrtimer, i32 8308
  %tx_flags = getelementptr i8, ptr %hrtimer, i32 68
  %tobool.not.i230 = icmp eq ptr %add.ptr, null
  %skc_refcnt.i = getelementptr i8, ptr %hrtimer, i32 -940
  %txfc = getelementptr i8, ptr %hrtimer, i32 63
  %tx_gap = getelementptr i8, ptr %hrtimer, i32 -64
  br label %isotp_tx_burst

isotp_tx_burst:                                   ; preds = %if.end113.isotp_tx_burst_crit_edge, %isotp_tx_burst.preheader
  %15 = ptrtoint ptr %ll to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ll, align 2
  %conv = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv, 16
  %call.i = call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.body1.i, label %if.end13

do.body1.i:                                       ; preds = %isotp_tx_burst
  %17 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !89
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %18 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcpu_refcnt.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add13.i = add i32 %29, -1
  store i32 %add13.i, ptr %27, align 4
  %30 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !90
  %and.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !91

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #14, !srcloc !92
  br label %sw.epilog

if.end13:                                         ; preds = %isotp_tx_burst
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %34, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %35 = ptrtoint ptr %ifindex14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifindex14, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %37 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %38, align 8
  %40 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %skbcnt to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %skbcnt, align 4
  %42 = load ptr, ptr %data.i.i, align 4
  %43 = ptrtoint ptr %ll to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ll, align 2
  %conv20 = zext i8 %44 to i32
  %call.i226 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv20) #14
  %45 = call ptr @memset(ptr %call.i226, i32 0, i32 %conv20)
  %46 = ptrtoint ptr %ll_dl.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ll_dl.i, align 2
  %conv.i = zext i8 %47 to i32
  %sub.i = sub nsw i32 %conv.i, %add.i227
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i, align 4
  %50 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx, align 8
  %sub4.i = sub i32 %49, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub4.i, %sub.i
  %52 = call i32 @llvm.smin.i32(i32 %sub4.i, i32 %sub.i) #14
  %53 = ptrtoint ptr %txid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %txid.i, align 8
  %55 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %42, align 8
  %add6.i = add i32 %52, %add.i227
  %conv7.i = trunc i32 %add6.i to i8
  %len8.i = getelementptr inbounds %struct.canfd_frame, ptr %42, i32 0, i32 1
  %56 = ptrtoint ptr %len8.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv7.i, ptr %len8.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end13.if.end31.i_crit_edge

if.end13.if.end31.i_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

if.then.i:                                        ; preds = %if.end13
  %57 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %opt, align 8
  %and.i = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i228 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i228, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv7.i)
  %cmp.i.i = icmp ugt i8 %conv7.i, 48
  br i1 %cmp.i.i, label %if.then11.i.padlen.exit.i_crit_edge, label %if.end.i.i

if.then11.i.padlen.exit.i_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit.i

if.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i = and i32 %add6.i, 255
  %arrayidx.i.i = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i, align 1
  br label %padlen.exit.i

padlen.exit.i:                                    ; preds = %if.end.i.i, %if.then11.i.padlen.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %60, %if.end.i.i ], [ 64, %if.then11.i.padlen.exit.i_crit_edge ]
  %61 = ptrtoint ptr %len8.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %retval.0.i.i, ptr %len8.i, align 4
  %data.i = getelementptr inbounds %struct.canfd_frame, ptr %42, i32 0, i32 5
  %62 = ptrtoint ptr %txpad_content.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %txpad_content.i, align 1
  %conv17.i = zext i8 %retval.0.i.i to i32
  %64 = zext i8 %63 to i32
  %65 = call ptr @memset(ptr %data.i, i32 %64, i32 %conv17.i)
  br label %if.end31.i

if.else.i:                                        ; preds = %if.then.i
  %conv19.i = and i32 %add6.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv19.i)
  %cmp20.i = icmp ugt i32 %conv19.i, 8
  br i1 %cmp20.i, label %if.then22.i, label %if.else.i.if.end31.i_crit_edge

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

if.then22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %conv7.i)
  %cmp.i77.i = icmp ugt i8 %conv7.i, 48
  br i1 %cmp.i77.i, label %if.then22.i.padlen.exit82.i_crit_edge, label %if.end.i80.i

if.then22.i.padlen.exit82.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %padlen.exit82.i

if.end.i80.i:                                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i79.i = getelementptr [49 x i8], ptr @padlen.plen, i32 0, i32 %conv19.i
  %66 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i79.i, align 1
  br label %padlen.exit82.i

padlen.exit82.i:                                  ; preds = %if.end.i80.i, %if.then22.i.padlen.exit82.i_crit_edge
  %retval.0.i81.i = phi i8 [ %67, %if.end.i80.i ], [ 64, %if.then22.i.padlen.exit82.i_crit_edge ]
  %68 = ptrtoint ptr %len8.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %retval.0.i81.i, ptr %len8.i, align 4
  %data26.i = getelementptr inbounds %struct.canfd_frame, ptr %42, i32 0, i32 5
  %conv29.i = zext i8 %retval.0.i81.i to i32
  %69 = call ptr @memset(ptr %data26.i, i32 204, i32 %conv29.i)
  br label %if.end31.i

if.end31.i:                                       ; preds = %padlen.exit82.i, %if.else.i.if.end31.i_crit_edge, %padlen.exit.i, %if.end13.if.end31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp3283.i = icmp sgt i32 %52, 0
  br i1 %cmp3283.i, label %if.end31.i.for.body.i_crit_edge, label %if.end31.i.for.end.i_crit_edge

if.end31.i.for.end.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end31.i.for.body.i_crit_edge
  %i.084.i = phi i32 [ %inc40.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end31.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx, align 8
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %tx, align 8
  %arrayidx.i229 = getelementptr %struct.isotp_sock, ptr %add.ptr, i32 0, i32 16, i32 6, i32 %71
  %72 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i229, align 1
  %add38.i = add nuw i32 %i.084.i, %add.i227
  %arrayidx39.i = getelementptr %struct.canfd_frame, ptr %42, i32 0, i32 5, i32 %add38.i
  %74 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx39.i, align 1
  %inc40.i = add nuw nsw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc40.i, %52
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end31.i.for.end.i_crit_edge
  br i1 %tobool41.not.i, label %for.end.i.isotp_fill_dataframe.exit_crit_edge, label %if.then42.i

for.end.i.isotp_fill_dataframe.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_fill_dataframe.exit

if.then42.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %ext_address.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ext_address.i, align 8
  %data44.i = getelementptr inbounds %struct.canfd_frame, ptr %42, i32 0, i32 5
  %77 = ptrtoint ptr %data44.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %data44.i, align 8
  br label %isotp_fill_dataframe.exit

isotp_fill_dataframe.exit:                        ; preds = %if.then42.i, %for.end.i.isotp_fill_dataframe.exit_crit_edge
  %78 = ptrtoint ptr %sn to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sn, align 1
  %inc = add i8 %79, 1
  store i8 %inc, ptr %sn, align 1
  %80 = or i8 %79, 32
  %arrayidx = getelementptr %struct.canfd_frame, ptr %42, i32 0, i32 5, i32 %and.lobit
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx, align 1
  %82 = load i8, ptr %sn, align 1
  %83 = and i8 %82, 15
  store i8 %83, ptr %sn, align 1
  %84 = ptrtoint ptr %bs to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bs, align 4
  %inc31 = add i8 %85, 1
  store i8 %inc31, ptr %bs, align 4
  %86 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tx_flags, align 2
  %flags33 = getelementptr inbounds %struct.canfd_frame, ptr %42, i32 0, i32 2
  %88 = ptrtoint ptr %flags33 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %flags33, align 1
  %89 = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 2
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call6, ptr %89, align 8
  br i1 %tobool.not.i230, label %isotp_fill_dataframe.exit.can_skb_set_owner.exit_crit_edge, label %land.lhs.true.i

isotp_fill_dataframe.exit.can_skb_set_owner.exit_crit_edge: ; preds = %isotp_fill_dataframe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %can_skb_set_owner.exit

land.lhs.true.i:                                  ; preds = %isotp_fill_dataframe.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  %91 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %93 = phi i32 [ %92, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %94 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %93, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %95 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %97 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %96, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #14, !srcloc !111
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %97, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %97, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %96
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !95

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %98 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %99, 1
  %100 = or i32 %add5.i.i.i.i, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %.not.i.i.i.i = icmp sgt i32 %100, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !95

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #14
  %101 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %102 = phi i32 [ %99, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool12.i.i.i.not.i = icmp eq i32 %102, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, label %if.then.i231

refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %can_skb_set_owner.exit

if.then.i231:                                     ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %103 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @sock_efree, ptr %destructor.i, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr, ptr %104, align 4
  br label %can_skb_set_owner.exit

can_skb_set_owner.exit:                           ; preds = %if.then.i231, %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, %isotp_fill_dataframe.exit.can_skb_set_owner.exit_crit_edge
  %call34 = call i32 @can_send(ptr noundef nonnull %call.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %can_skb_set_owner.exit.if.end86_crit_edge, label %land.end

can_skb_set_owner.exit.if.end86_crit_edge:        ; preds = %can_skb_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

land.end:                                         ; preds = %can_skb_set_owner.exit
  %.b222 = load i1, ptr @isotp_tx_timer_handler.__already_done, align 1
  br i1 %.b222, label %land.end.if.end47_crit_edge, label %if.then43, !prof !95

land.end.if.end47_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then43:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @isotp_tx_timer_handler.__already_done, align 1
  %106 = inttoptr i32 %call34 to ptr
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12, ptr noundef nonnull %106) #17
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %land.end.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %call34)
  %cmp = icmp eq i32 %call34, -105
  br i1 %cmp, label %land.end64, label %if.end47.if.end86_crit_edge

if.end47.if.end86_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

land.end64:                                       ; preds = %if.end47
  %.b220223 = load i1, ptr @isotp_tx_timer_handler.__already_done.13, align 1
  br i1 %.b220223, label %land.end64.if.end86_crit_edge, label %if.then71, !prof !95

land.end64.if.end86_crit_edge:                    ; preds = %land.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then71:                                        ; preds = %land.end64
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @isotp_tx_timer_handler.__already_done.13, align 1
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #17
  br label %if.end86

if.end86:                                         ; preds = %if.then71, %land.end64.if.end86_crit_edge, %if.end47.if.end86_crit_edge, %can_skb_set_owner.exit.if.end86_crit_edge
  %107 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx, align 8
  %109 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp89.not = icmp ult i32 %108, %110
  br i1 %cmp89.not, label %if.end95, label %do.body1.i241

do.body1.i241:                                    ; preds = %if.end86
  %111 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %state, align 8
  %112 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !89
  %pcpu_refcnt.i233 = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %113 = ptrtoint ptr %pcpu_refcnt.i233 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pcpu_refcnt.i233, align 4
  %115 = ptrtoint ptr %114 to i32
  %116 = call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i234 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i234 to ptr
  %cpu.i235 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %cpu.i235 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cpu.i235, align 4
  %arrayidx.i236 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i236, align 4
  %add.i237 = add i32 %121, %115
  %122 = inttoptr i32 %add.i237 to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %add13.i238 = add i32 %124, -1
  store i32 %add13.i238, ptr %122, align 4
  %125 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !90
  %and.i.i.i239 = and i32 %125, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i239)
  %tobool24.not.i240 = icmp eq i32 %and.i.i.i239, 0
  br i1 %tobool24.not.i240, label %if.then28.i242, label %do.body1.i241.dev_put.exit244_crit_edge, !prof !91

do.body1.i241.dev_put.exit244_crit_edge:          ; preds = %do.body1.i241
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit244

if.then28.i242:                                   ; preds = %do.body1.i241
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit244

dev_put.exit244:                                  ; preds = %if.then28.i242, %do.body1.i241.dev_put.exit244_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %112) #14, !srcloc !92
  %wait94 = getelementptr i8, ptr %hrtimer, i32 16520
  call void @__wake_up(ptr noundef %wait94, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %sw.epilog

if.end95:                                         ; preds = %if.end86
  %126 = ptrtoint ptr %txfc to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %txfc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool98.not = icmp eq i8 %127, 0
  br i1 %tobool98.not, label %if.end95.if.end113_crit_edge, label %land.lhs.true

if.end95.if.end113_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

land.lhs.true:                                    ; preds = %if.end95
  %128 = ptrtoint ptr %bs to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bs, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %129, i8 %127)
  %cmp105.not = icmp ult i8 %129, %127
  br i1 %cmp105.not, label %land.lhs.true.if.end113_crit_edge, label %do.body1.i254

land.lhs.true.if.end113_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

do.body1.i254:                                    ; preds = %land.lhs.true
  %130 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 2, ptr %state, align 8
  %131 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !89
  %pcpu_refcnt.i246 = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %132 = ptrtoint ptr %pcpu_refcnt.i246 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pcpu_refcnt.i246, align 4
  %134 = ptrtoint ptr %133 to i32
  %135 = call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i247 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i247 to ptr
  %cpu.i248 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %cpu.i248 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cpu.i248, align 4
  %arrayidx.i249 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %138
  %139 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i249, align 4
  %add.i250 = add i32 %140, %134
  %141 = inttoptr i32 %add.i250 to ptr
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %add13.i251 = add i32 %143, -1
  store i32 %add13.i251, ptr %141, align 4
  %144 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !90
  %and.i.i.i252 = and i32 %144, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i252)
  %tobool24.not.i253 = icmp eq i32 %and.i.i.i252, 0
  br i1 %tobool24.not.i253, label %if.then28.i255, label %do.body1.i254.dev_put.exit257_crit_edge, !prof !91

do.body1.i254.dev_put.exit257_crit_edge:          ; preds = %do.body1.i254
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit257

if.then28.i255:                                   ; preds = %do.body1.i254
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit257

dev_put.exit257:                                  ; preds = %if.then28.i255, %do.body1.i254.dev_put.exit257_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %131) #14, !srcloc !92
  %call110 = call i64 @ktime_get() #14
  %add112 = add i64 %call110, 1000000000
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %hrtimer, i32 0, i32 1
  %145 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %add112, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 1
  %146 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %add112, ptr %_softexpires.i, align 8
  br label %sw.epilog

if.end113:                                        ; preds = %land.lhs.true.if.end113_crit_edge, %if.end95.if.end113_crit_edge
  %147 = ptrtoint ptr %tx_gap to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %tx_gap, align 8
  %tobool114.not = icmp eq i64 %148, 0
  br i1 %tobool114.not, label %if.end113.isotp_tx_burst_crit_edge, label %do.body1.i267

if.end113.isotp_tx_burst_crit_edge:               ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_tx_burst

do.body1.i267:                                    ; preds = %if.end113
  %149 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !89
  %pcpu_refcnt.i259 = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %150 = ptrtoint ptr %pcpu_refcnt.i259 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pcpu_refcnt.i259, align 4
  %152 = ptrtoint ptr %151 to i32
  %153 = call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i260 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i260 to ptr
  %cpu.i261 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %cpu.i261 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cpu.i261, align 4
  %arrayidx.i262 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %156
  %157 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i262, align 4
  %add.i263 = add i32 %158, %152
  %159 = inttoptr i32 %add.i263 to ptr
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 4
  %add13.i264 = add i32 %161, -1
  store i32 %add13.i264, ptr %159, align 4
  %162 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !90
  %and.i.i.i265 = and i32 %162, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i265)
  %tobool24.not.i266 = icmp eq i32 %and.i.i.i265, 0
  br i1 %tobool24.not.i266, label %if.then28.i268, label %do.body1.i267.dev_put.exit270_crit_edge, !prof !91

do.body1.i267.dev_put.exit270_crit_edge:          ; preds = %do.body1.i267
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit270

if.then28.i268:                                   ; preds = %do.body1.i267
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit270

dev_put.exit270:                                  ; preds = %if.then28.i268, %do.body1.i267.dev_put.exit270_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %149) #14, !srcloc !92
  %call118 = call i64 @ktime_get() #14
  %163 = ptrtoint ptr %tx_gap to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %tx_gap, align 8
  %add120 = add i64 %164, %call118
  %expires.i271 = getelementptr inbounds %struct.timerqueue_node, ptr %hrtimer, i32 0, i32 1
  %165 = ptrtoint ptr %expires.i271 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %add120, ptr %expires.i271, align 8
  %_softexpires.i272 = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 1
  %166 = ptrtoint ptr %_softexpires.i272 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %add120, ptr %_softexpires.i272, align 8
  br label %sw.epilog

land.end128:                                      ; preds = %entry
  %.b221224 = load i1, ptr @isotp_tx_timer_handler.__already_done.17, align 1
  br i1 %.b221224, label %land.end128.sw.epilog_crit_edge, label %if.then135, !prof !95

land.end128.sw.epilog_crit_edge:                  ; preds = %land.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then135:                                       ; preds = %land.end128
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @isotp_tx_timer_handler.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 852, i32 noundef 9, ptr noundef null) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then135, %land.end128.sw.epilog_crit_edge, %dev_put.exit270, %dev_put.exit257, %dev_put.exit244, %dev_put.exit, %sw.bb4.sw.epilog_crit_edge, %if.end
  %restart.0 = phi i32 [ 0, %dev_put.exit244 ], [ 1, %dev_put.exit257 ], [ 1, %dev_put.exit270 ], [ 0, %dev_put.exit ], [ 0, %sw.bb4.sw.epilog_crit_edge ], [ 0, %if.end ], [ 0, %if.then135 ], [ 0, %land.end128.sw.epilog_crit_edge ]
  ret i32 %restart.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isotp_notifier(ptr nocapture noundef readnone %nb, i32 noundef %msg, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %3)
  %cmp.not = icmp eq i16 %3, 280
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %msg, label %if.end.cleanup_crit_edge [
    i32 6, label %if.end.if.end7_crit_edge
    i32 2, label %if.end.if.end7_crit_edge26
  ]

if.end.if.end7_crit_edge26:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge26
  %5 = load ptr, ptr @isotp_busy_notifier, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end11, label %if.end7.cleanup_crit_edge, !prof !95

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @_raw_spin_lock(ptr noundef nonnull @isotp_notifier_lock) #14
  %.pn23 = load ptr, ptr @isotp_notifier_list, align 4
  %storemerge24 = getelementptr i8, ptr %.pn23, i32 -17552
  store ptr %storemerge24, ptr @isotp_busy_notifier, align 4
  %cmp12.not25 = icmp eq ptr %.pn23, @isotp_notifier_list
  br i1 %cmp12.not25, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %ifindex4.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %isotp_notify.exit.for.body_crit_edge, %for.body.lr.ph
  tail call void @_raw_spin_unlock(ptr noundef nonnull @isotp_notifier_lock) #14
  %6 = load ptr, ptr @isotp_busy_notifier, align 4
  %7 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %10
  br i1 %cmp.i.not.i, label %if.end.i, label %for.body.isotp_notify.exit_crit_edge

for.body.isotp_notify.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_notify.exit

if.end.i:                                         ; preds = %for.body
  %ifindex.i = getelementptr inbounds %struct.isotp_sock, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex.i, align 4
  %13 = ptrtoint ptr %ifindex4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp eq i32 %12, %14
  br i1 %cmp.not.i, label %if.end6.i, label %if.end.i.isotp_notify.exit_crit_edge

if.end.i.isotp_notify.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_notify.exit

if.end6.i:                                        ; preds = %if.end.i
  %15 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %msg, label %if.end6.i.isotp_notify.exit_crit_edge [
    i32 6, label %sw.bb.i
    i32 2, label %sw.bb20.i
  ]

if.end6.i.isotp_notify.exit_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_notify.exit

sw.bb.i:                                          ; preds = %if.end6.i
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #14
  %bound.i = getelementptr inbounds %struct.isotp_sock, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %bound.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bound.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i = icmp eq i32 %17, 0
  br i1 %tobool7.not.i, label %sw.bb.i.if.end14.i_crit_edge, label %land.lhs.true.i

sw.bb.i.if.end14.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %opt.i = getelementptr inbounds %struct.isotp_sock, ptr %6, i32 0, i32 9
  %18 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opt.i, align 8
  %and.i = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nd_net.i.i, align 4
  %rxid.i = getelementptr inbounds %struct.isotp_sock, ptr %6, i32 0, i32 4
  %22 = ptrtoint ptr %rxid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rxid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool13.not.i = icmp sgt i32 %23, -1
  %cond.i = select i1 %tobool13.not.i, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef %21, ptr noundef %1, i32 noundef %23, i32 noundef %cond.i, ptr noundef nonnull @isotp_rcv, ptr noundef %6) #14
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end14.i_crit_edge, %sw.bb.i.if.end14.i_crit_edge
  %24 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ifindex.i, align 4
  %25 = ptrtoint ptr %bound.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bound.i, align 8
  tail call void @release_sock(ptr noundef %6) #14
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 51
  %26 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %sk_err.i, align 4
  %27 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %if.end14.i.cleanup.sink.split.i_crit_edge, label %if.end14.i.isotp_notify.exit_crit_edge

if.end14.i.isotp_notify.exit_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_notify.exit

if.end14.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

sw.bb20.i:                                        ; preds = %if.end6.i
  %sk_err21.i = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 51
  %31 = ptrtoint ptr %sk_err21.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 100, ptr %sk_err21.i, align 4
  %32 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i45.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i45.not.i, label %sw.bb20.i.cleanup.sink.split.i_crit_edge, label %sw.bb20.i.isotp_notify.exit_crit_edge

sw.bb20.i.isotp_notify.exit_crit_edge:            ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %isotp_notify.exit

sw.bb20.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb20.i.cleanup.sink.split.i_crit_edge, %if.end14.i.cleanup.sink.split.i_crit_edge
  tail call void @sk_error_report(ptr noundef %6) #14
  br label %isotp_notify.exit

isotp_notify.exit:                                ; preds = %cleanup.sink.split.i, %sw.bb20.i.isotp_notify.exit_crit_edge, %if.end14.i.isotp_notify.exit_crit_edge, %if.end6.i.isotp_notify.exit_crit_edge, %if.end.i.isotp_notify.exit_crit_edge, %for.body.isotp_notify.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @isotp_notifier_lock) #14
  %36 = load ptr, ptr @isotp_busy_notifier, align 4
  %notifier17 = getelementptr inbounds %struct.isotp_sock, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %notifier17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %notifier17, align 4
  %storemerge = getelementptr i8, ptr %.pn, i32 -17552
  store ptr %storemerge, ptr @isotp_busy_notifier, align 4
  %cmp12.not = icmp eq ptr %.pn, @isotp_notifier_list
  br i1 %cmp12.not, label %isotp_notify.exit.for.end_crit_edge, label %isotp_notify.exit.for.body_crit_edge

isotp_notify.exit.for.body_crit_edge:             ; preds = %isotp_notify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

isotp_notify.exit.for.end_crit_edge:              ; preds = %isotp_notify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %isotp_notify.exit.for.end_crit_edge, %if.end11.for.end_crit_edge
  store ptr null, ptr @isotp_busy_notifier, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @isotp_notifier_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_proto_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_description457, !1, !"__UNIQUE_ID_description457", i1 false, i1 false}
!1 = !{!"../net/can/isotp.c", i32 76, i32 1}
!2 = !{ptr @__UNIQUE_ID_file458, !3, !"__UNIQUE_ID_file458", i1 false, i1 false}
!3 = !{!"../net/can/isotp.c", i32 77, i32 1}
!4 = !{ptr @__UNIQUE_ID_license459, !3, !"__UNIQUE_ID_license459", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author460, !6, !"__UNIQUE_ID_author460", i1 false, i1 false}
!6 = !{!"../net/can/isotp.c", i32 78, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias461, !8, !"__UNIQUE_ID_alias461", i1 false, i1 false}
!8 = !{!"../net/can/isotp.c", i32 79, i32 1}
!9 = !{ptr @__initcall__kmod_can_isotp__476_1537_isotp_module_init6, !10, !"__initcall__kmod_can_isotp__476_1537_isotp_module_init6", i1 false, i1 false}
!10 = !{!"../net/can/isotp.c", i32 1537, i32 1}
!11 = !{ptr @__exitcall_isotp_module_exit, !12, !"__exitcall_isotp_module_exit", i1 false, i1 false}
!12 = !{!"../net/can/isotp.c", i32 1538, i32 1}
!13 = !{ptr @isotp_can_proto, !14, !"isotp_can_proto", i1 false, i1 false}
!14 = !{!"../net/can/isotp.c", i32 1505, i32 31}
!15 = !{ptr @isotp_ops, !16, !"isotp_ops", i1 false, i1 false}
!16 = !{!"../net/can/isotp.c", i32 1477, i32 31}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/can/isotp.c", i32 1055, i32 2}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/can/isotp.c", i32 153, i32 8}
!21 = !{ptr @isotp_notifier_lock, !20, !"isotp_notifier_lock", i1 false, i1 false}
!22 = !{ptr @isotp_busy_notifier, !23, !"isotp_busy_notifier", i1 false, i1 false}
!23 = !{!"../net/can/isotp.c", i32 154, i32 27}
!24 = !{ptr @padlen.plen, !25, !"plen", i1 false, i1 false}
!25 = !{!"../net/can/isotp.c", i32 262, i32 18}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../net/can/isotp.c", i32 230, i32 3}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @isotp_send_fc._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @isotp_send_fc._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/can/isotp.c", i32 1167, i32 20}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/can/isotp.c", i32 977, i32 3}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @isotp_sendmsg._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @isotp_sendmsg._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @isotp_proto, !47, !"isotp_proto", i1 false, i1 false}
!47 = !{!"../net/can/isotp.c", i32 1498, i32 21}
!48 = !{ptr @isotp_init.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../net/can/isotp.c", i32 1460, i32 2}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @isotp_init.__key.10, !52, !"__key", i1 false, i1 false}
!52 = !{!"../net/can/isotp.c", i32 1461, i32 2}
!53 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../net/can/isotp.c", i32 816, i32 4}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @isotp_tx_timer_handler._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @isotp_tx_timer_handler._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../net/can/isotp.c", i32 819, i32 5}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @isotp_tx_timer_handler._entry.14, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @isotp_tx_timer_handler._entry_ptr.16, !60, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../net/can/isotp.c", i32 852, i32 3}
!66 = !{ptr @isotp_notifier_list, !67, !"isotp_notifier_list", i1 false, i1 false}
!67 = !{!"../net/can/isotp.c", i32 152, i32 8}
!68 = !{ptr @canisotp_notifier, !69, !"canisotp_notifier", i1 false, i1 false}
!69 = !{!"../net/can/isotp.c", i32 1512, i32 30}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/can/isotp.c", i32 1520, i32 2}
!72 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @isotp_module_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @isotp_module_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/can/isotp.c", i32 1524, i32 3}
!77 = !{ptr @isotp_module_init._entry.20, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @isotp_module_init._entry_ptr.22, !76, !"_entry_ptr", i1 false, i1 false}
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
!89 = !{i64 781414, i64 781475}
!90 = !{i64 784146}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 784431}
!93 = !{i64 2148467269}
!94 = !{i64 2148381709, i64 2148381741, i64 2148381770, i64 2148381804, i64 2148381835, i64 2148381858}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2149343383}
!97 = !{i64 2153221859, i64 2153221884}
!98 = !{i64 5717414}
!99 = !{i64 5717611}
!100 = !{i64 2153202844}
!101 = !{!"auto-init"}
!102 = !{i64 2156923186, i64 2156923466, i64 2156923800, i64 2156924134}
!103 = !{i64 2156941794, i64 2156942074, i64 2156942408, i64 2156942742}
!104 = !{i64 2153222540, i64 2153222565}
!105 = !{i64 2156901566}
!106 = !{i64 887206, i64 887227, i64 887250, i64 887269, i64 887288}
!107 = !{i64 2156901988}
!108 = !{i64 2149487597}
!109 = !{i64 2150009865}
!110 = !{i64 2150010190}
!111 = !{i64 862247, i64 862271, i64 862292, i64 862309, i64 862326}
