; ModuleID = '/llk/IR_all_yes/net/nfc/rawsock.c_pt.bc'
source_filename = "../net/nfc/rawsock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nfc_send_to_raw_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_nfc_send_to_raw_sock\09\09\09\09"
module asm "\09.long\09__crc_nfc_send_to_raw_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_send_to_raw_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_send_to_raw_sock\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_send_to_raw_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfc_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_protocol = type { i32, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.70, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.70 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%union.anon.75 = type { i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.nfc_rawsock = type { %struct.sock, ptr, i32, %struct.work_struct, i8 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
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
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.sockaddr_nfc = type { i16, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@raw_sk_list = internal global { %struct.nfc_sock_list, [48 x i8] } { %struct.nfc_sock_list { %struct.hlist_head zeroinitializer, %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_nfc_send_to_raw_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_send_to_raw_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_send_to_raw_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_send_to_raw_sock to i32), ptr @__kstrtab_nfc_send_to_raw_sock, ptr @__kstrtabns_nfc_send_to_raw_sock }, section "___ksymtab+nfc_send_to_raw_sock", align 4
@rawsock_nfc_proto = internal constant { %struct.nfc_protocol, [16 x i8] } { %struct.nfc_protocol { i32 0, ptr @rawsock_proto, ptr null, ptr @rawsock_create }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"raw_sk_list.lock\00", [47 x i8] zeroinitializer }, align 32
@rawsock_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1016, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.70 zeroinitializer, ptr null, [32 x i8] c"NFC_RAW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@rawsock_create.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rawsock_create\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/nfc/rawsock.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sock=%p\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfc: %s: sock=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@rawsock_raw_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 39, ptr null, ptr @rawsock_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @rawsock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rawsock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 39, ptr null, ptr @rawsock_release, ptr @sock_no_bind, ptr @rawsock_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @rawsock_sendmsg, ptr @rawsock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rawsock_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(work_completion)(&((struct nfc_rawsock *) sk)->tx_work)\00", [39 x i8] zeroinitializer }, align 32
@rawsock_release.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rawsock_release\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sock=%p sk=%p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfc: %s: sock=%p sk=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@rawsock_recvmsg.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rawsock_recvmsg\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sock=%p sk=%p len=%zu flags=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfc: %s: sock=%p sk=%p len=%zu flags=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@rawsock_connect.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rawsock_connect\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sock=%p sk=%p flags=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfc: %s: sock=%p sk=%p flags=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@rawsock_connect.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.17, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"addr dev_idx=%u target_idx=%u protocol=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfc: %s: addr dev_idx=%u target_idx=%u protocol=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@rawsock_sendmsg.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rawsock_sendmsg\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sock=%p sk=%p len=%zu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfc: %s: sock=%p sk=%p len=%zu\0A\00", [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rawsock_destruct.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rawsock_destruct\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sk=%p\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfc: %s: sk=%p\0A\00", [16 x i8] zeroinitializer }, align 32
@rawsock_destruct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.3, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nfc: %s: Freeing alive NFC raw socket %p\0A\00", [52 x i8] zeroinitializer }, align 32
@rawsock_destruct._entry_ptr = internal global ptr @rawsock_destruct._entry, section ".printk_index", align 4
@rawsock_tx_work.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rawsock_tx_work\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sk=%p target_idx=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfc: %s: sk=%p target_idx=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@rawsock_write_queue_purge.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.3, ptr @.str.25, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rawsock_write_queue_purge\00", [38 x i8] zeroinitializer }, align 32
@rawsock_data_exchange_complete.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rawsock_data_exchange_complete\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sk=%p err=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfc: %s: sk=%p err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@rawsock_report_error.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.33, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rawsock_report_error\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 5]
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"raw_sk_list\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 18, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"rawsock_nfc_proto\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 400, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 19, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"rawsock_proto\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 394, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 326, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"rawsock_raw_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 284, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"rawsock_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 266, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 350, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 61, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 729, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 247, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 83, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 89, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 209, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 230, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 214, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 304, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 316, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 184, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 38, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 145, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [21 x i8] c"../net/nfc/rawsock.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 48, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_nfc_send_to_raw_sock, ptr @rawsock_destruct._entry, ptr @rawsock_destruct._entry_ptr, ptr @raw_sk_list, ptr @rawsock_nfc_proto, ptr @.str, ptr @rawsock_proto, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rawsock_raw_ops, ptr @rawsock_ops, ptr @rawsock_create.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_sk_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawsock_nfc_proto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawsock_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawsock_raw_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawsock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawsock_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawsock_destruct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_send_to_raw_sock(ptr noundef readonly %dev, ptr noundef %skb, i8 noundef zeroext %payload_type, i8 noundef zeroext %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #7
  %0 = load ptr, ptr @raw_sk_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not5559 = icmp eq ptr %add.ptr, null
  %tobool2.not55 = or i1 %tobool.not, %tobool2.not5559
  br i1 %tobool2.not55, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool7.not = icmp eq ptr %dev, null
  %1 = and i8 %direction, 1
  %shl = shl i8 %payload_type, 1
  %or = or i8 %1, %shl
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb_copy.058 = phi ptr [ null, %for.body.lr.ph ], [ %skb_copy.2, %for.inc.for.body_crit_edge ]
  %sk.056 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr34, %for.inc.for.body_crit_edge ]
  %tobool3.not = icmp eq ptr %skb_copy.058, null
  br i1 %tobool3.not, label %if.then, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %for.body
  %call = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef 2, i32 noundef 2592, i1 noundef zeroext true) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %if.then
  %call6 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 2) #7
  br i1 %tobool7.not, label %if.end.cond.end10_crit_edge, label %cond.true8

if.end.cond.end10_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end10

cond.true8:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  br label %cond.end10

cond.end10:                                       ; preds = %cond.true8, %if.end.cond.end10_crit_edge
  %cond11 = phi i32 [ %3, %cond.true8 ], [ 255, %if.end.cond.end10_crit_edge ]
  %conv = trunc i32 %cond11 to i8
  %4 = ptrtoint ptr %call6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %call6, align 1
  %arrayidx14 = getelementptr i8, ptr %call6, i32 1
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or, ptr %arrayidx14, align 1
  br label %if.end19

if.end19:                                         ; preds = %cond.end10, %for.body.if.end19_crit_edge
  %skb_copy.1 = phi ptr [ %skb_copy.058, %for.body.if.end19_crit_edge ], [ %call, %cond.end10 ]
  %call20 = tail call ptr @skb_clone(ptr noundef nonnull %skb_copy.1, i32 noundef 2592) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.for.inc_crit_edge, label %if.end23

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %sk.056, ptr noundef nonnull %call20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.for.inc_crit_edge, label %if.then26

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call20, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %if.end23.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %skb_copy.2 = phi ptr [ %skb_copy.1, %if.then26 ], [ %skb_copy.1, %if.end23.for.inc_crit_edge ], [ %skb_copy.1, %if.end19.for.inc_crit_edge ], [ null, %if.then.for.inc_crit_edge ]
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk.056, i32 0, i32 15
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool30.not = icmp eq ptr %8, null
  %add.ptr34 = getelementptr i8, ptr %8, i32 -84
  %tobool2.not60 = icmp eq ptr %add.ptr34, null
  %tobool2.not = or i1 %tobool30.not, %tobool2.not60
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %skb_copy.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %skb_copy.2, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #7
  tail call void @kfree_skb_reason(ptr noundef %skb_copy.0.lcssa, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rawsock_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfc_proto_register(ptr noundef nonnull @rawsock_nfc_proto) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_proto_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rawsock_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfc_proto_unregister(ptr noundef nonnull @rawsock_nfc_proto) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawsock_create(ptr noundef %net, ptr noundef %sock, ptr nocapture noundef readonly %nfc_proto, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_create.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_create, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_create.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, ptr noundef %sock) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %do.end.cleanup_crit_edge [
    i16 3, label %if.then14
    i16 5, label %do.end.if.end19_crit_edge
  ]

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %do.end
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns, align 4
  %call15 = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 13) #7
  br i1 %call15, label %if.then14.if.end19_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %do.end.if.end19_crit_edge
  %rawsock_ops.sink = phi ptr [ @rawsock_raw_ops, %if.then14.if.end19_crit_edge ], [ @rawsock_ops, %do.end.if.end19_crit_edge ]
  %ops18 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %5 = ptrtoint ptr %ops18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rawsock_ops.sink, ptr %ops18, align 4
  %proto = getelementptr inbounds %struct.nfc_protocol, ptr %nfc_proto, i32 0, i32 1
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto, align 4
  %call20 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 39, i32 noundef 2592, ptr noundef %7, i32 noundef %kern) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call20) #7
  %8 = ptrtoint ptr %nfc_proto to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nfc_proto, align 4
  %conv24 = trunc i32 %9 to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call20, i32 0, i32 46
  %10 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv24, ptr %sk_protocol, align 4
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call20, i32 0, i32 82
  %11 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rawsock_destruct, ptr %sk_destruct, align 4
  %12 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %sock, align 128
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp27 = icmp eq i16 %14, 3
  br i1 %cmp27, label %if.then29, label %do.body31

if.then29:                                        ; preds = %if.end23
  tail call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #7
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call20, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #7, !srcloc !91
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then29.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !92

if.then29.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then29
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !93

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then29.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then29.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %17 = getelementptr inbounds %struct.sock_common, ptr %call20, i32 0, i32 15
  %18 = load ptr, ptr @raw_sk_list, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %17, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.nfc_sock_link.exit_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.nfc_sock_link.exit_crit_edge:  ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfc_sock_link.exit

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %17, ptr %pprev.i.i.i.i, align 4
  br label %nfc_sock_link.exit

nfc_sock_link.exit:                               ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.nfc_sock_link.exit_crit_edge
  store volatile ptr %17, ptr @raw_sk_list, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call20, i32 0, i32 15, i32 0, i32 1
  %21 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr @raw_sk_list, ptr %pprev34.i.i.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #7
  br label %cleanup

do.body31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %tx_work = getelementptr inbounds %struct.nfc_rawsock, ptr %call20, i32 0, i32 3
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #7
  %22 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %tx_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nfc_rawsock, ptr %call20, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @rawsock_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry35 = getelementptr inbounds %struct.nfc_rawsock, ptr %call20, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i = getelementptr inbounds %struct.nfc_rawsock, ptr %call20, i32 0, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry35, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfc_rawsock, ptr %call20, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @rawsock_tx_work, ptr %func, align 4
  %tx_work_scheduled = getelementptr inbounds %struct.nfc_rawsock, ptr %call20, i32 0, i32 4
  %26 = ptrtoint ptr %tx_work_scheduled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %tx_work_scheduled, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body31, %nfc_sock_link.exit, %if.end19.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -94, %do.end.cleanup_crit_edge ], [ -1, %if.then14.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ 0, %do.body31 ], [ 0, %nfc_sock_link.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rawsock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_destruct.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_destruct, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_destruct.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, ptr noundef %sk) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then4, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.nfc_rawsock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %target_idx = getelementptr inbounds %struct.nfc_rawsock, ptr %sk, i32 0, i32 2
  %4 = ptrtoint ptr %target_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target_idx, align 4
  %call5 = tail call i32 @nfc_deactivate_target(ptr noundef %3, i32 noundef %5, i8 noundef zeroext 0) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %7, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.if.end7_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #7
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end11, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef %sk) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.end7.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rawsock_tx_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -968
  %dev1 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %target_idx2 = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %target_idx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target_idx2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_tx_work.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_tx_work, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_tx_work.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, ptr noundef %add.ptr, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_shutdown = getelementptr i8, ptr %work, i32 -102
  %4 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sk_shutdown, align 2
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rawsock_write_queue_purge(ptr noundef %add.ptr)
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %sk_write_queue = getelementptr i8, ptr %work, i32 -512
  %call9 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #7
  %skc_refcnt.i = getelementptr i8, ptr %work, i32 -868
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !91
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !92

if.end8.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !93

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #7
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %call10 = tail call i32 @nfc_data_exchange(ptr noundef %1, i32 noundef %3, ptr noundef %call9, ptr noundef nonnull @rawsock_data_exchange_complete, ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %sock_hold.exit.cleanup_crit_edge, label %if.then12

sock_hold.exit.cleanup_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %sock_hold.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_report_error.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_tx_work, %if.then.i)) #7
          to label %rawsock_report_error.exit [label %if.then.i], !srcloc !90

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_report_error.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef %add.ptr, i32 noundef %call10) #7
  br label %rawsock_report_error.exit

rawsock_report_error.exit:                        ; preds = %if.then.i, %if.then12
  %9 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %sk_shutdown, align 2
  %sub.i = sub i32 0, %call10
  %sk_err.i = getelementptr i8, ptr %work, i32 -276
  %10 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef %add.ptr) #7
  tail call fastcc void @rawsock_write_queue_purge(ptr noundef %add.ptr) #7
  %call.i.i.i.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !95
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i32, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rawsock_report_error.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i31 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i31, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !93

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %cleanup

if.then.i32:                                      ; preds = %rawsock_report_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @sk_free(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i32, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sock_hold.exit.cleanup_crit_edge, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawsock_release(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_release.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_release, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_release.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef %sock, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp eq i16 %3, 3
  br i1 %cmp, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  tail call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #7
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i.i.not.i.i, label %if.then8.nfc_sock_unlink.exit_crit_edge, label %if.then.i.i.i

if.then8.nfc_sock_unlink.exit_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfc_sock_unlink.exit

if.then.i.i.i:                                    ; preds = %if.then8
  %6 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %5, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %5, ptr %pprev14.i.i.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.if.then.i.i_crit_edge
  %11 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i.i.i.i.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  %12 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !92

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 729, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #7, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.end.i.i.nfc_sock_unlink.exit_crit_edge, !prof !92

if.end.i.i.nfc_sock_unlink.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfc_sock_unlink.exit

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  br label %nfc_sock_unlink.exit

nfc_sock_unlink.exit:                             ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.nfc_sock_unlink.exit_crit_edge, %if.then8.nfc_sock_unlink.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #7
  br label %if.end9

if.end9:                                          ; preds = %nfc_sock_unlink.exit, %if.end6.if.end9_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #7
  %15 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %or.i.i.i = or i32 %17, 1
  store i32 %or.i.i.i, ptr %15, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %18 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sk_socket.i.i, align 8
  %19 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #7
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !95
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !93

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @sk_free(ptr noundef nonnull %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawsock_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #7
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rc, align 4, !annotation !97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_recvmsg.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_recvmsg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_recvmsg.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %sock, ptr noundef %1, i32 noundef %len, i32 noundef %flags) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %flags, i32 noundef %and, ptr noundef nonnull %rc) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rc, align 4
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 6
  %5 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %len)
  %cmp = icmp ugt i32 %6, %len
  br i1 %cmp, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_flags, align 4
  %or = or i32 %8, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %copied.0 = phi i32 [ %len, %if.then9 ], [ %6, %if.end7.if.end10_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call4, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #7
  %9 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i, ptr %rc, align 4
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call4) #7
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool12.not, i32 %copied.0, i32 %11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then6
  %retval.0 = phi i32 [ %spec.select, %if.end10 ], [ %4, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawsock_connect(ptr noundef %sock, ptr noundef readonly %_addr, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_connect.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_connect, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_connect.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef %sock, ptr noundef %1, i32 noundef %flags) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %_addr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp ult i32 %len, 16
  %or.cond = or i1 %tobool4.not, %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %lor.lhs.false5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %do.end
  %2 = ptrtoint ptr %_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 39, i16 %3)
  %cmp6.not = icmp eq i16 %3, 39
  br i1 %cmp6.not, label %do.body10, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body10:                                        ; preds = %lor.lhs.false5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_connect.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_connect, %if.then22)) #7
          to label %do.end25 [label %if.then22], !srcloc !90

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %dev_idx = getelementptr inbounds %struct.sockaddr_nfc, ptr %_addr, i32 0, i32 1
  %4 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_idx, align 4
  %target_idx = getelementptr inbounds %struct.sockaddr_nfc, ptr %_addr, i32 0, i32 2
  %6 = ptrtoint ptr %target_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target_idx, align 4
  %nfc_protocol = getelementptr inbounds %struct.sockaddr_nfc, ptr %_addr, i32 0, i32 3
  %8 = ptrtoint ptr %nfc_protocol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nfc_protocol, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_connect.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #7
  %10 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp26 = icmp eq i32 %11, 3
  br i1 %cmp26, label %do.end25.cleanup.sink.split_crit_edge, label %if.end29

do.end25.cleanup.sink.split_crit_edge:            ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end29:                                         ; preds = %do.end25
  %dev_idx30 = getelementptr inbounds %struct.sockaddr_nfc, ptr %_addr, i32 0, i32 1
  %12 = ptrtoint ptr %dev_idx30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_idx30, align 4
  %call31 = tail call ptr @nfc_get_device(i32 noundef %13) #7
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end29.cleanup.sink.split_crit_edge, label %if.end34

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end29
  %target_idx35 = getelementptr inbounds %struct.sockaddr_nfc, ptr %_addr, i32 0, i32 2
  %14 = ptrtoint ptr %target_idx35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target_idx35, align 4
  %target_next_idx = getelementptr inbounds %struct.nfc_dev, ptr %call31, i32 0, i32 1
  %16 = ptrtoint ptr %target_next_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %target_next_idx, align 4
  %sub = add i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub)
  %cmp36 = icmp ugt i32 %15, %sub
  br i1 %cmp36, label %if.end34.put_dev_crit_edge, label %lor.lhs.false38

if.end34.put_dev_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_dev

lor.lhs.false38:                                  ; preds = %if.end34
  %n_targets = getelementptr inbounds %struct.nfc_dev, ptr %call31, i32 0, i32 3
  %18 = ptrtoint ptr %n_targets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_targets, align 4
  %sub41 = sub i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub41)
  %cmp42 = icmp ult i32 %15, %sub41
  br i1 %cmp42, label %lor.lhs.false38.put_dev_crit_edge, label %if.end45

lor.lhs.false38.put_dev_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_dev

if.end45:                                         ; preds = %lor.lhs.false38
  %nfc_protocol47 = getelementptr inbounds %struct.sockaddr_nfc, ptr %_addr, i32 0, i32 3
  %20 = ptrtoint ptr %nfc_protocol47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nfc_protocol47, align 4
  %call48 = tail call i32 @nfc_activate_target(ptr noundef nonnull %call31, i32 noundef %15, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.put_dev_crit_edge

if.end45.put_dev_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_dev

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %dev52 = getelementptr inbounds %struct.nfc_rawsock, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %dev52, align 8
  %23 = ptrtoint ptr %target_idx35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %target_idx35, align 4
  %target_idx54 = getelementptr inbounds %struct.nfc_rawsock, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %target_idx54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %target_idx54, align 4
  %26 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %sock, align 128
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %27)
  store volatile i8 1, ptr %skc_state, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %28 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_state_change, align 4
  tail call void %29(ptr noundef %1) #7
  br label %cleanup.sink.split

put_dev:                                          ; preds = %if.end45.put_dev_crit_edge, %lor.lhs.false38.put_dev_crit_edge, %if.end34.put_dev_crit_edge
  %rc.0 = phi i32 [ %call48, %if.end45.put_dev_crit_edge ], [ -22, %lor.lhs.false38.put_dev_crit_edge ], [ -22, %if.end34.put_dev_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call31, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %put_dev, %if.end51, %if.end29.cleanup.sink.split_crit_edge, %do.end25.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end51 ], [ %rc.0, %put_dev ], [ -106, %do.end25.cleanup.sink.split_crit_edge ], [ -19, %if.end29.cleanup.sink.split_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawsock_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %dev2 = getelementptr inbounds %struct.nfc_rawsock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #7
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rc, align 4, !annotation !97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_sendmsg.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_sendmsg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_sendmsg.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, ptr noundef %sock, ptr noundef %1, i32 noundef %len) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.not = icmp eq i32 %8, 3
  br i1 %cmp.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_flags, align 4
  %call10 = call ptr @nfc_alloc_send_skb(ptr noundef %3, ptr noundef %1, i32 noundef %10, i32 noundef %len, ptr noundef nonnull %rc) #7
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rc, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = call ptr @skb_put(ptr noundef nonnull %call10, i32 noundef %len) #7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end13
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !93

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @__check_object_size(ptr noundef %call14, i32 noundef %len, i1 noundef zeroext false) #7
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call14, i32 noundef %len, ptr noundef %msg_iter.i) #7
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %len
  br i1 %cmp.i.i, label %if.end18, label %if.then17, !prof !93

if.then17:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #7
  %13 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -14, ptr %rc, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call10, i32 noundef 0) #7
  %14 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rc, align 4
  br label %cleanup

if.end18:                                         ; preds = %copy_from_iter.exit.i.i
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rc, align 4
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26
  %lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %sk_write_queue, ptr %call10, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call10, i32 0, i32 1
  %20 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %prev10.i.i.i, align 4
  store volatile ptr %call10, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call10, ptr %18, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26, i32 1
  %22 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %tx_work_scheduled = getelementptr inbounds %struct.nfc_rawsock, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %tx_work_scheduled to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx_work_scheduled, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  br i1 %tobool20.not, label %if.then21, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %tx_work = getelementptr inbounds %struct.nfc_rawsock, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %tx_work) #7
  %27 = ptrtoint ptr %tx_work_scheduled to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %tx_work_scheduled, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then17, %if.then12, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then12 ], [ %15, %if.then17 ], [ %len, %if.end24 ], [ -95, %do.end.cleanup_crit_edge ], [ -107, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_activate_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_send_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_deactivate_target(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rawsock_write_queue_purge(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_write_queue_purge.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_write_queue_purge, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_write_queue_purge.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.31, ptr noundef %sk) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %0 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %1, %sk_write_queue
  %tobool.not.i13.i = icmp eq ptr %1, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %do.end.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

do.end.__skb_queue_purge.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %do.end
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %12, %while.body.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #7
  %11 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.i.i = icmp eq ptr %12, %sk_write_queue
  %tobool.not.i1.i = icmp eq ptr %12, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %do.end.__skb_queue_purge.exit_crit_edge
  %tx_work_scheduled = getelementptr inbounds %struct.nfc_rawsock, ptr %sk, i32 0, i32 4
  %13 = ptrtoint ptr %tx_work_scheduled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %tx_work_scheduled, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_data_exchange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rawsock_data_exchange_complete(ptr noundef %context, ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !93

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/nfc/rawsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #7, !srcloc !99
  unreachable

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_data_exchange_complete.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_data_exchange_complete, %if.then18)) #7
          to label %do.end21 [label %if.then18], !srcloc !90

if.then18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_data_exchange_complete.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef %context, i32 noundef %err) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool22.not = icmp eq i32 %err, 0
  br i1 %tobool22.not, label %if.end24, label %do.end21.error_crit_edge

do.end21.error_crit_edge:                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end24:                                         ; preds = %do.end21
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call.i, align 1
  %call29 = tail call i32 @sock_queue_rcv_skb(ptr noundef %context, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %error_skb

if.end32:                                         ; preds = %if.end24
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %context, i32 0, i32 26
  %lock = getelementptr inbounds %struct.sock, ptr %context, i32 0, i32 26, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %5 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.not = icmp eq ptr %6, %sk_write_queue
  br i1 %cmp.i.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %tx_work = getelementptr inbounds %struct.nfc_rawsock, ptr %context, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %tx_work) #7
  br label %if.end38

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %tx_work_scheduled = getelementptr inbounds %struct.nfc_rawsock, ptr %context, i32 0, i32 4
  %8 = ptrtoint ptr %tx_work_scheduled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_work_scheduled, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %context, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !95
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !93

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @sk_free(ptr noundef %context) #7
  br label %cleanup

error_skb:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %error

error:                                            ; preds = %error_skb, %do.end21.error_crit_edge
  %err.addr.1 = phi i32 [ %err, %do.end21.error_crit_edge ], [ %call29, %error_skb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rawsock_report_error.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rawsock_data_exchange_complete, %if.then.i56)) #7
          to label %rawsock_report_error.exit [label %if.then.i56], !srcloc !90

if.then.i56:                                      ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rawsock_report_error.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef %context, i32 noundef %err.addr.1) #7
  br label %rawsock_report_error.exit

rawsock_report_error.exit:                        ; preds = %if.then.i56, %error
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %context, i32 0, i32 66
  %10 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %sk_shutdown.i, align 2
  %sub.i = sub i32 0, %err.addr.1
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %context, i32 0, i32 51
  %11 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef %context) #7
  tail call fastcc void @rawsock_write_queue_purge(ptr noundef %context) #7
  %skc_refcnt.i57 = getelementptr inbounds %struct.sock_common, ptr %context, i32 0, i32 19
  %call.i.i.i.i.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i57, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i57, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i57, ptr %skc_refcnt.i57, i32 1, ptr elementtype(i32) %skc_refcnt.i57) #7, !srcloc !95
  %asmresult.i.i.i.i.i.i.i59 = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i59)
  %cmp.i.i.i.i60 = icmp eq i32 %asmresult.i.i.i.i.i.i.i59, 1
  br i1 %cmp.i.i.i.i60, label %if.then.i64, label %if.end5.i.i.i.i62

if.end5.i.i.i.i62:                                ; preds = %rawsock_report_error.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i59)
  %.not.i.i.i.i61 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i59, 0
  br i1 %.not.i.i.i.i61, label %if.end5.i.i.i.i62.cleanup_crit_edge, label %if.then10.i.i.i.i63, !prof !93

if.end5.i.i.i.i62.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i63:                              ; preds = %if.end5.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i57, i32 noundef 3) #7
  br label %cleanup

if.then.i64:                                      ; preds = %rawsock_report_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @sk_free(ptr noundef %context) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i64, %if.then10.i.i.i.i63, %if.end5.i.i.i.i62.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__ksymtab_nfc_send_to_raw_sock, !1, !"__ksymtab_nfc_send_to_raw_sock", i1 false, i1 false}
!1 = !{!"../net/nfc/rawsock.c", i32 392, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/nfc/rawsock.c", i32 19, i32 10}
!4 = !{ptr @raw_sk_list, !5, !"raw_sk_list", i1 false, i1 false}
!5 = !{!"../net/nfc/rawsock.c", i32 18, i32 29}
!6 = !{ptr @rawsock_nfc_proto, !7, !"rawsock_nfc_proto", i1 false, i1 false}
!7 = !{!"../net/nfc/rawsock.c", i32 400, i32 34}
!8 = !{ptr @rawsock_proto, !9, !"rawsock_proto", i1 false, i1 false}
!9 = !{!"../net/nfc/rawsock.c", i32 394, i32 21}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/nfc/rawsock.c", i32 326, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rawsock_create.__UNIQUE_ID_ddebug467, !11, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!16 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rawsock_create.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/nfc/rawsock.c", i32 350, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rawsock_raw_ops, !21, !"rawsock_raw_ops", i1 false, i1 false}
!21 = !{!"../net/nfc/rawsock.c", i32 284, i32 31}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/nfc/rawsock.c", i32 61, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rawsock_release.__UNIQUE_ID_ddebug459, !23, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/net/sock.h", i32 729, i32 3}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/nfc/rawsock.c", i32 247, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rawsock_recvmsg.__UNIQUE_ID_ddebug465, !30, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!33 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rawsock_ops, !35, !"rawsock_ops", i1 false, i1 false}
!35 = !{!"../net/nfc/rawsock.c", i32 266, i32 31}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/nfc/rawsock.c", i32 83, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rawsock_connect.__UNIQUE_ID_ddebug460, !37, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/nfc/rawsock.c", i32 89, i32 2}
!43 = !{ptr @rawsock_connect.__UNIQUE_ID_ddebug461, !42, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!44 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/nfc/rawsock.c", i32 209, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rawsock_sendmsg.__UNIQUE_ID_ddebug464, !46, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!49 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/nfc/rawsock.c", i32 304, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rawsock_destruct.__UNIQUE_ID_ddebug466, !56, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!59 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/nfc/rawsock.c", i32 316, i32 3}
!62 = !{ptr @rawsock_destruct._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rawsock_destruct._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/nfc/rawsock.c", i32 184, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rawsock_tx_work.__UNIQUE_ID_ddebug463, !65, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!68 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/nfc/rawsock.c", i32 38, i32 2}
!71 = !{ptr @rawsock_write_queue_purge.__UNIQUE_ID_ddebug457, !70, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/nfc/rawsock.c", i32 145, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rawsock_data_exchange_complete.__UNIQUE_ID_ddebug462, !73, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!76 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/nfc/rawsock.c", i32 48, i32 2}
!79 = !{ptr @rawsock_report_error.__UNIQUE_ID_ddebug458, !78, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148746798, i64 2148746803, i64 2148746816, i64 2148746860, i64 2148746894, i64 2148746915}
!91 = !{i64 2148266513, i64 2148266545, i64 2148266574, i64 2148266608, i64 2148266639, i64 2148266662}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148354514}
!95 = !{i64 2148268978, i64 2148269010, i64 2148269039, i64 2148269073, i64 2148269104, i64 2148269127}
!96 = !{i64 2149292332}
!97 = !{!"auto-init"}
!98 = !{i8 0, i8 2}
!99 = !{i64 2156858006, i64 2156858488, i64 2156858043, i64 2156858099, i64 2156858133, i64 2156858157, i64 2156858198, i64 2156858219, i64 2156858247, i64 2156858281}
