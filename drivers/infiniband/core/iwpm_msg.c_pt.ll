; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/iwpm_msg.c_pt.bc'
source_filename = "../drivers/infiniband/core/iwpm_msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.47, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.52, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.52 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.iwpm_dev_data = type { [32 x i8], [16 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.99, %union.anon.100, [48 x i8], %union.anon.101, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.103, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.99 = type { ptr }
%union.anon.100 = type { i64 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { i32, ptr }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.105, i32, i32, i32, i16, i16, %union.anon.107, i32, %union.anon.108, %union.anon.109, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.105 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i16 }
%struct.iwpm_nlmsg_request = type { %struct.list_head, i32, ptr, i8, i8, i16, %struct.semaphore, %struct.kref }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.iwpm_sa_data = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.121 }
%union.anon.121 = type { ptr, [124 x i8] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.88 }
%union.anon.88 = type { [6 x i32], [24 x i8] }
%struct.iwpm_remote_info = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i8 }

@iwpm_ulib_version = dso_local global { i16, [30 x i8] } { i16 3, [30 x i8] zeroinitializer }, align 32
@iwpm_user_pid = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to create a nlmsg\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to allocate netlink request\00", [61 x i8] zeroinitializer }, align 32
@echo_nlmsg_seq = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to put attribute of the nlmsg\00", [59 x i8] zeroinitializer }, align 32
@iwpm_ulib_name = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iWarpPortMapperUser\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@iwpm_register_pid.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iw_cm\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iwpm_register_pid\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/core/iwpm_msg.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Multicasting a nlmsg (dev = %s ifname = %s iwpm = %s)\0A\00", [37 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to send a nlmsg\00", [41 x i8] zeroinitializer }, align 32
@iwpm_register_pid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: %s (client = %u)\0A\00", [40 x i8] zeroinitializer }, align 32
@iwpm_register_pid._entry_ptr = internal global ptr @iwpm_register_pid._entry, section ".printk_index", align 4
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unregistered port mapper client\00", [32 x i8] zeroinitializer }, align 32
@iwpm_add_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.11, ptr @.str.6, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iwpm_add_mapping\00", [47 x i8] zeroinitializer }, align 32
@iwpm_add_mapping._entry_ptr = internal global ptr @iwpm_add_mapping._entry, section ".printk_index", align 4
@iwpm_add_and_query_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.6, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iwpm_add_and_query_mapping\00", [37 x i8] zeroinitializer }, align 32
@iwpm_add_and_query_mapping._entry_ptr = internal global ptr @iwpm_add_and_query_mapping._entry, section ".printk_index", align 4
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"remove_mapping: Local sockaddr:\00", [32 x i8] zeroinitializer }, align 32
@iwpm_remove_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.6, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iwpm_remove_mapping\00", [44 x i8] zeroinitializer }, align 32
@iwpm_remove_mapping._entry_ptr = internal global ptr @iwpm_remove_mapping._entry, section ".printk_index", align 4
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Register Pid response\00", [42 x i8] zeroinitializer }, align 32
@resp_reg_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 31, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 31, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.5 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@iwpm_register_pid_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: Could not find a matching request (seq = %u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iwpm_register_pid_cb\00", [43 x i8] zeroinitializer }, align 32
@iwpm_register_pid_cb._entry_ptr = internal global ptr @iwpm_register_pid_cb._entry, section ".printk_index", align 4
@iwpm_register_pid_cb._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.6, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: Incorrect info (dev = %s name = %s version = %u)\0A\00", [40 x i8] zeroinitializer }, align 32
@iwpm_register_pid_cb._entry_ptr.20 = internal global ptr @iwpm_register_pid_cb._entry.18, section ".printk_index", align 4
@iwpm_register_pid_cb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwpm_register_pid_cb._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.6, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: Down level iwpmd/pid %d.  Continuing...\00", [50 x i8] zeroinitializer }, align 32
@iwpm_register_pid_cb._entry_ptr.23 = internal global ptr @iwpm_register_pid_cb._entry.21, section ".printk_index", align 4
@iwpm_register_pid_cb.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.17, ptr @.str.6, ptr @.str.24, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: iWarp Port Mapper (pid = %d) is available!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Add Mapping response\00", [43 x i8] zeroinitializer }, align 32
@resp_add_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 128, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 128, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.5 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@iwpm_add_mapping_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.26, ptr @.str.6, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iwpm_add_mapping_cb\00", [44 x i8] zeroinitializer }, align 32
@iwpm_add_mapping_cb._entry_ptr = internal global ptr @iwpm_add_mapping_cb._entry, section ".printk_index", align 4
@iwpm_add_mapping_cb._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.6, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s: Sockaddr family doesn't match the requested one\0A\00", [41 x i8] zeroinitializer }, align 32
@iwpm_add_mapping_cb._entry_ptr.29 = internal global ptr @iwpm_add_mapping_cb._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"add_mapping: Local sockaddr:\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"add_mapping: Mapped local sockaddr:\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Query Mapping response\00", [41 x i8] zeroinitializer }, align 32
@resp_query_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 128, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 128, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 128, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 128, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.5 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@iwpm_add_and_query_mapping_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.33, ptr @.str.6, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iwpm_add_and_query_mapping_cb\00", [34 x i8] zeroinitializer }, align 32
@iwpm_add_and_query_mapping_cb._entry_ptr = internal global ptr @iwpm_add_and_query_mapping_cb._entry, section ".printk_index", align 4
@iwpm_add_and_query_mapping_cb._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.6, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: Received a Reject (pid = %u, echo seq = %u)\0A\00", [45 x i8] zeroinitializer }, align 32
@iwpm_add_and_query_mapping_cb._entry_ptr.36 = internal global ptr @iwpm_add_and_query_mapping_cb._entry.34, section ".printk_index", align 4
@iwpm_add_and_query_mapping_cb._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.6, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Incorrect local sockaddr\0A\00", [32 x i8] zeroinitializer }, align 32
@iwpm_add_and_query_mapping_cb._entry_ptr.39 = internal global ptr @iwpm_add_and_query_mapping_cb._entry.37, section ".printk_index", align 4
@iwpm_add_and_query_mapping_cb._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.33, ptr @.str.6, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iwpm_add_and_query_mapping_cb._entry_ptr.41 = internal global ptr @iwpm_add_and_query_mapping_cb._entry.40, section ".printk_index", align 4
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"query_mapping: Local sockaddr:\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"query_mapping: Mapped local sockaddr:\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"query_mapping: Remote sockaddr:\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"query_mapping: Mapped remote sockaddr:\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Remote Mapping info\00", [44 x i8] zeroinitializer }, align 32
@iwpm_remote_info_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.47, ptr @.str.6, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iwpm_remote_info_cb\00", [44 x i8] zeroinitializer }, align 32
@iwpm_remote_info_cb._entry_ptr = internal global ptr @iwpm_remote_info_cb._entry, section ".printk_index", align 4
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"remote_info: Local sockaddr:\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"remote_info: Mapped local sockaddr:\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"remote_info: Remote sockaddr:\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"remote_info: Mapped remote sockaddr:\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mapping Info response\00", [42 x i8] zeroinitializer }, align 32
@resp_mapinfo_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 31, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.5 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@iwpm_mapping_info_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Unable to parse nlmsg\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iwpm_mapping_info_cb\00", [43 x i8] zeroinitializer }, align 32
@iwpm_mapping_info_cb._entry_ptr = internal global ptr @iwpm_mapping_info_cb._entry, section ".printk_index", align 4
@iwpm_mapping_info_cb._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.6, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: Invalid port mapper name = %s version = %u\0A\00", [46 x i8] zeroinitializer }, align 32
@iwpm_mapping_info_cb._entry_ptr.57 = internal global ptr @iwpm_mapping_info_cb._entry.55, section ".printk_index", align 4
@iwpm_mapping_info_cb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwpm_mapping_info_cb._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.54, ptr @.str.6, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iwpm_mapping_info_cb._entry_ptr.59 = internal global ptr @iwpm_mapping_info_cb._entry.58, section ".printk_index", align 4
@iwpm_mapping_info_cb.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.54, ptr @.str.6, ptr @.str.24, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mapping Info Ack\00", [47 x i8] zeroinitializer }, align 32
@ack_mapinfo_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@iwpm_ack_mapping_info_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.6, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: Invalid mapinfo number (sent = %u ack-ed = %u)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iwpm_ack_mapping_info_cb\00", [39 x i8] zeroinitializer }, align 32
@iwpm_ack_mapping_info_cb._entry_ptr = internal global ptr @iwpm_ack_mapping_info_cb._entry, section ".printk_index", align 4
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mapping Error Msg\00", [46 x i8] zeroinitializer }, align 32
@map_error_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.5 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@iwpm_mapping_error_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s: Received msg seq = %u err code = %u client = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iwpm_mapping_error_cb\00", [42 x i8] zeroinitializer }, align 32
@iwpm_mapping_error_cb._entry_ptr = internal global ptr @iwpm_mapping_error_cb._entry, section ".printk_index", align 4
@iwpm_mapping_error_cb.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.65, ptr @.str.6, ptr @.str.66, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not find matching req (seq = %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Hello request\00", [18 x i8] zeroinitializer }, align 32
@hello_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.5 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@iwpm_hello_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.68, ptr @.str.6, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwpm_hello_cb\00", [18 x i8] zeroinitializer }, align 32
@iwpm_hello_cb._entry_ptr = internal global ptr @iwpm_hello_cb._entry, section ".printk_index", align 4
@iwpm_hello_cb.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.68, ptr @.str.6, ptr @.str.69, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using ABI version %u\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"iwpm_ulib_version\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 37, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"iwpm_user_pid\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 38, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 77, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 83, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"echo_nlmsg_seq\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 39, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 89, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"iwpm_ulib_name\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 36, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 108, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 115, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 122, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 155, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 206, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 295, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 356, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 359, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 394, i32 25 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"resp_reg_policy\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 366, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 403, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 418, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 426, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 429, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 467, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"resp_add_policy\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 442, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 477, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 492, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 500, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 502, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 547, i32 13 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"resp_query_policy\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 516, i32 32 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 556, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 572, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 578, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 584, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 595, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 597, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 599, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 601, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 629, i32 13 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 648, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 668, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 670, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 672, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 674, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 697, i32 25 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c"resp_mapinfo_policy\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 679, i32 32 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 705, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 712, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 722, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 750, i32 25 }
@___asan_gen_.277 = private unnamed_addr constant [19 x i8] c"ack_mapinfo_policy\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 734, i32 32 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 758, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 783, i32 25 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"map_error_policy\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 765, i32 32 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 791, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 797, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 827, i32 25 }
@___asan_gen_.310 = private unnamed_addr constant [13 x i8] c"hello_policy\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 811, i32 32 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 834, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [38 x i8] c"../drivers/infiniband/core/iwpm_msg.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 842, i32 2 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @iwpm_ack_mapping_info_cb._entry, ptr @iwpm_ack_mapping_info_cb._entry_ptr, ptr @iwpm_add_and_query_mapping._entry, ptr @iwpm_add_and_query_mapping._entry_ptr, ptr @iwpm_add_and_query_mapping_cb._entry, ptr @iwpm_add_and_query_mapping_cb._entry.34, ptr @iwpm_add_and_query_mapping_cb._entry.37, ptr @iwpm_add_and_query_mapping_cb._entry.40, ptr @iwpm_add_and_query_mapping_cb._entry_ptr, ptr @iwpm_add_and_query_mapping_cb._entry_ptr.36, ptr @iwpm_add_and_query_mapping_cb._entry_ptr.39, ptr @iwpm_add_and_query_mapping_cb._entry_ptr.41, ptr @iwpm_add_mapping._entry, ptr @iwpm_add_mapping._entry_ptr, ptr @iwpm_add_mapping_cb._entry, ptr @iwpm_add_mapping_cb._entry.27, ptr @iwpm_add_mapping_cb._entry_ptr, ptr @iwpm_add_mapping_cb._entry_ptr.29, ptr @iwpm_hello_cb._entry, ptr @iwpm_hello_cb._entry_ptr, ptr @iwpm_mapping_error_cb._entry, ptr @iwpm_mapping_error_cb._entry_ptr, ptr @iwpm_mapping_info_cb._entry, ptr @iwpm_mapping_info_cb._entry.55, ptr @iwpm_mapping_info_cb._entry.58, ptr @iwpm_mapping_info_cb._entry_ptr, ptr @iwpm_mapping_info_cb._entry_ptr.57, ptr @iwpm_mapping_info_cb._entry_ptr.59, ptr @iwpm_register_pid._entry, ptr @iwpm_register_pid._entry_ptr, ptr @iwpm_register_pid_cb._entry, ptr @iwpm_register_pid_cb._entry.18, ptr @iwpm_register_pid_cb._entry.21, ptr @iwpm_register_pid_cb._entry_ptr, ptr @iwpm_register_pid_cb._entry_ptr.20, ptr @iwpm_register_pid_cb._entry_ptr.23, ptr @iwpm_remote_info_cb._entry, ptr @iwpm_remote_info_cb._entry_ptr, ptr @iwpm_remove_mapping._entry, ptr @iwpm_remove_mapping._entry_ptr, ptr @iwpm_ulib_version, ptr @iwpm_user_pid, ptr @.str.1, ptr @.str.2, ptr @echo_nlmsg_seq, ptr @.str.3, ptr @iwpm_ulib_name, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @resp_reg_policy, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @resp_add_policy, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @resp_query_policy, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @resp_mapinfo_policy, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.60, ptr @ack_mapinfo_policy, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @map_error_policy, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @hello_policy, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_ulib_version to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_user_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @echo_nlmsg_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_ulib_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_register_pid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_add_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_add_and_query_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_remove_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resp_reg_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_register_pid_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_register_pid_cb._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_register_pid_cb._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resp_add_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_add_mapping_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_add_mapping_cb._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resp_query_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_add_and_query_mapping_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_add_and_query_mapping_cb._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_add_and_query_mapping_cb._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_add_and_query_mapping_cb._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_remote_info_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resp_mapinfo_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_mapping_info_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_mapping_info_cb._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_mapping_info_cb._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ack_mapinfo_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_ack_mapping_info_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_error_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_mapping_error_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hello_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_hello_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwpm_valid_pid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @iwpm_user_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_register_pid(ptr noundef %pm_msg, i8 noundef zeroext %nl_client) local_unnamed_addr #1 align 64 {
entry:
  %nlh = alloca ptr, align 4
  %msg_seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlh) #9
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nlh, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_seq) #9
  %1 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %msg_seq, align 4, !annotation !182
  %call = tail call i32 @iwpm_check_registration(i8 noundef zeroext %nl_client, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr @iwpm_user_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %cmp = icmp eq i32 %2, -2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %nl_client to i32
  %call1 = call ptr @iwpm_create_nlmsg(i32 noundef 0, ptr noundef nonnull %nlh, i32 noundef %conv) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.do.end46_crit_edge, label %if.end4

if.end.do.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @iwpm_get_nlmsg_seq() #9
  %3 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call5, ptr %nlmsg_seq, align 4
  %call7 = call ptr @iwpm_get_nlmsg_request(i32 noundef %call5, i8 noundef zeroext %nl_client, i32 noundef 3264) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end4.do.end46_crit_edge, label %if.end10

if.end4.do.end46_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end10:                                         ; preds = %if.end4
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  %6 = load volatile i32, ptr @echo_nlmsg_seq, align 4
  %7 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %msg_seq, align 4
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %call12 = call i32 @ibnl_put_attr(ptr noundef nonnull %call1, ptr noundef %9, i32 noundef 4, ptr noundef nonnull %msg_seq, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.do.end46_crit_edge

if.end10.do.end46_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end15:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlh, align 4
  %if_name = getelementptr inbounds %struct.iwpm_dev_data, ptr %pm_msg, i32 0, i32 1
  %call16 = call i32 @ibnl_put_attr(ptr noundef nonnull %call1, ptr noundef %11, i32 noundef 16, ptr noundef %if_name, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.do.end46_crit_edge

if.end15.do.end46_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end19:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %call21 = call i32 @ibnl_put_attr(ptr noundef nonnull %call1, ptr noundef %13, i32 noundef 32, ptr noundef %pm_msg, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.do.end46_crit_edge

if.end19.do.end46_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end24:                                         ; preds = %if.end19
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %call25 = call i32 @ibnl_put_attr(ptr noundef nonnull %call1, ptr noundef %15, i32 noundef 32, ptr noundef nonnull @iwpm_ulib_name, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.do.end46_crit_edge

if.end24.do.end46_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

if.end28:                                         ; preds = %if.end24
  %16 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.ptr.sub.i, ptr %17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_register_pid.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_register_pid, %if.then33)) #9
          to label %do.end [label %if.then33], !srcloc !183

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_register_pid.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef %pm_msg, ptr noundef %if_name, ptr noundef nonnull @iwpm_ulib_name) #9
  br label %do.end

do.end:                                           ; preds = %if.then33, %if.end28
  %call39 = call i32 @rdma_nl_multicast(ptr noundef nonnull @init_net, ptr noundef nonnull %call1, i32 noundef 2, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  store i32 -2, ptr @iwpm_user_pid, align 4
  br label %do.end46

if.end42:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %req_buffer = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7, i32 0, i32 2
  %21 = ptrtoint ptr %req_buffer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pm_msg, ptr %req_buffer, align 4
  %call43 = call i32 @iwpm_wait_complete_req(ptr noundef nonnull %call7) #9
  br label %cleanup

do.end46:                                         ; preds = %if.then41, %if.end24.do.end46_crit_edge, %if.end19.do.end46_crit_edge, %if.end15.do.end46_crit_edge, %if.end10.do.end46_crit_edge, %if.end4.do.end46_crit_edge, %if.end.do.end46_crit_edge
  %err_str.0 = phi ptr [ @.str.3, %if.end10.do.end46_crit_edge ], [ @.str.3, %if.end15.do.end46_crit_edge ], [ @.str.3, %if.end19.do.end46_crit_edge ], [ @.str.3, %if.end24.do.end46_crit_edge ], [ @.str.8, %if.then41 ], [ @.str.1, %if.end.do.end46_crit_edge ], [ @.str.2, %if.end4.do.end46_crit_edge ]
  %ret.0 = phi i32 [ %call12, %if.end10.do.end46_crit_edge ], [ %call16, %if.end15.do.end46_crit_edge ], [ %call21, %if.end19.do.end46_crit_edge ], [ %call25, %if.end24.do.end46_crit_edge ], [ %call39, %if.then41 ], [ -22, %if.end.do.end46_crit_edge ], [ -22, %if.end4.do.end46_crit_edge ]
  %nlmsg_request.0 = phi ptr [ %call7, %if.end10.do.end46_crit_edge ], [ %call7, %if.end15.do.end46_crit_edge ], [ %call7, %if.end19.do.end46_crit_edge ], [ %call7, %if.end24.do.end46_crit_edge ], [ %call7, %if.then41 ], [ null, %if.end.do.end46_crit_edge ], [ null, %if.end4.do.end46_crit_edge ]
  %skb.0 = phi ptr [ %call1, %if.end10.do.end46_crit_edge ], [ %call1, %if.end15.do.end46_crit_edge ], [ %call1, %if.end19.do.end46_crit_edge ], [ %call1, %if.end24.do.end46_crit_edge ], [ null, %if.then41 ], [ null, %if.end.do.end46_crit_edge ], [ %call1, %if.end4.do.end46_crit_edge ]
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull %err_str.0, i32 noundef %conv) #12
  call void @consume_skb(ptr noundef %skb.0) #9
  %tobool50.not = icmp eq ptr %nlmsg_request.0, null
  br i1 %tobool50.not, label %do.end46.cleanup_crit_edge, label %if.then51

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request.0, i32 0, i32 7
  call void @iwpm_free_nlmsg_request(ptr noundef %kref) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.end46.cleanup_crit_edge, %if.end42, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.then51 ], [ %ret.0, %do.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_seq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlh) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_check_registration(i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwpm_create_nlmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_get_nlmsg_seq() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwpm_get_nlmsg_request(i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ibnl_put_attr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_nl_multicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_wait_complete_req(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwpm_free_nlmsg_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_add_mapping(ptr noundef %pm_msg, i8 noundef zeroext %nl_client) local_unnamed_addr #1 align 64 {
entry:
  %nlh = alloca ptr, align 4
  %msg_seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlh) #9
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nlh, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_seq) #9
  %1 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %msg_seq, align 4, !annotation !182
  %2 = load i32, ptr @iwpm_user_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp slt i32 %2, 1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @iwpm_check_registration(i8 noundef zeroext %nl_client, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %.pre = zext i8 %nl_client to i32
  br i1 %tobool2.not, label %if.end.add_mapping_error_nowarn_crit_edge, label %if.end4

if.end.add_mapping_error_nowarn_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_mapping_error_nowarn

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @iwpm_create_nlmsg(i32 noundef 1, ptr noundef nonnull %nlh, i32 noundef %.pre) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.add_mapping_error_nowarn_crit_edge, label %if.end8

if.end4.add_mapping_error_nowarn_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_mapping_error_nowarn

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @iwpm_get_nlmsg_seq() #9
  %3 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call9, ptr %nlmsg_seq, align 4
  %call11 = call ptr @iwpm_get_nlmsg_request(i32 noundef %call9, i8 noundef zeroext %nl_client, i32 noundef 3264) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.add_mapping_error_nowarn_crit_edge, label %if.end14

if.end8.add_mapping_error_nowarn_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_mapping_error_nowarn

if.end14:                                         ; preds = %if.end8
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  %6 = load volatile i32, ptr @echo_nlmsg_seq, align 4
  %7 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %msg_seq, align 4
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %call16 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %9, i32 noundef 4, ptr noundef nonnull %msg_seq, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.add_mapping_error_nowarn_crit_edge

if.end14.add_mapping_error_nowarn_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_mapping_error_nowarn

if.end19:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlh, align 4
  %call20 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %11, i32 noundef 128, ptr noundef %pm_msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.add_mapping_error_nowarn_crit_edge

if.end19.add_mapping_error_nowarn_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_mapping_error_nowarn

if.end23:                                         ; preds = %if.end19
  %flags = getelementptr inbounds %struct.iwpm_sa_data, ptr %pm_msg, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp ne i32 %13, 0
  %.pr = load i16, ptr @iwpm_ulib_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.pr)
  %cmp = icmp eq i16 %.pr, 3
  %or.cond = select i1 %tobool24.not, i1 %cmp, i1 false
  br i1 %or.cond, label %add_mapping_error_nowarn.thread, label %if.end28

add_mapping_error_nowarn.thread:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @consume_skb(ptr noundef nonnull %call5) #9
  br label %if.then47

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.pr)
  %cmp30 = icmp ugt i16 %.pr, 3
  br i1 %cmp30, label %if.then32, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then32:                                        ; preds = %if.end28
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %call34 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %15, i32 noundef 4, ptr noundef %flags, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then32.if.end38_crit_edge, label %if.then32.add_mapping_error_nowarn_crit_edge

if.then32.add_mapping_error_nowarn_crit_edge:     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_mapping_error_nowarn

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %16 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.ptr.sub.i, ptr %17, align 4
  %req_buffer = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call11, i32 0, i32 2
  %21 = ptrtoint ptr %req_buffer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pm_msg, ptr %req_buffer, align 4
  %22 = load i32, ptr @iwpm_user_pid, align 4
  %call39 = call i32 @rdma_nl_unicast_wait(ptr noundef nonnull @init_net, ptr noundef nonnull %call5, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  store i32 -1, ptr @iwpm_user_pid, align 4
  br label %add_mapping_error_nowarn

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = call i32 @iwpm_wait_complete_req(ptr noundef nonnull %call11) #9
  br label %cleanup

add_mapping_error_nowarn:                         ; preds = %if.then41, %if.then32.add_mapping_error_nowarn_crit_edge, %if.end19.add_mapping_error_nowarn_crit_edge, %if.end14.add_mapping_error_nowarn_crit_edge, %if.end8.add_mapping_error_nowarn_crit_edge, %if.end4.add_mapping_error_nowarn_crit_edge, %if.end.add_mapping_error_nowarn_crit_edge
  %skb.0 = phi ptr [ %call5, %if.then32.add_mapping_error_nowarn_crit_edge ], [ %call5, %if.end19.add_mapping_error_nowarn_crit_edge ], [ %call5, %if.end14.add_mapping_error_nowarn_crit_edge ], [ null, %if.then41 ], [ null, %if.end4.add_mapping_error_nowarn_crit_edge ], [ %call5, %if.end8.add_mapping_error_nowarn_crit_edge ], [ null, %if.end.add_mapping_error_nowarn_crit_edge ]
  %nlmsg_request.0 = phi ptr [ %call11, %if.then32.add_mapping_error_nowarn_crit_edge ], [ %call11, %if.end19.add_mapping_error_nowarn_crit_edge ], [ %call11, %if.end14.add_mapping_error_nowarn_crit_edge ], [ %call11, %if.then41 ], [ null, %if.end4.add_mapping_error_nowarn_crit_edge ], [ null, %if.end8.add_mapping_error_nowarn_crit_edge ], [ null, %if.end.add_mapping_error_nowarn_crit_edge ]
  %err_str.0 = phi ptr [ @.str.3, %if.then32.add_mapping_error_nowarn_crit_edge ], [ @.str.3, %if.end19.add_mapping_error_nowarn_crit_edge ], [ @.str.3, %if.end14.add_mapping_error_nowarn_crit_edge ], [ @.str.8, %if.then41 ], [ @.str.1, %if.end4.add_mapping_error_nowarn_crit_edge ], [ @.str.2, %if.end8.add_mapping_error_nowarn_crit_edge ], [ @.str.10, %if.end.add_mapping_error_nowarn_crit_edge ]
  %ret.0 = phi i32 [ %call34, %if.then32.add_mapping_error_nowarn_crit_edge ], [ %call20, %if.end19.add_mapping_error_nowarn_crit_edge ], [ %call16, %if.end14.add_mapping_error_nowarn_crit_edge ], [ %call39, %if.then41 ], [ -22, %if.end4.add_mapping_error_nowarn_crit_edge ], [ -22, %if.end8.add_mapping_error_nowarn_crit_edge ], [ -22, %if.end.add_mapping_error_nowarn_crit_edge ]
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, ptr noundef nonnull %err_str.0, i32 noundef %.pre) #12
  call void @consume_skb(ptr noundef %skb.0) #9
  %tobool46.not = icmp eq ptr %nlmsg_request.0, null
  br i1 %tobool46.not, label %add_mapping_error_nowarn.cleanup_crit_edge, label %add_mapping_error_nowarn.if.then47_crit_edge

add_mapping_error_nowarn.if.then47_crit_edge:     ; preds = %add_mapping_error_nowarn
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

add_mapping_error_nowarn.cleanup_crit_edge:       ; preds = %add_mapping_error_nowarn
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %add_mapping_error_nowarn.if.then47_crit_edge, %add_mapping_error_nowarn.thread
  %ret.180 = phi i32 [ -22, %add_mapping_error_nowarn.thread ], [ %ret.0, %add_mapping_error_nowarn.if.then47_crit_edge ]
  %nlmsg_request.179 = phi ptr [ %call11, %add_mapping_error_nowarn.thread ], [ %nlmsg_request.0, %add_mapping_error_nowarn.if.then47_crit_edge ]
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request.179, i32 0, i32 7
  call void @iwpm_free_nlmsg_request(ptr noundef %kref) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %add_mapping_error_nowarn.cleanup_crit_edge, %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.180, %if.then47 ], [ %ret.0, %add_mapping_error_nowarn.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_seq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_nl_unicast_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_add_and_query_mapping(ptr noundef %pm_msg, i8 noundef zeroext %nl_client) local_unnamed_addr #1 align 64 {
entry:
  %nlh = alloca ptr, align 4
  %msg_seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlh) #9
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nlh, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_seq) #9
  %1 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %msg_seq, align 4, !annotation !182
  %2 = load i32, ptr @iwpm_user_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp slt i32 %2, 1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @iwpm_check_registration(i8 noundef zeroext %nl_client, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %.pre = zext i8 %nl_client to i32
  br i1 %tobool2.not, label %if.end.query_mapping_error_nowarn_crit_edge, label %if.end4

if.end.query_mapping_error_nowarn_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_mapping_error_nowarn

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @iwpm_create_nlmsg(i32 noundef 2, ptr noundef nonnull %nlh, i32 noundef %.pre) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.query_mapping_error_nowarn_crit_edge, label %if.end8

if.end4.query_mapping_error_nowarn_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_mapping_error_nowarn

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @iwpm_get_nlmsg_seq() #9
  %3 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call9, ptr %nlmsg_seq, align 4
  %call11 = call ptr @iwpm_get_nlmsg_request(i32 noundef %call9, i8 noundef zeroext %nl_client, i32 noundef 3264) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.query_mapping_error_nowarn_crit_edge, label %if.end14

if.end8.query_mapping_error_nowarn_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_mapping_error_nowarn

if.end14:                                         ; preds = %if.end8
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  %6 = load volatile i32, ptr @echo_nlmsg_seq, align 4
  %7 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %msg_seq, align 4
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %call16 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %9, i32 noundef 4, ptr noundef nonnull %msg_seq, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.query_mapping_error_nowarn_crit_edge

if.end14.query_mapping_error_nowarn_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_mapping_error_nowarn

if.end19:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlh, align 4
  %call20 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %11, i32 noundef 128, ptr noundef %pm_msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.query_mapping_error_nowarn_crit_edge

if.end19.query_mapping_error_nowarn_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_mapping_error_nowarn

if.end23:                                         ; preds = %if.end19
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %rem_addr = getelementptr inbounds %struct.iwpm_sa_data, ptr %pm_msg, i32 0, i32 2
  %call24 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %13, i32 noundef 128, ptr noundef %rem_addr, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.query_mapping_error_nowarn_crit_edge

if.end23.query_mapping_error_nowarn_crit_edge:    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_mapping_error_nowarn

if.end27:                                         ; preds = %if.end23
  %flags = getelementptr inbounds %struct.iwpm_sa_data, ptr %pm_msg, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not = icmp ne i32 %15, 0
  %.pr = load i16, ptr @iwpm_ulib_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.pr)
  %cmp = icmp eq i16 %.pr, 3
  %or.cond = select i1 %tobool28.not, i1 %cmp, i1 false
  br i1 %or.cond, label %query_mapping_error_nowarn.thread, label %if.end32

query_mapping_error_nowarn.thread:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  call void @consume_skb(ptr noundef nonnull %call5) #9
  br label %if.then51

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.pr)
  %cmp34 = icmp ugt i16 %.pr, 3
  br i1 %cmp34, label %if.then36, label %if.end32.if.end42_crit_edge

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then36:                                        ; preds = %if.end32
  %16 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh, align 4
  %call38 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %17, i32 noundef 4, ptr noundef %flags, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then36.if.end42_crit_edge, label %if.then36.query_mapping_error_nowarn_crit_edge

if.then36.query_mapping_error_nowarn_crit_edge:   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_mapping_error_nowarn

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %if.then36.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  %18 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nlh, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.ptr.sub.i, ptr %19, align 4
  %req_buffer = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call11, i32 0, i32 2
  %23 = ptrtoint ptr %req_buffer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pm_msg, ptr %req_buffer, align 4
  %24 = load i32, ptr @iwpm_user_pid, align 4
  %call43 = call i32 @rdma_nl_unicast_wait(ptr noundef nonnull @init_net, ptr noundef nonnull %call5, i32 noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.query_mapping_error_nowarn_crit_edge

if.end42.query_mapping_error_nowarn_crit_edge:    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %query_mapping_error_nowarn

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = call i32 @iwpm_wait_complete_req(ptr noundef nonnull %call11) #9
  br label %cleanup

query_mapping_error_nowarn:                       ; preds = %if.end42.query_mapping_error_nowarn_crit_edge, %if.then36.query_mapping_error_nowarn_crit_edge, %if.end23.query_mapping_error_nowarn_crit_edge, %if.end19.query_mapping_error_nowarn_crit_edge, %if.end14.query_mapping_error_nowarn_crit_edge, %if.end8.query_mapping_error_nowarn_crit_edge, %if.end4.query_mapping_error_nowarn_crit_edge, %if.end.query_mapping_error_nowarn_crit_edge
  %skb.0 = phi ptr [ %call5, %if.then36.query_mapping_error_nowarn_crit_edge ], [ %call5, %if.end23.query_mapping_error_nowarn_crit_edge ], [ %call5, %if.end19.query_mapping_error_nowarn_crit_edge ], [ %call5, %if.end14.query_mapping_error_nowarn_crit_edge ], [ null, %if.end4.query_mapping_error_nowarn_crit_edge ], [ %call5, %if.end8.query_mapping_error_nowarn_crit_edge ], [ null, %if.end42.query_mapping_error_nowarn_crit_edge ], [ null, %if.end.query_mapping_error_nowarn_crit_edge ]
  %nlmsg_request.0 = phi ptr [ %call11, %if.then36.query_mapping_error_nowarn_crit_edge ], [ %call11, %if.end23.query_mapping_error_nowarn_crit_edge ], [ %call11, %if.end19.query_mapping_error_nowarn_crit_edge ], [ %call11, %if.end14.query_mapping_error_nowarn_crit_edge ], [ null, %if.end4.query_mapping_error_nowarn_crit_edge ], [ null, %if.end8.query_mapping_error_nowarn_crit_edge ], [ %call11, %if.end42.query_mapping_error_nowarn_crit_edge ], [ null, %if.end.query_mapping_error_nowarn_crit_edge ]
  %err_str.0 = phi ptr [ @.str.3, %if.then36.query_mapping_error_nowarn_crit_edge ], [ @.str.3, %if.end23.query_mapping_error_nowarn_crit_edge ], [ @.str.3, %if.end19.query_mapping_error_nowarn_crit_edge ], [ @.str.3, %if.end14.query_mapping_error_nowarn_crit_edge ], [ @.str.1, %if.end4.query_mapping_error_nowarn_crit_edge ], [ @.str.2, %if.end8.query_mapping_error_nowarn_crit_edge ], [ @.str.8, %if.end42.query_mapping_error_nowarn_crit_edge ], [ @.str.10, %if.end.query_mapping_error_nowarn_crit_edge ]
  %ret.0 = phi i32 [ %call38, %if.then36.query_mapping_error_nowarn_crit_edge ], [ %call24, %if.end23.query_mapping_error_nowarn_crit_edge ], [ %call20, %if.end19.query_mapping_error_nowarn_crit_edge ], [ %call16, %if.end14.query_mapping_error_nowarn_crit_edge ], [ -12, %if.end4.query_mapping_error_nowarn_crit_edge ], [ -12, %if.end8.query_mapping_error_nowarn_crit_edge ], [ %call43, %if.end42.query_mapping_error_nowarn_crit_edge ], [ -22, %if.end.query_mapping_error_nowarn_crit_edge ]
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef nonnull %err_str.0, i32 noundef %.pre) #12
  call void @consume_skb(ptr noundef %skb.0) #9
  %tobool50.not = icmp eq ptr %nlmsg_request.0, null
  br i1 %tobool50.not, label %query_mapping_error_nowarn.cleanup_crit_edge, label %query_mapping_error_nowarn.if.then51_crit_edge

query_mapping_error_nowarn.if.then51_crit_edge:   ; preds = %query_mapping_error_nowarn
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

query_mapping_error_nowarn.cleanup_crit_edge:     ; preds = %query_mapping_error_nowarn
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %query_mapping_error_nowarn.if.then51_crit_edge, %query_mapping_error_nowarn.thread
  %ret.187 = phi i32 [ -22, %query_mapping_error_nowarn.thread ], [ %ret.0, %query_mapping_error_nowarn.if.then51_crit_edge ]
  %nlmsg_request.186 = phi ptr [ %call11, %query_mapping_error_nowarn.thread ], [ %nlmsg_request.0, %query_mapping_error_nowarn.if.then51_crit_edge ]
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request.186, i32 0, i32 7
  call void @iwpm_free_nlmsg_request(ptr noundef %kref) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %query_mapping_error_nowarn.cleanup_crit_edge, %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end46 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.187, %if.then51 ], [ %ret.0, %query_mapping_error_nowarn.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_seq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlh) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_remove_mapping(ptr noundef %local_addr, i8 noundef zeroext %nl_client) local_unnamed_addr #1 align 64 {
entry:
  %nlh = alloca ptr, align 4
  %msg_seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlh) #9
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nlh, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_seq) #9
  %1 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %msg_seq, align 4, !annotation !182
  %2 = load i32, ptr @iwpm_user_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp slt i32 %2, 1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @iwpm_check_registration(i8 noundef zeroext %nl_client, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %conv = zext i8 %nl_client to i32
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end.thread_crit_edge

if.end.do.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.thread

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @iwpm_create_nlmsg(i32 noundef 3, ptr noundef nonnull %nlh, i32 noundef %conv) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.do.end.thread_crit_edge, label %if.end8

if.end4.do.end.thread_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.thread

if.end8:                                          ; preds = %if.end4
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  %3 = load volatile i32, ptr @echo_nlmsg_seq, align 4
  %4 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %msg_seq, align 4
  %call10 = call i32 @iwpm_get_nlmsg_seq() #9
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call10, ptr %nlmsg_seq, align 4
  %call11 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %6, i32 noundef 4, ptr noundef nonnull %msg_seq, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.if.then26_crit_edge

if.end8.if.then26_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end14:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %call15 = call i32 @ibnl_put_attr(ptr noundef nonnull %call5, ptr noundef %9, i32 noundef 128, ptr noundef %local_addr, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.if.then26_crit_edge

if.end14.if.then26_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end18:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlh, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.ptr.sub.i, ptr %11, align 4
  %15 = load i32, ptr @iwpm_user_pid, align 4
  %call19 = call i32 @rdma_nl_unicast_wait(ptr noundef nonnull @init_net, ptr noundef nonnull %call5, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  store i32 -1, ptr @iwpm_user_pid, align 4
  br label %do.end.thread

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @iwpm_print_sockaddr(ptr noundef %local_addr, ptr noundef nonnull @.str.13) #9
  br label %cleanup

do.end.thread:                                    ; preds = %if.then21, %if.end4.do.end.thread_crit_edge, %if.end.do.end.thread_crit_edge
  %err_str.0.ph = phi ptr [ @.str.8, %if.then21 ], [ @.str.1, %if.end4.do.end.thread_crit_edge ], [ @.str.10, %if.end.do.end.thread_crit_edge ]
  %ret.0.ph = phi i32 [ %call19, %if.then21 ], [ -12, %if.end4.do.end.thread_crit_edge ], [ -22, %if.end.do.end.thread_crit_edge ]
  %call2448 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14, ptr noundef nonnull %err_str.0.ph, i32 noundef %conv) #12
  br label %cleanup

if.then26:                                        ; preds = %if.end14.if.then26_crit_edge, %if.end8.if.then26_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end8.if.then26_crit_edge ], [ %call15, %if.end14.if.then26_crit_edge ]
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, i32 noundef %conv) #12
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call5, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.end.thread, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.then26 ], [ %ret.0.ph, %do.end.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_seq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwpm_print_sockaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_register_pid_cb(ptr nocapture noundef readnone %skb, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  %nltb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %nltb) #9
  %0 = getelementptr inbounds [6 x ptr], ptr %nltb, i32 0, i32 2
  %1 = getelementptr inbounds [6 x ptr], ptr %nltb, i32 0, i32 3
  %2 = getelementptr inbounds [6 x ptr], ptr %nltb, i32 0, i32 4
  %3 = call ptr @memset(ptr %nltb, i32 255, i32 24)
  %call = call i32 @iwpm_parse_nlmsg(ptr noundef %cb, i32 noundef 6, ptr noundef nonnull @resp_reg_policy, ptr noundef nonnull %nltb, ptr noundef nonnull @.str.15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds [6 x ptr], ptr %nltb, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %call2 = call ptr @iwpm_find_nlmsg_request(i32 noundef %8) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %8) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %req_buffer = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %req_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req_buffer, align 4
  %nl_client7 = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 3
  %11 = ptrtoint ptr %nl_client7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nl_client7, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i94 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i95 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i95, align 2
  %call16 = call i32 @strcmp(ptr noundef %10, ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end6.do.end25_crit_edge

if.end6.do.end25_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end6
  %call18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(20) @iwpm_ulib_name, ptr noundef %add.ptr.i94) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp ne i32 %call18, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %20)
  %cmp = icmp ult i16 %20, 3
  %or.cond = select i1 %tobool19.not, i1 true, i1 %cmp
  br i1 %or.cond, label %lor.lhs.false.do.end25_crit_edge, label %if.end29

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false.do.end25_crit_edge, %if.end6.do.end25_crit_edge
  %conv27 = zext i16 %20 to i32
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i94, i32 noundef %conv27) #12
  %err_code = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 5
  %21 = ptrtoint ptr %err_code to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 15, ptr %err_code, align 2
  br label %register_pid_response_exit

if.end29:                                         ; preds = %lor.lhs.false
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %22 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlh, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlmsg_pid, align 4
  store i32 %25, ptr @iwpm_user_pid, align 4
  store i16 %20, ptr @iwpm_ulib_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %20)
  %cmp31 = icmp eq i16 %20, 3
  br i1 %cmp31, label %land.end, label %if.end29.if.end54_crit_edge

if.end29.if.end54_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.end:                                         ; preds = %if.end29
  %.b93 = load i1, ptr @iwpm_register_pid_cb.__already_done, align 1
  br i1 %.b93, label %land.end.if.end54_crit_edge, label %if.then40, !prof !184

land.end.if.end54_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then40:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwpm_register_pid_cb.__already_done, align 1
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef %25) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then40, %land.end.if.end54_crit_edge, %if.end29.if.end54_crit_edge
  %26 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  store volatile i32 %29, ptr @echo_nlmsg_seq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_register_pid_cb.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_register_pid_cb, %if.then66)) #9
          to label %do.end69 [label %if.then66], !srcloc !183

if.then66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %30 = load i32, ptr @iwpm_user_pid, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_register_pid_cb.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17, i32 noundef %30) #9
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %if.end54
  call void @iwpm_set_registration(i8 noundef zeroext %12, i32 noundef 2) #9
  br label %register_pid_response_exit

register_pid_response_exit:                       ; preds = %do.end69, %do.end25
  %request_done = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 4
  %31 = ptrtoint ptr %request_done to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %request_done, align 1
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !186
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %register_pid_response_exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !184

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %register_pid_response_exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !187
  call void @iwpm_free_nlmsg_request(ptr noundef %kref) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !188
  %sem = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 6
  call void @up(ptr noundef %sem) #9
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kref_put.exit ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %nltb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_parse_nlmsg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwpm_find_nlmsg_request(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwpm_set_registration(i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_add_mapping_cb(ptr nocapture noundef readnone %skb, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  %nltb = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %nltb) #9
  %0 = getelementptr inbounds [5 x ptr], ptr %nltb, i32 0, i32 2
  %1 = getelementptr inbounds [5 x ptr], ptr %nltb, i32 0, i32 3
  %2 = call ptr @memset(ptr %nltb, i32 255, i32 20)
  %call = call i32 @iwpm_parse_nlmsg(ptr noundef %cb, i32 noundef 5, ptr noundef nonnull @resp_add_policy, ptr noundef nonnull %nltb, ptr noundef nonnull @.str.25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [5 x ptr], ptr %nltb, i32 0, i32 1
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %4 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  store volatile i32 %7, ptr @echo_nlmsg_seq, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %call2 = call ptr @iwpm_find_nlmsg_request(i32 noundef %11) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.26, i32 noundef %11) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %req_buffer = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 2
  %12 = ptrtoint ptr %req_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req_buffer, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i48 = getelementptr i8, ptr %17, i32 4
  %call11 = call i32 @iwpm_compare_sockaddr(ptr noundef %add.ptr.i, ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %err_code = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 5
  %18 = ptrtoint ptr %err_code to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 15, ptr %err_code, align 2
  br label %add_mapping_response_exit

if.end14:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i48, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp.not = icmp eq i16 %20, %22
  br i1 %cmp.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26) #12
  %err_code24 = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 5
  %23 = ptrtoint ptr %err_code24 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 15, ptr %err_code24, align 2
  br label %add_mapping_response_exit

if.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %mapped_loc_addr = getelementptr inbounds %struct.iwpm_sa_data, ptr %13, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %mapped_loc_addr, ptr %add.ptr.i48, i32 128)
  call void @iwpm_print_sockaddr(ptr noundef %13, ptr noundef nonnull @.str.30) #9
  call void @iwpm_print_sockaddr(ptr noundef %mapped_loc_addr, ptr noundef nonnull @.str.31) #9
  br label %add_mapping_response_exit

add_mapping_response_exit:                        ; preds = %if.end25, %do.end21, %if.then13
  %request_done = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 4
  %25 = ptrtoint ptr %request_done to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %request_done, align 1
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !186
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %add_mapping_response_exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !184

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %add_mapping_response_exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !187
  call void @iwpm_free_nlmsg_request(ptr noundef %kref) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !189
  %sem = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 6
  call void @up(ptr noundef %sem) #9
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kref_put.exit ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nltb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_compare_sockaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_add_and_query_mapping_cb(ptr nocapture noundef readnone %skb, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  %nltb = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %nltb) #9
  %0 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 2
  %1 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 3
  %2 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 4
  %3 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 5
  %4 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 6
  %5 = call ptr @memset(ptr %nltb, i32 255, i32 28)
  %call = call i32 @iwpm_parse_nlmsg(ptr noundef %cb, i32 noundef 7, ptr noundef nonnull @resp_query_policy, ptr noundef nonnull %nltb, ptr noundef nonnull @.str.32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 1
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  store volatile i32 %10, ptr @echo_nlmsg_seq, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %call2 = call ptr @iwpm_find_nlmsg_request(i32 noundef %14) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.33, i32 noundef %14) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %req_buffer = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 2
  %15 = ptrtoint ptr %req_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req_buffer, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i95 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %add.ptr.i96 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr.i97 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i98 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i98, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %28)
  %cmp = icmp eq i16 %28, 16
  br i1 %cmp, label %do.end21, label %if.end6.if.end26_crit_edge

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end21:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nlh, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlmsg_pid, align 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %32, i32 noundef %14) #12
  %err_code25 = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 5
  %33 = ptrtoint ptr %err_code25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 16, ptr %err_code25, align 2
  br label %if.end26

if.end26:                                         ; preds = %do.end21, %if.end6.if.end26_crit_edge
  %call27 = call i32 @iwpm_compare_sockaddr(ptr noundef %add.ptr.i, ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.end26.do.end34_crit_edge

if.end26.do.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

lor.lhs.false:                                    ; preds = %if.end26
  %rem_addr = getelementptr inbounds %struct.iwpm_sa_data, ptr %16, i32 0, i32 2
  %call29 = call i32 @iwpm_compare_sockaddr(ptr noundef %add.ptr.i95, ptr noundef %rem_addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end38, label %lor.lhs.false.do.end34_crit_edge

lor.lhs.false.do.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end34:                                         ; preds = %lor.lhs.false.do.end34_crit_edge, %if.end26.do.end34_crit_edge
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33) #12
  %err_code37 = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 5
  %34 = ptrtoint ptr %err_code37 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 15, ptr %err_code37, align 2
  br label %query_mapping_response_exit

if.end38:                                         ; preds = %lor.lhs.false
  %35 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i96, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp42.not = icmp eq i16 %36, %38
  br i1 %cmp42.not, label %lor.lhs.false44, label %if.end38.do.end54_crit_edge

if.end38.do.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

lor.lhs.false44:                                  ; preds = %if.end38
  %39 = ptrtoint ptr %add.ptr.i97 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i97, align 4
  %41 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i95, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp49.not = icmp eq i16 %40, %42
  br i1 %cmp49.not, label %if.end58, label %lor.lhs.false44.do.end54_crit_edge

lor.lhs.false44.do.end54_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

do.end54:                                         ; preds = %lor.lhs.false44.do.end54_crit_edge, %if.end38.do.end54_crit_edge
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.33) #12
  %err_code57 = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 5
  %43 = ptrtoint ptr %err_code57 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 15, ptr %err_code57, align 2
  br label %query_mapping_response_exit

if.end58:                                         ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  %mapped_loc_addr = getelementptr inbounds %struct.iwpm_sa_data, ptr %16, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %mapped_loc_addr, ptr %add.ptr.i96, i32 128)
  %mapped_rem_addr = getelementptr inbounds %struct.iwpm_sa_data, ptr %16, i32 0, i32 3
  %45 = call ptr @memcpy(ptr %mapped_rem_addr, ptr %add.ptr.i97, i32 128)
  call void @iwpm_print_sockaddr(ptr noundef %16, ptr noundef nonnull @.str.42) #9
  call void @iwpm_print_sockaddr(ptr noundef %mapped_loc_addr, ptr noundef nonnull @.str.43) #9
  call void @iwpm_print_sockaddr(ptr noundef %rem_addr, ptr noundef nonnull @.str.44) #9
  call void @iwpm_print_sockaddr(ptr noundef %mapped_rem_addr, ptr noundef nonnull @.str.45) #9
  br label %query_mapping_response_exit

query_mapping_response_exit:                      ; preds = %if.end58, %do.end54, %do.end34
  %request_done = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 4
  %46 = ptrtoint ptr %request_done to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %request_done, align 1
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !186
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %query_mapping_response_exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !184

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %query_mapping_response_exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !187
  call void @iwpm_free_nlmsg_request(ptr noundef %kref) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !190
  %sem = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call2, i32 0, i32 6
  call void @up(ptr noundef %sem) #9
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kref_put.exit ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %nltb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_remote_info_cb(ptr nocapture noundef readnone %skb, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  %nltb = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %nltb) #9
  %0 = call ptr @memset(ptr %nltb, i32 255, i32 28)
  %call = call i32 @iwpm_parse_nlmsg(ptr noundef %cb, i32 noundef 7, ptr noundef nonnull @resp_query_policy, ptr noundef nonnull %nltb, ptr noundef nonnull @.str.46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 5
  %2 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 4
  %3 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 3
  %4 = getelementptr inbounds [7 x ptr], ptr %nltb, i32 0, i32 2
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlmsg_type, align 4
  %9 = lshr i16 %8, 10
  %conv1 = trunc i16 %9 to i8
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  store volatile i32 %11, ptr @echo_nlmsg_seq, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i56 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %add.ptr.i57 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i58 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i57, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp.not = icmp eq i16 %21, %23
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %24 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i58, align 4
  %26 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i56, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp18.not = icmp eq i16 %25, %27
  br i1 %cmp18.not, label %if.end22, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.47) #12
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2848, i32 noundef 396) #14
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %mapped_loc_sockaddr27 = getelementptr inbounds %struct.iwpm_remote_info, ptr %call7.i.i, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %mapped_loc_sockaddr27, ptr %add.ptr.i57, i32 128)
  %remote_sockaddr28 = getelementptr inbounds %struct.iwpm_remote_info, ptr %call7.i.i, i32 0, i32 1
  %30 = call ptr @memcpy(ptr %remote_sockaddr28, ptr %add.ptr.i56, i32 128)
  %mapped_rem_sockaddr29 = getelementptr inbounds %struct.iwpm_remote_info, ptr %call7.i.i, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %mapped_rem_sockaddr29, ptr %add.ptr.i58, i32 128)
  %nl_client30 = getelementptr inbounds %struct.iwpm_remote_info, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %nl_client30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1, ptr %nl_client30, align 8
  call void @iwpm_add_remote_info(ptr noundef nonnull %call7.i.i) #9
  call void @iwpm_print_sockaddr(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.48) #9
  call void @iwpm_print_sockaddr(ptr noundef %add.ptr.i57, ptr noundef nonnull @.str.49) #9
  call void @iwpm_print_sockaddr(ptr noundef %add.ptr.i56, ptr noundef nonnull @.str.50) #9
  call void @iwpm_print_sockaddr(ptr noundef %add.ptr.i58, ptr noundef nonnull @.str.51) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %nltb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwpm_add_remote_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_mapping_info_cb(ptr nocapture noundef readnone %skb, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  %nltb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nltb) #9
  %0 = ptrtoint ptr %nltb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nltb, align 4, !annotation !182
  %1 = getelementptr inbounds [3 x ptr], ptr %nltb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !182
  %3 = getelementptr inbounds [3 x ptr], ptr %nltb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !182
  %call = call i32 @iwpm_parse_nlmsg(ptr noundef %cb, i32 noundef 3, ptr noundef nonnull @resp_mapinfo_policy, ptr noundef nonnull %nltb, ptr noundef nonnull @.str.52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %call5 = call i32 @strcmp(ptr noundef nonnull dereferenceable(20) @iwpm_ulib_name, ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp ne i32 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp = icmp ult i16 %10, 3
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i16 %10 to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, ptr noundef %add.ptr.i, i32 noundef %conv13) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nlmsg_type, align 4
  %15 = lshr i16 %14, 10
  %conv17 = trunc i16 %15 to i8
  call void @iwpm_set_registration(i8 noundef zeroext %conv17, i32 noundef 4) #9
  %16 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  store volatile i32 %19, ptr @echo_nlmsg_seq, align 4
  %20 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nlh, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlmsg_pid, align 4
  store i32 %23, ptr @iwpm_user_pid, align 4
  %24 = load i16, ptr @iwpm_ulib_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %24)
  %cmp21 = icmp ult i16 %24, 4
  br i1 %cmp21, label %land.end, label %if.end15.if.end44_crit_edge

if.end15.if.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.end:                                         ; preds = %if.end15
  %.b78 = load i1, ptr @iwpm_mapping_info_cb.__already_done, align 1
  br i1 %.b78, label %land.end.if.end44_crit_edge, label %if.then30, !prof !184

land.end.if.end44_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then30:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwpm_mapping_info_cb.__already_done, align 1
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.54, i32 noundef %23) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then30, %land.end.if.end44_crit_edge, %if.end15.if.end44_crit_edge
  %call45 = call i32 @iwpm_mapinfo_available() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %do.body49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body49:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_mapping_info_cb.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_mapping_info_cb, %if.then59)) #9
          to label %do.end62 [label %if.then59], !srcloc !183

if.then59:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %25 = load i32, ptr @iwpm_user_pid, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_mapping_info_cb.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.54, i32 noundef %25) #9
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body49
  %26 = load i32, ptr @iwpm_user_pid, align 4
  %call63 = call i32 @iwpm_send_mapinfo(i8 noundef zeroext %conv17, i32 noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end44.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ %call63, %do.end62 ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nltb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_mapinfo_available() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_send_mapinfo(i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_ack_mapping_info_cb(ptr nocapture noundef readnone %skb, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  %nltb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nltb) #9
  %0 = call ptr @memset(ptr %nltb, i32 255, i32 16)
  %call = call i32 @iwpm_parse_nlmsg(ptr noundef %cb, i32 noundef 4, ptr noundef nonnull @ack_mapinfo_policy, ptr noundef nonnull %nltb, ptr noundef nonnull @.str.60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds [4 x ptr], ptr %nltb, i32 0, i32 3
  %2 = getelementptr inbounds [4 x ptr], ptr %nltb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %6)
  %cmp.not = icmp eq i32 %10, %6
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %6, i32 noundef %10) #12
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  store volatile i32 %14, ptr @echo_nlmsg_seq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nltb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_mapping_error_cb(ptr nocapture noundef readnone %skb, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  %nltb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_type, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nltb) #9
  %4 = ptrtoint ptr %nltb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %nltb, align 4, !annotation !182
  %5 = getelementptr inbounds [3 x ptr], ptr %nltb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !182
  %7 = getelementptr inbounds [3 x ptr], ptr %nltb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !182
  %call = call i32 @iwpm_parse_nlmsg(ptr noundef %cb, i32 noundef 3, ptr noundef nonnull @map_error_policy, ptr noundef nonnull %nltb, ptr noundef nonnull @.str.63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = lshr i16 %3, 10
  %10 = zext i16 %9 to i32
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i37, align 2
  %conv4 = zext i16 %18 to i32
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %14, i32 noundef %conv4, i32 noundef %10) #12
  %call6 = call ptr @iwpm_find_nlmsg_request(i32 noundef %14) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.body9, label %if.end19

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_mapping_error_cb.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_mapping_error_cb, %if.then15)) #9
          to label %cleanup [label %if.then15], !srcloc !183

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_mapping_error_cb.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.66, i32 noundef %14) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %19 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  store volatile i32 %22, ptr @echo_nlmsg_seq, align 4
  %err_code21 = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call6, i32 0, i32 5
  %23 = ptrtoint ptr %err_code21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %18, ptr %err_code21, align 2
  %request_done = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call6, i32 0, i32 4
  %24 = ptrtoint ptr %request_done to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %request_done, align 1
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call6, i32 0, i32 7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !186
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !184

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !187
  call void @iwpm_free_nlmsg_request(ptr noundef %kref) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !191
  %sem = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call6, i32 0, i32 6
  call void @up(ptr noundef %sem) #9
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %if.then15, %do.body9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kref_put.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %do.body9 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nltb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_hello_cb(ptr nocapture noundef readnone %skb, ptr noundef %cb) local_unnamed_addr #1 align 64 {
entry:
  %nltb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nltb) #9
  %0 = ptrtoint ptr %nltb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nltb, align 4, !annotation !182
  %1 = getelementptr inbounds [2 x ptr], ptr %nltb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !182
  %call = call i32 @iwpm_parse_nlmsg(ptr noundef %cb, i32 noundef 2, ptr noundef nonnull @hello_policy, ptr noundef nonnull %nltb, ptr noundef nonnull @.str.67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nlmsg_type, align 4
  %11 = lshr i16 %10, 10
  %conv3 = trunc i16 %11 to i8
  call void @iwpm_set_registration(i8 noundef zeroext %conv3, i32 noundef 4) #9
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @echo_nlmsg_seq, i32 noundef 4) #9
  store volatile i32 %15, ptr @echo_nlmsg_seq, align 4
  %16 = call i16 @llvm.umin.i16(i16 %6, i16 4)
  store i16 %16, ptr @iwpm_ulib_version, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_hello_cb.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_hello_cb, %if.then18)) #9
          to label %do.end22 [label %if.then18], !srcloc !183

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = load i16, ptr @iwpm_ulib_version, align 2
  %conv19 = zext i16 %17 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_hello_cb.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.69, i32 noundef %conv19) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %if.end
  %18 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nlh, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlmsg_pid, align 4
  store i32 %21, ptr @iwpm_user_pid, align 4
  %22 = load i16, ptr @iwpm_ulib_version, align 2
  %call24 = call i32 @iwpm_send_hello(i8 noundef zeroext %conv3, i32 noundef %21, i16 noundef zeroext %22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call24, %do.end22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nltb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_send_hello(i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !132, !133, !134, !136, !138, !139, !140, !141, !143, !144, !146, !148, !149, !150, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @iwpm_ulib_version, !1, !"iwpm_ulib_version", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 37, i32 5}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 69, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 77, i32 13}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 83, i32 13}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 89, i32 12}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 108, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @iwpm_register_pid.__UNIQUE_ID_ddebug337, !11, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 115, i32 13}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 122, i32 2}
!20 = !{ptr @iwpm_register_pid._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @iwpm_register_pid._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 155, i32 13}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 206, i32 2}
!26 = !{ptr @iwpm_add_mapping._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @iwpm_add_mapping._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 295, i32 2}
!30 = !{ptr @iwpm_add_and_query_mapping._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @iwpm_add_and_query_mapping._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 356, i32 4}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 359, i32 2}
!36 = !{ptr @iwpm_remove_mapping._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @iwpm_remove_mapping._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 394, i32 25}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 403, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @iwpm_register_pid_cb._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @iwpm_register_pid_cb._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 418, i32 3}
!47 = !{ptr @iwpm_register_pid_cb._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @iwpm_register_pid_cb._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 426, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @iwpm_register_pid_cb._entry.21, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @iwpm_register_pid_cb._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 429, i32 2}
!56 = !{ptr @iwpm_register_pid_cb.__UNIQUE_ID_ddebug338, !55, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 467, i32 13}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 477, i32 3}
!61 = !{ptr @iwpm_add_mapping_cb._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @iwpm_add_mapping_cb._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 492, i32 3}
!65 = !{ptr @iwpm_add_mapping_cb._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @iwpm_add_mapping_cb._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 500, i32 4}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 502, i32 4}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 547, i32 13}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 556, i32 3}
!75 = !{ptr @iwpm_add_and_query_mapping_cb._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @iwpm_add_and_query_mapping_cb._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 572, i32 3}
!79 = !{ptr @iwpm_add_and_query_mapping_cb._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @iwpm_add_and_query_mapping_cb._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 578, i32 3}
!83 = !{ptr @iwpm_add_and_query_mapping_cb._entry.37, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @iwpm_add_and_query_mapping_cb._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @iwpm_add_and_query_mapping_cb._entry.40, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 584, i32 3}
!87 = !{ptr @iwpm_add_and_query_mapping_cb._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 595, i32 4}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 597, i32 4}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 599, i32 4}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 601, i32 4}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 629, i32 13}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 648, i32 3}
!100 = !{ptr @iwpm_remote_info_cb._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @iwpm_remote_info_cb._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 668, i32 4}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 670, i32 4}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 672, i32 4}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 674, i32 4}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 697, i32 25}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 705, i32 3}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @iwpm_mapping_info_cb._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @iwpm_mapping_info_cb._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 712, i32 3}
!119 = !{ptr @iwpm_mapping_info_cb._entry.55, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @iwpm_mapping_info_cb._entry_ptr.57, !118, !"_entry_ptr", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 722, i32 3}
!123 = !{ptr @iwpm_mapping_info_cb._entry.58, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @iwpm_mapping_info_cb._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @iwpm_mapping_info_cb.__UNIQUE_ID_ddebug339, !126, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 727, i32 2}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 750, i32 25}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 758, i32 3}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @iwpm_ack_mapping_info_cb._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @iwpm_ack_mapping_info_cb._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 783, i32 25}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 791, i32 2}
!138 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @iwpm_mapping_error_cb._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @iwpm_mapping_error_cb._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 797, i32 3}
!143 = !{ptr @iwpm_mapping_error_cb.__UNIQUE_ID_ddebug340, !142, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 827, i32 25}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 834, i32 3}
!148 = !{ptr @iwpm_hello_cb._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @iwpm_hello_cb._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 842, i32 2}
!152 = !{ptr @iwpm_hello_cb.__UNIQUE_ID_ddebug343, !151, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!153 = !{ptr @echo_nlmsg_seq, !154, !"echo_nlmsg_seq", i1 false, i1 false}
!154 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 39, i32 17}
!155 = !{ptr @iwpm_user_pid, !156, !"iwpm_user_pid", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 38, i32 12}
!157 = !{ptr @iwpm_ulib_name, !158, !"iwpm_ulib_name", i1 false, i1 false}
!158 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 36, i32 19}
!159 = !{ptr @resp_reg_policy, !160, !"resp_reg_policy", i1 false, i1 false}
!160 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 366, i32 32}
!161 = !{ptr @resp_add_policy, !162, !"resp_add_policy", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 442, i32 32}
!163 = !{ptr @resp_query_policy, !164, !"resp_query_policy", i1 false, i1 false}
!164 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 516, i32 32}
!165 = !{ptr @resp_mapinfo_policy, !166, !"resp_mapinfo_policy", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 679, i32 32}
!167 = !{ptr @ack_mapinfo_policy, !168, !"ack_mapinfo_policy", i1 false, i1 false}
!168 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 734, i32 32}
!169 = !{ptr @map_error_policy, !170, !"map_error_policy", i1 false, i1 false}
!170 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 765, i32 32}
!171 = !{ptr @hello_policy, !172, !"hello_policy", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/core/iwpm_msg.c", i32 811, i32 32}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"auto-init"}
!183 = !{i64 2148988429, i64 2148988434, i64 2148988447, i64 2148988491, i64 2148988525, i64 2148988546}
!184 = !{!"branch_weights", i32 2000, i32 1}
!185 = !{i64 2148464607}
!186 = !{i64 2148379047, i64 2148379079, i64 2148379108, i64 2148379142, i64 2148379173, i64 2148379196}
!187 = !{i64 2149340721}
!188 = !{i64 2156053098}
!189 = !{i64 2156056875}
!190 = !{i64 2156064189}
!191 = !{i64 2156081218}
