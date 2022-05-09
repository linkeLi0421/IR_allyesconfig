; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/iwpm_util.c_pt.bc'
source_filename = "../drivers/infiniband/core/iwpm_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iwpm_admin_data = type { %struct.atomic_t, [6 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.52, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.56, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.56 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.57, i32, %struct.spinlock }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.iwpm_mapping_info = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i8, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.1 }
%union.anon.1 = type { ptr, [124 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.6 }
%union.anon.6 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.iwpm_remote_info = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i8 }
%struct.iwpm_nlmsg_request = type { %struct.list_head, i32, ptr, i8, i8, i16, %struct.semaphore, %struct.kref }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.91 }
%union.anon.91 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon.7, %union.anon.102, %union.anon.103, [48 x i8], %union.anon.104, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.106, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, ptr, %union.anon.9 }
%union.anon.9 = type { ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.108, i32, i32, i32, i16, i16, %union.anon.110, i32, %union.anon.111, %union.anon.112, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.108 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i16 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@iwpm_hash_bucket = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iwpm_reminfo_bucket = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iwpm_init.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iw_cm\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iwpm_init\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/infiniband/core/iwpm_util.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Mapinfo and reminfo tables are created\0A\00", [52 x i8] zeroinitializer }, align 32
@iwpm_exit.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iwpm_exit\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Resources are destroyed\0A\00", [35 x i8] zeroinitializer }, align 32
@iwpm_mapinfo_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.4 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@iwpm_reminfo_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.4 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"get_remote_info: Remote sockaddr:\00", [62 x i8] zeroinitializer }, align 32
@iwpm_nlmsg_req_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.4 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@iwpm_nlmsg_req_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @iwpm_nlmsg_req_list, ptr @iwpm_nlmsg_req_list }, [24 x i8] zeroinitializer }, align 32
@iwpm_free_nlmsg_request.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iwpm_free_nlmsg_request\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s Freeing incomplete nlmsg request (seq = %u).\0A\00", [47 x i8] zeroinitializer }, align 32
@iwpm_wait_complete_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: Timeout %d sec for netlink request (seq = %u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iwpm_wait_complete_req\00", [41 x i8] zeroinitializer }, align 32
@iwpm_wait_complete_req._entry_ptr = internal global ptr @iwpm_wait_complete_req._entry, section ".printk_index", align 4
@iwpm_admin = internal global { %struct.iwpm_admin_data, [36 x i8] } zeroinitializer, align 32
@iwpm_compare_sockaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Invalid sockaddr family\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iwpm_compare_sockaddr\00", [42 x i8] zeroinitializer }, align 32
@iwpm_compare_sockaddr._entry_ptr = internal global ptr @iwpm_compare_sockaddr._entry, section ".printk_index", align 4
@iwpm_create_nlmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: Unable to put the nlmsg header\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iwpm_create_nlmsg\00", [46 x i8] zeroinitializer }, align 32
@iwpm_create_nlmsg._entry_ptr = internal global ptr @iwpm_create_nlmsg._entry, section ".printk_index", align 4
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid attribute\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to parse the nlmsg\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid NULL attribute\00", [41 x i8] zeroinitializer }, align 32
@iwpm_parse_nlmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: %s (msg type %s ret = %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iwpm_parse_nlmsg\00", [47 x i8] zeroinitializer }, align 32
@iwpm_parse_nlmsg._entry_ptr = internal global ptr @iwpm_parse_nlmsg._entry, section ".printk_index", align 4
@iwpm_print_sockaddr.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iwpm_print_sockaddr\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s IPV4 %pI4: %u(0x%04X)\0A\00", [38 x i8] zeroinitializer }, align 32
@iwpm_print_sockaddr.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s IPV6 %pI6: %u(0x%04X)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to allocate skb\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to put the nlmsg header\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to put attribute of the nlmsg\00", [59 x i8] zeroinitializer }, align 32
@iwpm_ulib_version = external dso_local local_unnamed_addr global i16, align 2
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"send_mapping_info: Local sockaddr:\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"send_mapping_info: Mapped local sockaddr:\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to send map info\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Insufficient skbs for map info\00", [33 x i8] zeroinitializer }, align 32
@iwpm_send_mapinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: %s (ret = %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iwpm_send_mapinfo\00", [46 x i8] zeroinitializer }, align 32
@iwpm_send_mapinfo._entry_ptr = internal global ptr @iwpm_send_mapinfo._entry, section ".printk_index", align 4
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to create a nlmsg\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to put attribute of abi_version into nlmsg\00", [46 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to send a nlmsg\00", [41 x i8] zeroinitializer }, align 32
@iwpm_send_hello.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iwpm_send_hello\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Sent hello abi_version = %u\0A\00", [63 x i8] zeroinitializer }, align 32
@iwpm_send_hello._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\016%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@iwpm_send_hello._entry_ptr = internal global ptr @iwpm_send_hello._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iwpm_mapinfo_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iwpm_reminfo_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iwpm_nlmsg_req_lock\00", [44 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@get_hash_bucket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.44, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_hash_bucket\00", [16 x i8] zeroinitializer }, align 32
@get_hash_bucket._entry_ptr = internal global ptr @get_hash_bucket._entry, section ".printk_index", align 4
@send_nlmsg_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s Unable to put NLMSG_DONE\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"send_nlmsg_done\00", [16 x i8] zeroinitializer }, align 32
@send_nlmsg_done._entry_ptr = internal global ptr @send_nlmsg_done._entry, section ".printk_index", align 4
@send_nlmsg_done._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s Unable to send a nlmsg\0A\00", [35 x i8] zeroinitializer }, align 32
@send_nlmsg_done._entry_ptr.49 = internal global ptr @send_nlmsg_done._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to put attribute of mapinfo number nlmsg\00", [48 x i8] zeroinitializer }, align 32
@send_mapinfo_num.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"send_mapinfo_num\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Sent mapping number = %u\0A\00", [34 x i8] zeroinitializer }, align 32
@send_mapinfo_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.51, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@send_mapinfo_num._entry_ptr = internal global ptr @send_mapinfo_num._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"iwpm_hash_bucket\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 45, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"iwpm_reminfo_bucket\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 48, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 74, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 91, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"iwpm_mapinfo_lock\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"iwpm_reminfo_lock\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 293, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"iwpm_nlmsg_req_lock\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"iwpm_nlmsg_req_list\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 42, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 344, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 375, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"iwpm_admin\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 51, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 433, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 449, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 463, i32 24 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 468, i32 13 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 474, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 479, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 484, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 497, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 504, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 652, i32 13 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 667, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 670, i32 14 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 696, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 698, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 713, i32 16 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 718, i32 16 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 735, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 770, i32 13 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 774, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 784, i32 13 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 787, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 790, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 46, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 49, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 43, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 33, i32 31 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 34, i32 28 }
@___asan_gen_.233 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 35, i32 39 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 541, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 627, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 634, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 593, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 610, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private constant [39 x i8] c"../drivers/infiniband/core/iwpm_util.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 613, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @get_hash_bucket._entry, ptr @get_hash_bucket._entry_ptr, ptr @iwpm_compare_sockaddr._entry, ptr @iwpm_compare_sockaddr._entry_ptr, ptr @iwpm_create_nlmsg._entry, ptr @iwpm_create_nlmsg._entry_ptr, ptr @iwpm_parse_nlmsg._entry, ptr @iwpm_parse_nlmsg._entry_ptr, ptr @iwpm_send_hello._entry, ptr @iwpm_send_hello._entry_ptr, ptr @iwpm_send_mapinfo._entry, ptr @iwpm_send_mapinfo._entry_ptr, ptr @iwpm_wait_complete_req._entry, ptr @iwpm_wait_complete_req._entry_ptr, ptr @send_mapinfo_num._entry, ptr @send_mapinfo_num._entry_ptr, ptr @send_nlmsg_done._entry, ptr @send_nlmsg_done._entry.47, ptr @send_nlmsg_done._entry_ptr, ptr @send_nlmsg_done._entry_ptr.49, ptr @iwpm_hash_bucket, ptr @iwpm_reminfo_bucket, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @iwpm_mapinfo_lock, ptr @iwpm_reminfo_lock, ptr @.str.6, ptr @iwpm_nlmsg_req_lock, ptr @iwpm_nlmsg_req_list, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @iwpm_admin, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @sema_init.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_hash_bucket to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_reminfo_bucket to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_mapinfo_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_reminfo_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_nlmsg_req_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_nlmsg_req_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_wait_complete_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_admin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_compare_sockaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_create_nlmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_parse_nlmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_send_mapinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwpm_send_hello._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_hash_bucket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_nlmsg_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_nlmsg_done._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_mapinfo_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_init(i8 noundef zeroext %nl_client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2048) #14
  store ptr %call7.i.i.i, ptr @iwpm_hash_bucket, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 256) #14
  store ptr %call7.i.i.i11, ptr @iwpm_reminfo_bucket, align 4
  %tobool2.not = icmp eq ptr %call7.i.i.i11, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @iwpm_hash_bucket, align 4
  tail call void @kfree(ptr noundef %2) #11
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom.i = zext i8 %nl_client to i32
  %arrayidx.i = getelementptr %struct.iwpm_admin_data, ptr @iwpm_admin, i32 0, i32 1, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_init.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_init, %if.then9)) #11
          to label %return [label %if.then9], !srcloc !140

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_init.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #11
  br label %return

return:                                           ; preds = %if.then9, %if.end4, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @iwpm_set_registration(i8 noundef zeroext %nl_client, i32 noundef %reg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %nl_client to i32
  %arrayidx = getelementptr %struct.iwpm_admin_data, ptr @iwpm_admin, i32 0, i32 1, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %reg, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_exit(i8 noundef zeroext %nl_client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_mapinfo_lock) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %entry
  %i.038.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc25.i.for.body.i_crit_edge ]
  %0 = load ptr, ptr @iwpm_hash_bucket, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %0, i32 %i.038.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not35.i = icmp eq ptr %2, null
  br i1 %tobool10.not35.i, label %for.body.i.for.inc25.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

land.rhs.i:                                       ; preds = %hlist_del_init.exit.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %map_info.036.i = phi ptr [ %4, %hlist_del_init.exit.i.land.rhs.i_crit_edge ], [ %2, %for.body.i.land.rhs.i_crit_edge ]
  %3 = ptrtoint ptr %map_info.036.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_info.036.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %map_info.036.i, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.not.i.i, label %land.rhs.i.hlist_del_init.exit.i_crit_edge, label %if.then.i.i

land.rhs.i.hlist_del_init.exit.i_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %4, ptr %6, align 4
  %tobool.not.i3.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %9 = ptrtoint ptr %map_info.036.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %map_info.036.i, align 4
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hlist_del_init.exit.i

hlist_del_init.exit.i:                            ; preds = %__hlist_del.exit.i.i, %land.rhs.i.hlist_del_init.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %map_info.036.i) #11
  %tobool10.not.i = icmp eq ptr %4, null
  br i1 %tobool10.not.i, label %hlist_del_init.exit.i.for.inc25.i_crit_edge, label %hlist_del_init.exit.i.land.rhs.i_crit_edge

hlist_del_init.exit.i.land.rhs.i_crit_edge:       ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

hlist_del_init.exit.i.for.inc25.i_crit_edge:      ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %hlist_del_init.exit.i.for.inc25.i_crit_edge, %for.body.i.for.inc25.i_crit_edge
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %free_hash_bucket.exit, label %for.inc25.i.for.body.i_crit_edge

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

free_hash_bucket.exit:                            ; preds = %for.inc25.i
  %11 = load ptr, ptr @iwpm_hash_bucket, align 4
  tail call void @kfree(ptr noundef %11) #11
  store ptr null, ptr @iwpm_hash_bucket, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_mapinfo_lock, i32 noundef %call2.i) #11
  %call2.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_reminfo_lock) #11
  br label %for.body.i7

for.body.i7:                                      ; preds = %for.inc25.i20.for.body.i7_crit_edge, %free_hash_bucket.exit
  %i.038.i4 = phi i32 [ 0, %free_hash_bucket.exit ], [ %inc.i18, %for.inc25.i20.for.body.i7_crit_edge ]
  %12 = load ptr, ptr @iwpm_reminfo_bucket, align 4
  %arrayidx.i5 = getelementptr %struct.hlist_head, ptr %12, i32 %i.038.i4
  %13 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i5, align 4
  %tobool10.not35.i6 = icmp eq ptr %14, null
  br i1 %tobool10.not35.i6, label %for.body.i7.for.inc25.i20_crit_edge, label %for.body.i7.land.rhs.i10_crit_edge

for.body.i7.land.rhs.i10_crit_edge:               ; preds = %for.body.i7
  br label %land.rhs.i10

for.body.i7.for.inc25.i20_crit_edge:              ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i20

land.rhs.i10:                                     ; preds = %hlist_del_init.exit.i17.land.rhs.i10_crit_edge, %for.body.i7.land.rhs.i10_crit_edge
  %rem_info.036.i = phi ptr [ %16, %hlist_del_init.exit.i17.land.rhs.i10_crit_edge ], [ %14, %for.body.i7.land.rhs.i10_crit_edge ]
  %15 = ptrtoint ptr %rem_info.036.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rem_info.036.i, align 4
  %pprev.i.i.i8 = getelementptr inbounds %struct.hlist_node, ptr %rem_info.036.i, i32 0, i32 1
  %17 = ptrtoint ptr %pprev.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev.i.i.i8, align 4
  %tobool.not.i.not.i.i9 = icmp eq ptr %18, null
  br i1 %tobool.not.i.not.i.i9, label %land.rhs.i10.hlist_del_init.exit.i17_crit_edge, label %if.then.i.i12

land.rhs.i10.hlist_del_init.exit.i17_crit_edge:   ; preds = %land.rhs.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init.exit.i17

if.then.i.i12:                                    ; preds = %land.rhs.i10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i3.i.i11 = icmp eq ptr %16, null
  br i1 %tobool.not.i3.i.i11, label %if.then.i.i12.__hlist_del.exit.i.i15_crit_edge, label %do.body13.i.i.i14

if.then.i.i12.__hlist_del.exit.i.i15_crit_edge:   ; preds = %if.then.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i15

do.body13.i.i.i14:                                ; preds = %if.then.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i13 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %pprev14.i.i.i13, align 4
  br label %__hlist_del.exit.i.i15

__hlist_del.exit.i.i15:                           ; preds = %do.body13.i.i.i14, %if.then.i.i12.__hlist_del.exit.i.i15_crit_edge
  %21 = ptrtoint ptr %rem_info.036.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rem_info.036.i, align 4
  %22 = ptrtoint ptr %pprev.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pprev.i.i.i8, align 4
  br label %hlist_del_init.exit.i17

hlist_del_init.exit.i17:                          ; preds = %__hlist_del.exit.i.i15, %land.rhs.i10.hlist_del_init.exit.i17_crit_edge
  tail call void @kfree(ptr noundef nonnull %rem_info.036.i) #11
  %tobool10.not.i16 = icmp eq ptr %16, null
  br i1 %tobool10.not.i16, label %hlist_del_init.exit.i17.for.inc25.i20_crit_edge, label %hlist_del_init.exit.i17.land.rhs.i10_crit_edge

hlist_del_init.exit.i17.land.rhs.i10_crit_edge:   ; preds = %hlist_del_init.exit.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i10

hlist_del_init.exit.i17.for.inc25.i20_crit_edge:  ; preds = %hlist_del_init.exit.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i20

for.inc25.i20:                                    ; preds = %hlist_del_init.exit.i17.for.inc25.i20_crit_edge, %for.body.i7.for.inc25.i20_crit_edge
  %inc.i18 = add nuw nsw i32 %i.038.i4, 1
  %exitcond.not.i19 = icmp eq i32 %inc.i18, 64
  br i1 %exitcond.not.i19, label %free_reminfo_bucket.exit, label %for.inc25.i20.for.body.i7_crit_edge

for.inc25.i20.for.body.i7_crit_edge:              ; preds = %for.inc25.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i7

free_reminfo_bucket.exit:                         ; preds = %for.inc25.i20
  %23 = load ptr, ptr @iwpm_reminfo_bucket, align 4
  tail call void @kfree(ptr noundef %23) #11
  store ptr null, ptr @iwpm_reminfo_bucket, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_reminfo_lock, i32 noundef %call2.i3) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_exit.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_exit, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !140

if.then:                                          ; preds = %free_reminfo_bucket.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_exit.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %free_reminfo_bucket.exit
  %idxprom.i = zext i8 %nl_client to i32
  %arrayidx.i21 = getelementptr %struct.iwpm_admin_data, ptr @iwpm_admin, i32 0, i32 1, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx.i21, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_create_mapinfo(ptr nocapture noundef readonly %local_sockaddr, ptr nocapture noundef readonly %mapped_sockaddr, i8 noundef zeroext %nl_client, i32 noundef %map_flags) local_unnamed_addr #0 align 64 {
entry:
  %hash.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_sockaddr1 = getelementptr inbounds %struct.iwpm_mapping_info, ptr %call7.i.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %local_sockaddr1, ptr %local_sockaddr, i32 128)
  %mapped_sockaddr2 = getelementptr inbounds %struct.iwpm_mapping_info, ptr %call7.i.i, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %mapped_sockaddr2, ptr %mapped_sockaddr, i32 128)
  %nl_client3 = getelementptr inbounds %struct.iwpm_mapping_info, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %nl_client3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %nl_client, ptr %nl_client3, align 8
  %map_flags4 = getelementptr inbounds %struct.iwpm_mapping_info, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %map_flags4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %map_flags, ptr %map_flags4, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_mapinfo_lock) #11
  %5 = load ptr, ptr @iwpm_hash_bucket, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end.if.then20_crit_edge, label %if.then11

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash.i) #11
  %6 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %hash.i, align 4, !annotation !141
  %call.i = call fastcc i32 @get_hash_bucket(ptr noundef %local_sockaddr1, ptr noundef %mapped_sockaddr2, ptr noundef nonnull %hash.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %get_mapinfo_hash_bucket.exit, label %get_mapinfo_hash_bucket.exit.thread

get_mapinfo_hash_bucket.exit.thread:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  br label %if.then20

get_mapinfo_hash_bucket.exit:                     ; preds = %if.then11
  %7 = load ptr, ptr @iwpm_hash_bucket, align 4
  %8 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash.i, align 4
  %and.i = and i32 %9, 511
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %7, i32 %and.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  %tobool15.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool15.not, label %get_mapinfo_hash_bucket.exit.if.then20_crit_edge, label %if.then16

get_mapinfo_hash_bucket.exit.if.then20_crit_edge: ; preds = %get_mapinfo_hash_bucket.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then16:                                        ; preds = %get_mapinfo_hash_bucket.exit
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %call7.i.i, align 8
  %tobool.not.i35 = icmp eq ptr %11, null
  br i1 %tobool.not.i35, label %if.then16.if.end18_crit_edge, label %do.body12.i

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.body12.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.body12.i, %if.then16.if.end18_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %arrayidx.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx.i, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_mapinfo_lock, i32 noundef %call7) #11
  br label %cleanup

if.then20:                                        ; preds = %get_mapinfo_hash_bucket.exit.if.then20_crit_edge, %get_mapinfo_hash_bucket.exit.thread, %if.end.if.then20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_mapinfo_lock, i32 noundef %call7) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -22, %if.then20 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_remove_mapinfo(ptr nocapture noundef readonly %local_sockaddr, ptr nocapture noundef readonly %mapped_local_addr) local_unnamed_addr #0 align 64 {
entry:
  %hash.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_mapinfo_lock) #11
  %0 = load ptr, ptr @iwpm_hash_bucket, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.remove_mapinfo_exit_crit_edge, label %if.then

entry.remove_mapinfo_exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %remove_mapinfo_exit

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash.i) #11
  %1 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hash.i, align 4, !annotation !141
  %call.i = call fastcc i32 @get_hash_bucket(ptr noundef %local_sockaddr, ptr noundef %mapped_local_addr, ptr noundef nonnull %hash.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %get_mapinfo_hash_bucket.exit, label %get_mapinfo_hash_bucket.exit.thread

get_mapinfo_hash_bucket.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  br label %remove_mapinfo_exit

get_mapinfo_hash_bucket.exit:                     ; preds = %if.then
  %2 = load ptr, ptr @iwpm_hash_bucket, align 4
  %3 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash.i, align 4
  %and.i = and i32 %4, 511
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %2, i32 %and.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  %tobool6.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool6.not, label %get_mapinfo_hash_bucket.exit.remove_mapinfo_exit_crit_edge, label %if.end

get_mapinfo_hash_bucket.exit.remove_mapinfo_exit_crit_edge: ; preds = %get_mapinfo_hash_bucket.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %remove_mapinfo_exit

if.end:                                           ; preds = %get_mapinfo_hash_bucket.exit
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool11.not49 = icmp eq ptr %6, null
  br i1 %tobool11.not49, label %if.end.remove_mapinfo_exit_crit_edge, label %land.rhs.lr.ph

if.end.remove_mapinfo_exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %remove_mapinfo_exit

land.rhs.lr.ph:                                   ; preds = %if.end
  %sin6_addr23.i = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_local_addr, i32 0, i32 3
  %sin6_port28.i = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_local_addr, i32 0, i32 1
  %sin_addr9.i = getelementptr inbounds %struct.sockaddr_in, ptr %mapped_local_addr, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %map_info.050 = phi ptr [ %6, %land.rhs.lr.ph ], [ %8, %for.inc.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %map_info.050 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_info.050, align 4
  %mapped_sockaddr = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.050, i32 0, i32 2
  %9 = ptrtoint ptr %mapped_sockaddr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mapped_sockaddr, align 4
  %11 = ptrtoint ptr %mapped_local_addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mapped_local_addr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp.not.i = icmp eq i16 %10, %12
  br i1 %cmp.not.i, label %if.end.i40, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i40:                                       ; preds = %land.rhs
  %13 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %do.end.i [
    i16 2, label %if.then8.i
    i16 10, label %if.then22.i
  ]

if.then8.i:                                       ; preds = %if.end.i40
  %sin_addr.i = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.050, i32 0, i32 2, i32 0, i32 1
  %bcmp53.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %sin_addr.i, ptr noundef dereferenceable(4) %sin_addr9.i, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp53.i)
  %tobool.not.i41 = icmp eq i32 %bcmp53.i, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i, label %if.then8.i.for.inc_crit_edge

if.then8.i.for.inc_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then8.i
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %mapped_sockaddr, i32 0, i32 1
  %14 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sin_port.i, align 2
  %16 = ptrtoint ptr %sin6_port28.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sin6_port28.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp13.i = icmp eq i16 %15, %17
  br i1 %cmp13.i, label %land.lhs.true.i.if.then16_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i.if.then16_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then22.i:                                      ; preds = %if.end.i40
  %sin6_addr.i = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.050, i32 0, i32 2, i32 0, i32 1, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr.i, ptr noundef dereferenceable(16) %sin6_addr23.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool25.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true26.i, label %if.then22.i.for.inc_crit_edge

if.then22.i.for.inc_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true26.i:                                ; preds = %if.then22.i
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_sockaddr, i32 0, i32 1
  %18 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sin6_port.i, align 2
  %20 = ptrtoint ptr %sin6_port28.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sin6_port28.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp30.i = icmp eq i16 %19, %21
  br i1 %cmp30.i, label %land.lhs.true26.i.if.then16_crit_edge, label %land.lhs.true26.i.for.inc_crit_edge

land.lhs.true26.i.for.inc_crit_edge:              ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true26.i.if.then16_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

do.end.i:                                         ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #13
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true26.i.if.then16_crit_edge, %land.lhs.true.i.if.then16_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %map_info.050, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.not.i, label %if.then16.hlist_del_init.exit_crit_edge, label %if.then.i

if.then16.hlist_del_init.exit_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.then16
  %24 = ptrtoint ptr %map_info.050 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map_info.050, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %23, align 4
  %tobool.not.i3.i = icmp eq ptr %25, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %28 = ptrtoint ptr %map_info.050 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %map_info.050, align 4
  %29 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.then16.hlist_del_init.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %map_info.050) #11
  br label %remove_mapinfo_exit

for.inc:                                          ; preds = %do.end.i, %land.lhs.true26.i.for.inc_crit_edge, %if.then22.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.then8.i.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %for.inc.remove_mapinfo_exit_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.remove_mapinfo_exit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %remove_mapinfo_exit

remove_mapinfo_exit:                              ; preds = %for.inc.remove_mapinfo_exit_crit_edge, %hlist_del_init.exit, %if.end.remove_mapinfo_exit_crit_edge, %get_mapinfo_hash_bucket.exit.remove_mapinfo_exit_crit_edge, %get_mapinfo_hash_bucket.exit.thread, %entry.remove_mapinfo_exit_crit_edge
  %ret.0 = phi i32 [ 0, %hlist_del_init.exit ], [ -22, %get_mapinfo_hash_bucket.exit.remove_mapinfo_exit_crit_edge ], [ -22, %entry.remove_mapinfo_exit_crit_edge ], [ -22, %get_mapinfo_hash_bucket.exit.thread ], [ -22, %if.end.remove_mapinfo_exit_crit_edge ], [ -22, %for.inc.remove_mapinfo_exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_mapinfo_lock, i32 noundef %call2) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_compare_sockaddr(ptr nocapture noundef readonly %a_sockaddr, ptr nocapture noundef readonly %b_sockaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a_sockaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %a_sockaddr, align 4
  %2 = ptrtoint ptr %b_sockaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %b_sockaddr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp eq i16 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %1, label %do.end [
    i16 2, label %if.then8
    i16 10, label %if.then22
  ]

if.then8:                                         ; preds = %if.end
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %a_sockaddr, i32 0, i32 2
  %sin_addr9 = getelementptr inbounds %struct.sockaddr_in, ptr %b_sockaddr, i32 0, i32 2
  %bcmp53 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %sin_addr, ptr noundef dereferenceable(4) %sin_addr9, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp53)
  %tobool.not = icmp eq i32 %bcmp53, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then8.cleanup.thread_crit_edge

if.then8.cleanup.thread_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.then8
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %a_sockaddr, i32 0, i32 1
  %5 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sin_port, align 2
  %sin_port11 = getelementptr inbounds %struct.sockaddr_in, ptr %b_sockaddr, i32 0, i32 1
  %7 = ptrtoint ptr %sin_port11 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sin_port11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp13 = icmp eq i16 %6, %8
  br i1 %cmp13, label %land.lhs.true.return_crit_edge, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %if.then8.cleanup.thread_crit_edge
  br label %return

if.then22:                                        ; preds = %if.end
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %a_sockaddr, i32 0, i32 3
  %sin6_addr23 = getelementptr inbounds %struct.sockaddr_in6, ptr %b_sockaddr, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr, ptr noundef dereferenceable(16) %sin6_addr23, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool25.not = icmp eq i32 %bcmp, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.then22.cleanup34.thread_crit_edge

if.then22.cleanup34.thread_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34.thread

land.lhs.true26:                                  ; preds = %if.then22
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %a_sockaddr, i32 0, i32 1
  %9 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sin6_port, align 2
  %sin6_port28 = getelementptr inbounds %struct.sockaddr_in6, ptr %b_sockaddr, i32 0, i32 1
  %11 = ptrtoint ptr %sin6_port28 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sin6_port28, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp30 = icmp eq i16 %10, %12
  br i1 %cmp30, label %land.lhs.true26.return_crit_edge, label %land.lhs.true26.cleanup34.thread_crit_edge

land.lhs.true26.cleanup34.thread_crit_edge:       ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34.thread

land.lhs.true26.return_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cleanup34.thread:                                 ; preds = %land.lhs.true26.cleanup34.thread_crit_edge, %if.then22.cleanup34.thread_crit_edge
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16
  br label %return

return:                                           ; preds = %do.end, %cleanup34.thread, %land.lhs.true26.return_crit_edge, %cleanup.thread, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 1, %entry.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %land.lhs.true26.return_crit_edge ], [ 1, %cleanup34.thread ], [ 1, %cleanup.thread ], [ 1, %do.end ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwpm_add_remote_info(ptr noundef %rem_info) local_unnamed_addr #0 align 64 {
entry:
  %hash.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_reminfo_lock) #11
  %0 = load ptr, ptr @iwpm_reminfo_bucket, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %mapped_loc_sockaddr = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info, i32 0, i32 2
  %mapped_rem_sockaddr = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash.i) #11
  %1 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hash.i, align 4, !annotation !141
  %call.i = call fastcc i32 @get_hash_bucket(ptr noundef %mapped_loc_sockaddr, ptr noundef %mapped_rem_sockaddr, ptr noundef nonnull %hash.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %get_reminfo_hash_bucket.exit, label %get_reminfo_hash_bucket.exit.thread

get_reminfo_hash_bucket.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  br label %if.end8

get_reminfo_hash_bucket.exit:                     ; preds = %if.then
  %2 = load ptr, ptr @iwpm_reminfo_bucket, align 4
  %3 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash.i, align 4
  %and.i = and i32 %4, 63
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %2, i32 %and.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  %tobool6.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool6.not, label %get_reminfo_hash_bucket.exit.if.end8_crit_edge, label %if.then7

get_reminfo_hash_bucket.exit.if.end8_crit_edge:   ; preds = %get_reminfo_hash_bucket.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %get_reminfo_hash_bucket.exit
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %rem_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %rem_info, align 4
  %tobool.not.i12 = icmp eq ptr %6, null
  br i1 %tobool.not.i12, label %if.then7.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then7.hlist_add_head.exit_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %rem_info, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then7.hlist_add_head.exit_crit_edge
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rem_info, ptr %arrayidx.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %rem_info, i32 0, i32 1
  %10 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx.i, ptr %pprev34.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %hlist_add_head.exit, %get_reminfo_hash_bucket.exit.if.end8_crit_edge, %get_reminfo_hash_bucket.exit.thread, %entry.if.end8_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_reminfo_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_get_remote_info(ptr nocapture noundef readonly %mapped_loc_addr, ptr nocapture noundef readonly %mapped_rem_addr, ptr noundef %remote_addr, i8 noundef zeroext %nl_client) local_unnamed_addr #0 align 64 {
entry:
  %hash.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_reminfo_lock) #11
  %0 = load ptr, ptr @iwpm_reminfo_bucket, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.get_remote_info_exit_crit_edge, label %if.then

entry.get_remote_info_exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_remote_info_exit

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash.i) #11
  %1 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hash.i, align 4, !annotation !141
  %call.i = call fastcc i32 @get_hash_bucket(ptr noundef %mapped_loc_addr, ptr noundef %mapped_rem_addr, ptr noundef nonnull %hash.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %get_reminfo_hash_bucket.exit, label %get_reminfo_hash_bucket.exit.thread

get_reminfo_hash_bucket.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  br label %get_remote_info_exit

get_reminfo_hash_bucket.exit:                     ; preds = %if.then
  %2 = load ptr, ptr @iwpm_reminfo_bucket, align 4
  %3 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash.i, align 4
  %and.i = and i32 %4, 63
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %2, i32 %and.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  %tobool6.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool6.not, label %get_reminfo_hash_bucket.exit.get_remote_info_exit_crit_edge, label %if.end

get_reminfo_hash_bucket.exit.get_remote_info_exit_crit_edge: ; preds = %get_reminfo_hash_bucket.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_remote_info_exit

if.end:                                           ; preds = %get_reminfo_hash_bucket.exit
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool11.not88 = icmp eq ptr %6, null
  br i1 %tobool11.not88, label %if.end.get_remote_info_exit_crit_edge, label %land.rhs.lr.ph

if.end.get_remote_info_exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_remote_info_exit

land.rhs.lr.ph:                                   ; preds = %if.end
  %sin6_addr23.i = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_loc_addr, i32 0, i32 3
  %sin6_port28.i = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_loc_addr, i32 0, i32 1
  %sin_addr9.i = getelementptr inbounds %struct.sockaddr_in, ptr %mapped_loc_addr, i32 0, i32 2
  %sin6_addr23.i61 = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_rem_addr, i32 0, i32 3
  %sin6_port28.i66 = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_rem_addr, i32 0, i32 1
  %sin_addr9.i51 = getelementptr inbounds %struct.sockaddr_in, ptr %mapped_rem_addr, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %rem_info.089 = phi ptr [ %6, %land.rhs.lr.ph ], [ %8, %for.inc.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %rem_info.089 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rem_info.089, align 4
  %mapped_loc_sockaddr = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info.089, i32 0, i32 2
  %9 = ptrtoint ptr %mapped_loc_sockaddr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mapped_loc_sockaddr, align 4
  %11 = ptrtoint ptr %mapped_loc_addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mapped_loc_addr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp.not.i = icmp eq i16 %10, %12
  br i1 %cmp.not.i, label %if.end.i46, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i46:                                       ; preds = %land.rhs
  %13 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %10, label %if.end.i46.for.inc.sink.split_crit_edge [
    i16 2, label %if.then8.i
    i16 10, label %if.then22.i
  ]

if.end.i46.for.inc.sink.split_crit_edge:          ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

if.then8.i:                                       ; preds = %if.end.i46
  %sin_addr.i = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info.089, i32 0, i32 2, i32 0, i32 1
  %bcmp53.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %sin_addr.i, ptr noundef dereferenceable(4) %sin_addr9.i, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp53.i)
  %tobool.not.i47 = icmp eq i32 %bcmp53.i, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i, label %if.then8.i.for.inc_crit_edge

if.then8.i.for.inc_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then8.i
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %mapped_loc_sockaddr, i32 0, i32 1
  %14 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sin_port.i, align 2
  %16 = ptrtoint ptr %sin6_port28.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sin6_port28.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp13.i = icmp eq i16 %15, %17
  br i1 %cmp13.i, label %land.lhs.true.i.land.lhs.true_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then22.i:                                      ; preds = %if.end.i46
  %sin6_addr.i = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info.089, i32 0, i32 2, i32 0, i32 1, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr.i, ptr noundef dereferenceable(16) %sin6_addr23.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool25.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true26.i, label %if.then22.i.for.inc_crit_edge

if.then22.i.for.inc_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true26.i:                                ; preds = %if.then22.i
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_loc_sockaddr, i32 0, i32 1
  %18 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sin6_port.i, align 2
  %20 = ptrtoint ptr %sin6_port28.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sin6_port28.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp30.i = icmp eq i16 %19, %21
  br i1 %cmp30.i, label %land.lhs.true26.i.land.lhs.true_crit_edge, label %land.lhs.true26.i.for.inc_crit_edge

land.lhs.true26.i.for.inc_crit_edge:              ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true26.i.land.lhs.true_crit_edge:        ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true26.i.land.lhs.true_crit_edge, %land.lhs.true.i.land.lhs.true_crit_edge
  %mapped_rem_sockaddr = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info.089, i32 0, i32 3
  %22 = ptrtoint ptr %mapped_rem_sockaddr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mapped_rem_sockaddr, align 4
  %24 = ptrtoint ptr %mapped_rem_addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mapped_rem_addr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp.not.i48 = icmp eq i16 %23, %25
  br i1 %cmp.not.i48, label %if.end.i49, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i49:                                       ; preds = %land.lhs.true
  %26 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %23, label %if.end.i49.for.inc.sink.split_crit_edge [
    i16 2, label %if.then8.i54
    i16 10, label %if.then22.i64
  ]

if.end.i49.for.inc.sink.split_crit_edge:          ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

if.then8.i54:                                     ; preds = %if.end.i49
  %sin_addr.i50 = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info.089, i32 0, i32 3, i32 0, i32 1
  %bcmp53.i52 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %sin_addr.i50, ptr noundef dereferenceable(4) %sin_addr9.i51, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp53.i52)
  %tobool.not.i53 = icmp eq i32 %bcmp53.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i58, label %if.then8.i54.for.inc_crit_edge

if.then8.i54.for.inc_crit_edge:                   ; preds = %if.then8.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i58:                                ; preds = %if.then8.i54
  %sin_port.i55 = getelementptr inbounds %struct.sockaddr_in, ptr %mapped_rem_sockaddr, i32 0, i32 1
  %27 = ptrtoint ptr %sin_port.i55 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sin_port.i55, align 2
  %29 = ptrtoint ptr %sin6_port28.i66 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sin6_port28.i66, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp13.i57 = icmp eq i16 %28, %30
  br i1 %cmp13.i57, label %land.lhs.true.i58.if.then18_crit_edge, label %land.lhs.true.i58.for.inc_crit_edge

land.lhs.true.i58.for.inc_crit_edge:              ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i58.if.then18_crit_edge:            ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then22.i64:                                    ; preds = %if.end.i49
  %sin6_addr.i60 = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info.089, i32 0, i32 3, i32 0, i32 1, i32 4
  %bcmp.i62 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr.i60, ptr noundef dereferenceable(16) %sin6_addr23.i61, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i62)
  %tobool25.not.i63 = icmp eq i32 %bcmp.i62, 0
  br i1 %tobool25.not.i63, label %land.lhs.true26.i68, label %if.then22.i64.for.inc_crit_edge

if.then22.i64.for.inc_crit_edge:                  ; preds = %if.then22.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true26.i68:                              ; preds = %if.then22.i64
  %sin6_port.i65 = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_rem_sockaddr, i32 0, i32 1
  %31 = ptrtoint ptr %sin6_port.i65 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sin6_port.i65, align 2
  %33 = ptrtoint ptr %sin6_port28.i66 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sin6_port28.i66, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp30.i67 = icmp eq i16 %32, %34
  br i1 %cmp30.i67, label %land.lhs.true26.i68.if.then18_crit_edge, label %land.lhs.true26.i68.for.inc_crit_edge

land.lhs.true26.i68.for.inc_crit_edge:            ; preds = %land.lhs.true26.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true26.i68.if.then18_crit_edge:          ; preds = %land.lhs.true26.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true26.i68.if.then18_crit_edge, %land.lhs.true.i58.if.then18_crit_edge
  %remote_sockaddr = getelementptr inbounds %struct.iwpm_remote_info, ptr %rem_info.089, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %remote_addr, ptr %remote_sockaddr, i32 128)
  %36 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %remote_addr, align 4
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %37, label %if.then18.iwpm_print_sockaddr.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb6.i
  ]

if.then18.iwpm_print_sockaddr.exit_crit_edge:     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwpm_print_sockaddr.exit

sw.bb.i:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_get_remote_info, %if.then.i)) #11
          to label %iwpm_print_sockaddr.exit [label %if.then.i], !srcloc !140

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr.i74 = getelementptr inbounds %struct.sockaddr_in, ptr %remote_addr, i32 0, i32 2
  %sin_port.i75 = getelementptr inbounds %struct.sockaddr_in, ptr %remote_addr, i32 0, i32 1
  %39 = ptrtoint ptr %sin_port.i75 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sin_port.i75, align 2
  %conv3.i = zext i16 %40 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6, ptr noundef %sin_addr.i74, i32 noundef %conv3.i, i32 noundef %conv3.i) #11
  br label %iwpm_print_sockaddr.exit

sw.bb6.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_get_remote_info, %if.then19.i)) #11
          to label %iwpm_print_sockaddr.exit [label %if.then19.i], !srcloc !140

if.then19.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_addr.i76 = getelementptr inbounds %struct.sockaddr_in6, ptr %remote_addr, i32 0, i32 3
  %sin6_port.i77 = getelementptr inbounds %struct.sockaddr_in6, ptr %remote_addr, i32 0, i32 1
  %41 = ptrtoint ptr %sin6_port.i77 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sin6_port.i77, align 2
  %conv20.i = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.6, ptr noundef %sin6_addr.i76, i32 noundef %conv20.i, i32 noundef %conv20.i) #11
  br label %iwpm_print_sockaddr.exit

iwpm_print_sockaddr.exit:                         ; preds = %if.then19.i, %sw.bb6.i, %if.then.i, %sw.bb.i, %if.then18.iwpm_print_sockaddr.exit_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %rem_info.089, i32 0, i32 1
  %43 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.not.i, label %iwpm_print_sockaddr.exit.hlist_del_init.exit_crit_edge, label %if.then.i78

iwpm_print_sockaddr.exit.hlist_del_init.exit_crit_edge: ; preds = %iwpm_print_sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init.exit

if.then.i78:                                      ; preds = %iwpm_print_sockaddr.exit
  %45 = ptrtoint ptr %rem_info.089 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rem_info.089, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %44, align 4
  %tobool.not.i3.i = icmp eq ptr %46, null
  br i1 %tobool.not.i3.i, label %if.then.i78.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i78.__hlist_del.exit.i_crit_edge:         ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %44, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i78.__hlist_del.exit.i_crit_edge
  %49 = ptrtoint ptr %rem_info.089 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rem_info.089, align 4
  %50 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %iwpm_print_sockaddr.exit.hlist_del_init.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %rem_info.089) #11
  br label %get_remote_info_exit

for.inc.sink.split:                               ; preds = %if.end.i49.for.inc.sink.split_crit_edge, %if.end.i46.for.inc.sink.split_crit_edge
  %call39.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true26.i68.for.inc_crit_edge, %if.then22.i64.for.inc_crit_edge, %land.lhs.true.i58.for.inc_crit_edge, %if.then8.i54.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %land.lhs.true26.i.for.inc_crit_edge, %if.then22.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.then8.i.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %for.inc.get_remote_info_exit_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.get_remote_info_exit_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_remote_info_exit

get_remote_info_exit:                             ; preds = %for.inc.get_remote_info_exit_crit_edge, %hlist_del_init.exit, %if.end.get_remote_info_exit_crit_edge, %get_reminfo_hash_bucket.exit.get_remote_info_exit_crit_edge, %get_reminfo_hash_bucket.exit.thread, %entry.get_remote_info_exit_crit_edge
  %ret.0 = phi i32 [ 0, %hlist_del_init.exit ], [ -22, %get_reminfo_hash_bucket.exit.get_remote_info_exit_crit_edge ], [ -22, %entry.get_remote_info_exit_crit_edge ], [ -22, %get_reminfo_hash_bucket.exit.thread ], [ -22, %if.end.get_remote_info_exit_crit_edge ], [ -22, %for.inc.get_remote_info_exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_reminfo_lock, i32 noundef %call2) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwpm_print_sockaddr(ptr noundef %sockaddr, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sockaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sockaddr, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_print_sockaddr, %if.then)) #11
          to label %sw.epilog [label %if.then], !srcloc !140

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %sockaddr, i32 0, i32 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %sockaddr, i32 0, i32 1
  %3 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sin_port, align 2
  %conv3 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.22, ptr noundef %msg, ptr noundef %sin_addr, i32 noundef %conv3, i32 noundef %conv3) #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_print_sockaddr, %if.then19)) #11
          to label %sw.epilog [label %if.then19], !srcloc !140

if.then19:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %sockaddr, i32 0, i32 3
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %sockaddr, i32 0, i32 1
  %5 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sin6_port, align 2
  %conv20 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.23, ptr noundef %msg, ptr noundef %sin6_addr, i32 noundef %conv20, i32 noundef %conv20) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %sw.bb6, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwpm_get_nlmsg_request(i32 noundef %nlmsg_seq, i8 noundef zeroext %nl_client, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !142

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 80) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %do.body1

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %kzalloc.exit
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_nlmsg_req_lock) #11
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @iwpm_nlmsg_req_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %2, ptr noundef nonnull @iwpm_nlmsg_req_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_add_tail.exit_crit_edge

do.body1.list_add_tail.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @iwpm_nlmsg_req_list, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @iwpm_nlmsg_req_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body1.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_nlmsg_req_lock, i32 noundef %call3) #11
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %6 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %kref, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !143
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !144

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !142

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %nlmsg_seq7 = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %nlmsg_seq7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %nlmsg_seq, ptr %nlmsg_seq7, align 8
  %nl_client8 = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %nl_client8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %nl_client, ptr %nl_client8, align 8
  %request_done = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %request_done to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %request_done, align 1
  %err_code = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %err_code to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %err_code, align 2
  %sem = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6
  %wait_list1.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %sem to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 2
  %15 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 3
  %16 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4
  %17 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.42, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4, i32 5
  %21 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 8
  %23 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %call7.i.i, i32 0, i32 6, i32 2, i32 1
  %24 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 8
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  tail call void @down(ptr noundef %sem) #11
  br label %cleanup

cleanup:                                          ; preds = %kref_get.exit, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwpm_free_nlmsg_request(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -76
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_nlmsg_req_lock) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %kref, i32 -72
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i = getelementptr i8, ptr %kref, i32 -72
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_nlmsg_req_lock, i32 noundef %call3) #11
  %request_done = getelementptr i8, ptr %kref, i32 -59
  %8 = ptrtoint ptr %request_done to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %request_done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.body6, label %list_del_init.exit.if.end15_crit_edge

list_del_init.exit.if.end15_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

do.body6:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_free_nlmsg_request.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_free_nlmsg_request, %if.then12)) #11
          to label %if.end15 [label %if.then12], !srcloc !140

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %nlmsg_seq = getelementptr i8, ptr %kref, i32 -68
  %10 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_free_nlmsg_request.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %11) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.body6, %list_del_init.exit.if.end15_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwpm_find_nlmsg_request(i32 noundef %echo_seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_nlmsg_req_lock) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %nlmsg_request.0.in = phi ptr [ @iwpm_nlmsg_req_list, %entry ], [ %nlmsg_request.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %nlmsg_request.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %nlmsg_request.0 = load ptr, ptr %nlmsg_request.0.in, align 4
  %cmp6.not = icmp eq ptr %nlmsg_request.0, @iwpm_nlmsg_req_list
  br i1 %cmp6.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %nlmsg_seq = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request.0, i32 0, i32 1
  %1 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nlmsg_seq, align 4
  %cmp8 = icmp eq i32 %2, %echo_seq
  br i1 %cmp8, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request.0, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !143
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !144

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !142

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.end_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  %found_request.0 = phi ptr [ %nlmsg_request.0, %if.else.i.i.i.i.for.end_crit_edge ], [ %nlmsg_request.0, %if.end15.sink.split.i.i.i.i ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_nlmsg_req_lock, i32 noundef %call2) #11
  ret ptr %found_request.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_wait_complete_req(ptr noundef %nlmsg_request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sem = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request, i32 0, i32 6
  %call = tail call i32 @down_timeout(ptr noundef %sem, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %nlmsg_seq = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request, i32 0, i32 1
  %0 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlmsg_seq, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 10, i32 noundef %1) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %err_code = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request, i32 0, i32 5
  %2 = ptrtoint ptr %err_code to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %err_code, align 2
  %conv = zext i16 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ -22, %if.then ], [ %conv, %if.else ]
  %kref = getelementptr inbounds %struct.iwpm_nlmsg_request, ptr %nlmsg_request, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !142

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @iwpm_free_nlmsg_request(ptr noundef %kref) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_get_nlmsg_seq() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @iwpm_admin, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr nonnull @iwpm_admin, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @iwpm_admin, ptr nonnull @iwpm_admin, i32 1, ptr nonnull elementtype(i32) @iwpm_admin) #11, !srcloc !149
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  ret i32 %asmresult.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwpm_get_registration(i8 noundef zeroext %nl_client) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %nl_client to i32
  %arrayidx = getelementptr %struct.iwpm_admin_data, ptr @iwpm_admin, i32 0, i32 1, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwpm_check_registration(i8 noundef zeroext %nl_client, i32 noundef %reg) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom.i = zext i8 %nl_client to i32
  %arrayidx.i = getelementptr %struct.iwpm_admin_data, ptr @iwpm_admin, i32 0, i32 1, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %1, %reg
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwpm_create_nlmsg(i32 noundef %nl_op, ptr noundef %nlh, i32 noundef %nl_client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 512, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.create_nlmsg_exit_crit_edge, label %if.end

entry.create_nlmsg_exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_nlmsg_exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ibnl_put_msg(ptr noundef nonnull %call.i.i, ptr noundef %nlh, i32 noundef 0, i32 noundef 0, i32 noundef %nl_client, i32 noundef %nl_op, i32 noundef 1) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end.create_nlmsg_exit_crit_edge

if.end.create_nlmsg_exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_nlmsg_exit

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #16
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #11
  br label %create_nlmsg_exit

create_nlmsg_exit:                                ; preds = %do.end, %if.end.create_nlmsg_exit_crit_edge, %entry.create_nlmsg_exit_crit_edge
  %skb.0 = phi ptr [ %call.i.i, %if.end.create_nlmsg_exit_crit_edge ], [ null, %do.end ], [ null, %entry.create_nlmsg_exit_crit_edge ]
  ret ptr %skb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ibnl_put_msg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_parse_nlmsg(ptr nocapture noundef readonly %cb, i32 noundef %policy_max, ptr noundef %nlmsg_policy, ptr noundef %nltb, ptr noundef %msg_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %sub = add i32 %policy_max, -1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.i = icmp ult i32 %3, 16
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %nlmsg_validate_deprecated.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

nlmsg_validate_deprecated.exit:                   ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 16
  %sub.i.i.i = add i32 %3, -16
  %call3.i = tail call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, i32 noundef %sub, ptr noundef %nlmsg_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %nlmsg_validate_deprecated.exit.do.end_crit_edge

nlmsg_validate_deprecated.exit.do.end_crit_edge:  ; preds = %nlmsg_validate_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %nlmsg_validate_deprecated.exit
  %4 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nlh, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 16
  br i1 %cmp.i.i, label %nlmsg_parse_deprecated.exit.thread, label %nlmsg_parse_deprecated.exit

nlmsg_parse_deprecated.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  br label %do.end

nlmsg_parse_deprecated.exit:                      ; preds = %if.end
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 16
  %sub.i.i.i.i = add i32 %7, -16
  %call5.i.i = tail call i32 @__nla_parse(ptr noundef %nltb, i32 noundef %sub, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i, ptr noundef %nlmsg_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool4.not = icmp eq i32 %call5.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %nlmsg_parse_deprecated.exit.do.end_crit_edge

nlmsg_parse_deprecated.exit.do.end_crit_edge:     ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end6:                                          ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %policy_max)
  %cmp3.i = icmp sgt i32 %policy_max, 1
  br i1 %cmp3.i, label %if.end6.for.body.i_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %policy_max
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 1, %if.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %nltb, i32 %i.04.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.do.end_crit_edge, label %for.cond.i

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.body.i.do.end_crit_edge, %nlmsg_parse_deprecated.exit.do.end_crit_edge, %nlmsg_parse_deprecated.exit.thread, %nlmsg_validate_deprecated.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ %call3.i, %nlmsg_validate_deprecated.exit.do.end_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.do.end_crit_edge ], [ -22, %nlmsg_parse_deprecated.exit.thread ], [ -22, %entry.do.end_crit_edge ], [ -22, %for.body.i.do.end_crit_edge ]
  %err_str.0 = phi ptr [ @.str.16, %nlmsg_validate_deprecated.exit.do.end_crit_edge ], [ @.str.17, %nlmsg_parse_deprecated.exit.do.end_crit_edge ], [ @.str.17, %nlmsg_parse_deprecated.exit.thread ], [ @.str.16, %entry.do.end_crit_edge ], [ @.str.18, %for.body.i.do.end_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull %err_str.0, ptr noundef %msg_type, i32 noundef %ret.0) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_send_mapinfo(i8 noundef zeroext %nl_client, i32 noundef %iwpm_pid) local_unnamed_addr #0 align 64 {
entry:
  %nlh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlh) #11
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nlh, align 4, !annotation !141
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 3840, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.do.end94_crit_edge, label %if.end

entry.do.end94_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_mapinfo_lock) #11
  %conv16 = zext i8 %nl_client to i32
  br label %for.body

for.body:                                         ; preds = %for.inc87.for.body_crit_edge, %if.end
  %skb.0225 = phi ptr [ %call.i.i, %if.end ], [ %skb.1.lcssa, %for.inc87.for.body_crit_edge ]
  %skb_num.0224 = phi i32 [ 1, %if.end ], [ %skb_num.1.lcssa, %for.inc87.for.body_crit_edge ]
  %mapping_num.0223 = phi i32 [ 0, %if.end ], [ %mapping_num.1.lcssa, %for.inc87.for.body_crit_edge ]
  %i.0222 = phi i32 [ 0, %if.end ], [ %inc88, %for.inc87.for.body_crit_edge ]
  %nlmsg_bytes.0221 = phi i32 [ 0, %if.end ], [ %nlmsg_bytes.1.lcssa, %for.inc87.for.body_crit_edge ]
  %flags.0220 = phi i32 [ %call3, %if.end ], [ %flags.1.lcssa, %for.inc87.for.body_crit_edge ]
  %err_str.0219 = phi ptr [ @.str.15, %if.end ], [ %err_str.1.lcssa, %for.inc87.for.body_crit_edge ]
  %ret.0218 = phi i32 [ -22, %if.end ], [ %ret.1.lcssa, %for.inc87.for.body_crit_edge ]
  %1 = load ptr, ptr @iwpm_hash_bucket, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %1, i32 %i.0222
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %map_info.0200 = load ptr, ptr %arrayidx, align 4
  %tobool12.not201 = icmp eq ptr %map_info.0200, null
  br i1 %tobool12.not201, label %for.body.for.inc87_crit_edge, label %for.body.for.body13_crit_edge

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body.for.inc87_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc87

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %map_info.0211 = phi ptr [ %map_info.0, %for.inc.for.body13_crit_edge ], [ %map_info.0200, %for.body.for.body13_crit_edge ]
  %skb.1209 = phi ptr [ %skb.2, %for.inc.for.body13_crit_edge ], [ %skb.0225, %for.body.for.body13_crit_edge ]
  %skb_num.1208 = phi i32 [ %skb_num.2, %for.inc.for.body13_crit_edge ], [ %skb_num.0224, %for.body.for.body13_crit_edge ]
  %mapping_num.1207 = phi i32 [ %mapping_num.2, %for.inc.for.body13_crit_edge ], [ %mapping_num.0223, %for.body.for.body13_crit_edge ]
  %nlmsg_bytes.1206 = phi i32 [ %nlmsg_bytes.2, %for.inc.for.body13_crit_edge ], [ %nlmsg_bytes.0221, %for.body.for.body13_crit_edge ]
  %flags.1204 = phi i32 [ %flags.2, %for.inc.for.body13_crit_edge ], [ %flags.0220, %for.body.for.body13_crit_edge ]
  %err_str.1203 = phi ptr [ %err_str.2, %for.inc.for.body13_crit_edge ], [ %err_str.0219, %for.body.for.body13_crit_edge ]
  %ret.1202 = phi i32 [ %ret.3, %for.inc.for.body13_crit_edge ], [ %ret.0218, %for.body.for.body13_crit_edge ]
  %nl_client14 = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.0211, i32 0, i32 3
  %3 = ptrtoint ptr %nl_client14 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nl_client14, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %nl_client)
  %cmp17.not = icmp eq i8 %4, %nl_client
  br i1 %cmp17.not, label %if.end20, label %for.body13.for.inc_crit_edge

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end20:                                         ; preds = %for.body13
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %nlh, align 4
  %call22 = call ptr @ibnl_put_msg(ptr noundef %skb.1209, ptr noundef nonnull %nlh, i32 noundef 0, i32 noundef 0, i32 noundef %conv16, i32 noundef 6, i32 noundef 2) #11
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.send_mapping_info_exit.thread169_crit_edge, label %if.end25

if.end20.send_mapping_info_exit.thread169_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_mapping_info_exit.thread169

if.end25:                                         ; preds = %if.end20
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nlh, align 4
  %local_sockaddr = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.0211, i32 0, i32 1
  %call26 = call i32 @ibnl_put_attr(ptr noundef %skb.1209, ptr noundef %7, i32 noundef 128, ptr noundef %local_sockaddr, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.send_mapping_info_exit.thread169_crit_edge

if.end25.send_mapping_info_exit.thread169_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_mapping_info_exit.thread169

if.end29:                                         ; preds = %if.end25
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %mapped_sockaddr = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.0211, i32 0, i32 2
  %call30 = call i32 @ibnl_put_attr(ptr noundef %skb.1209, ptr noundef %9, i32 noundef 128, ptr noundef %mapped_sockaddr, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.send_mapping_info_exit.thread169_crit_edge

if.end29.send_mapping_info_exit.thread169_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_mapping_info_exit.thread169

if.end33:                                         ; preds = %if.end29
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @iwpm_ulib_version to i32))
  %10 = load i16, ptr @iwpm_ulib_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp35 = icmp ugt i16 %10, 3
  br i1 %cmp35, label %if.then37, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then37:                                        ; preds = %if.end33
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %map_flags = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.0211, i32 0, i32 4
  %call38 = call i32 @ibnl_put_attr(ptr noundef %skb.1209, ptr noundef %12, i32 noundef 4, ptr noundef %map_flags, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.if.end42_crit_edge, label %if.then37.send_mapping_info_exit.thread169_crit_edge

if.then37.send_mapping_info_exit.thread169_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_mapping_info_exit.thread169

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end42:                                         ; preds = %if.then37.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %13 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nlh, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1209, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.ptr.sub.i, ptr %14, align 4
  %18 = ptrtoint ptr %local_sockaddr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %local_sockaddr, align 4
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %19, label %if.end42.iwpm_print_sockaddr.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb6.i
  ]

if.end42.iwpm_print_sockaddr.exit_crit_edge:      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwpm_print_sockaddr.exit

sw.bb.i:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_send_mapinfo, %if.then.i)) #11
          to label %iwpm_print_sockaddr.exit [label %if.then.i], !srcloc !140

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr.i = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.0211, i32 0, i32 1, i32 0, i32 1
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %local_sockaddr, i32 0, i32 1
  %21 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sin_port.i, align 2
  %conv3.i = zext i16 %22 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27, ptr noundef %sin_addr.i, i32 noundef %conv3.i, i32 noundef %conv3.i) #11
  br label %iwpm_print_sockaddr.exit

sw.bb6.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_send_mapinfo, %if.then19.i)) #11
          to label %iwpm_print_sockaddr.exit [label %if.then19.i], !srcloc !140

if.then19.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_addr.i = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.0211, i32 0, i32 1, i32 0, i32 1, i32 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %local_sockaddr, i32 0, i32 1
  %23 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sin6_port.i, align 2
  %conv20.i = zext i16 %24 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, ptr noundef %sin6_addr.i, i32 noundef %conv20.i, i32 noundef %conv20.i) #11
  br label %iwpm_print_sockaddr.exit

iwpm_print_sockaddr.exit:                         ; preds = %if.then19.i, %sw.bb6.i, %if.then.i, %sw.bb.i, %if.end42.iwpm_print_sockaddr.exit_crit_edge
  %25 = ptrtoint ptr %mapped_sockaddr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mapped_sockaddr, align 4
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %26, label %iwpm_print_sockaddr.exit.iwpm_print_sockaddr.exit158_crit_edge [
    i16 2, label %sw.bb.i148
    i16 10, label %sw.bb6.i153
  ]

iwpm_print_sockaddr.exit.iwpm_print_sockaddr.exit158_crit_edge: ; preds = %iwpm_print_sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwpm_print_sockaddr.exit158

sw.bb.i148:                                       ; preds = %iwpm_print_sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_send_mapinfo, %if.then.i152)) #11
          to label %iwpm_print_sockaddr.exit158 [label %if.then.i152], !srcloc !140

if.then.i152:                                     ; preds = %sw.bb.i148
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr.i149 = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.0211, i32 0, i32 2, i32 0, i32 1
  %sin_port.i150 = getelementptr inbounds %struct.sockaddr_in, ptr %mapped_sockaddr, i32 0, i32 1
  %28 = ptrtoint ptr %sin_port.i150 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sin_port.i150, align 2
  %conv3.i151 = zext i16 %29 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.28, ptr noundef %sin_addr.i149, i32 noundef %conv3.i151, i32 noundef %conv3.i151) #11
  br label %iwpm_print_sockaddr.exit158

sw.bb6.i153:                                      ; preds = %iwpm_print_sockaddr.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_send_mapinfo, %if.then19.i157)) #11
          to label %iwpm_print_sockaddr.exit158 [label %if.then19.i157], !srcloc !140

if.then19.i157:                                   ; preds = %sw.bb6.i153
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_addr.i154 = getelementptr inbounds %struct.iwpm_mapping_info, ptr %map_info.0211, i32 0, i32 2, i32 0, i32 1, i32 4
  %sin6_port.i155 = getelementptr inbounds %struct.sockaddr_in6, ptr %mapped_sockaddr, i32 0, i32 1
  %30 = ptrtoint ptr %sin6_port.i155 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sin6_port.i155, align 2
  %conv20.i156 = zext i16 %31 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28, ptr noundef %sin6_addr.i154, i32 noundef %conv20.i156, i32 noundef %conv20.i156) #11
  br label %iwpm_print_sockaddr.exit158

iwpm_print_sockaddr.exit158:                      ; preds = %if.then19.i157, %sw.bb6.i153, %if.then.i152, %sw.bb.i148, %iwpm_print_sockaddr.exit.iwpm_print_sockaddr.exit158_crit_edge
  %inc45 = add i32 %mapping_num.1207, 1
  %32 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nlh, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add = add i32 %35, %nlmsg_bytes.1206
  %sub = sub i32 3840, %add
  %mul = shl i32 %35, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp47 = icmp ult i32 %sub, %mul
  br i1 %cmp47, label %if.then49, label %iwpm_print_sockaddr.exit158.for.inc_crit_edge

iwpm_print_sockaddr.exit158.for.inc_crit_edge:    ; preds = %iwpm_print_sockaddr.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then49:                                        ; preds = %iwpm_print_sockaddr.exit158
  %inc50 = add i32 %skb_num.1208, 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_mapinfo_lock, i32 noundef %flags.1204) #11
  %call51 = call fastcc i32 @send_nlmsg_done(ptr noundef %skb.1209, i8 noundef zeroext %nl_client, i32 noundef %iwpm_pid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then49.do.end94_crit_edge

if.then49.do.end94_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

if.end54:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc50)
  %cmp55 = icmp eq i32 %inc50, 20
  br i1 %cmp55, label %if.end54.do.end94_crit_edge, label %if.end58

if.end54.do.end94_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

if.end58:                                         ; preds = %if.end54
  %call.i.i159 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 3840, i32 noundef 2592) #11
  %tobool60.not = icmp eq ptr %call.i.i159, null
  br i1 %tobool60.not, label %if.end58.do.end94_crit_edge, label %do.body64

if.end58.do.end94_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

do.body64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call71 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_mapinfo_lock) #11
  br label %for.inc

for.inc:                                          ; preds = %do.body64, %iwpm_print_sockaddr.exit158.for.inc_crit_edge, %for.body13.for.inc_crit_edge
  %ret.3 = phi i32 [ %ret.1202, %for.body13.for.inc_crit_edge ], [ 0, %do.body64 ], [ 0, %iwpm_print_sockaddr.exit158.for.inc_crit_edge ]
  %err_str.2 = phi ptr [ %err_str.1203, %for.body13.for.inc_crit_edge ], [ @.str.26, %do.body64 ], [ @.str.26, %iwpm_print_sockaddr.exit158.for.inc_crit_edge ]
  %flags.2 = phi i32 [ %flags.1204, %for.body13.for.inc_crit_edge ], [ %call71, %do.body64 ], [ %flags.1204, %iwpm_print_sockaddr.exit158.for.inc_crit_edge ]
  %nlmsg_bytes.2 = phi i32 [ %nlmsg_bytes.1206, %for.body13.for.inc_crit_edge ], [ 0, %do.body64 ], [ %add, %iwpm_print_sockaddr.exit158.for.inc_crit_edge ]
  %mapping_num.2 = phi i32 [ %mapping_num.1207, %for.body13.for.inc_crit_edge ], [ %inc45, %do.body64 ], [ %inc45, %iwpm_print_sockaddr.exit158.for.inc_crit_edge ]
  %skb_num.2 = phi i32 [ %skb_num.1208, %for.body13.for.inc_crit_edge ], [ %inc50, %do.body64 ], [ %skb_num.1208, %iwpm_print_sockaddr.exit158.for.inc_crit_edge ]
  %skb.2 = phi ptr [ %skb.1209, %for.body13.for.inc_crit_edge ], [ %call.i.i159, %do.body64 ], [ %skb.1209, %iwpm_print_sockaddr.exit158.for.inc_crit_edge ]
  %36 = ptrtoint ptr %map_info.0211 to i32
  call void @__asan_load4_noabort(i32 %36)
  %map_info.0 = load ptr, ptr %map_info.0211, align 4
  %tobool12.not = icmp eq ptr %map_info.0, null
  br i1 %tobool12.not, label %for.inc.for.inc87_crit_edge, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.inc.for.inc87_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc87

for.inc87:                                        ; preds = %for.inc.for.inc87_crit_edge, %for.body.for.inc87_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0218, %for.body.for.inc87_crit_edge ], [ %ret.3, %for.inc.for.inc87_crit_edge ]
  %err_str.1.lcssa = phi ptr [ %err_str.0219, %for.body.for.inc87_crit_edge ], [ %err_str.2, %for.inc.for.inc87_crit_edge ]
  %flags.1.lcssa = phi i32 [ %flags.0220, %for.body.for.inc87_crit_edge ], [ %flags.2, %for.inc.for.inc87_crit_edge ]
  %nlmsg_bytes.1.lcssa = phi i32 [ %nlmsg_bytes.0221, %for.body.for.inc87_crit_edge ], [ %nlmsg_bytes.2, %for.inc.for.inc87_crit_edge ]
  %mapping_num.1.lcssa = phi i32 [ %mapping_num.0223, %for.body.for.inc87_crit_edge ], [ %mapping_num.2, %for.inc.for.inc87_crit_edge ]
  %skb_num.1.lcssa = phi i32 [ %skb_num.0224, %for.body.for.inc87_crit_edge ], [ %skb_num.2, %for.inc.for.inc87_crit_edge ]
  %skb.1.lcssa = phi ptr [ %skb.0225, %for.body.for.inc87_crit_edge ], [ %skb.2, %for.inc.for.inc87_crit_edge ]
  %inc88 = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc88, 512
  br i1 %exitcond.not, label %send_mapping_info_exit, label %for.inc87.for.body_crit_edge

for.inc87.for.body_crit_edge:                     ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

send_mapping_info_exit.thread169:                 ; preds = %if.then37.send_mapping_info_exit.thread169_crit_edge, %if.end29.send_mapping_info_exit.thread169_crit_edge, %if.end25.send_mapping_info_exit.thread169_crit_edge, %if.end20.send_mapping_info_exit.thread169_crit_edge
  %ret.4.ph = phi i32 [ -12, %if.end20.send_mapping_info_exit.thread169_crit_edge ], [ %call38, %if.then37.send_mapping_info_exit.thread169_crit_edge ], [ %call30, %if.end29.send_mapping_info_exit.thread169_crit_edge ], [ %call26, %if.end25.send_mapping_info_exit.thread169_crit_edge ]
  %err_str.3.ph = phi ptr [ @.str.25, %if.end20.send_mapping_info_exit.thread169_crit_edge ], [ @.str.26, %if.then37.send_mapping_info_exit.thread169_crit_edge ], [ @.str.26, %if.end29.send_mapping_info_exit.thread169_crit_edge ], [ @.str.26, %if.end25.send_mapping_info_exit.thread169_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_mapinfo_lock, i32 noundef %flags.1204) #11
  br label %do.end94

send_mapping_info_exit:                           ; preds = %for.inc87
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_mapinfo_lock, i32 noundef %flags.1.lcssa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.lcssa)
  %tobool90.not = icmp eq i32 %ret.1.lcssa, 0
  br i1 %tobool90.not, label %if.end97, label %send_mapping_info_exit.do.end94_crit_edge

send_mapping_info_exit.do.end94_crit_edge:        ; preds = %send_mapping_info_exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

do.end94:                                         ; preds = %send_mapping_info_exit.do.end94_crit_edge, %send_mapping_info_exit.thread169, %if.end58.do.end94_crit_edge, %if.end54.do.end94_crit_edge, %if.then49.do.end94_crit_edge, %entry.do.end94_crit_edge
  %skb.4167 = phi ptr [ %skb.1.lcssa, %send_mapping_info_exit.do.end94_crit_edge ], [ %skb.1209, %send_mapping_info_exit.thread169 ], [ null, %entry.do.end94_crit_edge ], [ null, %if.then49.do.end94_crit_edge ], [ null, %if.end54.do.end94_crit_edge ], [ null, %if.end58.do.end94_crit_edge ]
  %err_str.4166 = phi ptr [ %err_str.1.lcssa, %send_mapping_info_exit.do.end94_crit_edge ], [ %err_str.3.ph, %send_mapping_info_exit.thread169 ], [ @.str.24, %entry.do.end94_crit_edge ], [ @.str.24, %if.end58.do.end94_crit_edge ], [ @.str.30, %if.end54.do.end94_crit_edge ], [ @.str.29, %if.then49.do.end94_crit_edge ]
  %ret.5165 = phi i32 [ %ret.1.lcssa, %send_mapping_info_exit.do.end94_crit_edge ], [ %ret.4.ph, %send_mapping_info_exit.thread169 ], [ -12, %entry.do.end94_crit_edge ], [ -12, %if.end58.do.end94_crit_edge ], [ -12, %if.end54.do.end94_crit_edge ], [ %call51, %if.then49.do.end94_crit_edge ]
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %err_str.4166, i32 noundef %ret.5165) #16
  call void @consume_skb(ptr noundef %skb.4167) #11
  br label %cleanup

if.end97:                                         ; preds = %send_mapping_info_exit
  call void @__sanitizer_cov_trace_pc() #13
  %call98 = call fastcc i32 @send_nlmsg_done(ptr noundef %skb.1.lcssa, i8 noundef zeroext %nl_client, i32 noundef %iwpm_pid)
  %call99 = call fastcc i32 @send_mapinfo_num(i32 noundef %mapping_num.1.lcssa, i8 noundef zeroext %nl_client, i32 noundef %iwpm_pid)
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end94
  %retval.0 = phi i32 [ %ret.5165, %do.end94 ], [ %call99, %if.end97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlh) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ibnl_put_attr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_nlmsg_done(ptr noundef %skb, i8 noundef zeroext %nl_client, i32 noundef %iwpm_pid) unnamed_addr #0 align 64 {
entry:
  %nlh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlh) #11
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %nlh, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %nl_client to i32
  %call = call ptr @ibnl_put_msg(ptr noundef nonnull %skb, ptr noundef nonnull %nlh, i32 noundef 0, i32 noundef 0, i32 noundef %conv, i32 noundef 6, i32 noundef 2) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #16
  call void @consume_skb(ptr noundef nonnull %skb) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nlh, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 3, ptr %nlmsg_type, align 4
  %call5 = call i32 @rdma_nl_unicast(ptr noundef nonnull @init_net, ptr noundef nonnull %skb, i32 noundef %iwpm_pid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %do.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call5, %do.end10 ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlh) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_mapinfo_num(i32 noundef %mapping_num, i8 noundef zeroext %nl_client, i32 noundef %iwpm_pid) unnamed_addr #0 align 64 {
entry:
  %mapping_num.addr = alloca i32, align 4
  %nlh = alloca ptr, align 4
  %msg_seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping_num.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mapping_num, ptr %mapping_num.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlh) #11
  %1 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %nlh, align 4, !annotation !141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_seq) #11
  %2 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %msg_seq, align 4, !annotation !141
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 512, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end22_crit_edge, label %if.end.i

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

if.end.i:                                         ; preds = %entry
  %conv = zext i8 %nl_client to i32
  %call1.i = call ptr @ibnl_put_msg(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %nlh, i32 noundef 0, i32 noundef 0, i32 noundef %conv, i32 noundef 7, i32 noundef 1) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #16
  call void @consume_skb(ptr noundef nonnull %call.i.i.i) #11
  br label %do.end22

if.end:                                           ; preds = %if.end.i
  %call.i.i.i37 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @iwpm_admin, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  call void @llvm.prefetch.p0(ptr nonnull @iwpm_admin, i32 1, i32 3, i32 1) #11
  %3 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @iwpm_admin, ptr nonnull @iwpm_admin, i32 1, ptr nonnull elementtype(i32) @iwpm_admin) #11, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  %4 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %asmresult.i.i.i.i.i, ptr %nlmsg_seq, align 4
  %7 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %msg_seq, align 4
  %call2 = call i32 @ibnl_put_attr(ptr noundef nonnull %call.i.i.i, ptr noundef %5, i32 noundef 4, ptr noundef nonnull %msg_seq, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.do.end22_crit_edge

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %call6 = call i32 @ibnl_put_attr(ptr noundef nonnull %call.i.i.i, ptr noundef %9, i32 noundef 4, ptr noundef nonnull %mapping_num.addr, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.do.end22_crit_edge

if.end5.do.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

if.end9:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlh, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.ptr.sub.i, ptr %11, align 4
  %call10 = call i32 @rdma_nl_unicast(ptr noundef nonnull @init_net, ptr noundef nonnull %call.i.i.i, i32 noundef %iwpm_pid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body, label %if.end9.do.end22_crit_edge

if.end9.do.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_mapinfo_num.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_mapinfo_num, %if.then18)) #11
          to label %cleanup [label %if.then18], !srcloc !140

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %mapping_num.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mapping_num.addr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_mapinfo_num.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %16) #11
  br label %cleanup

do.end22:                                         ; preds = %if.end9.do.end22_crit_edge, %if.end5.do.end22_crit_edge, %if.end.do.end22_crit_edge, %do.end.i, %entry.do.end22_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.do.end22_crit_edge ], [ %call6, %if.end5.do.end22_crit_edge ], [ %call10, %if.end9.do.end22_crit_edge ], [ -22, %do.end.i ], [ -22, %entry.do.end22_crit_edge ]
  %err_str.0 = phi ptr [ @.str.50, %if.end.do.end22_crit_edge ], [ @.str.50, %if.end5.do.end22_crit_edge ], [ @.str.35, %if.end9.do.end22_crit_edge ], [ @.str.33, %do.end.i ], [ @.str.33, %entry.do.end22_crit_edge ]
  %skb.0 = phi ptr [ %call.i.i.i, %if.end.do.end22_crit_edge ], [ %call.i.i.i, %if.end5.do.end22_crit_edge ], [ null, %if.end9.do.end22_crit_edge ], [ null, %do.end.i ], [ null, %entry.do.end22_crit_edge ]
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.51, ptr noundef nonnull %err_str.0) #16
  call void @consume_skb(ptr noundef %skb.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then18, %do.body
  %retval.0 = phi i32 [ %ret.0, %do.end22 ], [ 0, %if.then18 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_seq) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlh) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_mapinfo_available() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iwpm_mapinfo_lock) #11
  %0 = load ptr, ptr @iwpm_hash_bucket, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.cond.if.end10_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.if.end10_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hlist_head, ptr %0, i32 %i.013
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %2, null
  br i1 %tobool.not.i.not, label %for.cond, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %for.cond.if.end10_crit_edge, %entry.if.end10_crit_edge
  %full_bucket.0 = phi i32 [ 0, %entry.if.end10_crit_edge ], [ 1, %for.body.if.end10_crit_edge ], [ 0, %for.cond.if.end10_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iwpm_mapinfo_lock, i32 noundef %call2) #11
  ret i32 %full_bucket.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwpm_send_hello(i8 noundef zeroext %nl_client, i32 noundef %iwpm_pid, i16 noundef zeroext %abi_version) local_unnamed_addr #0 align 64 {
entry:
  %abi_version.addr = alloca i16, align 2
  %nlh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abi_version.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %abi_version, ptr %abi_version.addr, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlh) #11
  %1 = ptrtoint ptr %nlh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %nlh, align 4, !annotation !141
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 512, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end19_crit_edge, label %if.end.i

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

if.end.i:                                         ; preds = %entry
  %conv = zext i8 %nl_client to i32
  %call1.i = call ptr @ibnl_put_msg(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %nlh, i32 noundef 0, i32 noundef 0, i32 noundef %conv, i32 noundef 8, i32 noundef 1) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #16
  call void @consume_skb(ptr noundef nonnull %call.i.i.i) #11
  br label %do.end19

if.end:                                           ; preds = %if.end.i
  %call.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @iwpm_admin, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  call void @llvm.prefetch.p0(ptr nonnull @iwpm_admin, i32 1, i32 3, i32 1) #11
  %2 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @iwpm_admin, ptr nonnull @iwpm_admin, i32 1, ptr nonnull elementtype(i32) @iwpm_admin) #11, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  %3 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %asmresult.i.i.i.i.i, ptr %nlmsg_seq, align 4
  %call2 = call i32 @ibnl_put_attr(ptr noundef nonnull %call.i.i.i, ptr noundef %4, i32 noundef 2, ptr noundef nonnull %abi_version.addr, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.do.end19_crit_edge

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nlh, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.ptr.sub.i, ptr %7, align 4
  %call6 = call i32 @rdma_nl_unicast(ptr noundef nonnull @init_net, ptr noundef nonnull %call.i.i.i, i32 noundef %iwpm_pid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body, label %if.end5.do.end19_crit_edge

if.end5.do.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iwpm_send_hello.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iwpm_send_hello, %if.then14)) #11
          to label %cleanup [label %if.then14], !srcloc !140

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %abi_version.addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %abi_version.addr, align 2
  %conv15 = zext i16 %12 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iwpm_send_hello.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %conv15) #11
  br label %cleanup

do.end19:                                         ; preds = %if.end5.do.end19_crit_edge, %if.end.do.end19_crit_edge, %do.end.i, %entry.do.end19_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.do.end19_crit_edge ], [ %call6, %if.end5.do.end19_crit_edge ], [ -22, %do.end.i ], [ -22, %entry.do.end19_crit_edge ]
  %err_str.0 = phi ptr [ @.str.34, %if.end.do.end19_crit_edge ], [ @.str.35, %if.end5.do.end19_crit_edge ], [ @.str.33, %do.end.i ], [ @.str.33, %entry.do.end19_crit_edge ]
  %skb.0 = phi ptr [ %call.i.i.i, %if.end.do.end19_crit_edge ], [ null, %if.end5.do.end19_crit_edge ], [ null, %do.end.i ], [ null, %entry.do.end19_crit_edge ]
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef nonnull %err_str.0) #16
  call void @consume_skb(ptr noundef %skb.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then14, %do.body
  %retval.0 = phi i32 [ %ret.0, %do.end19 ], [ 0, %if.then14 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlh) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_nl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_hash_bucket(ptr nocapture noundef readonly %a_sockaddr, ptr nocapture noundef readonly %b_sockaddr, ptr nocapture noundef writeonly %hash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a_sockaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %a_sockaddr, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %1, label %do.end [
    i16 2, label %if.then
    i16 10, label %if.then7
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %a_sockaddr, i32 0, i32 2
  %arrayidx67.i.i = getelementptr i8, ptr %sin_addr.i, i32 3
  %3 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %4 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038733
  %arrayidx72.i.i = getelementptr i8, ptr %sin_addr.i, i32 2
  %5 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %6 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr i8, ptr %sin_addr.i, i32 1
  %7 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %8 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %9 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sin_addr.i, align 1
  %conv83.i.i = zext i8 %10 to i32
  %add84.i.i = add i32 %add80.i.i, %conv83.i.i
  %xor88.i.i = xor i32 %add84.i.i, -1874655147
  %sub90.i.i = add i32 %xor88.i.i, -407022722
  %xor91.i.i = xor i32 %sub90.i.i, -559038733
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #11
  %sub93.i.i = sub i32 %xor91.i.i, %or.i8.i.i
  %xor94.i.i = xor i32 %sub93.i.i, -1874655147
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #11
  %sub96.i.i = sub i32 %xor94.i.i, %or.i9.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #11
  %sub99.i.i = sub i32 %xor97.i.i, %or.i10.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #11
  %sub102.i.i = sub i32 %xor100.i.i, %or.i11.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #11
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %a_sockaddr, i32 0, i32 1
  %11 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sin_port.i, align 2
  %conv.i = zext i16 %12 to i32
  %sub105.i.i = sub i32 -559038729, %or.i12.i.i
  %add.i.i.i = add i32 %sub105.i.i, %xor103.i.i
  %add1.i.i.i = add nuw nsw i32 %conv.i, -559038729
  %xor.i.i.i = xor i32 %add1.i.i.i, -559038729
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 -559153152, i32 14) #11
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #11
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #11
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #11
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #11
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #11
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #11
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %sin_addr.i28 = getelementptr inbounds %struct.sockaddr_in, ptr %b_sockaddr, i32 0, i32 2
  %arrayidx67.i.i29 = getelementptr i8, ptr %sin_addr.i28, i32 3
  %13 = ptrtoint ptr %arrayidx67.i.i29 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx67.i.i29, align 1
  %conv68.i.i30 = zext i8 %14 to i32
  %shl69.i.i31 = shl nuw i32 %conv68.i.i30, 24
  %add70.i.i32 = add i32 %shl69.i.i31, -559038733
  %arrayidx72.i.i33 = getelementptr i8, ptr %sin_addr.i28, i32 2
  %15 = ptrtoint ptr %arrayidx72.i.i33 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx72.i.i33, align 1
  %conv73.i.i34 = zext i8 %16 to i32
  %shl74.i.i35 = shl nuw nsw i32 %conv73.i.i34, 16
  %add75.i.i36 = add i32 %add70.i.i32, %shl74.i.i35
  %arrayidx77.i.i37 = getelementptr i8, ptr %sin_addr.i28, i32 1
  %17 = ptrtoint ptr %arrayidx77.i.i37 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx77.i.i37, align 1
  %conv78.i.i38 = zext i8 %18 to i32
  %shl79.i.i39 = shl nuw nsw i32 %conv78.i.i38, 8
  %add80.i.i40 = add i32 %add75.i.i36, %shl79.i.i39
  %19 = ptrtoint ptr %sin_addr.i28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sin_addr.i28, align 1
  %conv83.i.i41 = zext i8 %20 to i32
  %add84.i.i42 = add i32 %add80.i.i40, %conv83.i.i41
  %xor88.i.i43 = xor i32 %add84.i.i42, -1874655147
  %sub90.i.i44 = add i32 %xor88.i.i43, -407022722
  %xor91.i.i45 = xor i32 %sub90.i.i44, -559038733
  %or.i8.i.i46 = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i44, i32 %sub90.i.i44, i32 25) #11
  %sub93.i.i47 = sub i32 %xor91.i.i45, %or.i8.i.i46
  %xor94.i.i48 = xor i32 %sub93.i.i47, -1874655147
  %or.i9.i.i49 = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i47, i32 %sub93.i.i47, i32 16) #11
  %sub96.i.i50 = sub i32 %xor94.i.i48, %or.i9.i.i49
  %xor97.i.i51 = xor i32 %sub96.i.i50, %sub90.i.i44
  %or.i10.i.i52 = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i50, i32 %sub96.i.i50, i32 4) #11
  %sub99.i.i53 = sub i32 %xor97.i.i51, %or.i10.i.i52
  %xor100.i.i54 = xor i32 %sub99.i.i53, %sub93.i.i47
  %or.i11.i.i55 = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i53, i32 %sub99.i.i53, i32 14) #11
  %sub102.i.i56 = sub i32 %xor100.i.i54, %or.i11.i.i55
  %xor103.i.i57 = xor i32 %sub102.i.i56, %sub96.i.i50
  %or.i12.i.i58 = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i56, i32 %sub102.i.i56, i32 24) #11
  %sin_port.i59 = getelementptr inbounds %struct.sockaddr_in, ptr %b_sockaddr, i32 0, i32 1
  %21 = ptrtoint ptr %sin_port.i59 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sin_port.i59, align 2
  %conv.i60 = zext i16 %22 to i32
  %sub105.i.i61 = sub i32 -559038729, %or.i12.i.i58
  %add.i.i.i62 = add i32 %sub105.i.i61, %xor103.i.i57
  %add1.i.i.i63 = add nuw nsw i32 %conv.i60, -559038729
  %xor.i.i.i64 = xor i32 %add1.i.i.i63, -559038729
  %or.i.i.i.i65 = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i63, i32 -559153152, i32 14) #11
  %sub.i.i.i66 = sub i32 %xor.i.i.i64, %or.i.i.i.i65
  %xor3.i.i.i67 = xor i32 %add.i.i.i62, %sub.i.i.i66
  %or.i1.i.i.i68 = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i66, i32 %sub.i.i.i66, i32 11) #11
  %sub5.i.i.i69 = sub i32 %xor3.i.i.i67, %or.i1.i.i.i68
  %xor6.i.i.i70 = xor i32 %sub5.i.i.i69, %add1.i.i.i63
  %or.i2.i.i.i71 = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i69, i32 %sub5.i.i.i69, i32 25) #11
  %sub8.i.i.i72 = sub i32 %xor6.i.i.i70, %or.i2.i.i.i71
  %xor9.i.i.i73 = xor i32 %sub8.i.i.i72, %sub.i.i.i66
  %or.i3.i.i.i74 = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i72, i32 %sub8.i.i.i72, i32 16) #11
  %sub11.i.i.i75 = sub i32 %xor9.i.i.i73, %or.i3.i.i.i74
  %xor12.i.i.i76 = xor i32 %sub11.i.i.i75, %sub5.i.i.i69
  %or.i4.i.i.i77 = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i75, i32 %sub11.i.i.i75, i32 4) #11
  %sub14.i.i.i78 = sub i32 %xor12.i.i.i76, %or.i4.i.i.i77
  %xor15.i.i.i79 = xor i32 %sub14.i.i.i78, %sub8.i.i.i72
  %or.i5.i.i.i80 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i78, i32 %sub14.i.i.i78, i32 14) #11
  %sub17.i.i.i81 = sub i32 %xor15.i.i.i79, %or.i5.i.i.i80
  %xor18.i.i.i82 = xor i32 %sub17.i.i.i81, %sub11.i.i.i75
  %or.i6.i.i.i83 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i81, i32 %sub17.i.i.i81, i32 24) #11
  %sub20.i.i.i84 = sub i32 %xor18.i.i.i82, %or.i6.i.i.i83
  br label %if.end12

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call fastcc i32 @iwpm_ipv6_jhash(ptr noundef %a_sockaddr)
  %call9 = tail call fastcc i32 @iwpm_ipv6_jhash(ptr noundef %b_sockaddr)
  br label %if.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.44) #16
  br label %cleanup

if.end12:                                         ; preds = %if.then7, %if.then
  %a_hash.0 = phi i32 [ %sub20.i.i.i, %if.then ], [ %call8, %if.then7 ]
  %b_hash.0 = phi i32 [ %sub20.i.i.i84, %if.then ], [ %call9, %if.then7 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %a_hash.0, i32 %b_hash.0)
  %cmp13 = icmp eq i32 %a_hash.0, %b_hash.0
  br i1 %cmp13, label %if.end12.if.end18_crit_edge, label %if.else16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.else16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add i32 %a_hash.0, -559038729
  %add1.i.i = add i32 %b_hash.0, -559038729
  %xor.i.i = xor i32 %add1.i.i, -559038729
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #11
  %sub.i.i = sub i32 %xor.i.i, %or.i.i.i
  %xor3.i.i = xor i32 %sub.i.i, %add.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #11
  %sub5.i.i = sub i32 %xor3.i.i, %or.i1.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #11
  %sub8.i.i = sub i32 %xor6.i.i, %or.i2.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #11
  %sub11.i.i = sub i32 %xor9.i.i, %or.i3.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #11
  %sub14.i.i = sub i32 %xor12.i.i, %or.i4.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #11
  %sub17.i.i = sub i32 %xor15.i.i, %or.i5.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #11
  %sub20.i.i = sub i32 %xor18.i.i, %or.i6.i.i
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.end12.if.end18_crit_edge
  %storemerge = phi i32 [ %sub20.i.i, %if.else16 ], [ %a_hash.0, %if.end12.if.end18_crit_edge ]
  %23 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %hash, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwpm_ipv6_jhash(ptr nocapture noundef readonly %ipv6_sockaddr) unnamed_addr #8 align 64 {
jhash.exit:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr %struct.sockaddr_in6, ptr %ipv6_sockaddr, i32 0, i32 3
  %0 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %sin6_addr, align 1
  %add2.i = add i32 %1, -559038721
  %add.ptr.i = getelementptr %struct.sockaddr_in6, ptr %ipv6_sockaddr, i32 0, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %3, -559038721
  %add.ptr5.i = getelementptr %struct.sockaddr_in6, ptr %ipv6_sockaddr, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %5, -559038721
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #11
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #11
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #11
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #11
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #11
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #11
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add29.i = add i32 %xor24.i, %add25.i
  %uglygep = getelementptr i8, ptr %ipv6_sockaddr, i32 20
  %arrayidx67.i = getelementptr i8, ptr %sin6_addr, i32 15
  %6 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %7 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %add25.i
  %arrayidx72.i = getelementptr i8, ptr %sin6_addr, i32 14
  %8 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %9 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %add70.i, %shl74.i
  %arrayidx77.i = getelementptr i8, ptr %sin6_addr, i32 13
  %10 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %11 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %add75.i, %shl79.i
  %12 = ptrtoint ptr %uglygep to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %uglygep, align 1
  %conv83.i = zext i8 %13 to i32
  %add84.i = add i32 %add80.i, %conv83.i
  %xor85.i = xor i32 %xor28.i, %add29.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %add29.i, i32 %add29.i, i32 14) #11
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #11
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %add29.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #11
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #11
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #11
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #11
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #11
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %ipv6_sockaddr, i32 0, i32 1
  %14 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sin6_port, align 2
  %conv = zext i16 %15 to i32
  %add.i.i = add i32 %sub105.i, -559038729
  %add1.i.i = add nuw nsw i32 %conv, -559038729
  %xor.i.i = xor i32 %add1.i.i, -559038729
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 -559153152, i32 14) #11
  %sub.i.i = sub i32 %xor.i.i, %or.i.i.i
  %xor3.i.i = xor i32 %sub.i.i, %add.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #11
  %sub5.i.i = sub i32 %xor3.i.i, %or.i1.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #11
  %sub8.i.i = sub i32 %xor6.i.i, %or.i2.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #11
  %sub11.i.i = sub i32 %xor9.i.i, %or.i3.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #11
  %sub14.i.i = sub i32 %xor12.i.i, %or.i4.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #11
  %sub17.i.i = sub i32 %xor15.i.i, %or.i5.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #11
  %sub20.i.i = sub i32 %xor18.i.i, %or.i6.i.i
  ret i32 %sub20.i.i
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !93, !95, !96, !98, !99, !101, !103, !105, !107, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 74, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @iwpm_init.__UNIQUE_ID_ddebug337, !1, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 91, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iwpm_exit.__UNIQUE_ID_ddebug338, !7, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 293, i32 7}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 344, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @iwpm_free_nlmsg_request.__UNIQUE_ID_ddebug339, !13, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 375, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @iwpm_wait_complete_req._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @iwpm_wait_complete_req._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 433, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @iwpm_compare_sockaddr._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @iwpm_compare_sockaddr._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 449, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @iwpm_create_nlmsg._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @iwpm_create_nlmsg._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 463, i32 24}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 468, i32 13}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 474, i32 13}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 479, i32 13}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 484, i32 2}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @iwpm_parse_nlmsg._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @iwpm_parse_nlmsg._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 497, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug340, !45, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 504, i32 3}
!50 = !{ptr @iwpm_print_sockaddr.__UNIQUE_ID_ddebug341, !49, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 652, i32 13}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 667, i32 15}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 670, i32 14}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 696, i32 5}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 698, i32 5}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 713, i32 16}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 718, i32 16}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 735, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @iwpm_send_mapinfo._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @iwpm_send_mapinfo._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 770, i32 13}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 774, i32 12}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 784, i32 13}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 787, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @iwpm_send_hello.__UNIQUE_ID_ddebug343, !77, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 790, i32 2}
!82 = !{ptr @iwpm_send_hello._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @iwpm_send_hello._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @iwpm_hash_bucket, !85, !"iwpm_hash_bucket", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 45, i32 27}
!86 = !{ptr @iwpm_reminfo_bucket, !87, !"iwpm_reminfo_bucket", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 48, i32 27}
!88 = !{ptr @iwpm_admin, !89, !"iwpm_admin", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 51, i32 31}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 46, i32 8}
!92 = !{ptr @iwpm_mapinfo_lock, !91, !"iwpm_mapinfo_lock", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 49, i32 8}
!95 = !{ptr @iwpm_reminfo_lock, !94, !"iwpm_reminfo_lock", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 43, i32 8}
!98 = !{ptr @iwpm_nlmsg_req_lock, !97, !"iwpm_nlmsg_req_lock", i1 false, i1 false}
!99 = !{ptr @iwpm_nlmsg_req_list, !100, !"iwpm_nlmsg_req_list", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 42, i32 8}
!101 = !{ptr @sema_init.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!107 = !{ptr @__nlmsg_parse.__msg, !108, !"__msg", i1 false, i1 false}
!108 = !{!"../include/net/netlink.h", i32 729, i32 3}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 541, i32 3}
!111 = !{ptr @get_hash_bucket._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @get_hash_bucket._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 627, i32 3}
!115 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @send_nlmsg_done._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @send_nlmsg_done._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 634, i32 3}
!120 = !{ptr @send_nlmsg_done._entry.47, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @send_nlmsg_done._entry_ptr.49, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 593, i32 12}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 610, i32 2}
!126 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @send_mapinfo_num.__UNIQUE_ID_ddebug342, !125, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!128 = !{ptr @send_mapinfo_num._entry, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/infiniband/core/iwpm_util.c", i32 613, i32 2}
!130 = !{ptr @send_mapinfo_num._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 2148981878, i64 2148981883, i64 2148981896, i64 2148981940, i64 2148981974, i64 2148981995}
!141 = !{!"auto-init"}
!142 = !{!"branch_weights", i32 2000, i32 1}
!143 = !{i64 2148370031, i64 2148370063, i64 2148370092, i64 2148370126, i64 2148370157, i64 2148370180}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{i64 2148458056}
!146 = !{i64 2148372496, i64 2148372528, i64 2148372557, i64 2148372591, i64 2148372622, i64 2148372645}
!147 = !{i64 2149334170}
!148 = !{i64 2148453936}
!149 = !{i64 2148369221, i64 2148369253, i64 2148369282, i64 2148369316, i64 2148369347, i64 2148369370}
!150 = !{i64 2148454165}
