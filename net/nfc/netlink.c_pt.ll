; ModuleID = '/llk/IR_all_yes/net/nfc/netlink.c_pt.bc'
source_filename = "../net/nfc/netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__nfc_alloc_vendor_cmd_reply_skb\22, \22a\22\09"
module asm "\09.weak\09__crc___nfc_alloc_vendor_cmd_reply_skb\09\09\09\09"
module asm "\09.long\09__crc___nfc_alloc_vendor_cmd_reply_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nfc_alloc_vendor_cmd_reply_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__nfc_alloc_vendor_cmd_reply_skb\22\09\09\09\09\09"
module asm "__kstrtabns___nfc_alloc_vendor_cmd_reply_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nfc_vendor_cmd_reply\22, \22a\22\09"
module asm "\09.weak\09__crc_nfc_vendor_cmd_reply\09\09\09\09"
module asm "\09.long\09__crc_nfc_vendor_cmd_reply\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_vendor_cmd_reply:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_vendor_cmd_reply\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_vendor_cmd_reply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.nfc_llcp_sdp_tlv = type { ptr, i8, ptr, i8, i8, i32, %struct.hlist_node }
%struct.nfc_se = type { %struct.list_head, i32, i16, i16 }
%struct.nfc_evt_transaction = type <{ i32, [16 x i8], i8, [0 x i8] }>
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.134 }
%union.anon.134 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_llcp_local = type { %struct.list_head, ptr, %struct.kref, %struct.mutex, %struct.timer_list, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, ptr, %struct.work_struct, i32, i8, i8, i8, i8, i16, i32, i32, i32, [16 x %struct.atomic_t], [48 x i8], i8, [48 x i8], i8, i8, i16, i16, i8, i16, %struct.mutex, %struct.hlist_head, %struct.timer_list, %struct.work_struct, i8, %struct.llcp_sock_list, %struct.llcp_sock_list, %struct.llcp_sock_list }
%struct.llcp_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.nfc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.se_io_ctx = type { i32, i32 }
%struct.nfc_vendor_cmd = type { i32, i32, ptr }
%struct.netlink_notify = type { ptr, i32, i32 }
%struct.urelease_work = type { %struct.work_struct, i32 }
%struct.class_dev_iter = type { %struct.klist_iter, ptr }
%struct.klist_iter = type { ptr, ptr }

@nfc_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"nfc\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 0, i8 0, i8 19, i8 0, i8 1, ptr @nfc_genl_policy, ptr null, ptr null, ptr @nfc_genl_ops, ptr null, ptr @nfc_genl_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@nfc_genl_llc_send_sdres.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfc_genl_llc_send_sdres\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/nfc/netlink.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uri: %s, sap: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfc: %s: uri: %s, sap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nfc_genl_dep_link_up_event.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfc_genl_dep_link_up_event\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DEP link is up\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfc: %s: DEP link is up\0A\00", [39 x i8] zeroinitializer }, align 32
@nfc_genl_dep_link_down_event.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfc_genl_dep_link_down_event\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEP link is down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfc: %s: DEP link is down\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab___nfc_alloc_vendor_cmd_reply_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___nfc_alloc_vendor_cmd_reply_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___nfc_alloc_vendor_cmd_reply_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nfc_alloc_vendor_cmd_reply_skb to i32), ptr @__kstrtab___nfc_alloc_vendor_cmd_reply_skb, ptr @__kstrtabns___nfc_alloc_vendor_cmd_reply_skb }, section "___ksymtab+__nfc_alloc_vendor_cmd_reply_skb", align 4
@__kstrtab_nfc_vendor_cmd_reply = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_vendor_cmd_reply = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_vendor_cmd_reply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_vendor_cmd_reply to i32), ptr @__kstrtab_nfc_vendor_cmd_reply, ptr @__kstrtabns_nfc_vendor_cmd_reply }, section "___ksymtab+nfc_vendor_cmd_reply", align 4
@nfc_genl_data_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&genl_data->genl_data_mutex\00", [36 x i8] zeroinitializer }, align 32
@nl_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nfc_genl_rcv_nl_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@nfc_genl_policy = internal constant { [32 x %struct.nla_policy], [64 x i8] } { [32 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 8, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 32, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.76 zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@nfc_genl_ops = internal constant { [19 x %struct.genl_ops], [140 x i8] } { [19 x %struct.genl_ops] [%struct.genl_ops { ptr @nfc_genl_get_device, ptr null, ptr @nfc_genl_dump_devices, ptr @nfc_genl_dump_devices_done, ptr null, i32 0, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @nfc_genl_dev_up, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_dev_down, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_start_poll, ptr null, ptr null, ptr null, ptr null, i32 0, i8 6, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_stop_poll, ptr null, ptr null, ptr null, ptr null, i32 0, i8 7, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_dep_link_up, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_dep_link_down, ptr null, ptr null, ptr null, ptr null, i32 0, i8 5, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @nfc_genl_dump_targets, ptr @nfc_genl_dump_targets_done, ptr null, i32 0, i8 8, i8 0, i8 0, i8 5 }, %struct.genl_ops { ptr @nfc_genl_llc_get_params, ptr null, ptr null, ptr null, ptr null, i32 0, i8 15, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @nfc_genl_llc_set_params, ptr null, ptr null, ptr null, ptr null, i32 0, i8 16, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_llc_sdreq, ptr null, ptr null, ptr null, ptr null, i32 0, i8 19, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_fw_download, ptr null, ptr null, ptr null, ptr null, i32 0, i8 21, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_enable_se, ptr null, ptr null, ptr null, ptr null, i32 0, i8 17, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_disable_se, ptr null, ptr null, ptr null, ptr null, i32 0, i8 18, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @nfc_genl_dump_ses, ptr @nfc_genl_dump_ses_done, ptr null, i32 0, i8 26, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @nfc_genl_se_io, ptr null, ptr null, ptr null, ptr null, i32 0, i8 27, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_activate_target, ptr null, ptr null, ptr null, ptr null, i32 0, i8 28, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_vendor_cmd, ptr null, ptr null, ptr null, ptr null, i32 0, i8 29, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_deactivate_target, ptr null, ptr null, ptr null, ptr null, i32 0, i8 30, i8 0, i8 1, i8 3 }], [140 x i8] zeroinitializer }, align 32
@nfc_genl_mcgrps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"events\00\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@nfc_devlist_mutex = external dso_local global %struct.mutex, align 4
@nfc_devlist_generation = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfc_class = external dso_local global %struct.class, align 4
@nfc_genl_start_poll.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfc_genl_start_poll\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Poll start\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfc: %s: Poll start\0A\00", [43 x i8] zeroinitializer }, align 32
@nfc_genl_dep_link_up.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfc_genl_dep_link_up\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DEP link up\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfc: %s: DEP link up\0A\00", [42 x i8] zeroinitializer }, align 32
@nfc_sdp_genl_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 251, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nfc_se_io.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfc_se_io\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s se index %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfc: %s: %s se index %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nfc_genl_rcv_nl_event.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfc_genl_rcv_nl_event\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NETLINK_URELEASE event from id %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfc: %s: NETLINK_URELEASE event from id %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nfc_genl_rcv_nl_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(work_completion)(&w->w)\00", [39 x i8] zeroinitializer }, align 32
@nfc_urelease_event_work.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfc_urelease_event_work\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"portid %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfc: %s: portid %d\0A\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 388, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 653, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 691, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1854, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"nl_notifier\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1862, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 308, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"nfc_genl_policy\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 30, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"nfc_genl_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1659, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"nfc_genl_mcgrps\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 25, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 991, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 804, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 938, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"nfc_sdp_genl_policy\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 55, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1412, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1838, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1842, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [21 x i8] c"../net/nfc/netlink.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1802, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab___nfc_alloc_vendor_cmd_reply_skb, ptr @__ksymtab_nfc_vendor_cmd_reply, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @nfc_genl_data_init.__key, ptr @.str.11, ptr @nl_notifier, ptr @.str.12, ptr @nfc_genl_policy, ptr @nfc_genl_ops, ptr @nfc_genl_mcgrps, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @nfc_sdp_genl_policy, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @nfc_genl_rcv_nl_event.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_genl_data_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_genl_policy to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_genl_ops to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_genl_mcgrps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_sdp_genl_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_genl_rcv_nl_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_targets_found(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %genl_data = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %genl_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %genl_data, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 9) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end8:                                          ; preds = %if.end4
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end8
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %9, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %8, i32 noundef 2592) #8
  %11 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

free_msg:                                         ; preds = %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ %11, %if.end39.i.i ], [ -22, %if.then.i.i ], [ -22, %land.rhs.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @genlmsg_multicast(ptr noundef %skb, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i = icmp eq i8 %0, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge, label %if.then.i, !prof !78

land.rhs.i.genlmsg_multicast_netns.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %genlmsg_multicast_netns.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %genlmsg_multicast_netns.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %3 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %dst_group.i.i, align 8
  %call.i.i = tail call i32 @netlink_broadcast(ptr noundef %2, ptr noundef %skb, i32 noundef 0, i32 noundef %1, i32 noundef %flags) #8
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  br label %genlmsg_multicast_netns.exit

genlmsg_multicast_netns.exit:                     ; preds = %if.end39.i, %if.then.i, %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.end39.i ], [ -22, %if.then.i ], [ -22, %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_target_lost(ptr nocapture noundef readonly %dev, i32 noundef %target_idx) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 12) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end4.nfc_device_name.exit_crit_edge

if.end4.nfc_device_name.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfc_device_name.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  br label %nfc_device_name.exit

nfc_device_name.exit:                             ; preds = %if.end.i.i, %if.end4.nfc_device_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end4.nfc_device_name.exit_crit_edge ]
  %call.i = tail call i32 @strlen(ptr noundef %retval.0.i.i) #11
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef %add.i, ptr noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %nfc_device_name.exit.free_msg_crit_edge

nfc_device_name.exit.free_msg_crit_edge:          ; preds = %nfc_device_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %nfc_device_name.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %target_idx, ptr %tmp.i, align 4
  %call.i21 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool9.not = icmp eq i32 %call.i21, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false.free_msg_crit_edge

lor.lhs.false.free_msg_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end11:                                         ; preds = %lor.lhs.false
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %8 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end11
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %10, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %9, i32 noundef 3264) #8
  br label %cleanup

free_msg:                                         ; preds = %lor.lhs.false.free_msg_crit_edge, %nfc_device_name.exit.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_tm_activated(ptr nocapture noundef readonly %dev, i32 noundef %protocol) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i22 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 13) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i22) #8
  %3 = ptrtoint ptr %tmp.i22 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %protocol, ptr %tmp.i22, align 4
  %call.i23 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool10.not = icmp eq i32 %call.i23, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.free_msg_crit_edge

if.end8.free_msg_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end12:                                         ; preds = %if.end8
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end12
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %9, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %8, i32 noundef 3264) #8
  br label %cleanup

free_msg:                                         ; preds = %if.end8.free_msg_crit_edge, %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_tm_deactivated(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 14) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end8:                                          ; preds = %if.end4
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i.i = icmp eq i8 %6, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end8
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %8, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %7, i32 noundef 3264) #8
  br label %cleanup

free_msg:                                         ; preds = %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_device_added(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 10) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @nfc_genl_setup_device_added(ptr noundef %dev, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end8:                                          ; preds = %if.end4
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end8
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %6 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = tail call i32 @netlink_broadcast(ptr noundef %5, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %4, i32 noundef 3264) #8
  br label %cleanup

free_msg:                                         ; preds = %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfc_genl_setup_device_added(ptr nocapture noundef readonly %dev, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  %tmp.i27 = alloca i8, align 1
  %tmp.i25 = alloca i8, align 1
  %tmp.i23 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.nfc_device_name.exit_crit_edge

entry.nfc_device_name.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfc_device_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  br label %nfc_device_name.exit

nfc_device_name.exit:                             ; preds = %if.end.i.i, %entry.nfc_device_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %entry.nfc_device_name.exit_crit_edge ]
  %call.i = tail call i32 @strlen(ptr noundef %retval.0.i.i) #11
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef %add.i, ptr noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %nfc_device_name.exit.return_crit_edge

nfc_device_name.exit.return_crit_edge:            ; preds = %nfc_device_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %nfc_device_name.exit
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i22 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool3.not = icmp eq i32 %call.i22, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %supported_protocols = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 13
  %7 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supported_protocols, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i23) #8
  %9 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i23, align 4
  %call.i24 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool6.not = icmp eq i32 %call.i24, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.return_crit_edge

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %dev_up = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %dev_up to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_up, align 8, !range !79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i25) #8
  %12 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tmp.i25, align 1
  %call.i26 = call i32 @nla_put(ptr noundef %msg, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %tmp.i25) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool10.not = icmp eq i32 %call.i26, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false7.return_crit_edge

lor.lhs.false7.return_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  %rf_mode = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rf_mode, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i27) #8
  %15 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tmp.i27, align 1
  %call.i28 = call i32 @nla_put(ptr noundef %msg, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %tmp.i27) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool13.not = icmp ne i32 %call.i28, 0
  %spec.select = sext i1 %tobool13.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false11, %lor.lhs.false7.return_crit_edge, %lor.lhs.false4.return_crit_edge, %lor.lhs.false.return_crit_edge, %nfc_device_name.exit.return_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false7.return_crit_edge ], [ -1, %lor.lhs.false4.return_crit_edge ], [ -1, %lor.lhs.false.return_crit_edge ], [ -1, %nfc_device_name.exit.return_crit_edge ], [ %spec.select, %lor.lhs.false11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_device_removed(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 11) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end8:                                          ; preds = %if.end4
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i.i = icmp eq i8 %6, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end8
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %8, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %7, i32 noundef 3264) #8
  br label %cleanup

free_msg:                                         ; preds = %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_llc_send_sdres(ptr nocapture noundef readonly %dev, ptr noundef %sdres_list) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i90 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 20) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end8:                                          ; preds = %if.end4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 19, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp103 = icmp eq ptr %4, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp103
  br i1 %cmp, label %if.end8.free_msg_crit_edge, label %if.end11

if.end8.free_msg_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end11:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %sdres_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdres_list, align 4
  %tobool12.not = icmp eq ptr %6, null
  %add.ptr = getelementptr i8, ptr %6, i32 -20
  %tobool14.not105108 = icmp eq ptr %add.ptr, null
  %tobool14.not105 = or i1 %tobool12.not, %tobool14.not105108
  br i1 %tobool14.not105, label %if.end11.for.end_crit_edge, label %if.end11.land.rhs_crit_edge

if.end11.land.rhs_crit_edge:                      ; preds = %if.end11
  br label %land.rhs

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %hlist_del.exit.land.rhs_crit_edge, %if.end11.land.rhs_crit_edge
  %sdres.0107 = phi ptr [ %add.ptr47, %hlist_del.exit.land.rhs_crit_edge ], [ %add.ptr, %if.end11.land.rhs_crit_edge ]
  %i.0106 = phi i32 [ %inc, %hlist_del.exit.land.rhs_crit_edge ], [ 1, %if.end11.land.rhs_crit_edge ]
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdres.0107, i32 0, i32 6
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_genl_llc_send_sdres.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_genl_llc_send_sdres, %if.then22)) #8
          to label %do.end [label %if.then22], !srcloc !80

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %uri = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdres.0107, i32 0, i32 2
  %9 = ptrtoint ptr %uri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uri, align 4
  %sap = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdres.0107, i32 0, i32 4
  %11 = ptrtoint ptr %sap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sap, align 1
  %conv = zext i8 %12 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_genl_llc_send_sdres.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %10, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then22, %land.rhs
  %inc = add i32 %i.0106, 1
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %call1.i87 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef %i.0106, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %cmp.i88 = icmp slt i32 %call1.i87, 0
  %cmp25104 = icmp eq ptr %14, null
  %cmp25 = select i1 %cmp.i88, i1 true, i1 %cmp25104
  br i1 %cmp25, label %do.end.free_msg_crit_edge, label %if.end28

do.end.free_msg_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end28:                                         ; preds = %do.end
  %sap29 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdres.0107, i32 0, i32 4
  %15 = ptrtoint ptr %sap29 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sap29, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i90) #8
  %17 = ptrtoint ptr %tmp.i90 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp.i90, align 1
  %call.i91 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i90) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool31.not = icmp eq i32 %call.i91, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.free_msg_crit_edge

if.end28.free_msg_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end33:                                         ; preds = %if.end28
  %uri34 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdres.0107, i32 0, i32 2
  %18 = ptrtoint ptr %uri34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uri34, align 4
  %call.i92 = call i32 @strlen(ptr noundef %19) #11
  %add.i = add i32 %call.i92, 1
  %call1.i93 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %add.i, ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool36.not = icmp eq i32 %call1.i93, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.free_msg_crit_edge

if.end33.free_msg_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end38:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %14, align 2
  %23 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %sdres.0107, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev2.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %24, ptr %26, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end38.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end38.hlist_del.exit_crit_edge:                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end38.hlist_del.exit_crit_edge
  %29 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %30 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  call void @nfc_llcp_free_sdp_tlv(ptr noundef nonnull %sdres.0107) #8
  %tobool43.not = icmp eq ptr %8, null
  %add.ptr47 = getelementptr i8, ptr %8, i32 -20
  %tobool14.not109 = icmp eq ptr %add.ptr47, null
  %tobool14.not = or i1 %tobool43.not, %tobool14.not109
  br i1 %tobool14.not, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.land.rhs_crit_edge

hlist_del.exit.land.rhs_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %if.end11.for.end_crit_edge
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i96 = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i97 = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i98 = sub i32 %sub.ptr.lhs.cast.i96, %sub.ptr.rhs.cast.i97
  %conv.i99 = trunc i32 %sub.ptr.sub.i98 to i16
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i99, ptr %4, align 2
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %34 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %35 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %36 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i.i = icmp eq i8 %36, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %for.end
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %39 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %38, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %37, i32 noundef 2592) #8
  %40 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

free_msg:                                         ; preds = %if.end33.free_msg_crit_edge, %if.end28.free_msg_crit_edge, %do.end.free_msg_crit_edge, %if.end8.free_msg_crit_edge, %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  %rc.0 = phi i32 [ -90, %if.end4.free_msg_crit_edge ], [ -90, %if.end.free_msg_crit_edge ], [ -12, %if.end8.free_msg_crit_edge ], [ -12, %do.end.free_msg_crit_edge ], [ -90, %if.end33.free_msg_crit_edge ], [ -90, %if.end28.free_msg_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  call void @nfc_llcp_free_sdp_tlv_list(ptr noundef %sdres_list) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ %40, %if.end39.i.i ], [ -22, %if.then.i.i ], [ -22, %land.rhs.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_free_sdp_tlv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_free_sdp_tlv_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_se_added(ptr nocapture noundef readonly %dev, i32 noundef %se_idx, i16 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i26 = alloca i8, align 1
  %tmp.i24 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 22) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24) #8
  %3 = ptrtoint ptr %tmp.i24 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %se_idx, ptr %tmp.i24, align 4
  %call.i25 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool8.not = icmp eq i32 %call.i25, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.free_msg_crit_edge

lor.lhs.false.free_msg_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %conv = trunc i16 %type to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i26) #8
  %4 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %tmp.i26, align 1
  %call.i27 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i26) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool11.not = icmp eq i32 %call.i27, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false9.free_msg_crit_edge

lor.lhs.false9.free_msg_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end13:                                         ; preds = %lor.lhs.false9
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %8 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end13
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %10, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %9, i32 noundef 3264) #8
  br label %cleanup

free_msg:                                         ; preds = %lor.lhs.false9.free_msg_crit_edge, %lor.lhs.false.free_msg_crit_edge, %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_se_removed(ptr nocapture noundef readonly %dev, i32 noundef %se_idx) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i20 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 23) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i20) #8
  %3 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %se_idx, ptr %tmp.i20, align 4
  %call.i21 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool8.not = icmp eq i32 %call.i21, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false.free_msg_crit_edge

lor.lhs.false.free_msg_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end10:                                         ; preds = %lor.lhs.false
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end10
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %9, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %8, i32 noundef 3264) #8
  br label %cleanup

free_msg:                                         ; preds = %lor.lhs.false.free_msg_crit_edge, %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_se_transaction(ptr noundef %dev, i8 noundef zeroext %se_idx, ptr noundef %evt_transaction) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i55 = alloca i8, align 1
  %tmp.i53 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 25) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %conv = zext i8 %se_idx to i32
  %call5 = tail call ptr @nfc_find_se(ptr noundef %dev, i32 noundef %conv) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.free_msg_crit_edge, label %if.end8

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end8:                                          ; preds = %if.end4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end8.free_msg_crit_edge

if.end8.free_msg_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i53) #8
  %3 = ptrtoint ptr %tmp.i53 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %tmp.i53, align 4
  %call.i54 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i53) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool13.not = icmp eq i32 %call.i54, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false.free_msg_crit_edge

lor.lhs.false.free_msg_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.nfc_se, ptr %call5, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  %conv15 = trunc i16 %5 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i55) #8
  %6 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv15, ptr %tmp.i55, align 1
  %call.i56 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i55) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool17.not = icmp eq i32 %call.i56, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false14.free_msg_crit_edge

lor.lhs.false14.free_msg_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %7 = ptrtoint ptr %evt_transaction to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %evt_transaction, align 1
  %aid = getelementptr inbounds %struct.nfc_evt_transaction, ptr %evt_transaction, i32 0, i32 1
  %call19 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 23, i32 noundef %8, ptr noundef %aid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %lor.lhs.false18.free_msg_crit_edge

lor.lhs.false18.free_msg_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %params_len = getelementptr inbounds %struct.nfc_evt_transaction, ptr %evt_transaction, i32 0, i32 2
  %9 = ptrtoint ptr %params_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %params_len, align 1
  %conv22 = zext i8 %10 to i32
  %params = getelementptr inbounds %struct.nfc_evt_transaction, ptr %evt_transaction, i32 0, i32 3
  %call24 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 28, i32 noundef %conv22, ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %lor.lhs.false21.free_msg_crit_edge

lor.lhs.false21.free_msg_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end27:                                         ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5
  call void @devm_kfree(ptr noundef %dev28, ptr noundef %evt_transaction) #8
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %14 = call fastcc i32 @genlmsg_multicast(ptr noundef nonnull %call.i.i, i32 noundef 3264)
  br label %cleanup

free_msg:                                         ; preds = %lor.lhs.false21.free_msg_crit_edge, %lor.lhs.false18.free_msg_crit_edge, %lor.lhs.false14.free_msg_crit_edge, %lor.lhs.false.free_msg_crit_edge, %if.end8.free_msg_crit_edge, %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  %dev30 = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5
  call void @devm_kfree(ptr noundef %dev30, ptr noundef %evt_transaction) #8
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_find_se(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_se_connectivity(ptr noundef %dev, i8 noundef zeroext %se_idx) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i36 = alloca i8, align 1
  %tmp.i34 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 24) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %conv = zext i8 %se_idx to i32
  %call5 = tail call ptr @nfc_find_se(ptr noundef %dev, i32 noundef %conv) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.free_msg_crit_edge, label %if.end8

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end8:                                          ; preds = %if.end4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end8.free_msg_crit_edge

if.end8.free_msg_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i34) #8
  %3 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %tmp.i34, align 4
  %call.i35 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool13.not = icmp eq i32 %call.i35, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false.free_msg_crit_edge

lor.lhs.false.free_msg_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.nfc_se, ptr %call5, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  %conv15 = trunc i16 %5 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i36) #8
  %6 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv15, ptr %tmp.i36, align 1
  %call.i37 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i36) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool17.not = icmp eq i32 %call.i37, 0
  br i1 %tobool17.not, label %if.end19, label %lor.lhs.false14.free_msg_crit_edge

lor.lhs.false14.free_msg_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end19:                                         ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %10 = call fastcc i32 @genlmsg_multicast(ptr noundef nonnull %call.i.i, i32 noundef 3264)
  br label %cleanup

free_msg:                                         ; preds = %lor.lhs.false14.free_msg_crit_edge, %lor.lhs.false.free_msg_crit_edge, %if.end8.free_msg_crit_edge, %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_dep_link_up_event(ptr nocapture noundef %dev, i32 noundef %target_idx, i8 noundef zeroext %comm_mode, i8 noundef zeroext %rf_mode) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i43 = alloca i8, align 1
  %tmp.i41 = alloca i8, align 1
  %tmp.i39 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_genl_dep_link_up_event.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_genl_dep_link_up_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_genl_dep_link_up_event.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool4.not = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 4) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.free_msg_crit_edge, label %if.end10

if.end6.free_msg_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end10:                                         ; preds = %if.end6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.free_msg_crit_edge

if.end10.free_msg_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rf_mode)
  %cmp = icmp eq i8 %rf_mode, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i39) #8
  %3 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %target_idx, ptr %tmp.i39, align 4
  %call.i40 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i39) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool17.not = icmp eq i32 %call.i40, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.free_msg_crit_edge

land.lhs.true.free_msg_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end14.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i41) #8
  %4 = ptrtoint ptr %tmp.i41 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %comm_mode, ptr %tmp.i41, align 1
  %call.i42 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i41) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool21.not = icmp eq i32 %call.i42, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end19.free_msg_crit_edge

if.end19.free_msg_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i43) #8
  %5 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %rf_mode, ptr %tmp.i43, align 1
  %call.i44 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %tmp.i43) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool23.not = icmp eq i32 %call.i44, 0
  br i1 %tobool23.not, label %if.end25, label %lor.lhs.false.free_msg_crit_edge

lor.lhs.false.free_msg_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end25:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr i8, ptr %call7, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %dep_link_up = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 11
  %9 = ptrtoint ptr %dep_link_up to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %dep_link_up, align 8
  %10 = call fastcc i32 @genlmsg_multicast(ptr noundef nonnull %call.i.i, i32 noundef 2592)
  br label %cleanup

free_msg:                                         ; preds = %lor.lhs.false.free_msg_crit_edge, %if.end19.free_msg_crit_edge, %land.lhs.true.free_msg_crit_edge, %if.end10.free_msg_crit_edge, %if.end6.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ 0, %if.end25 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_dep_link_down_event(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_genl_dep_link_down_event.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_genl_dep_link_down_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_genl_dep_link_down_event.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool4.not = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 5) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.free_msg_crit_edge, label %if.end10

if.end6.free_msg_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end10:                                         ; preds = %if.end6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.free_msg_crit_edge

if.end10.free_msg_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end14:                                         ; preds = %if.end10
  %add.ptr1.i = getelementptr i8, ptr %call7, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i.i = icmp eq i8 %6, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end14
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %8, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %7, i32 noundef 2592) #8
  br label %cleanup

free_msg:                                         ; preds = %if.end10.free_msg_crit_edge, %if.end6.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_fw_download_done(ptr nocapture noundef readonly %dev, ptr noundef %firmware_name, i32 noundef %result) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i25 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 21) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %call.i = tail call i32 @strlen(ptr noundef %firmware_name) #11
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 20, i32 noundef %add.i, ptr noundef %firmware_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool6.not = icmp eq i32 %call1.i, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %result, ptr %tmp.i, align 4
  %call.i24 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool8.not = icmp eq i32 %call.i24, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.free_msg_crit_edge

lor.lhs.false.free_msg_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i25) #8
  %3 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i25, align 4
  %call.i26 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool11.not = icmp eq i32 %call.i26, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false9.free_msg_crit_edge

lor.lhs.false9.free_msg_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end13:                                         ; preds = %lor.lhs.false9
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end13
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %9, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %8, i32 noundef 3264) #8
  br label %cleanup

free_msg:                                         ; preds = %lor.lhs.false9.free_msg_crit_edge, %lor.lhs.false.free_msg_crit_edge, %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %dev, i32 %attr, i32 noundef %oui, i32 noundef %subcmd, i32 noundef %approxlen) #0 align 64 {
entry:
  %tmp.i4.i = alloca i32, align 4
  %tmp.i2.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cmd_info = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %cur_cmd_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_cmd_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !81

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1631, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end23:                                         ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_portid, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub.i.i.i = add i32 %approxlen, 119
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end23.return_crit_edge, label %if.end.i

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end23
  %call.i.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 29) #8
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool6.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.nla_put_failure.i_crit_edge

if.end4.i.nla_put_failure.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2.i) #8
  %9 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %oui, ptr %tmp.i2.i, align 4
  %call.i3.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 29, i32 noundef 4, ptr noundef nonnull %tmp.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool10.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.nla_put_failure.i_crit_edge

if.end8.i.nla_put_failure.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i4.i) #8
  %10 = ptrtoint ptr %tmp.i4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %subcmd, ptr %tmp.i4.i, align 4
  %call.i5.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 30, i32 noundef 4, ptr noundef nonnull %tmp.i4.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool14.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.nla_put_failure.i_crit_edge

if.end12.i.nla_put_failure.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %cb.i, align 8
  %arrayidx19.i = getelementptr %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %arrayidx19.i, align 4
  br label %return

nla_put_failure.i:                                ; preds = %if.end12.i.nla_put_failure.i_crit_edge, %if.end8.i.nla_put_failure.i_crit_edge, %if.end4.i.nla_put_failure.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %return

return:                                           ; preds = %nla_put_failure.i, %if.end16.i, %if.then3.i, %if.end23.return_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %nla_put_failure.i ], [ %call.i.i.i, %if.end16.i ], [ null, %if.then3.i ], [ null, %if.end23.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_vendor_cmd_reply(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %arrayidx3 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %4 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %cur_cmd_info = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %cur_cmd_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_cmd_info, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end28, !prof !81

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1649, i32 noundef 9, ptr noundef null) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr i8, ptr %3, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %10 = ptrtoint ptr %cur_cmd_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_cmd_info, align 8
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_net.i.i, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 21
  %16 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %17, ptr noundef %skb, i32 noundef %15, i32 noundef 64) #8
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %18, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_genl_data_init(ptr noundef %genl_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %genl_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %genl_data, align 4
  %genl_data_mutex = getelementptr inbounds %struct.nfc_genl_data, ptr %genl_data, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %genl_data_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @nfc_genl_data_init.__key) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_genl_data_exit(ptr noundef %genl_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %genl_data_mutex = getelementptr inbounds %struct.nfc_genl_data, ptr %genl_data, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %genl_data_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @nfc_genl_family) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @netlink_register_notifier(ptr noundef nonnull @nl_notifier) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_genl_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netlink_unregister_notifier(ptr noundef nonnull @nl_notifier) #8
  %call1 = tail call i32 @genl_unregister_family(ptr noundef nonnull @nfc_genl_family) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_get_device(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %call3 = tail call ptr @nfc_get_device(i32 noundef %5) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %if.end6.out_putdev_crit_edge, label %if.end10

if.end6.out_putdev_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_putdev

if.end10:                                         ; preds = %if.end6
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snd_portid, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %7, i32 noundef %9, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 1) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end10.out_free_crit_edge, label %if.end.i

if.end10.out_free_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end.i:                                         ; preds = %if.end10
  %call4.i = tail call fastcc i32 @nfc_genl_setup_device_added(ptr noundef nonnull %call3, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  br i1 %tobool5.not.i, label %if.end13, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.out_free_crit_edge, label %if.then.i.i.i.i

if.then.i.i.out_free_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %11, %add.ptr1.i.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !81

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %out_free

if.end13:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %17 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_net.i.i, align 4
  %19 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 21
  %21 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %22, ptr noundef nonnull %call.i.i, i32 noundef %20, i32 noundef 64) #8
  %23 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

out_free:                                         ; preds = %if.end.i.i.i.i, %if.then.i.i.out_free_crit_edge, %if.end10.out_free_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %out_putdev

out_putdev:                                       ; preds = %out_free, %if.end6.out_putdev_crit_edge
  %rc.0 = phi i32 [ -90, %out_free ], [ -12, %if.end6.out_putdev_crit_edge ]
  %dev1.i29 = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i29) #8
  br label %cleanup

cleanup:                                          ; preds = %out_putdev, %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_putdev ], [ %23, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_devices(ptr noundef %skb, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 12) #12
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.then.cleanup18_crit_edge, label %if.then7

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = inttoptr i32 %2 to ptr
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfc_devlist_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfc_devlist_generation to i32))
  %8 = load i32, ptr @nfc_devlist_generation, align 4
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %seq, align 4
  br label %if.end9

if.then7:                                         ; preds = %if.then
  %10 = ptrtoint ptr %call7.i to i32
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfc_devlist_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfc_devlist_generation to i32))
  %12 = load i32, ptr @nfc_devlist_generation, align 4
  %seq41 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %13 = ptrtoint ptr %seq41 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %seq41, align 4
  tail call void @class_dev_iter_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @nfc_class, ptr noundef null, ptr noundef null) #8
  %call.i = tail call ptr @class_dev_iter_next(ptr noundef nonnull %call7.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -24
  br i1 %tobool.not.i, label %if.then7.while.end_crit_edge, label %if.then7.if.end9_crit_edge

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7.while.end_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end9:                                          ; preds = %if.then7.if.end9_crit_edge, %if.end5
  %iter.043 = phi ptr [ %call7.i, %if.then7.if.end9_crit_edge ], [ %7, %if.end5 ]
  %dev.0 = phi ptr [ %add.ptr.i, %if.then7.if.end9_crit_edge ], [ %6, %if.end5 ]
  %tobool10.not47 = icmp eq ptr %dev.0, null
  br i1 %tobool10.not47, label %if.end9.while.end_crit_edge, label %while.body.lr.ph

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end9
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dev.148 = phi ptr [ %dev.0, %while.body.lr.ph ], [ %add.ptr.i38, %cleanup.while.body_crit_edge ]
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %portid, align 4
  %18 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlmsg_seq, align 4
  %call13 = tail call fastcc i32 @nfc_genl_send_device(ptr noundef %skb, ptr noundef nonnull %dev.148, i32 noundef %17, i32 noundef %21, ptr noundef %cb, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %cleanup

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup:                                          ; preds = %while.body
  %call.i36 = tail call ptr @class_dev_iter_next(ptr noundef %iter.043) #8
  %tobool.not.i37 = icmp eq ptr %call.i36, null
  %add.ptr.i38 = getelementptr i8, ptr %call.i36, i32 -24
  %tobool10.not53 = icmp eq ptr %add.ptr.i38, null
  %tobool10.not = or i1 %tobool.not.i37, %tobool10.not53
  br i1 %tobool10.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end9.while.end_crit_edge, %if.then7.while.end_crit_edge
  %dev.1.lcssa = phi ptr [ null, %if.end9.while.end_crit_edge ], [ null, %if.then7.while.end_crit_edge ], [ %dev.148, %while.body.while.end_crit_edge ], [ null, %cleanup.while.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfc_devlist_mutex) #8
  %22 = ptrtoint ptr %dev.1.lcssa to i32
  %23 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %while.end, %if.then.cleanup18_crit_edge
  %retval.0 = phi i32 [ %25, %while.end ], [ -12, %if.then.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_devices_done(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = inttoptr i32 %2 to ptr
  tail call void @class_dev_iter_exit(ptr noundef nonnull %3) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dev_up(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %call3 = tail call ptr @nfc_get_device(i32 noundef %5) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @nfc_dev_up(ptr noundef nonnull %call3) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dev_down(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %call3 = tail call ptr @nfc_get_device(i32 noundef %5) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @nfc_dev_down(ptr noundef nonnull %call3) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_start_poll(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_genl_start_poll.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_genl_start_poll, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_genl_start_poll.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %arrayidx5 = getelementptr ptr, ptr %1, i32 13
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr ptr, ptr %1, i32 3
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr ptr, ptr %1, i32 14
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end15_crit_edge

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true10.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %arrayidx20 = getelementptr ptr, ptr %1, i32 14
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %if.end15.if.end26_crit_edge, label %if.then22

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i77 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i77 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i77, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end15.if.end26_crit_edge
  %tm_protocols.0 = phi i32 [ %15, %if.then22 ], [ 0, %if.end15.if.end26_crit_edge ]
  br i1 %tobool6.not, label %if.else, label %if.end26.if.end42.sink.split_crit_edge

if.end26.if.end42.sink.split_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split

if.else:                                          ; preds = %if.end26
  %arrayidx35 = getelementptr ptr, ptr %1, i32 3
  %16 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %17, null
  br i1 %tobool36.not, label %if.else.if.end42_crit_edge, label %if.else.if.end42.sink.split_crit_edge

if.else.if.end42.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end42.sink.split:                              ; preds = %if.else.if.end42.sink.split_crit_edge, %if.end26.if.end42.sink.split_crit_edge
  %.sink = phi ptr [ %5, %if.end26.if.end42.sink.split_crit_edge ], [ %17, %if.else.if.end42.sink.split_crit_edge ]
  %add.ptr.i.i79 = getelementptr i8, ptr %.sink, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i79, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.else.if.end42_crit_edge
  %im_protocols.0 = phi i32 [ 0, %if.else.if.end42_crit_edge ], [ %19, %if.end42.sink.split ]
  %call43 = tail call ptr @nfc_get_device(i32 noundef %11) #8
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %genl_data_mutex = getelementptr inbounds %struct.nfc_dev, ptr %call43, i32 0, i32 12, i32 1
  tail call void @mutex_lock_nested(ptr noundef %genl_data_mutex, i32 noundef 0) #8
  %call47 = tail call i32 @nfc_start_poll(ptr noundef nonnull %call43, i32 noundef %im_protocols.0, i32 noundef %tm_protocols.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %genl_data = getelementptr inbounds %struct.nfc_dev, ptr %call43, i32 0, i32 12
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %20 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %snd_portid, align 4
  %22 = ptrtoint ptr %genl_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %genl_data, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  tail call void @mutex_unlock(ptr noundef %genl_data_mutex) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call43, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end42.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end51 ], [ -22, %land.lhs.true10.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -19, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_stop_poll(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %call3 = tail call ptr @nfc_get_device(i32 noundef %5) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 5
  %mutex.i = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 5, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %polling = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 9
  %6 = ptrtoint ptr %polling to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %polling, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  br i1 %tobool8.not, label %if.end6.cleanup.sink.split_crit_edge, label %if.end11

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end6
  %genl_data = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 12
  %genl_data_mutex = getelementptr inbounds %struct.nfc_dev, ptr %call3, i32 0, i32 12, i32 1
  tail call void @mutex_lock_nested(ptr noundef %genl_data_mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %genl_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %genl_data, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_portid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end15, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @nfc_stop_poll(ptr noundef nonnull %call3) #8
  %12 = ptrtoint ptr %genl_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %genl_data, align 4
  br label %out

out:                                              ; preds = %if.end15, %if.end11.out_crit_edge
  %rc.0 = phi i32 [ %call16, %if.end15 ], [ -16, %if.end11.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %genl_data_mutex) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %rc.0, %out ], [ -22, %if.end6.cleanup.sink.split_crit_edge ]
  tail call void @put_device(ptr noundef %dev7) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dep_link_up(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_genl_dep_link_up.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_genl_dep_link_up, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_genl_dep_link_up.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %arrayidx5 = getelementptr ptr, ptr %1, i32 10
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %arrayidx13 = getelementptr ptr, ptr %1, i32 4
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end8.if.end19_crit_edge, label %if.else

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i48 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i48, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end8.if.end19_crit_edge
  %tgt_idx.0 = phi i32 [ %11, %if.else ], [ -1, %if.end8.if.end19_crit_edge ]
  %add.ptr.i.i49 = getelementptr i8, ptr %5, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i49 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %switch = icmp ult i8 %13, 2
  br i1 %switch, label %if.end28, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %call29 = tail call ptr @nfc_get_device(i32 noundef %7) #8
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 @nfc_dep_link_up(ptr noundef nonnull %call29, i32 noundef %tgt_idx.0, i8 noundef zeroext %13) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call29, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end32 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -19, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dep_link_down(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call6 = tail call ptr @nfc_get_device(i32 noundef %7) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @nfc_dep_link_down(ptr noundef nonnull %call6) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call6, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_targets(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %tmp.i7.i = alloca i8, align 1
  %tmp.i5.i = alloca i8, align 1
  %tmp.i3.i = alloca i16, align 2
  %tmp.i1.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = inttoptr i32 %4 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %attrs.i = getelementptr inbounds %struct.genl_dumpit_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.then3_crit_edge, label %if.end.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i:                                         ; preds = %if.then
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 4
  %call5.i = tail call ptr @nfc_get_device(i32 noundef %13) #8
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.then3_crit_edge, label %__get_device_from_cb.exit

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

__get_device_from_cb.exit:                        ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %__get_device_from_cb.exit.if.then3_crit_edge, label %if.end

__get_device_from_cb.exit.if.then3_crit_edge:     ; preds = %__get_device_from_cb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %__get_device_from_cb.exit.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %retval.0.i41 = phi ptr [ %call5.i, %__get_device_from_cb.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.if.then3_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.i.if.then3_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i41 to i32
  br label %cleanup

if.end:                                           ; preds = %__get_device_from_cb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call5.i to i32
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx1, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %dev.0 = phi ptr [ %5, %entry.if.end6_crit_edge ], [ %call5.i, %if.end ]
  %mutex.i = getelementptr inbounds %struct.nfc_dev, ptr %dev.0, i32 0, i32 5, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %targets_generation = getelementptr inbounds %struct.nfc_dev, ptr %dev.0, i32 0, i32 4
  %17 = ptrtoint ptr %targets_generation to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %targets_generation, align 8
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %19 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %seq, align 4
  %n_targets = getelementptr inbounds %struct.nfc_dev, ptr %dev.0, i32 0, i32 3
  %20 = ptrtoint ptr %n_targets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_targets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %21)
  %cmp46 = icmp slt i32 %2, %21
  br i1 %cmp46, label %while.body.lr.ph, label %if.end6.while.end_crit_edge

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end6
  %targets = getelementptr inbounds %struct.nfc_dev, ptr %dev.0, i32 0, i32 2
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %prev_seq.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %i.047 = phi i32 [ %2, %while.body.lr.ph ], [ %inc, %if.end12.while.body_crit_edge ]
  %22 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %targets, align 8
  %arrayidx8 = getelementptr %struct.nfc_target, ptr %23, i32 %i.047
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cb, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 12
  %26 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %portid.i, align 4
  %28 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlmsg_seq.i, align 4
  %call.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %27, i32 noundef %31, ptr noundef nonnull @nfc_genl_family, i32 noundef 2, i8 noundef zeroext 8) #8
  %tobool.not.i35 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i35, label %while.body.while.end_crit_edge, label %if.end.i36

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.i36:                                       ; preds = %while.body
  %32 = ptrtoint ptr %prev_seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prev_seq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i, label %if.end.i36.genl_dump_check_consistent.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i36.genl_dump_check_consistent.exit.i_crit_edge: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %genl_dump_check_consistent.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i36
  %34 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.not.i.i.i = icmp eq i32 %35, %33
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %genl_dump_check_consistent.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %nlmsg_flags.i.i.i = getelementptr i8, ptr %call.i, i32 -14
  %36 = ptrtoint ptr %nlmsg_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nlmsg_flags.i.i.i, align 2
  %38 = or i16 %37, 16
  store i16 %38, ptr %nlmsg_flags.i.i.i, align 2
  br label %genl_dump_check_consistent.exit.i

genl_dump_check_consistent.exit.i:                ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge, %if.end.i36.genl_dump_check_consistent.exit.i_crit_edge
  %39 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %seq, align 4
  %41 = ptrtoint ptr %prev_seq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %prev_seq.i.i.i, align 4
  %42 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %44 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %genl_dump_check_consistent.exit.i.if.then.i.i_crit_edge

genl_dump_check_consistent.exit.i.if.then.i.i_crit_edge: ; preds = %genl_dump_check_consistent.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %genl_dump_check_consistent.exit.i
  %supported_protocols.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 1
  %45 = ptrtoint ptr %supported_protocols.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %supported_protocols.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i) #8
  %47 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i1.i, align 4
  %call.i2.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i1.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool5.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %sens_res.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 2
  %48 = ptrtoint ptr %sens_res.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sens_res.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i3.i) #8
  %50 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %tmp.i3.i, align 2
  %call.i4.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i3.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool8.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false6.i.if.then.i.i_crit_edge

lor.lhs.false6.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %sel_res.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 3
  %51 = ptrtoint ptr %sel_res.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sel_res.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i5.i) #8
  %53 = ptrtoint ptr %tmp.i5.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tmp.i5.i, align 1
  %call.i6.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i5.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i5.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool11.not.i = icmp eq i32 %call.i6.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %lor.lhs.false9.i.if.then.i.i_crit_edge

lor.lhs.false9.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end13.i:                                       ; preds = %lor.lhs.false9.i
  %nfcid1_len.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 4
  %54 = ptrtoint ptr %nfcid1_len.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nfcid1_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp.not.i = icmp eq i8 %55, 0
  br i1 %cmp.not.i, label %if.end13.i.if.end20.i_crit_edge, label %land.lhs.true.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %conv.i = zext i8 %55 to i32
  %nfcid1.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 5
  %call17.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef %conv.i, ptr noundef %nfcid1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %land.lhs.true.i.if.then.i.i_crit_edge

land.lhs.true.i.if.then.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %if.end13.i.if.end20.i_crit_edge
  %sensb_res_len.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 8
  %56 = ptrtoint ptr %sensb_res_len.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sensb_res_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp22.not.i = icmp eq i8 %57, 0
  br i1 %cmp22.not.i, label %if.end20.i.if.end31.i_crit_edge, label %land.lhs.true24.i

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true24.i:                                ; preds = %if.end20.i
  %conv21.i = zext i8 %57 to i32
  %sensb_res.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 9
  %call28.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef %conv21.i, ptr noundef %sensb_res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true24.i.if.end31.i_crit_edge, label %land.lhs.true24.i.if.then.i.i_crit_edge

land.lhs.true24.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true24.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true24.i.if.end31.i_crit_edge, %if.end20.i.if.end31.i_crit_edge
  %sensf_res_len.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 10
  %58 = ptrtoint ptr %sensf_res_len.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sensf_res_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp33.not.i = icmp eq i8 %59, 0
  br i1 %cmp33.not.i, label %if.end31.i.if.end42.i_crit_edge, label %land.lhs.true35.i

if.end31.i.if.end42.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.lhs.true35.i:                                ; preds = %if.end31.i
  %conv32.i = zext i8 %59 to i32
  %sensf_res.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 11
  %call39.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef %conv32.i, ptr noundef %sensf_res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true35.i.if.end42.i_crit_edge, label %land.lhs.true35.i.if.then.i.i_crit_edge

land.lhs.true35.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true35.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true35.i.if.end42.i_crit_edge, %if.end31.i.if.end42.i_crit_edge
  %is_iso15693.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 14
  %60 = ptrtoint ptr %is_iso15693.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_iso15693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool43.not.i = icmp eq i8 %61, 0
  br i1 %tobool43.not.i, label %if.end42.i.if.end12_crit_edge, label %if.then44.i

if.end42.i.if.end12_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then44.i:                                      ; preds = %if.end42.i
  %iso15693_dsfid.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 15
  %62 = ptrtoint ptr %iso15693_dsfid.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %iso15693_dsfid.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i7.i) #8
  %64 = ptrtoint ptr %tmp.i7.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %tmp.i7.i, align 1
  %call.i8.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 1, ptr noundef nonnull %tmp.i7.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool46.not.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool46.not.i, label %lor.lhs.false47.i, label %if.then44.i.if.then.i.i_crit_edge

if.then44.i.if.then.i.i_crit_edge:                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false47.i:                                ; preds = %if.then44.i
  %iso15693_uid.i = getelementptr %struct.nfc_target, ptr %23, i32 %i.047, i32 16
  %call49.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 27, i32 noundef 8, ptr noundef %iso15693_uid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %lor.lhs.false47.i.if.end12_crit_edge, label %lor.lhs.false47.i.if.then.i.i_crit_edge

lor.lhs.false47.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false47.i.if.end12_crit_edge:             ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then.i.i:                                      ; preds = %lor.lhs.false47.i.if.then.i.i_crit_edge, %if.then44.i.if.then.i.i_crit_edge, %land.lhs.true35.i.if.then.i.i_crit_edge, %land.lhs.true24.i.if.then.i.i_crit_edge, %land.lhs.true.i.if.then.i.i_crit_edge, %lor.lhs.false9.i.if.then.i.i_crit_edge, %lor.lhs.false6.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %genl_dump_check_consistent.exit.i.if.then.i.i_crit_edge
  %add.ptr1.i9.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i9.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.while.end_crit_edge, label %if.then.i.i.i.i

if.then.i.i.while.end_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %66, %add.ptr1.i9.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !81

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %67 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i9.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %while.end

if.end12:                                         ; preds = %lor.lhs.false47.i.if.end12_crit_edge, %if.end42.i.if.end12_crit_edge
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %69 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %70 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %71 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %inc = add nsw i32 %i.047, 1
  %72 = ptrtoint ptr %n_targets to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_targets, align 4
  %cmp = icmp slt i32 %inc, %73
  br i1 %cmp, label %if.end12.while.body_crit_edge, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %if.end.i.i.i.i, %if.then.i.i.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end6.while.end_crit_edge
  %i.045 = phi i32 [ %i.047, %if.end.i.i.i.i ], [ %i.047, %if.then.i.i.while.end_crit_edge ], [ %2, %if.end6.while.end_crit_edge ], [ %inc, %if.end12.while.end_crit_edge ], [ %i.047, %while.body.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #8
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %i.045, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then3
  %retval.0 = phi i32 [ %76, %while.end ], [ %14, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_targets_done(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = inttoptr i32 %1 to ptr
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %2, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_llc_get_params(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i28.i = alloca i16, align 2
  %tmp.i26.i = alloca i8, align 1
  %tmp.i24.i = alloca i8, align 1
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 20
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call6 = tail call ptr @nfc_get_device(i32 noundef %7) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.nfc_dev, ptr %call6, i32 0, i32 5
  %mutex.i = getelementptr inbounds %struct.nfc_dev, ptr %call6, i32 0, i32 5, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %call11 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %call6) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.exit_crit_edge, label %if.end14

if.end9.exit_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end14:                                         ; preds = %if.end9
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool16.not = icmp eq ptr %call.i.i, null
  br i1 %tobool16.not, label %if.end14.exit_crit_edge, label %if.end18

if.end14.exit_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end18:                                         ; preds = %if.end14
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_portid, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %9, i32 noundef %11, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 15) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end18.exit_crit_edge, label %if.end.i

if.end18.exit_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end.i:                                         ; preds = %if.end18
  %dev.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %call11, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %16 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i.i, align 4
  %call.i.i46 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool2.not.i = icmp eq i32 %call.i.i46, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %lto.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %call11, i32 0, i32 13
  %17 = ptrtoint ptr %lto.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lto.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i24.i) #8
  %19 = ptrtoint ptr %tmp.i24.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tmp.i24.i, align 1
  %call.i25.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %tmp.i24.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i24.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool4.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %rw.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %call11, i32 0, i32 14
  %20 = ptrtoint ptr %rw.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rw.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i26.i) #8
  %22 = ptrtoint ptr %tmp.i26.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tmp.i26.i, align 1
  %call.i27.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %tmp.i26.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i26.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool7.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.if.then.i.i_crit_edge

lor.lhs.false5.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %miux.i = getelementptr inbounds %struct.nfc_llcp_local, ptr %call11, i32 0, i32 15
  %23 = ptrtoint ptr %miux.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %miux.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i28.i) #8
  %25 = ptrtoint ptr %tmp.i28.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %tmp.i28.i, align 2
  %call.i29.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %tmp.i28.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i28.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool10.not.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false8.i.if.then.i.i_crit_edge

lor.lhs.false8.i.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end12.i:                                       ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %28 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %exit

if.then.i.i:                                      ; preds = %lor.lhs.false8.i.if.then.i.i_crit_edge, %lor.lhs.false5.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i30.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i30.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.exit_crit_edge, label %if.then.i.i.i.i

if.then.i.i.exit_crit_edge:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %30, %add.ptr1.i30.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !81

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %31 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i30.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %exit

exit:                                             ; preds = %if.end.i.i.i.i, %if.then.i.i.exit_crit_edge, %if.end12.i, %if.end18.exit_crit_edge, %if.end14.exit_crit_edge, %if.end9.exit_crit_edge
  %cmp = phi i1 [ true, %if.end.i.i.i.i ], [ true, %if.then.i.i.exit_crit_edge ], [ false, %if.end12.i ], [ true, %if.end18.exit_crit_edge ], [ true, %if.end14.exit_crit_edge ], [ true, %if.end9.exit_crit_edge ]
  %rc.0 = phi i32 [ -90, %if.end.i.i.i.i ], [ -90, %if.then.i.i.exit_crit_edge ], [ 0, %if.end12.i ], [ -90, %if.end18.exit_crit_edge ], [ -12, %if.end14.exit_crit_edge ], [ -19, %if.end9.exit_crit_edge ]
  %msg.0 = phi ptr [ %call.i.i, %if.end.i.i.i.i ], [ %call.i.i, %if.then.i.i.exit_crit_edge ], [ %call.i.i, %if.end12.i ], [ %call.i.i, %if.end18.exit_crit_edge ], [ null, %if.end14.exit_crit_edge ], [ null, %if.end9.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #8
  call void @put_device(ptr noundef %dev10) #8
  br i1 %cmp, label %if.then21, label %if.end25

if.then21:                                        ; preds = %exit
  %tobool22.not = icmp eq ptr %msg.0, null
  br i1 %tobool22.not, label %if.then21.cleanup_crit_edge, label %if.then23

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef nonnull %msg.0, i32 noundef 0) #8
  br label %cleanup

if.end25:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %33 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_net.i.i, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %35 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %34, i32 0, i32 21
  %37 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %38, ptr noundef %msg.0, i32 noundef %36, i32 noundef 64) #8
  %39 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23, %if.then21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.end25 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %rc.0, %if.then23 ], [ %rc.0, %if.then21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_llc_set_params(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 15
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr ptr, ptr %1, i32 16
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr ptr, ptr %1, i32 17
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %arrayidx12 = getelementptr ptr, ptr %1, i32 16
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end.if.end20_crit_edge, label %if.then14

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then14:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %13)
  %cmp = icmp ugt i8 %13, 15
  br i1 %cmp, label %if.then14.cleanup_crit_edge, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %rw.0 = phi i8 [ %13, %if.then14.if.end20_crit_edge ], [ 0, %if.end.if.end20_crit_edge ]
  %arrayidx22 = getelementptr ptr, ptr %1, i32 17
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %15, null
  br i1 %tobool23.not, label %if.end20.if.end33_crit_edge, label %if.then24

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then24:                                        ; preds = %if.end20
  %add.ptr.i.i99 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i99, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %17)
  %cmp29 = icmp ugt i16 %17, 2047
  br i1 %cmp29, label %if.then24.cleanup_crit_edge, label %if.then24.if.end33_crit_edge

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.then24.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %miux.0 = phi i16 [ %17, %if.then24.if.end33_crit_edge ], [ 0, %if.end20.if.end33_crit_edge ]
  %add.ptr.i.i100 = getelementptr i8, ptr %3, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i100 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i100, align 4
  %call37 = tail call ptr @nfc_get_device(i32 noundef %19) #8
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end33.cleanup_crit_edge, label %if.end40

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %dev41 = getelementptr inbounds %struct.nfc_dev, ptr %call37, i32 0, i32 5
  %mutex.i = getelementptr inbounds %struct.nfc_dev, ptr %call37, i32 0, i32 5, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %call42 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %call37) #8
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end40.exit_crit_edge, label %if.end45

if.end40.exit_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end45:                                         ; preds = %if.end40
  %20 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attrs, align 4
  %arrayidx47 = getelementptr ptr, ptr %21, i32 15
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %23, null
  br i1 %tobool48.not, label %if.end45.if.end56_crit_edge, label %if.then49

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then49:                                        ; preds = %if.end45
  %dep_link_up = getelementptr inbounds %struct.nfc_dev, ptr %call37, i32 0, i32 11
  %24 = ptrtoint ptr %dep_link_up to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dep_link_up, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool50.not = icmp eq i8 %25, 0
  br i1 %tobool50.not, label %if.end52, label %if.then49.exit_crit_edge

if.then49.exit_crit_edge:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end52:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i101 = getelementptr i8, ptr %23, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i101 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i101, align 1
  %lto = getelementptr inbounds %struct.nfc_llcp_local, ptr %call42, i32 0, i32 13
  %28 = ptrtoint ptr %lto to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %lto, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.end52, %if.end45.if.end56_crit_edge
  %29 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %attrs, align 4
  %arrayidx58 = getelementptr ptr, ptr %30, i32 16
  %31 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %32, null
  br i1 %tobool59.not, label %if.end56.if.end62_crit_edge, label %if.then60

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %rw61 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call42, i32 0, i32 14
  %33 = ptrtoint ptr %rw61 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %rw.0, ptr %rw61, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end56.if.end62_crit_edge
  %34 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %attrs, align 4
  %arrayidx64 = getelementptr ptr, ptr %35, i32 17
  %36 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx64, align 4
  %tobool65.not = icmp eq ptr %37, null
  br i1 %tobool65.not, label %if.end62.exit_crit_edge, label %if.then66

if.end62.exit_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %miux67 = getelementptr inbounds %struct.nfc_llcp_local, ptr %call42, i32 0, i32 15
  %38 = ptrtoint ptr %miux67 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %miux.0, ptr %miux67, align 4
  br label %exit

exit:                                             ; preds = %if.then66, %if.end62.exit_crit_edge, %if.then49.exit_crit_edge, %if.end40.exit_crit_edge
  %rc.0 = phi i32 [ 0, %if.then66 ], [ 0, %if.end62.exit_crit_edge ], [ -19, %if.end40.exit_crit_edge ], [ -115, %if.then49.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  tail call void @put_device(ptr noundef %dev41) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end33.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %exit ], [ -22, %land.lhs.true7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ -19, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_llc_sdreq(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %sdp_attrs = alloca [3 x ptr], align 4
  %sdreq_list = alloca %struct.hlist_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sdp_attrs) #8
  %0 = ptrtoint ptr %sdp_attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sdp_attrs, align 4, !annotation !82
  %1 = getelementptr inbounds [3 x ptr], ptr %sdp_attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !82
  %3 = getelementptr inbounds [3 x ptr], ptr %sdp_attrs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdreq_list) #8
  %5 = ptrtoint ptr %sdreq_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %sdreq_list, align 4, !annotation !82
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %7, i32 19
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %call6 = tail call ptr @nfc_get_device(i32 noundef %13) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.nfc_dev, ptr %call6, i32 0, i32 5
  %mutex.i = getelementptr inbounds %struct.nfc_dev, ptr %call6, i32 0, i32 5, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %dep_link_up = getelementptr inbounds %struct.nfc_dev, ptr %call6, i32 0, i32 11
  %14 = ptrtoint ptr %dep_link_up to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dep_link_up, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %if.end9.exit_crit_edge, label %if.end14

if.end9.exit_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %call6) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.exit_crit_edge, label %if.end18

if.end14.exit_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end18:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %sdreq_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sdreq_list, align 4
  %17 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attrs, align 4
  %arrayidx20 = getelementptr ptr, ptr %18, i32 19
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx20, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %22)
  %cmp.i112 = icmp ugt i16 %22, 7
  br i1 %cmp.i112, label %land.lhs.true.i.lr.ph, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true.i.lr.ph:                            ; preds = %if.end18
  %conv.i = zext i16 %22 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %sdreq_next_tid = getelementptr inbounds %struct.nfc_llcp_local, ptr %call15, i32 0, i32 33
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %tlvs_len.0115 = phi i32 [ 0, %land.lhs.true.i.lr.ph ], [ %tlvs_len.1, %for.inc.land.lhs.true.i_crit_edge ]
  %attr.0114 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i106, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.0113 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %23 = ptrtoint ptr %attr.0114 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %attr.0114, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %24)
  %cmp1.i = icmp ult i16 %24, 4
  %conv.i99 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0113, i32 %conv.i99)
  %cmp5.i.not = icmp ult i32 %rem.0113, %conv.i99
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extack, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %attr.0114, i32 4
  %27 = ptrtoint ptr %attr.0114 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %attr.0114, align 2
  %conv.i.i = zext i16 %28 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %sdp_attrs, i32 noundef 2, ptr noundef %add.ptr.i.i100, i32 noundef %sub.i.i, ptr noundef nonnull @nfc_sdp_genl_policy, i32 noundef 0, ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp28.not = icmp eq i32 %call2.i, 0
  br i1 %cmp28.not, label %if.end31, label %for.body.exit_crit_edge

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end31:                                         ; preds = %for.body
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %tobool33.not = icmp eq ptr %30, null
  br i1 %tobool33.not, label %if.end31.for.inc_crit_edge, label %if.end35

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end35:                                         ; preds = %if.end31
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %conv.i101 = zext i16 %32 to i32
  %sub.i102 = add nsw i32 %conv.i101, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i102)
  %cmp38 = icmp eq i32 %sub.i102, 0
  br i1 %cmp38, label %if.end35.for.inc_crit_edge, label %if.end41

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end41:                                         ; preds = %if.end35
  %add.ptr.i103 = getelementptr i8, ptr %30, i32 4
  %cmp44 = icmp eq ptr %add.ptr.i103, null
  br i1 %cmp44, label %if.end41.for.inc_crit_edge, label %lor.lhs.false46

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false46:                                  ; preds = %if.end41
  %33 = ptrtoint ptr %add.ptr.i103 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp48 = icmp eq i8 %34, 0
  br i1 %cmp48, label %lor.lhs.false46.for.inc_crit_edge, label %if.end51

lor.lhs.false46.for.inc_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end51:                                         ; preds = %lor.lhs.false46
  %35 = ptrtoint ptr %sdreq_next_tid to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sdreq_next_tid, align 4
  %inc = add i8 %36, 1
  store i8 %inc, ptr %sdreq_next_tid, align 4
  %call52 = call ptr @nfc_llcp_build_sdreq_tlv(i8 noundef zeroext %36, ptr noundef nonnull %add.ptr.i103, i32 noundef %sub.i102) #8
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.end51.exit_crit_edge, label %if.end56

if.end51.exit_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end56:                                         ; preds = %if.end51
  %tlv_len = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call52, i32 0, i32 1
  %37 = ptrtoint ptr %tlv_len to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tlv_len, align 4
  %conv57 = zext i8 %38 to i32
  %add = add i32 %tlvs_len.0115, %conv57
  %node = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call52, i32 0, i32 6
  %39 = ptrtoint ptr %sdreq_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdreq_list, align 4
  %41 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %node, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end56.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end56.hlist_add_head.exit_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %node, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end56.hlist_add_head.exit_crit_edge
  %43 = ptrtoint ptr %sdreq_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node, ptr %sdreq_list, align 4
  %pprev34.i = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %call52, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %sdreq_list, ptr %pprev34.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %hlist_add_head.exit, %lor.lhs.false46.for.inc_crit_edge, %if.end41.for.inc_crit_edge, %if.end35.for.inc_crit_edge, %if.end31.for.inc_crit_edge
  %tlvs_len.1 = phi i32 [ %tlvs_len.0115, %if.end35.for.inc_crit_edge ], [ %tlvs_len.0115, %if.end41.for.inc_crit_edge ], [ %tlvs_len.0115, %lor.lhs.false46.for.inc_crit_edge ], [ %add, %hlist_add_head.exit ], [ %tlvs_len.0115, %if.end31.for.inc_crit_edge ]
  %45 = ptrtoint ptr %attr.0114 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %attr.0114, align 2
  %conv.i104 = zext i16 %46 to i32
  %sub.i105 = add nuw nsw i32 %conv.i104, 3
  %and.i = and i32 %sub.i105, 131068
  %sub1.i = sub nsw i32 %rem.0113, %and.i
  %add.ptr.i106 = getelementptr i8, ptr %attr.0114, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %if.end18.for.end_crit_edge
  %tlvs_len.0.lcssa = phi i32 [ 0, %if.end18.for.end_crit_edge ], [ %tlvs_len.1, %for.inc.for.end_crit_edge ], [ %tlvs_len.0115, %land.lhs.true.i.for.end_crit_edge ]
  %47 = ptrtoint ptr %sdreq_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %sdreq_list, align 4
  %tobool.not.i107.not = icmp eq ptr %48, null
  br i1 %tobool.not.i107.not, label %for.end.exit_crit_edge, label %if.end62

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end62:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = call i32 @nfc_llcp_send_snl_sdreq(ptr noundef nonnull %call15, ptr noundef nonnull %sdreq_list, i32 noundef %tlvs_len.0.lcssa) #8
  br label %exit

exit:                                             ; preds = %if.end62, %for.end.exit_crit_edge, %if.end51.exit_crit_edge, %for.body.exit_crit_edge, %if.end14.exit_crit_edge, %if.end9.exit_crit_edge
  %rc.0 = phi i32 [ %call63, %if.end62 ], [ -67, %if.end9.exit_crit_edge ], [ -19, %if.end14.exit_crit_edge ], [ -22, %for.end.exit_crit_edge ], [ -12, %if.end51.exit_crit_edge ], [ -22, %for.body.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #8
  call void @put_device(ptr noundef %dev10) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdreq_list) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sdp_attrs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_fw_download(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %firmware_name = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %firmware_name) #8
  %0 = call ptr @memset(ptr %firmware_name, i32 255, i32 33)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %2, i32 20
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %call6 = tail call ptr @nfc_get_device(i32 noundef %8) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs, align 4
  %arrayidx11 = getelementptr ptr, ptr %10, i32 20
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx11, align 4
  %call12 = call i32 @nla_strscpy(ptr noundef nonnull %firmware_name, ptr noundef %12, i32 noundef 33) #8
  %call14 = call i32 @nfc_fw_download(ptr noundef nonnull %call6, ptr noundef nonnull %firmware_name) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call6, i32 0, i32 5
  call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %firmware_name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_enable_se(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 21
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i22, align 4
  %call9 = tail call ptr @nfc_get_device(i32 noundef %7) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @nfc_enable_se(ptr noundef nonnull %call9, i32 noundef %9) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call9, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_disable_se(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 21
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i22, align 4
  %call9 = tail call ptr @nfc_get_device(i32 noundef %7) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @nfc_disable_se(ptr noundef nonnull %call9, i32 noundef %9) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call9, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_ses(ptr noundef %skb, ptr noundef %cb) #0 align 64 {
entry:
  %tmp.i3.i = alloca i8, align 1
  %tmp.i1.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 12) #12
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.then.cleanup18_crit_edge, label %if.then7

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = inttoptr i32 %2 to ptr
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfc_devlist_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfc_devlist_generation to i32))
  %8 = load i32, ptr @nfc_devlist_generation, align 4
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %seq, align 4
  br label %if.end9

if.then7:                                         ; preds = %if.then
  %10 = ptrtoint ptr %call7.i to i32
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfc_devlist_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfc_devlist_generation to i32))
  %12 = load i32, ptr @nfc_devlist_generation, align 4
  %seq44 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %13 = ptrtoint ptr %seq44 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %seq44, align 4
  tail call void @class_dev_iter_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @nfc_class, ptr noundef null, ptr noundef null) #8
  %call.i = tail call ptr @class_dev_iter_next(ptr noundef nonnull %call7.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -24
  br i1 %tobool.not.i, label %if.then7.while.end_crit_edge, label %if.then7.if.end9_crit_edge

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7.while.end_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end9:                                          ; preds = %if.then7.if.end9_crit_edge, %if.end5
  %seq47 = phi ptr [ %seq44, %if.then7.if.end9_crit_edge ], [ %seq, %if.end5 ]
  %iter.046 = phi ptr [ %call7.i, %if.then7.if.end9_crit_edge ], [ %7, %if.end5 ]
  %dev.0 = phi ptr [ %add.ptr.i, %if.then7.if.end9_crit_edge ], [ %6, %if.end5 ]
  %tobool10.not60 = icmp eq ptr %dev.0, null
  br i1 %tobool10.not60, label %if.end9.while.end_crit_edge, label %while.body.lr.ph

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end9
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tobool7.not.i = icmp eq ptr %cb, null
  %prev_seq.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dev.161 = phi ptr [ %dev.0, %while.body.lr.ph ], [ %add.ptr.i41, %cleanup.while.body_crit_edge ]
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %portid, align 4
  %18 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlmsg_seq, align 4
  %secure_elements.i = getelementptr inbounds %struct.nfc_dev, ptr %dev.161, i32 0, i32 14
  %22 = ptrtoint ptr %secure_elements.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %secure_elements.i, align 8
  %cmp.not7.i = icmp eq ptr %23, %secure_elements.i
  br i1 %cmp.not7.i, label %while.body.cleanup_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %se.08.i = phi ptr [ %n.09.i, %if.end19.i.for.body.i_crit_edge ], [ %23, %while.body.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %se.08.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %n.09.i = load ptr, ptr %se.08.i, align 4
  %call.i36 = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %17, i32 noundef %21, ptr noundef nonnull @nfc_genl_family, i32 noundef 2, i8 noundef zeroext 26) #8
  %tobool.not.i37 = icmp eq ptr %call.i36, null
  br i1 %tobool.not.i37, label %for.body.i.while.end_crit_edge, label %if.end.i

for.body.i.while.end_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.i:                                         ; preds = %for.body.i
  br i1 %tobool7.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then8.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %prev_seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prev_seq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i, label %if.then8.i.genl_dump_check_consistent.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then8.i.genl_dump_check_consistent.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %genl_dump_check_consistent.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then8.i
  %27 = ptrtoint ptr %seq47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seq47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %28, %26
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %genl_dump_check_consistent.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %nlmsg_flags.i.i.i = getelementptr i8, ptr %call.i36, i32 -14
  %29 = ptrtoint ptr %nlmsg_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nlmsg_flags.i.i.i, align 2
  %31 = or i16 %30, 16
  store i16 %31, ptr %nlmsg_flags.i.i.i, align 2
  br label %genl_dump_check_consistent.exit.i

genl_dump_check_consistent.exit.i:                ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.genl_dump_check_consistent.exit.i_crit_edge, %if.then8.i.genl_dump_check_consistent.exit.i_crit_edge
  %32 = ptrtoint ptr %seq47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seq47, align 4
  %34 = ptrtoint ptr %prev_seq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %prev_seq.i.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %genl_dump_check_consistent.exit.i, %if.end.i.if.end9.i_crit_edge
  %35 = ptrtoint ptr %dev.161 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dev.161, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %37 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.end9.i.if.then.i.i_crit_edge

if.end9.i.if.then.i.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %idx12.i = getelementptr inbounds %struct.nfc_se, ptr %se.08.i, i32 0, i32 1
  %38 = ptrtoint ptr %idx12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx12.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i) #8
  %40 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.i1.i, align 4
  %call.i2.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i1.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool14.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %lor.lhs.false.i.if.then.i.i_crit_edge

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %type.i = getelementptr inbounds %struct.nfc_se, ptr %se.08.i, i32 0, i32 2
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %type.i, align 4
  %conv.i = trunc i16 %42 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3.i) #8
  %43 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i, ptr %tmp.i3.i, align 1
  %call.i4.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i3.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool17.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %lor.lhs.false15.i.if.then.i.i_crit_edge

lor.lhs.false15.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end19.i:                                       ; preds = %lor.lhs.false15.i
  %add.ptr1.i.i = getelementptr i8, ptr %call.i36, i32 -20
  %44 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %46 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %cmp.not.i = icmp eq ptr %n.09.i, %secure_elements.i
  br i1 %cmp.not.i, label %if.end19.i.cleanup_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false15.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge, %if.end9.i.if.then.i.i_crit_edge
  %add.ptr1.i5.i = getelementptr i8, ptr %call.i36, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i5.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.while.end_crit_edge, label %if.then.i.i.i.i

if.then.i.i.while.end_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %48, %add.ptr1.i5.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !81

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %49 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i5.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #8
  br label %while.end

cleanup:                                          ; preds = %if.end19.i.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %call.i39 = call ptr @class_dev_iter_next(ptr noundef %iter.046) #8
  %tobool.not.i40 = icmp eq ptr %call.i39, null
  %add.ptr.i41 = getelementptr i8, ptr %call.i39, i32 -24
  %tobool10.not76 = icmp eq ptr %add.ptr.i41, null
  %tobool10.not = or i1 %tobool.not.i40, %tobool10.not76
  br i1 %tobool10.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.i.i.i.i, %if.then.i.i.while.end_crit_edge, %for.body.i.while.end_crit_edge, %if.end9.while.end_crit_edge, %if.then7.while.end_crit_edge
  %dev.159 = phi ptr [ %dev.161, %if.then.i.i.while.end_crit_edge ], [ %dev.161, %if.end.i.i.i.i ], [ null, %if.end9.while.end_crit_edge ], [ null, %if.then7.while.end_crit_edge ], [ %dev.161, %for.body.i.while.end_crit_edge ], [ null, %cleanup.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @nfc_devlist_mutex) #8
  %51 = ptrtoint ptr %dev.159 to i32
  %52 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %while.end, %if.then.cleanup18_crit_edge
  %retval.0 = phi i32 [ %54, %while.end ], [ -12, %if.then.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_ses_done(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = inttoptr i32 %2 to ptr
  tail call void @class_dev_iter_exit(ptr noundef nonnull %3) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_se_io(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 21
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %1, i32 25
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %5, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i63, align 4
  %call13 = tail call ptr @nfc_get_device(i32 noundef %9) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.nfc_dev, ptr %call13, i32 0, i32 23
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %lor.lhs.false18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false18:                                  ; preds = %if.end16
  %se_io = getelementptr inbounds %struct.nfc_ops, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %se_io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %se_io, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %lor.lhs.false18.cleanup_crit_edge, label %if.end22

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false18
  %16 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attrs, align 4
  %arrayidx24 = getelementptr ptr, ptr %17, i32 25
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx24, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  %conv.i = zext i16 %21 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp = icmp eq i32 %sub.i, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %tobool31.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 8) #12
  %tobool35.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %call7.i.i, align 8
  %se_idx39 = getelementptr inbounds %struct.se_io_ctx, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %se_idx39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %11, ptr %se_idx39, align 4
  %call40 = tail call fastcc i32 @nfc_se_io(ptr noundef nonnull %call13, i32 noundef %11, ptr noundef nonnull %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end37 ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -524, %lor.lhs.false18.cleanup_crit_edge ], [ -524, %if.end16.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_activate_target(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %1, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %call10 = tail call ptr @nfc_get_device(i32 noundef %9) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs, align 4
  %arrayidx15 = getelementptr ptr, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i35, align 4
  %arrayidx18 = getelementptr ptr, ptr %11, i32 3
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i36, align 4
  %call20 = tail call i32 @nfc_deactivate_target(ptr noundef nonnull %call10, i32 noundef %15, i8 noundef zeroext 1) #8
  %call21 = tail call i32 @nfc_activate_target(ptr noundef nonnull %call10, i32 noundef %15, i32 noundef %19) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call10, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end13 ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_vendor_cmd(ptr nocapture noundef readnone %skb, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 29
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %1, i32 30
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %5, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i80, align 4
  %call16 = tail call ptr @nfc_get_device(i32 noundef %9) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false18:                                  ; preds = %if.end
  %vendor_cmds = getelementptr inbounds %struct.nfc_dev, ptr %call16, i32 0, i32 21
  %14 = ptrtoint ptr %vendor_cmds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vendor_cmds, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %lor.lhs.false18.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %n_vendor_cmds = getelementptr inbounds %struct.nfc_dev, ptr %call16, i32 0, i32 22
  %16 = ptrtoint ptr %n_vendor_cmds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_vendor_cmds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %lor.lhs.false20.cleanup_crit_edge, label %if.end23

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false20
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %arrayidx25 = getelementptr ptr, ptr %19, i32 31
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %if.end23.if.end36_crit_edge, label %if.then27

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then27:                                        ; preds = %if.end23
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i = zext i16 %23 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp = icmp eq i32 %sub.i, 0
  br i1 %cmp, label %if.then27.cleanup_crit_edge, label %if.then27.if.end36_crit_edge

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.then27.if.end36_crit_edge, %if.end23.if.end36_crit_edge
  %data.0 = phi ptr [ %add.ptr.i, %if.then27.if.end36_crit_edge ], [ null, %if.end23.if.end36_crit_edge ]
  %data_len.0 = phi i32 [ %sub.i, %if.then27.if.end36_crit_edge ], [ 0, %if.end23.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3882 = icmp sgt i32 %17, 0
  br i1 %cmp3882, label %if.end36.for.body_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end36.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end36.for.body_crit_edge ]
  %arrayidx40 = getelementptr %struct.nfc_vendor_cmd, ptr %15, i32 %i.083
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %11)
  %cmp41.not = icmp eq i32 %25, %11
  br i1 %cmp41.not, label %lor.lhs.false42, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false42:                                  ; preds = %for.body
  %subcmd43 = getelementptr %struct.nfc_vendor_cmd, ptr %15, i32 %i.083, i32 1
  %26 = ptrtoint ptr %subcmd43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subcmd43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %13)
  %cmp44.not = icmp eq i32 %27, %13
  br i1 %cmp44.not, label %if.end46, label %lor.lhs.false42.for.inc_crit_edge

lor.lhs.false42.for.inc_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end46:                                         ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #10
  %cur_cmd_info = getelementptr inbounds %struct.nfc_dev, ptr %call16, i32 0, i32 24
  %28 = ptrtoint ptr %cur_cmd_info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %info, ptr %cur_cmd_info, align 8
  %doit = getelementptr %struct.nfc_vendor_cmd, ptr %15, i32 %i.083, i32 2
  %29 = ptrtoint ptr %doit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %doit, align 4
  %call47 = tail call i32 %30(ptr noundef nonnull %call16, ptr noundef %data.0, i32 noundef %data_len.0) #8
  %31 = ptrtoint ptr %cur_cmd_info to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cur_cmd_info, align 8
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end46, %if.end36.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end46 ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false20.cleanup_crit_edge ], [ -19, %lor.lhs.false18.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.then27.cleanup_crit_edge ], [ -95, %if.end36.cleanup_crit_edge ], [ -95, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_deactivate_target(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call6 = tail call ptr @nfc_get_device(i32 noundef %7) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attrs, align 4
  %arrayidx11 = getelementptr ptr, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i22, align 4
  %call13 = tail call i32 @nfc_deactivate_target(ptr noundef nonnull %call6, i32 noundef %13, i8 noundef zeroext 1) #8
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %call6, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfc_genl_send_device(ptr noundef %msg, ptr nocapture noundef readonly %dev, i32 noundef %portid, i32 noundef %seq, ptr noundef %cb, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @nfc_genl_family, i32 noundef %flags, i8 noundef zeroext 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %cb, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %prev_seq.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %0 = ptrtoint ptr %prev_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prev_seq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %if.then2.genl_dump_check_consistent.exit_crit_edge, label %land.lhs.true.i.i

if.then2.genl_dump_check_consistent.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %genl_dump_check_consistent.exit

land.lhs.true.i.i:                                ; preds = %if.then2
  %seq.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %2 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp eq i32 %3, %1
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %genl_dump_check_consistent.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %nlmsg_flags.i.i = getelementptr i8, ptr %call, i32 -14
  %4 = ptrtoint ptr %nlmsg_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlmsg_flags.i.i, align 2
  %6 = or i16 %5, 16
  store i16 %6, ptr %nlmsg_flags.i.i, align 2
  br label %genl_dump_check_consistent.exit

genl_dump_check_consistent.exit:                  ; preds = %if.then.i.i, %land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge, %if.then2.genl_dump_check_consistent.exit_crit_edge
  %seq3.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %7 = ptrtoint ptr %seq3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq3.i.i, align 4
  %9 = ptrtoint ptr %prev_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prev_seq.i.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %genl_dump_check_consistent.exit, %if.end.if.end3_crit_edge
  %call4 = tail call fastcc i32 @nfc_genl_setup_device_added(ptr noundef %dev, ptr noundef %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  br i1 %tobool5.not, label %if.end7, label %if.then.i

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %14, %add.ptr1.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !81

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_dev_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dev_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dev_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_start_poll(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_stop_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_up(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_find_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_build_sdreq_tlv(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_snl_sdreq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_fw_download(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_enable_se(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_disable_se(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfc_se_io(ptr noundef %dev, i32 noundef %se_idx, ptr noundef %apdu, i32 noundef %apdu_length, ptr noundef %cb_context) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_se_io.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_se_io, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i1 = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_se_io.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i1, i32 noundef %se_idx) #8
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %mutex.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %state_in_sysfs.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 0, i32 8
  %4 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %do.end.error_crit_edge, label %if.end10

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end10:                                         ; preds = %do.end
  %dev_up = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %dev_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev_up, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %if.end10.error_crit_edge, label %if.end13

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end13:                                         ; preds = %if.end10
  %ops = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 23
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %se_io = getelementptr inbounds %struct.nfc_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %se_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_io, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end13.error_crit_edge, label %if.end16

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end16:                                         ; preds = %if.end13
  %call17 = tail call ptr @nfc_find_se(ptr noundef %dev, i32 noundef %se_idx) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.error_crit_edge, label %if.end20

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end20:                                         ; preds = %if.end16
  %state = getelementptr inbounds %struct.nfc_se, ptr %call17, i32 0, i32 3
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp.not = icmp eq i16 %13, 1
  br i1 %cmp.not, label %if.end23, label %if.end20.error_crit_edge

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %se_io25 = getelementptr inbounds %struct.nfc_ops, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %se_io25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %se_io25, align 4
  %call26 = tail call i32 %17(ptr noundef %dev, i32 noundef %se_idx, ptr noundef %apdu, i32 noundef %apdu_length, ptr noundef nonnull @se_io_cb, ptr noundef %cb_context) #8
  br label %error

error:                                            ; preds = %if.end23, %if.end20.error_crit_edge, %if.end16.error_crit_edge, %if.end13.error_crit_edge, %if.end10.error_crit_edge, %do.end.error_crit_edge
  %rc.0 = phi i32 [ %call26, %if.end23 ], [ -19, %do.end.error_crit_edge ], [ -19, %if.end10.error_crit_edge ], [ -95, %if.end13.error_crit_edge ], [ -22, %if.end16.error_crit_edge ], [ -19, %if.end20.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @se_io_cb(ptr noundef %context, ptr noundef %apdu, i32 noundef %apdu_len, i32 noundef %err) #0 align 64 {
entry:
  %tmp.i29 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %context) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 27) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_msg_crit_edge, label %if.end4

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.free_msg_crit_edge

if.end4.free_msg_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %if.end4
  %se_idx = getelementptr inbounds %struct.se_io_ctx, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %se_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %se_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i29) #8
  %5 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i29, align 4
  %call.i30 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool8.not = icmp eq i32 %call.i30, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.free_msg_crit_edge

lor.lhs.false.free_msg_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 25, i32 noundef %apdu_len, ptr noundef %apdu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false9.free_msg_crit_edge

lor.lhs.false9.free_msg_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end13:                                         ; preds = %lor.lhs.false9
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %9 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end13
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.genlmsg_multicast.exit_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.genlmsg_multicast.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %genlmsg_multicast.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 308, i32 noundef 9, ptr noundef null) #8
  br label %genlmsg_multicast.exit

if.end39.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %12 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %11, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %10, i32 noundef 3264) #8
  br label %genlmsg_multicast.exit

genlmsg_multicast.exit:                           ; preds = %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.genlmsg_multicast.exit_crit_edge
  call void @kfree(ptr noundef %context) #8
  br label %cleanup

free_msg:                                         ; preds = %lor.lhs.false9.free_msg_crit_edge, %lor.lhs.false.free_msg_crit_edge, %if.end4.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  call void @kfree(ptr noundef %context) #8
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %genlmsg_multicast.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_deactivate_target(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_activate_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfc_genl_rcv_nl_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp.not = icmp eq i32 %event, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %protocol = getelementptr inbounds %struct.netlink_notify, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp1.not = icmp eq i32 %1, 16
  br i1 %cmp1.not, label %do.body, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_genl_rcv_nl_event.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_genl_rcv_nl_event, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !80

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %portid = getelementptr inbounds %struct.netlink_notify, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_genl_rcv_nl_event.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 48) #12
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %do.end.out_crit_edge, label %do.body9

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @nfc_genl_rcv_nl_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry14 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry14, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nfc_urelease_event_work, ptr %func, align 4
  %portid18 = getelementptr inbounds %struct.netlink_notify, ptr %ptr, i32 0, i32 1
  %9 = ptrtoint ptr %portid18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %portid18, align 4
  %portid19 = getelementptr inbounds %struct.urelease_work, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %portid19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %portid19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef nonnull %call7.i) #8
  br label %out

out:                                              ; preds = %do.body9, %do.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfc_urelease_event_work(ptr noundef %work) #0 align 64 {
entry:
  %iter = alloca %struct.class_dev_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iter) #8
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !82
  %1 = getelementptr inbounds %struct.klist_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !82
  %3 = getelementptr inbounds %struct.class_dev_iter, ptr %iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfc_urelease_event_work.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfc_urelease_event_work, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %portid = getelementptr inbounds %struct.urelease_work, ptr %work, i32 0, i32 1
  %5 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %portid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nfc_urelease_event_work.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @nfc_devlist_mutex, i32 noundef 0) #8
  call void @class_dev_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull @nfc_class, ptr noundef null, ptr noundef null) #8
  %call.i = call ptr @class_dev_iter_next(ptr noundef nonnull %iter) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -24
  %tobool5.not3133 = icmp eq ptr %add.ptr.i, null
  %tobool5.not31 = or i1 %tobool.not.i, %tobool5.not3133
  br i1 %tobool5.not31, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %portid7 = getelementptr inbounds %struct.urelease_work, ptr %work, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %dev.032 = phi ptr [ %add.ptr.i, %while.body.lr.ph ], [ %add.ptr.i26, %if.end12.while.body_crit_edge ]
  %genl_data = getelementptr inbounds %struct.nfc_dev, ptr %dev.032, i32 0, i32 12
  %genl_data_mutex = getelementptr inbounds %struct.nfc_dev, ptr %dev.032, i32 0, i32 12, i32 1
  call void @mutex_lock_nested(ptr noundef %genl_data_mutex, i32 noundef 0) #8
  %7 = ptrtoint ptr %genl_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %genl_data, align 4
  %9 = ptrtoint ptr %portid7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %portid7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp eq i32 %8, %10
  br i1 %cmp, label %if.then8, label %while.body.if.end12_crit_edge

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 @nfc_stop_poll(ptr noundef nonnull %dev.032) #8
  %11 = ptrtoint ptr %genl_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %genl_data, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %while.body.if.end12_crit_edge
  call void @mutex_unlock(ptr noundef %genl_data_mutex) #8
  %call.i24 = call ptr @class_dev_iter_next(ptr noundef nonnull %iter) #8
  %tobool.not.i25 = icmp eq ptr %call.i24, null
  %add.ptr.i26 = getelementptr i8, ptr %call.i24, i32 -24
  %tobool5.not34 = icmp eq ptr %add.ptr.i26, null
  %tobool5.not = or i1 %tobool.not.i25, %tobool5.not34
  br i1 %tobool5.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %do.end.while.end_crit_edge
  call void @class_dev_iter_exit(ptr noundef nonnull %iter) #8
  call void @mutex_unlock(ptr noundef nonnull @nfc_devlist_mutex) #8
  call void @kfree(ptr noundef %work) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/netlink.c", i32 388, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nfc_genl_llc_send_sdres.__UNIQUE_ID_ddebug457, !1, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/nfc/netlink.c", i32 653, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nfc_genl_dep_link_up_event.__UNIQUE_ID_ddebug458, !8, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/nfc/netlink.c", i32 691, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfc_genl_dep_link_down_event.__UNIQUE_ID_ddebug459, !13, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab___nfc_alloc_vendor_cmd_reply_skb, !18, !"__ksymtab___nfc_alloc_vendor_cmd_reply_skb", i1 false, i1 false}
!18 = !{!"../net/nfc/netlink.c", i32 1639, i32 1}
!19 = !{ptr @__ksymtab_nfc_vendor_cmd_reply, !20, !"__ksymtab_nfc_vendor_cmd_reply", i1 false, i1 false}
!20 = !{!"../net/nfc/netlink.c", i32 1657, i32 1}
!21 = !{ptr @nfc_genl_data_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../net/nfc/netlink.c", i32 1854, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfc_genl_family, !28, !"nfc_genl_family", i1 false, i1 false}
!28 = !{!"../net/nfc/netlink.c", i32 1777, i32 27}
!29 = !{ptr @nfc_genl_policy, !30, !"nfc_genl_policy", i1 false, i1 false}
!30 = !{!"../net/nfc/netlink.c", i32 30, i32 32}
!31 = !{ptr @nfc_genl_ops, !32, !"nfc_genl_ops", i1 false, i1 false}
!32 = !{!"../net/nfc/netlink.c", i32 1659, i32 30}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/net/netlink.h", i32 991, i32 3}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/nfc/netlink.c", i32 804, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nfc_genl_start_poll.__UNIQUE_ID_ddebug460, !36, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!39 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/nfc/netlink.c", i32 938, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nfc_genl_dep_link_up.__UNIQUE_ID_ddebug461, !41, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!44 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nfc_sdp_genl_policy, !46, !"nfc_sdp_genl_policy", i1 false, i1 false}
!46 = !{!"../net/nfc/netlink.c", i32 55, i32 32}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/nfc/netlink.c", i32 1412, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nfc_se_io.__UNIQUE_ID_ddebug462, !48, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!51 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nfc_genl_mcgrps, !53, !"nfc_genl_mcgrps", i1 false, i1 false}
!53 = !{!"../net/nfc/netlink.c", i32 25, i32 42}
!54 = !{ptr @nl_notifier, !55, !"nl_notifier", i1 false, i1 false}
!55 = !{!"../net/nfc/netlink.c", i32 1862, i32 30}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/nfc/netlink.c", i32 1838, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nfc_genl_rcv_nl_event.__UNIQUE_ID_ddebug464, !57, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!60 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nfc_genl_rcv_nl_event.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/nfc/netlink.c", i32 1842, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/nfc/netlink.c", i32 1802, i32 2}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nfc_urelease_event_work.__UNIQUE_ID_ddebug463, !65, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!68 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i8 0, i8 2}
!80 = !{i64 2148932106, i64 2148932111, i64 2148932124, i64 2148932168, i64 2148932202, i64 2148932223}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{!"auto-init"}
