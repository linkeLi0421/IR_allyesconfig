; ModuleID = '/llk/IR_all_yes/fs/ksmbd/transport_ipc.c_pt.bc'
source_filename = "../fs/ksmbd/transport_ipc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.131, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.131 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ksmbd_server_config = type { i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.smb_sid, i32, [3 x ptr] }
%struct.smb_sid = type { i8, i8, [6 x i8], [15 x i32] }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.75 }
%union.anon.75 = type { i32 }
%struct.ksmbd_ipc_msg = type { i32, i32, [0 x i8] }
%struct.ipc_msg_table_entry = type { i32, i32, %struct.wait_queue_head, %struct.hlist_node, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ksmbd_spnego_authen_request = type { i32, i16, [0 x i8] }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.ksmbd_user = type { i16, i32, i32, ptr, i32, ptr, i32 }
%struct.ksmbd_tree_connect_request = type { i32, i16, i16, i64, i64, [48 x i8], [64 x i8], [64 x i8], [16 x i32] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.genlmsghdr = type { i8, i8, i16 }

@ipc_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pIS\00", [27 x i8] zeroinitializer }, align 32
@ipc_timer_work = internal global { %struct.delayed_work, [60 x i8] } zeroinitializer, align 32
@ksmbd_genl_family = internal global { %struct.genl_family, [60 x i8] } { %struct.genl_family { i32 0, i32 0, [16 x i8] c"SMBD_GENL\00\00\00\00\00\00\00", i32 1, i32 16, i32 0, i8 -128, i8 16, i8 0, i8 0, ptr null, ptr null, ptr null, ptr @ksmbd_genl_ops, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@startup_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @startup_lock, i64 52), ptr getelementptr (i8, ptr @startup_lock, i64 52) }, ptr @startup_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ksmbd_tools_pid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ksmbd_ipc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&ipc_timer_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@ksmbd_ipc_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&ipc_timer_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@ksmbd_ipc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ksmbd: Failed to register KSMBD netlink interface %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ksmbd_ipc_init\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ksmbd/transport_ipc.c\00", [39 x i8] zeroinitializer }, align 32
@ksmbd_ipc_init._entry_ptr = internal global ptr @ksmbd_ipc_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipc_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@ipc_msg_send_request.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&entry.wait\00", [20 x i8] zeroinitializer }, align 32
@ipc_msg_table_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @ipc_msg_table_lock, i64 56), ptr getelementptr (i8, ptr @ipc_msg_table_lock, i64 56) }, ptr @ipc_msg_table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@ipc_msg_table = internal global { [8 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ipc_msg_table_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipc_msg_table_lock\00", [45 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@server_conf = external dso_local global %struct.ksmbd_server_config, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ksmbd_genl_ops = internal global { [16 x %struct.genl_ops], [96 x i8] } { [16 x %struct.genl_ops] [%struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_startup_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_generic_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 5, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 6, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_generic_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 7, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 8, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_generic_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 9, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 10, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 11, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 12, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_generic_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 13, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_unsupported_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 14, i8 0, i8 0, i8 0 }, %struct.genl_ops { ptr @handle_generic_event, ptr null, ptr null, ptr null, ptr null, i32 0, i8 15, i8 0, i8 0, i8 0 }], [96 x i8] zeroinitializer }, align 32
@handle_unsupported_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ksmbd: Unknown IPC event: %d, ignore.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"handle_unsupported_event\00", [39 x i8] zeroinitializer }, align 32
@handle_unsupported_event._entry_ptr = internal global ptr @handle_unsupported_event._entry, section ".printk_index", align 4
@handle_startup_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ksmbd: Server reset is in progress, can't start daemon\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"handle_startup_event\00", [43 x i8] zeroinitializer }, align 32
@handle_startup_event._entry_ptr = internal global ptr @handle_startup_event._entry, section ".printk_index", align 4
@handle_startup_event._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.6, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ksmbd: Reconnect to a new user space daemon\0A\00", [49 x i8] zeroinitializer }, align 32
@handle_startup_event._entry_ptr.18 = internal global ptr @handle_startup_event._entry.16, section ".printk_index", align 4
@ksmbd_ipc_validate_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ksmbd: %s. ksmbd: %d, kernel module: %d. %s.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksmbd_ipc_validate_version\00", [37 x i8] zeroinitializer }, align 32
@ksmbd_ipc_validate_version._entry_ptr = internal global ptr @ksmbd_ipc_validate_version._entry, section ".printk_index", align 4
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Daemon and kernel module version mismatch\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"User-space ksmbd should terminate\00", [62 x i8] zeroinitializer }, align 32
@ipc_server_config_on_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ksmbd: Server configuration error: %s %s %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ipc_server_config_on_startup\00", [35 x i8] zeroinitializer }, align 32
@ipc_server_config_on_startup._entry_ptr = internal global ptr @ipc_server_config_on_startup._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@handle_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ksmbd: Waiting for IPC type %d, got %d. Ignore.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"handle_response\00", [16 x i8] zeroinitializer }, align 32
@handle_response._entry_ptr = internal global ptr @handle_response._entry, section ".printk_index", align 4
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"startup_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"startup_lock\00", [19 x i8] zeroinitializer }, align 32
@ksmbd_nl_policy = internal constant { [16 x %struct.nla_policy], [32 x i8] } { [16 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 744, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 64, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 116, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 148, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 132, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 536, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 264, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 72, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 80, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 116, %union.anon.75 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__ipc_heartbeat._entry = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 828, ptr null, ptr null }, align 1
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ksmbd: No IPC daemon response for %lus\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__ipc_heartbeat\00", [16 x i8] zeroinitializer }, align 32
@__ipc_heartbeat._entry_ptr = internal global ptr @__ipc_heartbeat._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"ipc_ida\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 572, i32 51 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"ipc_timer_work\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 69, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"ksmbd_genl_family\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 190, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"startup_lock\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"ksmbd_tools_pid\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 39, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 868, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 872, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 37, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 459, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"ipc_msg_table_lock\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"ipc_msg_table\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 33, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 34, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 991, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"ksmbd_genl_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 123, i32 24 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 384, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 353, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 363, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 44, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 313, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 265, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 35, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"ksmbd_nl_policy\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 76, i32 32 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [28 x i8] c"../fs/ksmbd/transport_ipc.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 828, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__ipc_heartbeat._entry, ptr @__ipc_heartbeat._entry_ptr, ptr @handle_response._entry, ptr @handle_response._entry_ptr, ptr @handle_startup_event._entry, ptr @handle_startup_event._entry.16, ptr @handle_startup_event._entry_ptr, ptr @handle_startup_event._entry_ptr.18, ptr @handle_unsupported_event._entry, ptr @handle_unsupported_event._entry_ptr, ptr @ipc_server_config_on_startup._entry, ptr @ipc_server_config_on_startup._entry_ptr, ptr @ksmbd_ipc_init._entry, ptr @ksmbd_ipc_init._entry_ptr, ptr @ksmbd_ipc_validate_version._entry, ptr @ksmbd_ipc_validate_version._entry_ptr, ptr @ipc_ida, ptr @.str, ptr @ipc_timer_work, ptr @ksmbd_genl_family, ptr @startup_lock, ptr @ksmbd_tools_pid, ptr @ksmbd_ipc_init.__key, ptr @.str.1, ptr @ksmbd_ipc_init.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ipc_msg_send_request.__key, ptr @.str.8, ptr @ipc_msg_table_lock, ptr @ipc_msg_table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ksmbd_genl_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ksmbd_nl_policy, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_timer_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_genl_family to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_tools_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_ipc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_ipc_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_ipc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_msg_send_request.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_msg_table_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_msg_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_genl_ops to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_unsupported_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_startup_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_startup_event._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_ipc_validate_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_server_config_on_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_nl_policy to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_ipc_login_request(ptr noundef %account) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %account) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %call)
  %cmp = icmp ugt i32 %call, 47
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 124, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 116, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %call4 = tail call i32 @ksmbd_acquire_id(ptr noundef nonnull @ipc_ida) #8
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call4, ptr %payload, align 4
  %account5 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %call7 = tail call i32 @strscpy(ptr noundef %account5, ptr noundef %account, i32 noundef 48) #8
  %3 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %payload, align 4
  %call9 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %4)
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i = icmp sgt i32 %6, -1
  br i1 %cmp.i, label %if.then.i21, label %if.end3.ipc_msg_handle_free.exit_crit_edge

if.end3.ipc_msg_handle_free.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_msg_handle_free.exit

if.then.i21:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ksmbd_release_id(ptr noundef nonnull @ipc_ida, i32 noundef %6) #8
  br label %ipc_msg_handle_free.exit

ipc_msg_handle_free.exit:                         ; preds = %if.then.i21, %if.end3.ipc_msg_handle_free.exit_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ipc_msg_handle_free.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9, %ipc_msg_handle_free.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_acquire_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipc_msg_send_request(ptr noundef %msg, i32 noundef %handle) unnamed_addr #0 align 64 {
entry:
  %entry1 = alloca %struct.ipc_msg_table_entry, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %entry1) #8
  %0 = call ptr @memset(ptr %entry1, i32 255, i32 68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %cmp = icmp slt i32 %handle, 0
  br i1 %cmp, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup56

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg, align 4
  %type2 = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1, i32 0, i32 1
  %3 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type2, align 4
  %response = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1, i32 0, i32 4
  %4 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %response, align 4
  %wait = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @ipc_msg_send_request.__key) #8
  call void @down_write(ptr noundef nonnull @ipc_msg_table_lock) #8
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %handle, ptr %entry1, align 4
  %ipc_table_hlist = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1, i32 0, i32 3
  %mul.i.i = mul i32 %handle, 1640531527
  %shr.i = lshr i32 %mul.i.i, 29
  %arrayidx = getelementptr [8 x %struct.hlist_head], ptr @ipc_msg_table, i32 0, i32 %shr.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %ipc_table_hlist to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %ipc_table_hlist, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end.hlist_add_head.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %ipc_table_hlist, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end.hlist_add_head.exit_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ipc_table_hlist, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  call void @up_write(ptr noundef nonnull @ipc_msg_table_lock) #8
  %call5 = call fastcc i32 @ipc_msg_send(ptr noundef %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %hlist_add_head.exit.out_crit_edge

hlist_add_head.exit.out_crit_edge:                ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %hlist_add_head.exit
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 472) #8
  %12 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %response, align 4
  %cmp15.not = icmp eq ptr %13, null
  br i1 %cmp15.not, label %if.then23, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then23:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call2674 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %15 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %response, align 4
  %cmp29.not75.not = icmp eq ptr %16, null
  br i1 %cmp29.not75.not, label %if.then23.if.end45_crit_edge, label %if.then23.for.end_crit_edge

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then23.if.end45_crit_edge:                     ; preds = %if.then23
  br label %if.end45

if.end45:                                         ; preds = %cleanup.if.end45_crit_edge, %if.then23.if.end45_crit_edge
  %__ret24.178 = phi i32 [ %__ret24.1, %cleanup.if.end45_crit_edge ], [ 200, %if.then23.if.end45_crit_edge ]
  %call2677 = phi i32 [ %call26, %cleanup.if.end45_crit_edge ], [ %call2674, %if.then23.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2677)
  %tobool46.not = icmp eq i32 %call2677, 0
  br i1 %tobool46.not, label %cleanup, label %if.end45.__out_crit_edge

if.end45.__out_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end45
  %call49 = call i32 @schedule_timeout(i32 noundef %__ret24.178) #8
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %17 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %response, align 4
  %cmp29.not = icmp eq ptr %18, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool33.not = icmp eq i32 %call49, 0
  %spec.store.select58 = select i1 %tobool33.not, i32 1, i32 %call49
  %__ret24.1 = select i1 %cmp29.not, i32 %call49, i32 %spec.store.select58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %tobool39.not = icmp eq i32 %__ret24.1, 0
  %not.cmp29.not = xor i1 %cmp29.not, true
  %19 = select i1 %not.cmp29.not, i1 true, i1 %tobool39.not
  br i1 %19, label %cleanup.for.end_crit_edge, label %cleanup.if.end45_crit_edge

cleanup.if.end45_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then23.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end45.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %out

out:                                              ; preds = %__out, %if.end7.out_crit_edge, %hlist_add_head.exit.out_crit_edge
  call void @down_write(ptr noundef nonnull @ipc_msg_table_lock) #8
  %20 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev34.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.not.i.i, label %out.hash_del.exit_crit_edge, label %if.then.i.i

out.hash_del.exit_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %out
  %22 = ptrtoint ptr %ipc_table_hlist to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipc_table_hlist, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %21, align 4
  %tobool.not.i3.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %21, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %26 = ptrtoint ptr %ipc_table_hlist to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ipc_table_hlist, align 4
  %27 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pprev34.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %out.hash_del.exit_crit_edge
  call void @up_write(ptr noundef nonnull @ipc_msg_table_lock) #8
  %28 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %response, align 4
  br label %cleanup56

cleanup56:                                        ; preds = %hash_del.exit, %entry.cleanup56_crit_edge
  %retval.0 = phi ptr [ %29, %hash_del.exit ], [ null, %entry.cleanup56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %entry1) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_ipc_spnego_authen_request(ptr nocapture noundef readonly %spnego_blob, i32 noundef %blob_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %blob_len, 17
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add1 = add i32 %blob_len, 9
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add1, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 14, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %call2 = tail call i32 @ksmbd_acquire_id(ptr noundef nonnull @ipc_ida) #8
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %payload, align 4
  %conv = trunc i32 %blob_len to i16
  %spnego_blob_len = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %3 = ptrtoint ptr %spnego_blob_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %spnego_blob_len, align 4
  %spnego_blob3 = getelementptr inbounds %struct.ksmbd_spnego_authen_request, ptr %payload, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %spnego_blob3, ptr %spnego_blob, i32 %blob_len)
  %call6 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %call2)
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i = icmp sgt i32 %6, -1
  br i1 %cmp.i, label %if.then.i20, label %if.end.ipc_msg_handle_free.exit_crit_edge

if.end.ipc_msg_handle_free.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_msg_handle_free.exit

if.then.i20:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ksmbd_release_id(ptr noundef nonnull @ipc_ida, i32 noundef %6) #8
  br label %ipc_msg_handle_free.exit

ipc_msg_handle_free.exit:                         ; preds = %if.then.i20, %if.end.ipc_msg_handle_free.exit_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ipc_msg_handle_free.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %ipc_msg_handle_free.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_ipc_tree_connect_request(ptr nocapture noundef readonly %sess, ptr nocapture noundef readonly %share, ptr nocapture noundef readonly %tree_conn, ptr noundef %peer_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %user = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %0 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user, align 8
  %name.i = getelementptr inbounds %struct.ksmbd_user, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %call1 = tail call i32 @strlen(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %call1)
  %cmp = icmp ugt i32 %call1, 47
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %share to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %share, align 4
  %call2 = tail call i32 @strlen(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call2)
  %cmp3 = icmp ugt i32 %call2, 63
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 264, ptr %sz1.i, align 4
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %call9 = tail call i32 @ksmbd_acquire_id(ptr noundef nonnull @ipc_ida) #8
  %8 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call9, ptr %payload, align 8
  %9 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  %account_flags = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %13 = ptrtoint ptr %account_flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %account_flags, align 4
  %14 = ptrtoint ptr %sess to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sess, align 8
  %session_id = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2
  %16 = ptrtoint ptr %session_id to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %session_id, align 8
  %17 = ptrtoint ptr %tree_conn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tree_conn, align 4
  %conv = sext i32 %18 to i64
  %connect_id = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 3
  %19 = ptrtoint ptr %connect_id to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %connect_id, align 8
  %account = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 4
  %name.i64 = getelementptr inbounds %struct.ksmbd_user, ptr %10, i32 0, i32 3
  %20 = ptrtoint ptr %name.i64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i64, align 4
  %call15 = tail call i32 @strscpy(ptr noundef %account, ptr noundef %21, i32 noundef 48) #8
  %share16 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 10
  %22 = ptrtoint ptr %share to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %share, align 4
  %call19 = tail call i32 @strscpy(ptr noundef %share16, ptr noundef %23, i32 noundef 64) #8
  %peer_addr20 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 18
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %peer_addr20, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %peer_addr)
  %24 = ptrtoint ptr %peer_addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %peer_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %25)
  %cmp24 = icmp eq i16 %25, 10
  br i1 %cmp24, label %if.then26, label %if.end8.if.end30_crit_edge

if.end8.if.end30_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %flags27 = getelementptr inbounds %struct.ksmbd_tree_connect_request, ptr %payload, i32 0, i32 2
  %26 = ptrtoint ptr %flags27 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags27, align 2
  %28 = or i16 %27, 1
  store i16 %28, ptr %flags27, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end8.if.end30_crit_edge
  %flags.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 4
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not = icmp eq i32 %and.i, 0
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %if.then33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %flags34 = getelementptr inbounds %struct.ksmbd_tree_connect_request, ptr %payload, i32 0, i32 2
  %31 = ptrtoint ptr %flags34 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags34, align 2
  %33 = or i16 %32, 2
  store i16 %33, ptr %flags34, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30.if.end38_crit_edge
  %34 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %payload, align 8
  %call40 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %35)
  %36 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %payload, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i = icmp sgt i32 %37, -1
  br i1 %cmp.i, label %if.then.i65, label %if.end38.ipc_msg_handle_free.exit_crit_edge

if.end38.ipc_msg_handle_free.exit_crit_edge:      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_msg_handle_free.exit

if.then.i65:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ksmbd_release_id(ptr noundef nonnull @ipc_ida, i32 noundef %37) #8
  br label %ipc_msg_handle_free.exit

ipc_msg_handle_free.exit:                         ; preds = %if.then.i65, %if.end38.ipc_msg_handle_free.exit_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ipc_msg_handle_free.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call40, %ipc_msg_handle_free.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_ipc_tree_disconnect_request(i64 noundef %session_id, i64 noundef %connect_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 88, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 80, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %session_id, ptr %payload, align 8
  %connect_id2 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2
  %3 = ptrtoint ptr %connect_id2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %connect_id, ptr %connect_id2, align 8
  %call3 = tail call fastcc i32 @ipc_msg_send(ptr noundef nonnull %call.i.i)
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipc_msg_send(ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksmbd_tools_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sz = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sz, align 4
  %sub.i.i = add i32 %2, 7
  %and.i.i = and i32 %sub.i.i, -4
  %sub.i.i.i = add i32 %and.i.i, 19
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool1.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg, align 4
  %conv = trunc i32 %4 to i8
  %call4 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ksmbd_genl_family, i32 noundef 0, i8 noundef zeroext %conv) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg, align 4
  %7 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sz, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %msg, i32 0, i32 2
  %call10 = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef %6, i32 noundef %8, ptr noundef %payload) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %add.ptr1.i36 = getelementptr i8, ptr %call4, i32 -20
  br i1 %tobool11.not, label %if.end13, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i36, null
  br i1 %tobool.not.i.i.i, label %if.then.i.out_crit_edge, label %if.then.i.i.i

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %10, %add.ptr1.i36
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !86

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i36 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i) #8
  br label %out

if.end13:                                         ; preds = %if.end7
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i36 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %15 = ptrtoint ptr %add.ptr1.i36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i36, align 4
  %16 = load i32, ptr @ksmbd_tools_pid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %call.i.i = tail call i32 @netlink_unicast(ptr noundef %17, ptr noundef nonnull %call.i.i.i, i32 noundef %16, i32 noundef 64) #8
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7) to i32))
  %19 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i37 = icmp eq i16 %19, 0
  br i1 %tobool.not.i37, label %if.then16.cleanup_crit_edge, label %if.then.i38

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i38:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8) to i32))
  store i32 %20, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8), align 4
  br label %cleanup

out:                                              ; preds = %if.end.i.i.i, %if.then.i.out_crit_edge, %if.end3.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.end3.out_crit_edge ], [ %call10, %if.then.i.out_crit_edge ], [ %call10, %if.end.i.i.i ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.i38, %if.then16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %18, %if.end13.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %if.then.i38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_ipc_logout_request(ptr noundef %account, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %account) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %call)
  %cmp = icmp ugt i32 %call, 47
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 124, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 116, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 11, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %account_flags = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 7
  %2 = ptrtoint ptr %account_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %flags, ptr %account_flags, align 4
  %call6 = tail call i32 @strscpy(ptr noundef %payload, ptr noundef %account, i32 noundef 48) #8
  %call7 = tail call fastcc i32 @ipc_msg_send(ptr noundef nonnull %call.i.i)
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_ipc_share_config_request(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call)
  %cmp = icmp ugt i32 %call, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 140, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 132, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %call4 = tail call i32 @ksmbd_acquire_id(ptr noundef nonnull @ipc_ida) #8
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call4, ptr %payload, align 4
  %share_name = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %share_name, ptr noundef %name, i32 noundef 64) #8
  %3 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %payload, align 4
  %call8 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %4)
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i = icmp sgt i32 %6, -1
  br i1 %cmp.i, label %if.then.i20, label %if.end3.ipc_msg_handle_free.exit_crit_edge

if.end3.ipc_msg_handle_free.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_msg_handle_free.exit

if.then.i20:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ksmbd_release_id(ptr noundef nonnull @ipc_ida, i32 noundef %6) #8
  br label %ipc_msg_handle_free.exit

ipc_msg_handle_free.exit:                         ; preds = %if.then.i20, %if.end3.ipc_msg_handle_free.exit_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ipc_msg_handle_free.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %ipc_msg_handle_free.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_rpc_open(ptr noundef %sess, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 20, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %handle, ptr %payload, align 4
  %call2 = tail call i32 @ksmbd_session_rpc_method(ptr noundef %sess, i32 noundef %handle) #8
  %flags = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %or = or i32 %call2, 16
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %flags, align 4
  %payload_sz = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2
  %4 = ptrtoint ptr %payload_sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %payload_sz, align 4
  %call5 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %handle)
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_session_rpc_method(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_rpc_close(ptr noundef %sess, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 20, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %handle, ptr %payload, align 4
  %call2 = tail call i32 @ksmbd_session_rpc_method(ptr noundef %sess, i32 noundef %handle) #8
  %flags = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %or = or i32 %call2, 128
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %flags, align 4
  %payload_sz = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2
  %4 = ptrtoint ptr %payload_sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %payload_sz, align 4
  %call5 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %handle)
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_rpc_write(ptr noundef %sess, i32 noundef %handle, ptr nocapture noundef readonly %payload, i32 noundef %payload_sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %payload_sz, 21
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add1 = add i32 %payload_sz, 13
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add1, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %call.i.i, align 4
  %payload2 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %payload2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %handle, ptr %payload2, align 4
  %call4 = tail call i32 @ksmbd_session_rpc_method(ptr noundef %sess, i32 noundef %handle) #8
  %flags = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %user.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %3 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 4
  %7 = shl i16 %6, 5
  %8 = and i16 %7, 512
  %9 = zext i16 %8 to i32
  %or = or i32 %call4, %9
  %or8 = or i32 %or, 32
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or8, ptr %flags, align 4
  %payload_sz9 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2
  %11 = ptrtoint ptr %payload_sz9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %payload_sz, ptr %payload_sz9, align 4
  %payload10 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2, i32 1
  %12 = call ptr @memcpy(ptr %payload10, ptr %payload, i32 %payload_sz)
  %call13 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %handle)
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call13, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_rpc_read(ptr noundef %sess, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 20, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %call.i.i, align 4
  %payload = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %handle, ptr %payload, align 4
  %call2 = tail call i32 @ksmbd_session_rpc_method(ptr noundef %sess, i32 noundef %handle) #8
  %flags = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %user.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %3 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 4
  %7 = shl i16 %6, 5
  %8 = and i16 %7, 512
  %9 = zext i16 %8 to i32
  %or = or i32 %call2, %9
  %or6 = or i32 %or, 65
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or6, ptr %flags, align 4
  %payload_sz = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2
  %11 = ptrtoint ptr %payload_sz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %payload_sz, align 4
  %call8 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %handle)
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_rpc_ioctl(ptr noundef %sess, i32 noundef %handle, ptr nocapture noundef readonly %payload, i32 noundef %payload_sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %payload_sz, 21
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add1 = add i32 %payload_sz, 13
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add1, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %call.i.i, align 4
  %payload2 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %payload2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %handle, ptr %payload2, align 4
  %call4 = tail call i32 @ksmbd_session_rpc_method(ptr noundef %sess, i32 noundef %handle) #8
  %flags = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %user.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %3 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 4
  %7 = shl i16 %6, 5
  %8 = and i16 %7, 512
  %9 = zext i16 %8 to i32
  %or = or i32 %call4, %9
  %or8 = or i32 %or, 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or8, ptr %flags, align 4
  %payload_sz9 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2
  %11 = ptrtoint ptr %payload_sz9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %payload_sz, ptr %payload_sz9, align 4
  %payload10 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2, i32 1
  %12 = call ptr @memcpy(ptr %payload10, ptr %payload, i32 %payload_sz)
  %call13 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %handle)
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call13, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_rpc_rap(ptr nocapture noundef readonly %sess, ptr nocapture noundef readonly %payload, i32 noundef %payload_sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %payload_sz, 21
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add1 = add i32 %payload_sz, 13
  %sz1.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sz1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add1, ptr %sz1.i, align 4
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %call.i.i, align 4
  %payload2 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 0, i32 2
  %call3 = tail call i32 @ksmbd_acquire_id(ptr noundef nonnull @ipc_ida) #8
  %2 = ptrtoint ptr %payload2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %payload2, align 4
  %user.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %3 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 4
  %7 = shl i16 %6, 5
  %8 = and i16 %7, 512
  %flags = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 1, i32 1
  %9 = or i16 %8, 257
  %or = zext i16 %9 to i32
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %flags, align 4
  %payload_sz6 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2
  %11 = ptrtoint ptr %payload_sz6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %payload_sz, ptr %payload_sz6, align 4
  %payload7 = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i, i32 2, i32 1
  %12 = call ptr @memcpy(ptr %payload7, ptr %payload, i32 %payload_sz)
  %call10 = tail call fastcc ptr @ipc_msg_send_request(ptr noundef nonnull %call.i.i, i32 noundef %call3)
  %13 = ptrtoint ptr %payload2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %payload2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i = icmp sgt i32 %14, -1
  br i1 %cmp.i, label %if.then.i26, label %if.end.ipc_msg_handle_free.exit_crit_edge

if.end.ipc_msg_handle_free.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_msg_handle_free.exit

if.then.i26:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ksmbd_release_id(ptr noundef nonnull @ipc_ida, i32 noundef %14) #8
  br label %ipc_msg_handle_free.exit

ipc_msg_handle_free.exit:                         ; preds = %if.then.i26, %if.end.ipc_msg_handle_free.exit_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ipc_msg_handle_free.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %ipc_msg_handle_free.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_ipc_id_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ksmbd_acquire_id(ptr noundef nonnull @ipc_ida) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_rpc_id_free(i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ksmbd_release_id(ptr noundef nonnull @ipc_ida, i32 noundef %handle) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_release_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_ipc_release() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @ipc_timer_work) #8
  %call1 = tail call i32 @genl_unregister_family(ptr noundef nonnull @ksmbd_genl_family) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_ipc_soft_reset() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @startup_lock, i32 noundef 0) #8
  store i32 0, ptr @ksmbd_tools_pid, align 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @ipc_timer_work) #8
  tail call void @mutex_unlock(ptr noundef nonnull @startup_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_ipc_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 0, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 1, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 2, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 3, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 4, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 5, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 6, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 7, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 8, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 9, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 10, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 11, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 12, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 13, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 14, i32 9), align 1
  store i8 3, ptr getelementptr inbounds ([16 x %struct.genl_ops], ptr @ksmbd_genl_ops, i32 0, i32 15, i32 9), align 1
  store ptr @ksmbd_nl_policy, ptr getelementptr inbounds (%struct.genl_family, ptr @ksmbd_genl_family, i32 0, i32 10), align 4
  tail call void @__init_work(ptr noundef nonnull @ipc_timer_work, i32 noundef 0) #8
  store i32 -64, ptr @ipc_timer_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @ipc_timer_work, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.1, ptr noundef nonnull @ksmbd_ipc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  store volatile ptr getelementptr inbounds (%struct.delayed_work, ptr @ipc_timer_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @ipc_timer_work, i32 0, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.delayed_work, ptr @ipc_timer_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @ipc_timer_work, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr @ipc_timer_heartbeat, ptr getelementptr inbounds (%struct.delayed_work, ptr @ipc_timer_work, i32 0, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @ipc_timer_work, i32 0, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @ksmbd_ipc_init.__key.2) #8
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @ksmbd_genl_family) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call) #13
  %call11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @ipc_timer_work) #8
  br label %if.end

if.end:                                           ; preds = %do.end9, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipc_timer_heartbeat(ptr nocapture noundef readnone %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1) to i32))
  %0 = load volatile i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i.not.i = icmp eq i32 %0, 1
  br i1 %cmp.i.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub2.i = sub i32 %3, %1
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7) to i32))
  %4 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7), align 2
  %conv5.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %conv5.i)
  %cmp6.i = icmp ult i32 %sub2.i, %conv5.i
  br i1 %cmp6.i, label %if.then8.i, label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7) to i32))
  %5 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.ipc_update_last_active.exit.i_crit_edge, label %if.then.i.i

if.else.i.ipc_update_last_active.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_update_last_active.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8) to i32))
  store i32 %6, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8), align 4
  br label %ipc_update_last_active.exit.i

ipc_update_last_active.exit.i:                    ; preds = %if.then.i.i, %if.else.i.ipc_update_last_active.exit.i_crit_edge
  %conv.i = zext i16 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef nonnull @ipc_timer_work, i32 noundef %conv.i) #8
  br label %if.end

if.then8.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub10.i = sub i32 %conv5.i, %sub2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i32.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef nonnull @ipc_timer_work, i32 noundef %sub10.i) #8
  br label %if.end

if.end12.i:                                       ; preds = %if.then1.i
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 12, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end12.i.if.then_crit_edge, label %ksmbd_ipc_heartbeat_request.exit.i

if.end12.i.if.then_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

ksmbd_ipc_heartbeat_request.exit.i:               ; preds = %if.end12.i
  %sz1.i.i.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %sz1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %sz1.i.i.i, align 4
  %10 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call.i.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @ipc_msg_send(ptr noundef nonnull %call.i.i.i.i) #8
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp14.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp14.i, label %if.then16.i, label %ksmbd_ipc_heartbeat_request.exit.i.if.then_crit_edge

ksmbd_ipc_heartbeat_request.exit.i.if.then_crit_edge: ; preds = %ksmbd_ipc_heartbeat_request.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then16.i:                                      ; preds = %ksmbd_ipc_heartbeat_request.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7) to i32))
  %11 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7), align 2
  %conv17.i = zext i16 %11 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i33.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef nonnull @ipc_timer_work, i32 noundef %conv17.i) #8
  br label %if.end

if.then:                                          ; preds = %ksmbd_ipc_heartbeat_request.exit.i.if.then_crit_edge, %if.end12.i.if.then_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @startup_lock, i32 noundef 0) #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1) to i32))
  store volatile i32 2, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8), align 4
  store i32 0, ptr @ksmbd_tools_pid, align 4
  %div.i = udiv i32 %sub2.i, 100
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %div.i) #13
  tail call void @mutex_unlock(ptr noundef nonnull @startup_lock) #8
  %call1 = tail call i32 @server_queue_ctrl_reset_work() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then16.i, %if.then8.i, %ipc_update_last_active.exit.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_unsupported_event(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %genlhdr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv) #13
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_startup_event(ptr noundef %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #8
  br i1 %call, label %if.end, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

if.end:                                           ; preds = %entry
  %genlhdr.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %genlhdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %genlhdr.i, align 4
  %version.i = getelementptr inbounds %struct.genlmsghdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 1
  br i1 %cmp.not.i, label %if.end3, label %ksmbd_ipc_validate_version.exit

ksmbd_ipc_validate_version.exit:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %conv.i, i32 noundef 1, ptr noundef nonnull @.str.22) #13
  br label %cleanup30

if.end3:                                          ; preds = %if.end
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end3.cleanup30_crit_edge, label %if.end5

if.end3.cleanup30_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

if.end5:                                          ; preds = %if.end3
  tail call void @mutex_lock_nested(ptr noundef nonnull @startup_lock, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1) to i32))
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp ugt i32 %8, 1
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @startup_lock) #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup30

if.end10:                                         ; preds = %if.end5
  %9 = load i32, ptr @ksmbd_tools_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 12, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.do.end18_crit_edge, label %ksmbd_ipc_heartbeat_request.exit

if.then12.do.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

ksmbd_ipc_heartbeat_request.exit:                 ; preds = %if.then12
  %sz1.i.i = getelementptr inbounds %struct.ksmbd_ipc_msg, ptr %call.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %sz1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %sz1.i.i, align 4
  %11 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call.i.i.i, align 4
  %call1.i = tail call fastcc i32 @ipc_msg_send(ptr noundef nonnull %call.i.i.i) #8
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, 0
  br i1 %cmp, label %ksmbd_ipc_heartbeat_request.exit.out_crit_edge, label %ksmbd_ipc_heartbeat_request.exit.do.end18_crit_edge

ksmbd_ipc_heartbeat_request.exit.do.end18_crit_edge: ; preds = %ksmbd_ipc_heartbeat_request.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

ksmbd_ipc_heartbeat_request.exit.out_crit_edge:   ; preds = %ksmbd_ipc_heartbeat_request.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end18:                                         ; preds = %ksmbd_ipc_heartbeat_request.exit.do.end18_crit_edge, %if.then12.do.end18_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %if.end29

if.else:                                          ; preds = %if.end10
  %12 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attrs, align 4
  %14 = ptrtoint ptr %genlhdr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %genlhdr.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 2
  %idxprom = zext i8 %17 to i32
  %arrayidx22 = getelementptr ptr, ptr %13, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx22, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %file_max.i = getelementptr i8, ptr %19, i32 196
  %20 = ptrtoint ptr %file_max.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %file_max.i, align 4
  tail call void @ksmbd_set_fd_limit(i32 noundef %21) #8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @server_conf to i32))
  store i32 %23, ptr @server_conf, align 4
  %signing.i = getelementptr i8, ptr %19, i32 8
  %24 = ptrtoint ptr %signing.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signing.i, align 4
  %conv.i38 = trunc i32 %25 to i16
  call void @__asan_store2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 2) to i32))
  store i16 %conv.i38, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 2), align 4
  %tcp_port.i = getelementptr i8, ptr %19, i32 188
  %26 = ptrtoint ptr %tcp_port.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tcp_port.i, align 4
  call void @__asan_store2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 6) to i32))
  store i16 %27, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 6), align 4
  %ipc_timeout.i = getelementptr i8, ptr %19, i32 190
  %28 = ptrtoint ptr %ipc_timeout.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ipc_timeout.i, align 2
  %mul.i = mul i16 %29, 100
  call void @__asan_store2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7) to i32))
  store i16 %mul.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7), align 2
  %deadtime.i = getelementptr i8, ptr %19, i32 192
  %30 = ptrtoint ptr %deadtime.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %deadtime.i, align 4
  %mul3.i = mul i32 %31, 6000
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 9) to i32))
  store i32 %mul3.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 9), align 4
  %share_fake_fscaps.i = getelementptr i8, ptr %19, i32 212
  %32 = ptrtoint ptr %share_fake_fscaps.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %share_fake_fscaps.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 10) to i32))
  store i32 %33, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 10), align 4
  %sub_auth.i = getelementptr i8, ptr %19, i32 216
  tail call void @ksmbd_init_domain(ptr noundef %sub_auth.i) #8
  %smb2_max_read.i = getelementptr i8, ptr %19, i32 204
  %34 = ptrtoint ptr %smb2_max_read.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %smb2_max_read.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.else.if.end.i39_crit_edge, label %if.then.i

if.else.if.end.i39_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i39

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @init_smb2_max_read_size(i32 noundef %35) #8
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then.i, %if.else.if.end.i39_crit_edge
  %smb2_max_write.i = getelementptr i8, ptr %19, i32 200
  %36 = ptrtoint ptr %smb2_max_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %smb2_max_write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool5.not.i = icmp eq i32 %37, 0
  br i1 %tobool5.not.i, label %if.end.i39.if.end8.i_crit_edge, label %if.then6.i

if.end.i39.if.end8.i_crit_edge:                   ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @init_smb2_max_write_size(i32 noundef %37) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i39.if.end8.i_crit_edge
  %smb2_max_trans.i = getelementptr i8, ptr %19, i32 208
  %38 = ptrtoint ptr %smb2_max_trans.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %smb2_max_trans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool9.not.i = icmp eq i32 %39, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then10.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @init_smb2_max_trans_size(i32 noundef %39) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end12.i_crit_edge
  %smb2_max_credits.i = getelementptr i8, ptr %19, i32 228
  %40 = ptrtoint ptr %smb2_max_credits.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %smb2_max_credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool13.not.i = icmp eq i32 %41, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then14.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @init_smb2_max_credits(i32 noundef %41) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  %netbios_name.i = getelementptr i8, ptr %19, i32 44
  %call.i40 = tail call i32 @ksmbd_set_netbios_name(ptr noundef %netbios_name.i) #8
  %server_string.i = getelementptr i8, ptr %19, i32 124
  %call19.i = tail call i32 @ksmbd_set_server_string(ptr noundef %server_string.i) #8
  %or.i = or i32 %call19.i, %call.i40
  %work_group.i = getelementptr i8, ptr %19, i32 60
  %call21.i = tail call i32 @ksmbd_set_work_group(ptr noundef %work_group.i) #8
  %or22.i = or i32 %or.i, %call21.i
  %____payload.i = getelementptr i8, ptr %19, i32 748
  %ifc_list_sz.i = getelementptr i8, ptr %19, i32 744
  %42 = ptrtoint ptr %ifc_list_sz.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ifc_list_sz.i, align 4
  %call24.i = tail call i32 @ksmbd_tcp_set_interfaces(ptr noundef %____payload.i, i32 noundef %43) #8
  %or25.i = or i32 %or22.i, %call24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or25.i)
  %tobool26.not.i = icmp eq i32 %or25.i, 0
  br i1 %tobool26.not.i, label %if.end35.i, label %cleanup

if.end35.i:                                       ; preds = %if.end16.i
  %min_prot.i = getelementptr i8, ptr %19, i32 12
  %44 = ptrtoint ptr %min_prot.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %min_prot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool36.not.i = icmp eq i8 %45, 0
  br i1 %tobool36.not.i, label %if.end35.i.if.end45.i_crit_edge, label %if.then37.i

if.end35.i.if.end45.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then37.i:                                      ; preds = %if.end35.i
  %call40.i = tail call i32 @ksmbd_lookup_protocol_idx(ptr noundef %min_prot.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call40.i)
  %cmp.i42 = icmp sgt i32 %call40.i, -1
  br i1 %cmp.i42, label %if.then42.i, label %if.then37.i.if.end45.i_crit_edge

if.then37.i.if.end45.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then42.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv43.i = trunc i32 %call40.i to i16
  call void @__asan_store2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4) to i32))
  store i16 %conv43.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 4), align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %if.then37.i.if.end45.i_crit_edge, %if.end35.i.if.end45.i_crit_edge
  %max_prot.i = getelementptr i8, ptr %19, i32 28
  %46 = ptrtoint ptr %max_prot.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_prot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool47.not.i = icmp eq i8 %47, 0
  br i1 %tobool47.not.i, label %if.end45.i.if.end57.i_crit_edge, label %if.then48.i

if.end45.i.if.end57.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i

if.then48.i:                                      ; preds = %if.end45.i
  %call51.i = tail call i32 @ksmbd_lookup_protocol_idx(ptr noundef %max_prot.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call51.i)
  %cmp52.i = icmp sgt i32 %call51.i, -1
  br i1 %cmp52.i, label %if.then54.i, label %if.then48.i.if.end57.i_crit_edge

if.then48.i.if.end57.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv55.i = trunc i32 %call51.i to i16
  call void @__asan_store2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5) to i32))
  store i16 %conv55.i, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 5), align 2
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then54.i, %if.then48.i.if.end57.i_crit_edge, %if.end45.i.if.end57.i_crit_edge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7) to i32))
  %48 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool58.not.i = icmp eq i16 %48, 0
  br i1 %tobool58.not.i, label %if.end57.i.cleanup.thread_crit_edge, label %if.then59.i

if.end57.i.cleanup.thread_crit_edge:              ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then59.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv60.i = zext i16 %48 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i.i43 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %49, ptr noundef nonnull @ipc_timer_work, i32 noundef %conv60.i) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then59.i, %if.end57.i.cleanup.thread_crit_edge
  %call28 = tail call i32 @server_queue_ctrl_init_work() #8
  br label %if.end29

cleanup:                                          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %netbios_name.i, ptr noundef %server_string.i, ptr noundef %work_group.i) #13
  br label %out

if.end29:                                         ; preds = %cleanup.thread, %do.end18
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %50 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %snd_portid, align 4
  store i32 %51, ptr @ksmbd_tools_pid, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7) to i32))
  %52 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i44 = icmp eq i16 %52, 0
  br i1 %tobool.not.i44, label %if.end29.out_crit_edge, label %if.then.i45

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i45:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8) to i32))
  store i32 %53, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8), align 4
  br label %out

out:                                              ; preds = %if.then.i45, %if.end29.out_crit_edge, %cleanup, %ksmbd_ipc_heartbeat_request.exit.out_crit_edge
  %ret.1 = phi i32 [ %or25.i, %cleanup ], [ -22, %ksmbd_ipc_heartbeat_request.exit.out_crit_edge ], [ 0, %if.end29.out_crit_edge ], [ 0, %if.then.i45 ]
  tail call void @mutex_unlock(ptr noundef nonnull @startup_lock) #8
  br label %cleanup30

cleanup30:                                        ; preds = %out, %if.then8, %if.end3.cleanup30_crit_edge, %ksmbd_ipc_validate_version.exit, %entry.cleanup30_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -22, %if.then8 ], [ -1, %entry.cleanup30_crit_edge ], [ -22, %ksmbd_ipc_validate_version.exit ], [ -22, %if.end3.cleanup30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_generic_event(ptr noundef %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %genlhdr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  %conv = zext i8 %3 to i32
  %call = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp = icmp ugt i8 %3, 15
  br i1 %cmp, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 400, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %4 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genlhdr, align 4
  %version.i = getelementptr inbounds %struct.genlmsghdr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 1
  br i1 %cmp.not.i, label %if.end22, label %ksmbd_ipc_validate_version.exit

ksmbd_ipc_validate_version.exit:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %7 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %conv.i, i32 noundef 1, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %12 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %genlhdr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 2
  %idxprom = zext i8 %15 to i32
  %arrayidx29 = getelementptr ptr, ptr %9, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx29, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  %conv.i49 = zext i16 %19 to i32
  %sub.i = add nsw i32 %conv.i49, -4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7) to i32))
  %22 = load i16, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 7), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i.i, label %if.end25.ipc_update_last_active.exit.i_crit_edge, label %if.then.i.i

if.end25.ipc_update_last_active.exit.i_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipc_update_last_active.exit.i

if.then.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8) to i32))
  store i32 %23, ptr getelementptr inbounds (%struct.ksmbd_server_config, ptr @server_conf, i32 0, i32 8), align 4
  br label %ipc_update_last_active.exit.i

ipc_update_last_active.exit.i:                    ; preds = %if.then.i.i, %if.end25.ipc_update_last_active.exit.i_crit_edge
  tail call void @down_read(ptr noundef nonnull @ipc_msg_table_lock) #8
  %mul.i.i.i = mul i32 %21, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 29
  %arrayidx.i = getelementptr [8 x %struct.hlist_head], ptr @ipc_msg_table, i32 0, i32 %shr.i.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  %add.ptr.i50 = getelementptr i8, ptr %25, i32 -60
  %tobool3.not5053.i = icmp eq ptr %add.ptr.i50, null
  %tobool3.not50.i = or i1 %tobool.not.i, %tobool3.not5053.i
  br i1 %tobool3.not50.i, label %ipc_update_last_active.exit.i.handle_response.exit_crit_edge, label %ipc_update_last_active.exit.i.for.body.i_crit_edge

ipc_update_last_active.exit.i.for.body.i_crit_edge: ; preds = %ipc_update_last_active.exit.i
  br label %for.body.i

ipc_update_last_active.exit.i.handle_response.exit_crit_edge: ; preds = %ipc_update_last_active.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_response.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %ipc_update_last_active.exit.i.for.body.i_crit_edge
  %entry1.051.i = phi ptr [ %add.ptr26.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i50, %ipc_update_last_active.exit.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %entry1.051.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entry1.051.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %27)
  %cmp.not.i51 = icmp eq i32 %21, %27
  br i1 %cmp.not.i51, label %if.end.i, label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %response.i = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1.051.i, i32 0, i32 4
  %28 = ptrtoint ptr %response.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %response.i, align 4
  %type5.i = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1.051.i, i32 0, i32 1
  %29 = ptrtoint ptr %type5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type5.i, align 4
  %add.i = add i32 %30, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp6.not.i = icmp eq i32 %add.i, %conv
  br i1 %cmp6.not.i, label %if.end.i.if.end12.i_crit_edge, label %do.end.i52

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

do.end.i52:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %add.i, i32 noundef %conv) #13
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i52, %if.end.i.if.end12.i_crit_edge
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %sub.i, i32 noundef 3520, i32 noundef -1) #12
  %31 = ptrtoint ptr %response.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %response.i, align 4
  %tobool16.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool16.not.i, label %if.end12.i.handle_response.exit_crit_edge, label %if.end18.i

if.end12.i.handle_response.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_response.exit

if.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr.i, i32 %sub.i)
  %wait.i = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1.051.i, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %handle_response.exit

for.inc.i:                                        ; preds = %for.body.i
  %ipc_table_hlist.i = getelementptr inbounds %struct.ipc_msg_table_entry, ptr %entry1.051.i, i32 0, i32 3
  %33 = ptrtoint ptr %ipc_table_hlist.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ipc_table_hlist.i, align 4
  %tobool22.not.i = icmp eq ptr %34, null
  %add.ptr26.i = getelementptr i8, ptr %34, i32 -60
  %tobool3.not55.i = icmp eq ptr %add.ptr26.i, null
  %tobool3.not.i = or i1 %tobool22.not.i, %tobool3.not55.i
  br i1 %tobool3.not.i, label %for.inc.i.handle_response.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.handle_response.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_response.exit

handle_response.exit:                             ; preds = %for.inc.i.handle_response.exit_crit_edge, %if.end18.i, %if.end12.i.handle_response.exit_crit_edge, %ipc_update_last_active.exit.i.handle_response.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end18.i ], [ -12, %if.end12.i.handle_response.exit_crit_edge ], [ 0, %ipc_update_last_active.exit.i.handle_response.exit_crit_edge ], [ 0, %for.inc.i.handle_response.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @ipc_msg_table_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %handle_response.exit, %if.end22.cleanup_crit_edge, %ksmbd_ipc_validate_version.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0.i, %handle_response.exit ], [ -1, %entry.cleanup_crit_edge ], [ -22, %ksmbd_ipc_validate_version.exit ], [ -22, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @server_queue_ctrl_init_work() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_set_fd_limit(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_init_domain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_smb2_max_read_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_smb2_max_write_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_smb2_max_trans_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_smb2_max_credits(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_set_netbios_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_set_server_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_set_work_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_tcp_set_interfaces(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_lookup_protocol_idx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @server_queue_ctrl_reset_work() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/transport_ipc.c", i32 572, i32 51}
!2 = !{ptr @ksmbd_ipc_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/ksmbd/transport_ipc.c", i32 868, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ksmbd_ipc_init.__key.2, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ksmbd/transport_ipc.c", i32 872, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ksmbd_ipc_init._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @ksmbd_ipc_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @ksmbd_tools_pid, !14, !"ksmbd_tools_pid", i1 false, i1 false}
!14 = !{!"../fs/ksmbd/transport_ipc.c", i32 39, i32 21}
!15 = !{ptr @ipc_timer_work, !16, !"ipc_timer_work", i1 false, i1 false}
!16 = !{!"../fs/ksmbd/transport_ipc.c", i32 69, i32 28}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ksmbd/transport_ipc.c", i32 37, i32 8}
!19 = !{ptr @ipc_ida, !18, !"ipc_ida", i1 false, i1 false}
!20 = !{ptr @ipc_msg_send_request.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/ksmbd/transport_ipc.c", i32 459, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ksmbd/transport_ipc.c", i32 34, i32 8}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ipc_msg_table_lock, !24, !"ipc_msg_table_lock", i1 false, i1 false}
!27 = !{ptr @ipc_msg_table, !28, !"ipc_msg_table", i1 false, i1 false}
!28 = !{!"../fs/ksmbd/transport_ipc.c", i32 33, i32 8}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/net/netlink.h", i32 991, i32 3}
!31 = !{ptr @ksmbd_genl_family, !32, !"ksmbd_genl_family", i1 false, i1 false}
!32 = !{!"../fs/ksmbd/transport_ipc.c", i32 190, i32 27}
!33 = !{ptr @ksmbd_genl_ops, !34, !"ksmbd_genl_ops", i1 false, i1 false}
!34 = !{!"../fs/ksmbd/transport_ipc.c", i32 123, i32 24}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ksmbd/transport_ipc.c", i32 384, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @handle_unsupported_event._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @handle_unsupported_event._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ksmbd/transport_ipc.c", i32 353, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @handle_startup_event._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @handle_startup_event._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ksmbd/transport_ipc.c", i32 363, i32 3}
!47 = !{ptr @handle_startup_event._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @handle_startup_event._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ksmbd/transport_ipc.c", i32 44, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ksmbd_ipc_validate_version._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ksmbd_ipc_validate_version._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ksmbd/transport_ipc.c", i32 313, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ipc_server_config_on_startup._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ipc_server_config_on_startup._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ksmbd/transport_ipc.c", i32 265, i32 4}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @handle_response._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @handle_response._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ksmbd/transport_ipc.c", i32 35, i32 8}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @startup_lock, !67, !"startup_lock", i1 false, i1 false}
!70 = !{ptr @ksmbd_nl_policy, !71, !"ksmbd_nl_policy", i1 false, i1 false}
!71 = !{!"../fs/ksmbd/transport_ipc.c", i32 76, i32 32}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ksmbd/transport_ipc.c", i32 828, i32 2}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__ipc_heartbeat._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @__ipc_heartbeat._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 1, i32 2000}
