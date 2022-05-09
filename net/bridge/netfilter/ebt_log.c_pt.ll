; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_log.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_log.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.arppayload = type { [6 x i8], [4 x i8], [6 x i8], [4 x i8] }
%struct.nf_loginfo = type { i8, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i16, i16, i16 }
%struct.xt_action_param = type { %union.anon.144, %union.anon.145, ptr, i32, i16, i8 }
%union.anon.144 = type { ptr }
%union.anon.145 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ebt_log_info = type { i8, [30 x i8], i32 }
%struct.anon.99 = type { i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, i32, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.tcpudphdr = type { i16, i16 }

@ebt_log_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"log\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_log_tg, ptr @ebt_log_tg_check, ptr null, ptr null, ptr null, i32 36, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_log__498_223_ebt_log_init6 = internal global ptr @ebt_log_init, section ".initcall6.init", align 4
@__exitcall_ebt_log_fini = internal global ptr @ebt_log_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description499 = internal constant [55 x i8] c"ebt_log.description=Ebtables: Packet logging to syslog\00", section ".modinfo", align 1
@__UNIQUE_ID_file500 = internal constant [42 x i8] c"ebt_log.file=net/bridge/netfilter/ebt_log\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [20 x i8] c"ebt_log.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@sysctl_nf_log_all_netns = external dso_local local_unnamed_addr global i32, align 4
@ebt_log_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\01%c%s IN=%s OUT=%s MAC source = %pM MAC dest = %pM proto = 0x%04x\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ebt_log_packet\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/bridge/netfilter/ebt_log.c\00", [33 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr = internal global ptr @ebt_log_packet._entry, section ".printk_index", align 4
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ebt_log_packet._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c INCOMPLETE IP header\00", [40 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.7 = internal global ptr @ebt_log_packet._entry.5, section ".printk_index", align 4
@ebt_log_packet._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\01c IP SRC=%pI4 IP DST=%pI4, IP tos=0x%02X, IP proto=%d\00", [41 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.10 = internal global ptr @ebt_log_packet._entry.8, section ".printk_index", align 4
@ebt_log_packet._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c INCOMPLETE IPv6 header\00", [38 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.13 = internal global ptr @ebt_log_packet._entry.11, section ".printk_index", align 4
@ebt_log_packet._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\01c IPv6 SRC=%pI6 IPv6 DST=%pI6, IPv6 priority=0x%01X, Next Header=%d\00", [59 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.16 = internal global ptr @ebt_log_packet._entry.14, section ".printk_index", align 4
@ebt_log_packet._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\01c INCOMPLETE ARP header\00", [39 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.19 = internal global ptr @ebt_log_packet._entry.17, section ".printk_index", align 4
@ebt_log_packet._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\01c ARP HTYPE=%d, PTYPE=0x%04x, OPCODE=%d\00", [55 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.22 = internal global ptr @ebt_log_packet._entry.20, section ".printk_index", align 4
@ebt_log_packet._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c INCOMPLETE ARP payload\00", [38 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.25 = internal global ptr @ebt_log_packet._entry.23, section ".printk_index", align 4
@ebt_log_packet._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\01c ARP MAC SRC=%pM ARP IP SRC=%pI4 ARP MAC DST=%pM ARP IP DST=%pI4\00", [61 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.28 = internal global ptr @ebt_log_packet._entry.26, section ".printk_index", align 4
@ebt_log_packet._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@ebt_log_packet._entry_ptr.31 = internal global ptr @ebt_log_packet._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ebt_log_lock\00", [19 x i8] zeroinitializer }, align 32
@print_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\01c INCOMPLETE TCP/UDP header\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"print_ports\00", [20 x i8] zeroinitializer }, align 32
@print_ports._entry_ptr = internal global ptr @print_ports._entry, section ".printk_index", align 4
@print_ports._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c SPT=%u DPT=%u\00", [47 x i8] zeroinitializer }, align 32
@print_ports._entry_ptr.37 = internal global ptr @print_ports._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 32821]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 8, i64 6, i64 17, i64 33, i64 132, i64 136]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 195, i32 40 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"ebt_log_lock\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 86, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 104, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 107, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 124, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 127, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 146, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 149, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 165, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 168, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 174, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 26, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 66, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [34 x i8] c"../net/bridge/netfilter/ebt_log.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 69, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_ebt_log_fini, ptr @__initcall__kmod_ebt_log__498_223_ebt_log_init6, ptr @ebt_log_fini, ptr @ebt_log_packet._entry, ptr @ebt_log_packet._entry.11, ptr @ebt_log_packet._entry.14, ptr @ebt_log_packet._entry.17, ptr @ebt_log_packet._entry.20, ptr @ebt_log_packet._entry.23, ptr @ebt_log_packet._entry.26, ptr @ebt_log_packet._entry.29, ptr @ebt_log_packet._entry.5, ptr @ebt_log_packet._entry.8, ptr @ebt_log_packet._entry_ptr, ptr @ebt_log_packet._entry_ptr.10, ptr @ebt_log_packet._entry_ptr.13, ptr @ebt_log_packet._entry_ptr.16, ptr @ebt_log_packet._entry_ptr.19, ptr @ebt_log_packet._entry_ptr.22, ptr @ebt_log_packet._entry_ptr.25, ptr @ebt_log_packet._entry_ptr.28, ptr @ebt_log_packet._entry_ptr.31, ptr @ebt_log_packet._entry_ptr.7, ptr @print_ports._entry, ptr @print_ports._entry.35, ptr @print_ports._entry_ptr, ptr @print_ports._entry_ptr.37, ptr @.str, ptr @ebt_log_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_log_packet._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_ports._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_log_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_target(ptr noundef nonnull @ebt_log_tg_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_log_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @ebt_log_tg_reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_log_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_iph.i = alloca %struct.iphdr, align 4
  %_iph62.i = alloca %struct.ipv6hdr, align 4
  %nexthdr.i = alloca i8, align 1
  %frag_off.i = alloca i16, align 2
  %_arph.i = alloca %struct.arphdr, align 8
  %_arpp.i = alloca %struct.arppayload, align 1
  %li = alloca %struct.nf_loginfo, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %li) #6
  %3 = call ptr @memset(ptr %li, i32 255, i32 16)
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i, align 4
  %8 = ptrtoint ptr %li to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %li, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %2, align 4
  %u = getelementptr inbounds %struct.nf_loginfo, ptr %li, i32 0, i32 1
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %u, align 4
  %bitmask = getelementptr inbounds %struct.ebt_log_info, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %bitmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bitmask, align 4
  %conv = trunc i32 %13 to i8
  %logflags = getelementptr inbounds %struct.anon.99, ptr %u, i32 0, i32 1
  %14 = ptrtoint ptr %logflags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %logflags, align 1
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %5, align 4
  %conv.i = zext i8 %16 to i32
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %out.i, align 4
  %prefix = getelementptr inbounds %struct.ebt_log_info, ptr %2, i32 0, i32 1
  call void (ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ...) @nf_log_packet(ptr noundef %7, i8 noundef zeroext 7, i32 noundef %conv.i, ptr noundef %skb, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %li, ptr noundef nonnull @.str, ptr noundef %prefix) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %in.i30 = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %in.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in.i30, align 4
  %out.i32 = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %out.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out.i32, align 4
  %prefix9 = getelementptr inbounds %struct.ebt_log_info, ptr %2, i32 0, i32 1
  %_iph.sroa.gep98.i = getelementptr inbounds %struct.iphdr, ptr %_iph.i, i32 0, i32 6
  %_iph.sroa.gep95.i = getelementptr inbounds %struct.iphdr, ptr %_iph.i, i32 0, i32 1
  %_iph.sroa.gep92.i = getelementptr inbounds %struct.iphdr, ptr %_iph.i, i32 0, i32 9
  %_iph.sroa.gep.i = getelementptr inbounds %struct.iphdr, ptr %_iph.i, i32 0, i32 8
  %_iph62.sroa.gep88.i = getelementptr inbounds %struct.ipv6hdr, ptr %_iph62.i, i32 0, i32 3
  %_iph62.sroa.gep85.i = getelementptr inbounds %struct.ipv6hdr, ptr %_iph62.i, i32 0, i32 6
  %_iph62.sroa.gep.i = getelementptr inbounds %struct.ipv6hdr, ptr %_iph62.i, i32 0, i32 5
  %_arph.sroa.gep81.i = getelementptr inbounds %struct.arphdr, ptr %_arph.i, i32 0, i32 4
  %_arph.sroa.gep.i = getelementptr inbounds %struct.arphdr, ptr %_arph.i, i32 0, i32 1
  %cmp.i.not.i = icmp eq ptr %7, @init_net
  br i1 %cmp.i.not.i, label %if.else.if.end.i_crit_edge, label %land.lhs.true.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_nf_log_all_netns to i32))
  %25 = load i32, ptr @sysctl_nf_log_all_netns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ebt_log_lock) #6
  %26 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %u, align 4
  %conv.i33 = zext i8 %27 to i32
  %add.i = add nuw nsw i32 %conv.i33, 48
  %tobool2.not.i = icmp eq ptr %22, null
  %spec.select.i = select i1 %tobool2.not.i, ptr @.str.4, ptr %22
  %tobool3.not.i = icmp eq ptr %24, null
  %cond9.i = select i1 %tobool3.not.i, ptr @.str.4, ptr %24
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %30 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %31 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %h_proto.i, align 1
  %conv15.i = zext i16 %33 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %add.i, ptr noundef %prefix9, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %cond9.i, ptr noundef %h_source.i, ptr noundef %add.ptr.i.i.i, i32 noundef %conv15.i) #9
  %34 = ptrtoint ptr %li to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %li, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i = icmp eq i8 %35, 0
  br i1 %cmp.i, label %if.end22.i, label %if.end.i.land.lhs.true24.i_crit_edge

if.end.i.land.lhs.true24.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true24.i

if.end22.i:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %logflags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %logflags, align 1
  %conv21.i = zext i8 %37 to i32
  %and.i = and i32 %conv21.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %if.end22.i.if.end51.i_crit_edge, label %if.end22.i.land.lhs.true24.i_crit_edge

if.end22.i.land.lhs.true24.i_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true24.i

if.end22.i.if.end51.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

land.lhs.true24.i:                                ; preds = %if.end22.i.land.lhs.true24.i_crit_edge, %if.end.i.land.lhs.true24.i_crit_edge
  %bitmask.056.i = phi i32 [ %conv21.i, %if.end22.i.land.lhs.true24.i_crit_edge ], [ 15, %if.end.i.land.lhs.true24.i_crit_edge ]
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i, align 8
  %40 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i11.i = zext i16 %41 to i32
  %add.ptr.i.i12.i = getelementptr i8, ptr %39, i32 %conv.i.i11.i
  %h_proto26.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i12.i, i32 0, i32 2
  %42 = ptrtoint ptr %h_proto26.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %h_proto26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %43)
  %cmp28.i = icmp eq i16 %43, 2048
  br i1 %cmp28.i, label %if.then30.i, label %land.lhs.true24.i.if.end51.i_crit_edge

land.lhs.true24.i.if.end51.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then30.i:                                      ; preds = %land.lhs.true24.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i) #6
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %44 = call ptr @memset(ptr %_iph.i, i32 255, i32 20)
  %45 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i4.i.i = sub i32 %46, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 20
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !77

if.end.i.i.i:                                     ; preds = %if.then30.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.do.end37.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.do.end37.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_iph.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.do.end37.i_crit_edge, label %lor.lhs.false.i.i.i.do.end43.i_crit_edge

lor.lhs.false.i.i.i.do.end43.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i

lor.lhs.false.i.i.i.do.end37.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37.i

skb_header_pointer.exit.i:                        ; preds = %if.then30.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i, align 4
  %.sroa.gep97.i = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 6
  %.sroa.gep94.i = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 1
  %.sroa.gep91.i = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 9
  %.sroa.gep89.i = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 8
  %cmp32.i = icmp eq ptr %50, null
  br i1 %cmp32.i, label %skb_header_pointer.exit.i.do.end37.i_crit_edge, label %skb_header_pointer.exit.i.do.end43.i_crit_edge

skb_header_pointer.exit.i.do.end43.i_crit_edge:   ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i

skb_header_pointer.exit.i.do.end37.i_crit_edge:   ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37.i

do.end37.i:                                       ; preds = %skb_header_pointer.exit.i.do.end37.i_crit_edge, %lor.lhs.false.i.i.i.do.end37.i_crit_edge, %if.end.i.i.i.do.end37.i_crit_edge
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup.i

do.end43.i:                                       ; preds = %skb_header_pointer.exit.i.do.end43.i_crit_edge, %lor.lhs.false.i.i.i.do.end43.i_crit_edge
  %retval.0.i.i63.i = phi ptr [ %50, %skb_header_pointer.exit.i.do.end43.i_crit_edge ], [ %_iph.i, %lor.lhs.false.i.i.i.do.end43.i_crit_edge ]
  %retval.0.i.i63.sroa.phi.i = phi ptr [ %.sroa.gep89.i, %skb_header_pointer.exit.i.do.end43.i_crit_edge ], [ %_iph.sroa.gep.i, %lor.lhs.false.i.i.i.do.end43.i_crit_edge ]
  %retval.0.i.i63.sroa.phi90.i = phi ptr [ %.sroa.gep91.i, %skb_header_pointer.exit.i.do.end43.i_crit_edge ], [ %_iph.sroa.gep92.i, %lor.lhs.false.i.i.i.do.end43.i_crit_edge ]
  %retval.0.i.i63.sroa.phi93.i = phi ptr [ %.sroa.gep94.i, %skb_header_pointer.exit.i.do.end43.i_crit_edge ], [ %_iph.sroa.gep95.i, %lor.lhs.false.i.i.i.do.end43.i_crit_edge ]
  %retval.0.i.i63.sroa.phi96.i = phi ptr [ %.sroa.gep97.i, %skb_header_pointer.exit.i.do.end43.i_crit_edge ], [ %_iph.sroa.gep98.i, %lor.lhs.false.i.i.i.do.end43.i_crit_edge ]
  %51 = ptrtoint ptr %retval.0.i.i63.sroa.phi93.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %retval.0.i.i63.sroa.phi93.i, align 1
  %conv45.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %retval.0.i.i63.sroa.phi96.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %retval.0.i.i63.sroa.phi96.i, align 1
  %conv46.i = zext i8 %54 to i32
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i.i63.sroa.phi.i, ptr noundef %retval.0.i.i63.sroa.phi90.i, i32 noundef %conv45.i, i32 noundef %conv46.i) #9
  %55 = ptrtoint ptr %retval.0.i.i63.sroa.phi96.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %retval.0.i.i63.sroa.phi96.i, align 1
  %57 = ptrtoint ptr %retval.0.i.i63.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i = load i8, ptr %retval.0.i.i63.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %58 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %58 to i32
  call fastcc void @print_ports(ptr noundef %skb, i8 noundef zeroext %56, i32 noundef %mul.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end43.i, %do.end37.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i) #6
  br label %do.end174.i

if.end51.i:                                       ; preds = %land.lhs.true24.i.if.end51.i_crit_edge, %if.end22.i.if.end51.i_crit_edge
  %bitmask.057.i = phi i32 [ %bitmask.056.i, %land.lhs.true24.i.if.end51.i_crit_edge ], [ %conv21.i, %if.end22.i.if.end51.i_crit_edge ]
  %and52.i = and i32 %bitmask.057.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end51.i.if.end96.i_crit_edge, label %land.lhs.true54.i

if.end51.i.if.end96.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

land.lhs.true54.i:                                ; preds = %if.end51.i
  %59 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i.i, align 8
  %61 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i15.i = zext i16 %62 to i32
  %add.ptr.i.i16.i = getelementptr i8, ptr %60, i32 %conv.i.i15.i
  %h_proto56.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i16.i, i32 0, i32 2
  %63 = ptrtoint ptr %h_proto56.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %h_proto56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %64)
  %cmp58.i = icmp eq i16 %64, -31011
  br i1 %cmp58.i, label %if.then60.i, label %land.lhs.true54.i.if.end96.i_crit_edge

land.lhs.true54.i.if.end96.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then60.i:                                      ; preds = %land.lhs.true54.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_iph62.i) #6
  %65 = call ptr @memset(ptr %_iph62.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #6
  %66 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !78
  %len.i.i17.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %67 = ptrtoint ptr %len.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len.i.i17.i, align 4
  %data_len.i.i18.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %69 = ptrtoint ptr %data_len.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_len.i.i18.i, align 8
  %sub.i4.i19.i = sub i32 %68, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i19.i)
  %cmp.not.i.i20.i = icmp slt i32 %sub.i4.i19.i, 40
  br i1 %cmp.not.i.i20.i, label %if.end.i.i24.i, label %skb_header_pointer.exit30.i, !prof !77

if.end.i.i24.i:                                   ; preds = %if.then60.i
  %tobool2.not.i.i23.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i23.i, label %if.end.i.i24.i.do.end69.i_crit_edge, label %lor.lhs.false.i.i28.i

if.end.i.i24.i.do.end69.i_crit_edge:              ; preds = %if.end.i.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69.i

lor.lhs.false.i.i28.i:                            ; preds = %if.end.i.i24.i
  %call.i.i25.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_iph62.i, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i)
  %cmp3.i.i26.i = icmp slt i32 %call.i.i25.i, 0
  br i1 %cmp3.i.i26.i, label %lor.lhs.false.i.i28.i.do.end69.i_crit_edge, label %lor.lhs.false.i.i28.i.do.end75.i_crit_edge

lor.lhs.false.i.i28.i.do.end75.i_crit_edge:       ; preds = %lor.lhs.false.i.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75.i

lor.lhs.false.i.i28.i.do.end69.i_crit_edge:       ; preds = %lor.lhs.false.i.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69.i

skb_header_pointer.exit30.i:                      ; preds = %if.then60.i
  %data.i21.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %71 = ptrtoint ptr %data.i21.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i21.i, align 4
  %.sroa.gep87.i = getelementptr inbounds %struct.ipv6hdr, ptr %72, i32 0, i32 3
  %.sroa.gep84.i = getelementptr inbounds %struct.ipv6hdr, ptr %72, i32 0, i32 6
  %.sroa.gep82.i = getelementptr inbounds %struct.ipv6hdr, ptr %72, i32 0, i32 5
  %cmp64.i = icmp eq ptr %72, null
  br i1 %cmp64.i, label %skb_header_pointer.exit30.i.do.end69.i_crit_edge, label %skb_header_pointer.exit30.i.do.end75.i_crit_edge

skb_header_pointer.exit30.i.do.end75.i_crit_edge: ; preds = %skb_header_pointer.exit30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75.i

skb_header_pointer.exit30.i.do.end69.i_crit_edge: ; preds = %skb_header_pointer.exit30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69.i

do.end69.i:                                       ; preds = %skb_header_pointer.exit30.i.do.end69.i_crit_edge, %lor.lhs.false.i.i28.i.do.end69.i_crit_edge, %if.end.i.i24.i.do.end69.i_crit_edge
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %cleanup91.i

do.end75.i:                                       ; preds = %skb_header_pointer.exit30.i.do.end75.i_crit_edge, %lor.lhs.false.i.i28.i.do.end75.i_crit_edge
  %retval.0.i.i2970.i = phi ptr [ %72, %skb_header_pointer.exit30.i.do.end75.i_crit_edge ], [ %_iph62.i, %lor.lhs.false.i.i28.i.do.end75.i_crit_edge ]
  %retval.0.i.i2970.sroa.phi.i = phi ptr [ %.sroa.gep82.i, %skb_header_pointer.exit30.i.do.end75.i_crit_edge ], [ %_iph62.sroa.gep.i, %lor.lhs.false.i.i28.i.do.end75.i_crit_edge ]
  %retval.0.i.i2970.sroa.phi83.i = phi ptr [ %.sroa.gep84.i, %skb_header_pointer.exit30.i.do.end75.i_crit_edge ], [ %_iph62.sroa.gep85.i, %lor.lhs.false.i.i28.i.do.end75.i_crit_edge ]
  %retval.0.i.i2970.sroa.phi86.i = phi ptr [ %.sroa.gep87.i, %skb_header_pointer.exit30.i.do.end75.i_crit_edge ], [ %_iph62.sroa.gep88.i, %lor.lhs.false.i.i28.i.do.end75.i_crit_edge ]
  %73 = ptrtoint ptr %retval.0.i.i2970.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load79.i = load i8, ptr %retval.0.i.i2970.i, align 4
  %bf.clear80.i = and i8 %bf.load79.i, 15
  %conv81.i = zext i8 %bf.clear80.i to i32
  %74 = ptrtoint ptr %retval.0.i.i2970.sroa.phi86.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %retval.0.i.i2970.sroa.phi86.i, align 2
  %conv83.i = zext i8 %75 to i32
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i2970.sroa.phi.i, ptr noundef %retval.0.i.i2970.sroa.phi83.i, i32 noundef %conv81.i, i32 noundef %conv83.i) #9
  %76 = ptrtoint ptr %retval.0.i.i2970.sroa.phi86.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %retval.0.i.i2970.sroa.phi86.i, align 2
  %78 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %nexthdr.i, align 1
  %call86.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr.i, ptr noundef nonnull %frag_off.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call86.i)
  %cmp87.i = icmp eq i32 %call86.i, -1
  br i1 %cmp87.i, label %do.end75.i.cleanup91.i_crit_edge, label %if.end90.i

do.end75.i.cleanup91.i_crit_edge:                 ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup91.i

if.end90.i:                                       ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %nexthdr.i, align 1
  call fastcc void @print_ports(ptr noundef %skb, i8 noundef zeroext %80, i32 noundef %call86.i) #6
  br label %cleanup91.i

cleanup91.i:                                      ; preds = %if.end90.i, %do.end75.i.cleanup91.i_crit_edge, %do.end69.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph62.i) #6
  br label %do.end174.i

if.end96.i:                                       ; preds = %land.lhs.true54.i.if.end96.i_crit_edge, %if.end51.i.if.end96.i_crit_edge
  %and97.i = and i32 %bitmask.057.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.end96.i.do.end174.i_crit_edge, label %land.lhs.true99.i

if.end96.i.do.end174.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end174.i

land.lhs.true99.i:                                ; preds = %if.end96.i
  %81 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head.i.i.i, align 8
  %83 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i33.i = zext i16 %84 to i32
  %add.ptr.i.i34.i = getelementptr i8, ptr %82, i32 %conv.i.i33.i
  %h_proto101.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i34.i, i32 0, i32 2
  %85 = ptrtoint ptr %h_proto101.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %h_proto101.i, align 1
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i16 %86, label %land.lhs.true99.i.do.end174.i_crit_edge [
    i16 2054, label %land.lhs.true99.i.if.then110.i_crit_edge
    i16 -32715, label %land.lhs.true99.i.if.then110.i_crit_edge41
  ]

land.lhs.true99.i.if.then110.i_crit_edge41:       ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110.i

land.lhs.true99.i.if.then110.i_crit_edge:         ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110.i

land.lhs.true99.i.do.end174.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end174.i

if.then110.i:                                     ; preds = %land.lhs.true99.i.if.then110.i_crit_edge, %land.lhs.true99.i.if.then110.i_crit_edge41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_arph.i) #6
  %len.i.i39.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %88 = ptrtoint ptr %_arph.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 -1, ptr %_arph.i, align 8
  %89 = ptrtoint ptr %len.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len.i.i39.i, align 4
  %data_len.i.i40.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %91 = ptrtoint ptr %data_len.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len.i.i40.i, align 8
  %sub.i4.i41.i = sub i32 %90, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i41.i)
  %cmp.not.i.i42.i = icmp slt i32 %sub.i4.i41.i, 8
  br i1 %cmp.not.i.i42.i, label %if.end.i.i46.i, label %skb_header_pointer.exit52.i, !prof !77

if.end.i.i46.i:                                   ; preds = %if.then110.i
  %tobool2.not.i.i45.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i45.i, label %if.end.i.i46.i.do.end117.i_crit_edge, label %lor.lhs.false.i.i50.i

if.end.i.i46.i.do.end117.i_crit_edge:             ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end117.i

lor.lhs.false.i.i50.i:                            ; preds = %if.end.i.i46.i
  %call.i.i47.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_arph.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47.i)
  %cmp3.i.i48.i = icmp slt i32 %call.i.i47.i, 0
  br i1 %cmp3.i.i48.i, label %lor.lhs.false.i.i50.i.do.end117.i_crit_edge, label %lor.lhs.false.i.i50.i.do.end123.i_crit_edge

lor.lhs.false.i.i50.i.do.end123.i_crit_edge:      ; preds = %lor.lhs.false.i.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123.i

lor.lhs.false.i.i50.i.do.end117.i_crit_edge:      ; preds = %lor.lhs.false.i.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end117.i

skb_header_pointer.exit52.i:                      ; preds = %if.then110.i
  %data.i43.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %93 = ptrtoint ptr %data.i43.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i43.i, align 4
  %.sroa.gep80.i = getelementptr inbounds %struct.arphdr, ptr %94, i32 0, i32 4
  %.sroa.gep.i = getelementptr inbounds %struct.arphdr, ptr %94, i32 0, i32 1
  %cmp112.i = icmp eq ptr %94, null
  br i1 %cmp112.i, label %skb_header_pointer.exit52.i.do.end117.i_crit_edge, label %skb_header_pointer.exit52.i.do.end123.i_crit_edge

skb_header_pointer.exit52.i.do.end123.i_crit_edge: ; preds = %skb_header_pointer.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123.i

skb_header_pointer.exit52.i.do.end117.i_crit_edge: ; preds = %skb_header_pointer.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end117.i

do.end117.i:                                      ; preds = %skb_header_pointer.exit52.i.do.end117.i_crit_edge, %lor.lhs.false.i.i50.i.do.end117.i_crit_edge, %if.end.i.i46.i.do.end117.i_crit_edge
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %cleanup164.i

do.end123.i:                                      ; preds = %skb_header_pointer.exit52.i.do.end123.i_crit_edge, %lor.lhs.false.i.i50.i.do.end123.i_crit_edge
  %retval.0.i.i5177.i = phi ptr [ %94, %skb_header_pointer.exit52.i.do.end123.i_crit_edge ], [ %_arph.i, %lor.lhs.false.i.i50.i.do.end123.i_crit_edge ]
  %retval.0.i.i5177.sroa.phi.i = phi ptr [ %.sroa.gep.i, %skb_header_pointer.exit52.i.do.end123.i_crit_edge ], [ %_arph.sroa.gep.i, %lor.lhs.false.i.i50.i.do.end123.i_crit_edge ]
  %retval.0.i.i5177.sroa.phi79.i = phi ptr [ %.sroa.gep80.i, %skb_header_pointer.exit52.i.do.end123.i_crit_edge ], [ %_arph.sroa.gep81.i, %lor.lhs.false.i.i50.i.do.end123.i_crit_edge ]
  %95 = ptrtoint ptr %retval.0.i.i5177.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %retval.0.i.i5177.i, align 2
  %conv125.i = zext i16 %96 to i32
  %97 = ptrtoint ptr %retval.0.i.i5177.sroa.phi.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %retval.0.i.i5177.sroa.phi.i, align 2
  %conv126.i = zext i16 %98 to i32
  %99 = ptrtoint ptr %retval.0.i.i5177.sroa.phi79.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %retval.0.i.i5177.sroa.phi79.i, align 2
  %conv127.i = zext i16 %100 to i32
  %call128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv125.i, i32 noundef %conv126.i, i32 noundef %conv127.i) #9
  %101 = ptrtoint ptr %retval.0.i.i5177.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %retval.0.i.i5177.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %102)
  %cmp131.i = icmp eq i16 %102, 1
  br i1 %cmp131.i, label %land.lhs.true133.i, label %do.end123.i.cleanup164.i_crit_edge

do.end123.i.cleanup164.i_crit_edge:               ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup164.i

land.lhs.true133.i:                               ; preds = %do.end123.i
  %ar_hln.i = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i5177.i, i32 0, i32 2
  %103 = ptrtoint ptr %ar_hln.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ar_hln.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %104)
  %cmp135.i = icmp eq i8 %104, 6
  br i1 %cmp135.i, label %land.lhs.true137.i, label %land.lhs.true133.i.cleanup164.i_crit_edge

land.lhs.true133.i.cleanup164.i_crit_edge:        ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup164.i

land.lhs.true137.i:                               ; preds = %land.lhs.true133.i
  %ar_pln.i = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i5177.i, i32 0, i32 3
  %105 = ptrtoint ptr %ar_pln.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ar_pln.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %106)
  %cmp139.i = icmp eq i8 %106, 4
  br i1 %cmp139.i, label %if.then141.i, label %land.lhs.true137.i.cleanup164.i_crit_edge

land.lhs.true137.i.cleanup164.i_crit_edge:        ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup164.i

if.then141.i:                                     ; preds = %land.lhs.true137.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_arpp.i) #6
  %107 = call ptr @memset(ptr %_arpp.i, i32 255, i32 20)
  %108 = ptrtoint ptr %len.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len.i.i39.i, align 4
  %110 = ptrtoint ptr %data_len.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %data_len.i.i40.i, align 8
  %.neg40 = add i32 %109, -8
  %sub.i4.i = sub i32 %.neg40, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !77

if.end.i.i:                                       ; preds = %if.then141.i
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup161.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup161.thread.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup161.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 8, ptr noundef nonnull %_arpp.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup161.thread.i_crit_edge, label %lor.lhs.false.i.i.cleanup161.i_crit_edge

lor.lhs.false.i.i.cleanup161.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup161.i

lor.lhs.false.i.i.cleanup161.thread.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup161.thread.i

skb_header_pointer.exit:                          ; preds = %if.then141.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %112 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %113, i32 8
  %cmp143.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp143.i, label %skb_header_pointer.exit.cleanup161.thread.i_crit_edge, label %skb_header_pointer.exit.cleanup161.i_crit_edge

skb_header_pointer.exit.cleanup161.i_crit_edge:   ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup161.i

skb_header_pointer.exit.cleanup161.thread.i_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup161.thread.i

cleanup161.thread.i:                              ; preds = %skb_header_pointer.exit.cleanup161.thread.i_crit_edge, %lor.lhs.false.i.i.cleanup161.thread.i_crit_edge, %if.end.i.i.cleanup161.thread.i_crit_edge
  %call150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_arpp.i) #6
  br label %cleanup164.i

cleanup161.i:                                     ; preds = %skb_header_pointer.exit.cleanup161.i_crit_edge, %lor.lhs.false.i.i.cleanup161.i_crit_edge
  %retval.0.i.i39 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.cleanup161.i_crit_edge ], [ %_arpp.i, %lor.lhs.false.i.i.cleanup161.i_crit_edge ]
  %ip_src.i = getelementptr inbounds %struct.arppayload, ptr %retval.0.i.i39, i32 0, i32 1
  %mac_dst.i = getelementptr inbounds %struct.arppayload, ptr %retval.0.i.i39, i32 0, i32 2
  %ip_dst.i = getelementptr inbounds %struct.arppayload, ptr %retval.0.i.i39, i32 0, i32 3
  %call160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %retval.0.i.i39, ptr noundef %ip_src.i, ptr noundef %mac_dst.i, ptr noundef %ip_dst.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_arpp.i) #6
  br label %cleanup164.i

cleanup164.i:                                     ; preds = %cleanup161.i, %cleanup161.thread.i, %land.lhs.true137.i.cleanup164.i_crit_edge, %land.lhs.true133.i.cleanup164.i_crit_edge, %do.end123.i.cleanup164.i_crit_edge, %do.end117.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_arph.i) #6
  br label %do.end174.i

do.end174.i:                                      ; preds = %cleanup164.i, %land.lhs.true99.i.do.end174.i_crit_edge, %if.end96.i.do.end174.i_crit_edge, %cleanup91.i, %cleanup.i
  %call176.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ebt_log_lock) #6
  br label %if.end

if.end:                                           ; preds = %do.end174.i, %land.lhs.true.i.if.end_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %li) #6
  ret i32 -3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_log_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %bitmask = getelementptr inbounds %struct.ebt_log_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bitmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitmask, align 4
  %and = and i32 %3, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp = icmp ugt i8 %5, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ebt_log_info, ptr %1, i32 0, i32 1, i32 29
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_packet(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_ports(ptr noundef %skb, i8 noundef zeroext %protocol, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %_ports = alloca %struct.tcpudphdr, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %protocol, label %entry.if.end29_crit_edge [
    i8 6, label %entry.if.then_crit_edge
    i8 17, label %entry.if.then_crit_edge43
    i8 -120, label %entry.if.then_crit_edge44
    i8 -124, label %entry.if.then_crit_edge45
    i8 33, label %entry.if.then_crit_edge46
  ]

entry.if.then_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge43, %entry.if.then_crit_edge44, %entry.if.then_crit_edge45, %entry.if.then_crit_edge46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports) #6
  %1 = ptrtoint ptr %_ports to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %_ports, align 2, !annotation !78
  %2 = getelementptr inbounds %struct.tcpudphdr, ptr %_ports, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !78
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %8 = add i32 %7, %offset
  %sub.i4.i = sub i32 %5, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !77

if.end.i.i:                                       ; preds = %if.then
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.end_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef nonnull %_ports, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.end_crit_edge, label %lor.lhs.false.i.i.do.end23_crit_edge

lor.lhs.false.i.i.do.end23_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

lor.lhs.false.i.i.do.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

skb_header_pointer.exit:                          ; preds = %if.then
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %offset
  %cmp17 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp17, label %skb_header_pointer.exit.do.end_crit_edge, label %skb_header_pointer.exit.do.end23_crit_edge

skb_header_pointer.exit.do.end23_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

skb_header_pointer.exit.do.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %skb_header_pointer.exit.do.end_crit_edge, %lor.lhs.false.i.i.do.end_crit_edge, %if.end.i.i.do.end_crit_edge
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %cleanup

do.end23:                                         ; preds = %skb_header_pointer.exit.do.end23_crit_edge, %lor.lhs.false.i.i.do.end23_crit_edge
  %retval.0.i.i41 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.do.end23_crit_edge ], [ %_ports, %lor.lhs.false.i.i.do.end23_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i.i41 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %retval.0.i.i41, align 2
  %conv25 = zext i16 %12 to i32
  %dst = getelementptr inbounds %struct.tcpudphdr, ptr %retval.0.i.i41, i32 0, i32 1
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dst, align 2
  %conv26 = zext i16 %14 to i32
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv25, i32 noundef %conv26) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports) #6
  br label %if.end29

if.end29:                                         ; preds = %cleanup, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_ebt_log__498_223_ebt_log_init6, !1, !"__initcall__kmod_ebt_log__498_223_ebt_log_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_log.c", i32 223, i32 1}
!2 = !{ptr @__exitcall_ebt_log_fini, !3, !"__exitcall_ebt_log_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_log.c", i32 224, i32 1}
!4 = !{ptr @__UNIQUE_ID_description499, !5, !"__UNIQUE_ID_description499", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_log.c", i32 225, i32 1}
!6 = !{ptr @__UNIQUE_ID_file500, !7, !"__UNIQUE_ID_file500", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_log.c", i32 226, i32 1}
!8 = !{ptr @__UNIQUE_ID_license501, !7, !"__UNIQUE_ID_license501", i1 false, i1 false}
!9 = !{ptr @ebt_log_tg_reg, !10, !"ebt_log_tg_reg", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_log.c", i32 203, i32 25}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/ebt_log.c", i32 195, i32 40}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bridge/netfilter/ebt_log.c", i32 86, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ebt_log_packet._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ebt_log_packet._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/bridge/netfilter/ebt_log.c", i32 104, i32 4}
!22 = !{ptr @ebt_log_packet._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ebt_log_packet._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/bridge/netfilter/ebt_log.c", i32 107, i32 3}
!26 = !{ptr @ebt_log_packet._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ebt_log_packet._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/bridge/netfilter/ebt_log.c", i32 124, i32 4}
!30 = !{ptr @ebt_log_packet._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ebt_log_packet._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/bridge/netfilter/ebt_log.c", i32 127, i32 3}
!34 = !{ptr @ebt_log_packet._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ebt_log_packet._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/bridge/netfilter/ebt_log.c", i32 146, i32 4}
!38 = !{ptr @ebt_log_packet._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ebt_log_packet._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/bridge/netfilter/ebt_log.c", i32 149, i32 3}
!42 = !{ptr @ebt_log_packet._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ebt_log_packet._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/bridge/netfilter/ebt_log.c", i32 165, i32 5}
!46 = !{ptr @ebt_log_packet._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ebt_log_packet._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/bridge/netfilter/ebt_log.c", i32 168, i32 4}
!50 = !{ptr @ebt_log_packet._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ebt_log_packet._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/bridge/netfilter/ebt_log.c", i32 174, i32 2}
!54 = !{ptr @ebt_log_packet._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ebt_log_packet._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/bridge/netfilter/ebt_log.c", i32 26, i32 8}
!58 = !{ptr @ebt_log_lock, !57, !"ebt_log_lock", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/bridge/netfilter/ebt_log.c", i32 66, i32 4}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @print_ports._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @print_ports._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/bridge/netfilter/ebt_log.c", i32 69, i32 3}
!66 = !{ptr @print_ports._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @print_ports._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{!"auto-init"}
