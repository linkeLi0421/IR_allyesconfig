; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_app.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_app.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+register_ip_vs_app\22, \22a\22\09"
module asm "\09.weak\09__crc_register_ip_vs_app\09\09\09\09"
module asm "\09.long\09__crc_register_ip_vs_app\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_ip_vs_app:\09\09\09\09\09"
module asm "\09.asciz \09\22register_ip_vs_app\22\09\09\09\09\09"
module asm "__kstrtabns_register_ip_vs_app:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_ip_vs_app\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_ip_vs_app\09\09\09\09"
module asm "\09.long\09__crc_unregister_ip_vs_app\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_ip_vs_app:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_ip_vs_app\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_ip_vs_app:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_ip_vs_app_inc\22, \22a\22\09"
module asm "\09.weak\09__crc_register_ip_vs_app_inc\09\09\09\09"
module asm "\09.long\09__crc_register_ip_vs_app_inc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_ip_vs_app_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22register_ip_vs_app_inc\22\09\09\09\09\09"
module asm "__kstrtabns_register_ip_vs_app_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_app = type { %struct.list_head, i32, ptr, i16, ptr, %struct.list_head, %struct.list_head, ptr, i16, %struct.atomic_t, %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_vs_seq = type { i32, i32, i32 }
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
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__kstrtab_register_ip_vs_app = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_ip_vs_app = external dso_local constant [0 x i8], align 1
@__ksymtab_register_ip_vs_app = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_ip_vs_app to i32), ptr @__kstrtab_register_ip_vs_app, ptr @__kstrtabns_register_ip_vs_app }, section "___ksymtab+register_ip_vs_app", align 4
@__kstrtab_unregister_ip_vs_app = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_ip_vs_app = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_ip_vs_app = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_ip_vs_app to i32), ptr @__kstrtab_unregister_ip_vs_app, ptr @__kstrtabns_unregister_ip_vs_app }, section "___ksymtab+unregister_ip_vs_app", align 4
@__kstrtab_register_ip_vs_app_inc = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_ip_vs_app_inc = external dso_local constant [0 x i8], align 1
@__ksymtab_register_ip_vs_app_inc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_ip_vs_app_inc to i32), ptr @__kstrtab_register_ip_vs_app_inc, ptr @__kstrtabns_register_ip_vs_app_inc }, section "___ksymtab+register_ip_vs_app_inc", align 4
@__ip_vs_app_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__ip_vs_app_mutex, i64 52), ptr getelementptr (i8, ptr @__ip_vs_app_mutex, i64 52) }, ptr @__ip_vs_app_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip_vs_app\00", [22 x i8] zeroinitializer }, align 32
@ip_vs_app_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ip_vs_app_seq_start, ptr @ip_vs_app_seq_stop, ptr @ip_vs_app_seq_next, ptr @ip_vs_app_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__ip_vs_app_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__ip_vs_app_mutex\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_app_inc_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017IPVS: %s App %s:%u registered\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_app_inc_new\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/ipvs/ip_vs_app.c\00", [33 x i8] zeroinitializer }, align 32
@ip_vs_app_inc_new._entry_ptr = internal global ptr @ip_vs_app_inc_new._entry, section ".printk_index", align 4
@ip_vs_app_inc_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017IPVS: %s App %s:%u unregistered\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_vs_app_inc_release\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_app_inc_release._entry_ptr = internal global ptr @ip_vs_app_inc_release._entry, section ".printk_index", align 4
@vs_fix_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017IPVS: %s(): added delta (%d) to seq\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vs_fix_seq\00", [21 x i8] zeroinitializer }, align 32
@vs_fix_seq._entry_ptr = internal global ptr @vs_fix_seq._entry, section ".printk_index", align 4
@vs_fix_seq._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017IPVS: %s(): added previous_delta (%d) to seq\0A\00", [48 x i8] zeroinitializer }, align 32
@vs_fix_seq._entry_ptr.12 = internal global ptr @vs_fix_seq._entry.10, section ".printk_index", align 4
@vs_fix_ack_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017IPVS: %s(): subtracted delta (%d) from ack_seq\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vs_fix_ack_seq\00", [17 x i8] zeroinitializer }, align 32
@vs_fix_ack_seq._entry_ptr = internal global ptr @vs_fix_ack_seq._entry, section ".printk_index", align 4
@vs_fix_ack_seq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017IPVS: %s(): subtracted previous_delta (%d) from ack_seq\0A\00", [37 x i8] zeroinitializer }, align 32
@vs_fix_ack_seq._entry_ptr.17 = internal global ptr @vs_fix_ack_seq._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prot port    usecnt name\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%-3s  %-7u %-6d %-17s\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 602, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"ip_vs_app_seq_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 591, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 40, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 110, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 135, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 300, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 304, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 329, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 334, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 578, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [34 x i8] c"../net/netfilter/ipvs/ip_vs_app.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 582, i32 19 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_register_ip_vs_app, ptr @__ksymtab_register_ip_vs_app_inc, ptr @__ksymtab_unregister_ip_vs_app, ptr @ip_vs_app_inc_new._entry, ptr @ip_vs_app_inc_new._entry_ptr, ptr @ip_vs_app_inc_release._entry, ptr @ip_vs_app_inc_release._entry_ptr, ptr @vs_fix_ack_seq._entry, ptr @vs_fix_ack_seq._entry.15, ptr @vs_fix_ack_seq._entry_ptr, ptr @vs_fix_ack_seq._entry_ptr.17, ptr @vs_fix_seq._entry, ptr @vs_fix_seq._entry.10, ptr @vs_fix_seq._entry_ptr, ptr @vs_fix_seq._entry_ptr.12, ptr @.str, ptr @ip_vs_app_seq_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_app_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_app_inc_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_app_inc_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs_fix_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs_fix_seq._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs_fix_ack_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs_fix_ack_seq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_ip_vs_app(ptr noundef %ipvs, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @__ip_vs_app_mutex, i32 noundef 0) #7
  %call = tail call i32 @ip_vs_use_count_inc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %if.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end:                                           ; preds = %entry
  %app_list = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 3
  %name = getelementptr inbounds %struct.ip_vs_app, ptr %app, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %a.0.in = phi ptr [ %app_list, %if.end ], [ %a.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %a.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %a.0 = load ptr, ptr %a.0.in, align 4
  %cmp.not = icmp eq ptr %a.0, %app_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %name2 = getelementptr inbounds %struct.ip_vs_app, ptr %a.0, i32 0, i32 2
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %4) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.body.cond.true.sink.split_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cond.true.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.sink.split

for.end:                                          ; preds = %for.cond
  %call12 = tail call ptr @kmemdup(ptr noundef %app, i32 noundef 116, i32 noundef 3264) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.end.cond.true.sink.split_crit_edge, label %if.end15

for.end.cond.true.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.sink.split

if.end15:                                         ; preds = %for.end
  %incs_list = getelementptr inbounds %struct.ip_vs_app, ptr %call12, i32 0, i32 5
  %5 = ptrtoint ptr %incs_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %incs_list, ptr %incs_list, align 4
  %prev.i = getelementptr inbounds %struct.ip_vs_app, ptr %call12, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %incs_list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %app_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %app_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call12, ptr noundef %app_list, ptr noundef %8) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.cond.end_crit_edge

if.end15.cond.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %call12, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call12, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %app_list, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %app_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call12, ptr %app_list, align 4
  br label %cond.end

cond.true.sink.split:                             ; preds = %for.end.cond.true.sink.split_crit_edge, %for.body.cond.true.sink.split_crit_edge
  %err.0.ph.ph = phi ptr [ inttoptr (i32 -12 to ptr), %for.end.cond.true.sink.split_crit_edge ], [ inttoptr (i32 -17 to ptr), %for.body.cond.true.sink.split_crit_edge ]
  tail call void @ip_vs_use_count_dec() #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true.sink.split, %if.end.i.i, %if.end15.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call12, %if.end.i.i ], [ %call12, %if.end15.cond.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.cond.end_crit_edge ], [ %err.0.ph.ph, %cond.true.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @__ip_vs_app_mutex) #7
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_ip_vs_app(ptr noundef %ipvs, ptr noundef readonly %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @__ip_vs_app_mutex, i32 noundef 0) #7
  %app_list = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 3
  %0 = ptrtoint ptr %app_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app_list, align 8
  %cmp.not56 = icmp eq ptr %1, %app_list
  br i1 %cmp.not56, label %entry.for.end36_crit_edge, label %for.body.lr.ph

entry.for.end36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %app, null
  %name = getelementptr inbounds %struct.ip_vs_app, ptr %app, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %for.body.lr.ph
  %a.057 = phi ptr [ %1, %for.body.lr.ph ], [ %anxt.059, %for.inc30.for.body_crit_edge ]
  %2 = ptrtoint ptr %a.057 to i32
  call void @__asan_load4_noabort(i32 %2)
  %anxt.059 = load ptr, ptr %a.057, align 4
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %name7 = getelementptr inbounds %struct.ip_vs_app, ptr %a.057, i32 0, i32 2
  %5 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name7, align 4
  %call = tail call i32 @strcmp(ptr noundef %4, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc30_crit_edge

land.lhs.true.for.inc30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %incs_list = getelementptr inbounds %struct.ip_vs_app, ptr %a.057, i32 0, i32 5
  %7 = ptrtoint ptr %incs_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incs_list, align 4
  %cmp21.not51 = icmp eq ptr %8, %incs_list
  br i1 %cmp21.not51, label %if.end.for.end_crit_edge, label %if.end.for.body23_crit_edge

if.end.for.body23_crit_edge:                      ; preds = %if.end
  br label %for.body23

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body23:                                       ; preds = %ip_vs_app_inc_release.exit.for.body23_crit_edge, %if.end.for.body23_crit_edge
  %inc.052 = phi ptr [ %nxt.0, %ip_vs_app_inc_release.exit.for.body23_crit_edge ], [ %8, %if.end.for.body23_crit_edge ]
  %9 = ptrtoint ptr %inc.052 to i32
  call void @__asan_load4_noabort(i32 %9)
  %nxt.0 = load ptr, ptr %inc.052, align 4
  %protocol.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc.052, i32 0, i32 3
  %10 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol.i, align 4
  %call.i = tail call ptr @ip_vs_proto_get(i16 noundef zeroext %11) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body23.ip_vs_app_inc_release.exit_crit_edge, label %if.end.i

for.body23.ip_vs_app_inc_release.exit_crit_edge:  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip_vs_app_inc_release.exit

if.end.i:                                         ; preds = %for.body23
  %unregister_app.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call.i, i32 0, i32 17
  %12 = ptrtoint ptr %unregister_app.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unregister_app.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then2.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef %ipvs, ptr noundef %inc.052) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.end.i.do.body.i_crit_edge
  %call5.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call5.i)
  %cmp.i = icmp sgt i32 %call5.i, 8
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end12.i_crit_edge

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %name8.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc.052, i32 0, i32 2
  %16 = ptrtoint ptr %name8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name8.i, align 4
  %port.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc.052, i32 0, i32 8
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %port.i, align 4
  %conv.i = zext i16 %19 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %15, ptr noundef %17, i32 noundef %conv.i) #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %inc.052) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end12.i.list_del.exit.i_crit_edge

do.end12.i.list_del.exit.i_crit_edge:             ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %inc.052, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %inc.052 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inc.052, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end12.i.list_del.exit.i_crit_edge
  %26 = ptrtoint ptr %inc.052 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %inc.052, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %inc.052, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %callback_head.i = getelementptr inbounds %struct.ip_vs_app, ptr %inc.052, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @ip_vs_app_inc_rcu_free) #7
  br label %ip_vs_app_inc_release.exit

ip_vs_app_inc_release.exit:                       ; preds = %list_del.exit.i, %for.body23.ip_vs_app_inc_release.exit_crit_edge
  %cmp21.not = icmp eq ptr %nxt.0, %incs_list
  br i1 %cmp21.not, label %ip_vs_app_inc_release.exit.for.end_crit_edge, label %ip_vs_app_inc_release.exit.for.body23_crit_edge

ip_vs_app_inc_release.exit.for.body23_crit_edge:  ; preds = %ip_vs_app_inc_release.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

ip_vs_app_inc_release.exit.for.end_crit_edge:     ; preds = %ip_vs_app_inc_release.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %ip_vs_app_inc_release.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %a.057) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i50 = getelementptr inbounds %struct.list_head, ptr %a.057, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i50, align 4
  %30 = ptrtoint ptr %a.057 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %a.057, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %34 = ptrtoint ptr %a.057 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %a.057, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %a.057, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %a.057) #7
  tail call void @ip_vs_use_count_dec() #7
  br label %for.inc30

for.inc30:                                        ; preds = %list_del.exit, %land.lhs.true.for.inc30_crit_edge
  %cmp.not = icmp eq ptr %anxt.059, %app_list
  br i1 %cmp.not, label %for.inc30.for.end36_crit_edge, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc30.for.end36_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.end36:                                        ; preds = %for.inc30.for.end36_crit_edge, %entry.for.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @__ip_vs_app_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_ip_vs_app_inc(ptr noundef %ipvs, ptr noundef %app, i16 noundef zeroext %proto, i16 noundef zeroext %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @__ip_vs_app_mutex, i32 noundef 0) #7
  %call.i = tail call ptr @ip_vs_proto_get(i16 noundef zeroext %proto) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ip_vs_app_inc_new.exit_crit_edge, label %if.end.i

entry.ip_vs_app_inc_new.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip_vs_app_inc_new.exit

if.end.i:                                         ; preds = %entry
  %unregister_app.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call.i, i32 0, i32 17
  %0 = ptrtoint ptr %unregister_app.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unregister_app.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.ip_vs_app_inc_new.exit_crit_edge, label %if.end3.i

if.end.i.ip_vs_app_inc_new.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip_vs_app_inc_new.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @kmemdup(ptr noundef %app, i32 noundef 116, i32 noundef 3264) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end3.i.ip_vs_app_inc_new.exit_crit_edge, label %if.end7.i

if.end3.i.ip_vs_app_inc_new.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip_vs_app_inc_new.exit

if.end7.i:                                        ; preds = %if.end3.i
  %p_list.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 6
  %2 = ptrtoint ptr %p_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %p_list.i, ptr %p_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %p_list.i, ptr %prev.i.i, align 4
  %incs_list.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 5
  %4 = ptrtoint ptr %incs_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %incs_list.i, ptr %incs_list.i, align 4
  %prev.i55.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i55.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %incs_list.i, ptr %prev.i55.i, align 4
  %app8.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 7
  %6 = ptrtoint ptr %app8.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %app, ptr %app8.i, align 4
  %port9.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 8
  %7 = ptrtoint ptr %port9.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %port, ptr %port9.i, align 4
  %usecnt.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %usecnt.i, align 4
  %timeouts.i = getelementptr inbounds %struct.ip_vs_app, ptr %app, i32 0, i32 18
  %9 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timeouts.i, align 4
  %tobool10.not.i = icmp eq ptr %10, null
  br i1 %tobool10.not.i, label %if.end7.i.if.end18.i_crit_edge, label %if.then11.i

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then11.i:                                      ; preds = %if.end7.i
  %timeouts_size.i = getelementptr inbounds %struct.ip_vs_app, ptr %app, i32 0, i32 19
  %11 = ptrtoint ptr %timeouts_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeouts_size.i, align 4
  %call13.i = tail call ptr @ip_vs_create_timeout_table(ptr noundef nonnull %10, i32 noundef %12) #7
  %timeout_table.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 17
  %13 = ptrtoint ptr %timeout_table.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13.i, ptr %timeout_table.i, align 4
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %if.then11.i.out.i_crit_edge, label %if.then11.i.if.end18.i_crit_edge

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then11.i.out.i_crit_edge:                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end18.i:                                       ; preds = %if.then11.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %register_app.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %register_app.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %register_app.i, align 4
  %call19.i = tail call i32 %15(ptr noundef %ipvs, ptr noundef nonnull %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.out.i_crit_edge

if.end18.i.out.i_crit_edge:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end22.i:                                       ; preds = %if.end18.i
  %incs_list23.i = getelementptr inbounds %struct.ip_vs_app, ptr %app, i32 0, i32 5
  %16 = ptrtoint ptr %incs_list23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %incs_list23.i, align 4
  %call.i.i56.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call4.i, ptr noundef %incs_list23.i, ptr noundef %17) #7
  br i1 %call.i.i56.i, label %if.end.i.i.i, label %if.end22.i.list_add.exit.i_crit_edge

if.end22.i.list_add.exit.i_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4.i, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %call4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %call4.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call4.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incs_list23.i, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %incs_list23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call4.i, ptr %incs_list23.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end22.i.list_add.exit.i_crit_edge
  %call24.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call24.i)
  %cmp.i = icmp sgt i32 %call24.i, 8
  br i1 %cmp.i, label %do.end.i, label %list_add.exit.i.ip_vs_app_inc_new.exit_crit_edge

list_add.exit.i.ip_vs_app_inc_new.exit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip_vs_app_inc_new.exit

do.end.i:                                         ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  %name27.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 2
  %24 = ptrtoint ptr %name27.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name27.i, align 4
  %26 = ptrtoint ptr %port9.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port9.i, align 4
  %conv.i = zext i16 %27 to i32
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %23, ptr noundef %25, i32 noundef %conv.i) #11
  br label %ip_vs_app_inc_new.exit

out.i:                                            ; preds = %if.end18.i.out.i_crit_edge, %if.then11.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call19.i, %if.end18.i.out.i_crit_edge ], [ -12, %if.then11.i.out.i_crit_edge ]
  %timeout_table.i.i = getelementptr inbounds %struct.ip_vs_app, ptr %call4.i, i32 0, i32 17
  %28 = ptrtoint ptr %timeout_table.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %timeout_table.i.i, align 4
  tail call void @kfree(ptr noundef %29) #7
  tail call void @kfree(ptr noundef nonnull %call4.i) #7
  br label %ip_vs_app_inc_new.exit

ip_vs_app_inc_new.exit:                           ; preds = %out.i, %do.end.i, %list_add.exit.i.ip_vs_app_inc_new.exit_crit_edge, %if.end3.i.ip_vs_app_inc_new.exit_crit_edge, %if.end.i.ip_vs_app_inc_new.exit_crit_edge, %entry.ip_vs_app_inc_new.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -93, %entry.ip_vs_app_inc_new.exit_crit_edge ], [ -95, %if.end.i.ip_vs_app_inc_new.exit_crit_edge ], [ -12, %if.end3.i.ip_vs_app_inc_new.exit_crit_edge ], [ 0, %do.end.i ], [ 0, %list_add.exit.i.ip_vs_app_inc_new.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @__ip_vs_app_mutex) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_app_inc_get(ptr noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 7
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %module.i = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %3) #7
  br i1 %call.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usecnt = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #7, !srcloc !56
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv.i = zext i1 %call.i to i32
  ret i32 %conv.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_app_inc_put(ptr noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usecnt = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #7, !srcloc !57
  %app = getelementptr inbounds %struct.ip_vs_app, ptr %inc, i32 0, i32 7
  %1 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %app, align 4
  %module.i = getelementptr inbounds %struct.ip_vs_app, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_use_count_inc() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_use_count_dec() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_bind_app(ptr noundef %cp, ptr nocapture noundef readonly %pp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app_conn_bind = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 18
  %0 = ptrtoint ptr %app_conn_bind to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app_conn_bind, align 4
  %call = tail call i32 %1(ptr noundef %cp) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_unbind_app(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %unbind_conn = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %unbind_conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unbind_conn, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef nonnull %1, ptr noundef %cp) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %done_conn = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %done_conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %done_conn, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %cp) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %usecnt.i = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usecnt.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt.i, ptr %usecnt.i, i32 1, ptr elementtype(i32) %usecnt.i) #7, !srcloc !57
  %app.i = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %app.i, align 4
  %module.i.i = getelementptr inbounds %struct.ip_vs_app, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %module.i.i, align 4
  tail call void @module_put(ptr noundef %10) #7
  %11 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %app, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_app_pkt_out(ptr noundef %cp, ptr noundef %skb, ptr noundef %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  %diff.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app1 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %0 = ptrtoint ptr %app1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %cmp2 = icmp eq i16 %3, 6
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i) #7
  %4 = ptrtoint ptr %diff.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %diff.i, align 4, !annotation !58
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %10 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %mul.i.i, 20
  %call1.i = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.app_tcp_pkt_out.exit_crit_edge

if.then4.app_tcp_pkt_out.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %app_tcp_pkt_out.exit

if.end.i:                                         ; preds = %if.then4
  %11 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i.i, align 8
  %13 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %seq3.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 2
  %15 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq3.i, align 4
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  %out_seq.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28
  %delta.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28, i32 1
  %19 = ptrtoint ptr %delta.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delta.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then5.i.if.then.i.i_crit_edge

if.then5.i.if.then.i.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then5.i
  %previous_delta.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28, i32 2
  %21 = ptrtoint ptr %previous_delta.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %previous_delta.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end6.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i.if.end6.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then5.i.if.then.i.i_crit_edge
  %23 = ptrtoint ptr %out_seq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_seq.i, align 4
  %sub.i.i.i = sub i32 %24, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  %add.i.i = add i32 %20, %16
  %25 = ptrtoint ptr %seq3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i.i, ptr %seq3.i, align 4
  %call6.i.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call6.i.i)
  %cmp.i.i = icmp sgt i32 %call6.i.i, 8
  br i1 %cmp.i.i, label %if.then3.i.i.if.end30.sink.split.i.i_crit_edge, label %if.then3.i.i.if.end6.i_crit_edge

if.then3.i.i.if.end6.i_crit_edge:                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then3.i.i.if.end30.sink.split.i.i_crit_edge:   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %previous_delta13.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28, i32 2
  %26 = ptrtoint ptr %previous_delta13.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %previous_delta13.i.i, align 4
  %add14.i.i = add i32 %27, %16
  %28 = ptrtoint ptr %seq3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add14.i.i, ptr %seq3.i, align 4
  %call17.i.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call17.i.i)
  %cmp18.i.i = icmp sgt i32 %call17.i.i, 8
  br i1 %cmp18.i.i, label %if.else.i.i.if.end30.sink.split.i.i_crit_edge, label %if.else.i.i.if.end6.i_crit_edge

if.else.i.i.if.end6.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.else.i.i.if.end30.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i.i

if.end30.sink.split.i.i:                          ; preds = %if.else.i.i.if.end30.sink.split.i.i_crit_edge, %if.then3.i.i.if.end30.sink.split.i.i_crit_edge
  %delta.sink.i.i = phi ptr [ %delta.i.i, %if.then3.i.i.if.end30.sink.split.i.i_crit_edge ], [ %previous_delta13.i.i, %if.else.i.i.if.end30.sink.split.i.i_crit_edge ]
  %.str.8.sink.i.i = phi ptr [ @.str.8, %if.then3.i.i.if.end30.sink.split.i.i_crit_edge ], [ @.str.11, %if.else.i.i.if.end30.sink.split.i.i_crit_edge ]
  %29 = ptrtoint ptr %delta.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delta.sink.i.i, align 4
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink.i.i, ptr noundef nonnull @.str.9, i32 noundef %30) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end30.sink.split.i.i, %if.else.i.i.if.end6.i_crit_edge, %if.then3.i.i.if.end6.i_crit_edge, %lor.lhs.false.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i, align 4
  %and8.i = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then10.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end6.i
  %in_seq.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27
  %ack_seq1.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 3
  %33 = ptrtoint ptr %ack_seq1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ack_seq1.i.i, align 4
  %delta.i41.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27, i32 1
  %35 = ptrtoint ptr %delta.i41.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delta.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i42.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i42.i, label %lor.lhs.false.i45.i, label %if.then10.i.if.then.i49.i_crit_edge

if.then10.i.if.then.i49.i_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i49.i

lor.lhs.false.i45.i:                              ; preds = %if.then10.i
  %previous_delta.i43.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27, i32 2
  %37 = ptrtoint ptr %previous_delta.i43.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %previous_delta.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool2.not.i44.i = icmp eq i32 %38, 0
  br i1 %tobool2.not.i44.i, label %lor.lhs.false.i45.i.if.end11.i_crit_edge, label %lor.lhs.false.i45.i.if.then.i49.i_crit_edge

lor.lhs.false.i45.i.if.then.i49.i_crit_edge:      ; preds = %lor.lhs.false.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i49.i

lor.lhs.false.i45.i.if.end11.i_crit_edge:         ; preds = %lor.lhs.false.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then.i49.i:                                    ; preds = %lor.lhs.false.i45.i.if.then.i49.i_crit_edge, %if.then10.i.if.then.i49.i_crit_edge
  %39 = ptrtoint ptr %in_seq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %in_seq.i, align 4
  %add.i46.i = sub i32 %36, %34
  %sub.i.i47.i = add i32 %add.i46.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i47.i)
  %cmp.i.i48.i = icmp slt i32 %sub.i.i47.i, 0
  br i1 %cmp.i.i48.i, label %if.then4.i.i, label %if.else.i51.i

if.then4.i.i:                                     ; preds = %if.then.i49.i
  %sub.i.i = sub i32 %34, %36
  %41 = ptrtoint ptr %ack_seq1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.i.i, ptr %ack_seq1.i.i, align 4
  %call7.i.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call7.i.i)
  %cmp.i50.i = icmp sgt i32 %call7.i.i, 8
  br i1 %cmp.i50.i, label %if.then4.i.i.if.end31.sink.split.i.i_crit_edge, label %if.then4.i.i.if.end11.i_crit_edge

if.then4.i.i.if.end11.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then4.i.i.if.end31.sink.split.i.i_crit_edge:   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split.i.i

if.else.i51.i:                                    ; preds = %if.then.i49.i
  %previous_delta14.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27, i32 2
  %42 = ptrtoint ptr %previous_delta14.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %previous_delta14.i.i, align 4
  %sub15.i.i = sub i32 %34, %43
  %44 = ptrtoint ptr %ack_seq1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub15.i.i, ptr %ack_seq1.i.i, align 4
  %call18.i.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call18.i.i)
  %cmp19.i.i = icmp sgt i32 %call18.i.i, 8
  br i1 %cmp19.i.i, label %if.else.i51.i.if.end31.sink.split.i.i_crit_edge, label %if.else.i51.i.if.end11.i_crit_edge

if.else.i51.i.if.end11.i_crit_edge:               ; preds = %if.else.i51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.else.i51.i.if.end31.sink.split.i.i_crit_edge:  ; preds = %if.else.i51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split.i.i

if.end31.sink.split.i.i:                          ; preds = %if.else.i51.i.if.end31.sink.split.i.i_crit_edge, %if.then4.i.i.if.end31.sink.split.i.i_crit_edge
  %delta.sink.i52.i = phi ptr [ %delta.i41.i, %if.then4.i.i.if.end31.sink.split.i.i_crit_edge ], [ %previous_delta14.i.i, %if.else.i51.i.if.end31.sink.split.i.i_crit_edge ]
  %.str.13.sink.i.i = phi ptr [ @.str.13, %if.then4.i.i.if.end31.sink.split.i.i_crit_edge ], [ @.str.16, %if.else.i51.i.if.end31.sink.split.i.i_crit_edge ]
  %45 = ptrtoint ptr %delta.sink.i52.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delta.sink.i52.i, align 4
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.13.sink.i.i, ptr noundef nonnull @.str.14, i32 noundef %46) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end31.sink.split.i.i, %if.else.i51.i.if.end11.i_crit_edge, %if.then4.i.i.if.end11.i_crit_edge, %lor.lhs.false.i45.i.if.end11.i_crit_edge, %if.end6.i.if.end11.i_crit_edge
  %pkt_out.i = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 11
  %47 = ptrtoint ptr %pkt_out.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pkt_out.i, align 4
  %cmp.i = icmp eq ptr %48, null
  br i1 %cmp.i, label %if.end11.i.app_tcp_pkt_out.exit_crit_edge, label %if.end13.i

if.end11.i.app_tcp_pkt_out.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %app_tcp_pkt_out.exit

if.end13.i:                                       ; preds = %if.end11.i
  %call15.i = call i32 %48(ptr noundef nonnull %1, ptr noundef %cp, ptr noundef %skb, ptr noundef nonnull %diff.i, ptr noundef %ipvsh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.app_tcp_pkt_out.exit_crit_edge, label %if.end18.i

if.end13.i.app_tcp_pkt_out.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %app_tcp_pkt_out.exit

if.end18.i:                                       ; preds = %if.end13.i
  %49 = ptrtoint ptr %diff.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %diff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp19.not.i = icmp eq i32 %50, 0
  br i1 %cmp19.not.i, label %if.end18.i.app_tcp_pkt_out.exit_crit_edge, label %if.then20.i

if.end18.i.app_tcp_pkt_out.exit_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %app_tcp_pkt_out.exit

if.then20.i:                                      ; preds = %if.end18.i
  %out_seq21.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28
  %lock.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #7
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i, align 4
  %and.i.i = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i53.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i53.i, label %if.then20.i.if.then.i60.i_crit_edge, label %lor.lhs.false.i56.i

if.then20.i.if.then.i60.i_crit_edge:              ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i60.i

lor.lhs.false.i56.i:                              ; preds = %if.then20.i
  %53 = ptrtoint ptr %out_seq21.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %out_seq21.i, align 4
  %sub.i.i54.i = sub i32 %54, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i54.i)
  %cmp.i.i55.i = icmp slt i32 %sub.i.i54.i, 0
  br i1 %cmp.i.i55.i, label %lor.lhs.false.i56.i.if.then.i60.i_crit_edge, label %lor.lhs.false.i56.i.vs_seq_update.exit.i_crit_edge

lor.lhs.false.i56.i.vs_seq_update.exit.i_crit_edge: ; preds = %lor.lhs.false.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vs_seq_update.exit.i

lor.lhs.false.i56.i.if.then.i60.i_crit_edge:      ; preds = %lor.lhs.false.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i60.i

if.then.i60.i:                                    ; preds = %lor.lhs.false.i56.i.if.then.i60.i_crit_edge, %if.then20.i.if.then.i60.i_crit_edge
  %delta.i57.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28, i32 1
  %55 = ptrtoint ptr %delta.i57.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delta.i57.i, align 4
  %previous_delta.i58.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28, i32 2
  %57 = ptrtoint ptr %previous_delta.i58.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %previous_delta.i58.i, align 4
  %add.i59.i = add i32 %56, %50
  store i32 %add.i59.i, ptr %delta.i57.i, align 4
  %58 = ptrtoint ptr %out_seq21.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %16, ptr %out_seq21.i, align 4
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags.i, align 4
  %or.i.i = or i32 %60, 512
  store volatile i32 %or.i.i, ptr %flags.i, align 4
  br label %vs_seq_update.exit.i

vs_seq_update.exit.i:                             ; preds = %if.then.i60.i, %lor.lhs.false.i56.i.vs_seq_update.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #7
  br label %app_tcp_pkt_out.exit

app_tcp_pkt_out.exit:                             ; preds = %vs_seq_update.exit.i, %if.end18.i.app_tcp_pkt_out.exit_crit_edge, %if.end13.i.app_tcp_pkt_out.exit_crit_edge, %if.end11.i.app_tcp_pkt_out.exit_crit_edge, %if.then4.app_tcp_pkt_out.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then4.app_tcp_pkt_out.exit_crit_edge ], [ 1, %if.end11.i.app_tcp_pkt_out.exit_crit_edge ], [ 0, %if.end13.i.app_tcp_pkt_out.exit_crit_edge ], [ 1, %vs_seq_update.exit.i ], [ 1, %if.end18.i.app_tcp_pkt_out.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pkt_out = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 11
  %61 = ptrtoint ptr %pkt_out to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pkt_out, align 4
  %cmp6 = icmp eq ptr %62, null
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 %62(ptr noundef nonnull %1, ptr noundef %cp, ptr noundef %skb, ptr noundef null, ptr noundef %ipvsh) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %app_tcp_pkt_out.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %app_tcp_pkt_out.exit ], [ %call11, %if.end9 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_app_pkt_in(ptr noundef %cp, ptr noundef %skb, ptr noundef %ipvsh) local_unnamed_addr #0 align 64 {
entry:
  %diff.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app1 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %0 = ptrtoint ptr %app1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %cmp2 = icmp eq i16 %3, 6
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i) #7
  %4 = ptrtoint ptr %diff.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %diff.i, align 4, !annotation !58
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %8 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %10 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %mul.i.i, 20
  %call1.i = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.app_tcp_pkt_in.exit_crit_edge

if.then4.app_tcp_pkt_in.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %app_tcp_pkt_in.exit

if.end.i:                                         ; preds = %if.then4
  %11 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i.i, align 8
  %13 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %seq3.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 2
  %15 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq3.i, align 4
  %flags.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  %in_seq.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27
  %delta.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27, i32 1
  %19 = ptrtoint ptr %delta.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delta.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then5.i.if.then.i.i_crit_edge

if.then5.i.if.then.i.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then5.i
  %previous_delta.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27, i32 2
  %21 = ptrtoint ptr %previous_delta.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %previous_delta.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end6.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i.if.end6.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then5.i.if.then.i.i_crit_edge
  %23 = ptrtoint ptr %in_seq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_seq.i, align 4
  %sub.i.i.i = sub i32 %24, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  %add.i.i = add i32 %20, %16
  %25 = ptrtoint ptr %seq3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i.i, ptr %seq3.i, align 4
  %call6.i.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call6.i.i)
  %cmp.i.i = icmp sgt i32 %call6.i.i, 8
  br i1 %cmp.i.i, label %if.then3.i.i.if.end30.sink.split.i.i_crit_edge, label %if.then3.i.i.if.end6.i_crit_edge

if.then3.i.i.if.end6.i_crit_edge:                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then3.i.i.if.end30.sink.split.i.i_crit_edge:   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %previous_delta13.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27, i32 2
  %26 = ptrtoint ptr %previous_delta13.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %previous_delta13.i.i, align 4
  %add14.i.i = add i32 %27, %16
  %28 = ptrtoint ptr %seq3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add14.i.i, ptr %seq3.i, align 4
  %call17.i.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call17.i.i)
  %cmp18.i.i = icmp sgt i32 %call17.i.i, 8
  br i1 %cmp18.i.i, label %if.else.i.i.if.end30.sink.split.i.i_crit_edge, label %if.else.i.i.if.end6.i_crit_edge

if.else.i.i.if.end6.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.else.i.i.if.end30.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split.i.i

if.end30.sink.split.i.i:                          ; preds = %if.else.i.i.if.end30.sink.split.i.i_crit_edge, %if.then3.i.i.if.end30.sink.split.i.i_crit_edge
  %delta.sink.i.i = phi ptr [ %delta.i.i, %if.then3.i.i.if.end30.sink.split.i.i_crit_edge ], [ %previous_delta13.i.i, %if.else.i.i.if.end30.sink.split.i.i_crit_edge ]
  %.str.8.sink.i.i = phi ptr [ @.str.8, %if.then3.i.i.if.end30.sink.split.i.i_crit_edge ], [ @.str.11, %if.else.i.i.if.end30.sink.split.i.i_crit_edge ]
  %29 = ptrtoint ptr %delta.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delta.sink.i.i, align 4
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink.i.i, ptr noundef nonnull @.str.9, i32 noundef %30) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end30.sink.split.i.i, %if.else.i.i.if.end6.i_crit_edge, %if.then3.i.i.if.end6.i_crit_edge, %lor.lhs.false.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i, align 4
  %and8.i = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then10.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end6.i
  %out_seq.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28
  %ack_seq1.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 3
  %33 = ptrtoint ptr %ack_seq1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ack_seq1.i.i, align 4
  %delta.i41.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28, i32 1
  %35 = ptrtoint ptr %delta.i41.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delta.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i42.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i42.i, label %lor.lhs.false.i45.i, label %if.then10.i.if.then.i49.i_crit_edge

if.then10.i.if.then.i49.i_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i49.i

lor.lhs.false.i45.i:                              ; preds = %if.then10.i
  %previous_delta.i43.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28, i32 2
  %37 = ptrtoint ptr %previous_delta.i43.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %previous_delta.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool2.not.i44.i = icmp eq i32 %38, 0
  br i1 %tobool2.not.i44.i, label %lor.lhs.false.i45.i.if.end11.i_crit_edge, label %lor.lhs.false.i45.i.if.then.i49.i_crit_edge

lor.lhs.false.i45.i.if.then.i49.i_crit_edge:      ; preds = %lor.lhs.false.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i49.i

lor.lhs.false.i45.i.if.end11.i_crit_edge:         ; preds = %lor.lhs.false.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then.i49.i:                                    ; preds = %lor.lhs.false.i45.i.if.then.i49.i_crit_edge, %if.then10.i.if.then.i49.i_crit_edge
  %39 = ptrtoint ptr %out_seq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %out_seq.i, align 4
  %add.i46.i = sub i32 %36, %34
  %sub.i.i47.i = add i32 %add.i46.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i47.i)
  %cmp.i.i48.i = icmp slt i32 %sub.i.i47.i, 0
  br i1 %cmp.i.i48.i, label %if.then4.i.i, label %if.else.i51.i

if.then4.i.i:                                     ; preds = %if.then.i49.i
  %sub.i.i = sub i32 %34, %36
  %41 = ptrtoint ptr %ack_seq1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.i.i, ptr %ack_seq1.i.i, align 4
  %call7.i.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call7.i.i)
  %cmp.i50.i = icmp sgt i32 %call7.i.i, 8
  br i1 %cmp.i50.i, label %if.then4.i.i.if.end31.sink.split.i.i_crit_edge, label %if.then4.i.i.if.end11.i_crit_edge

if.then4.i.i.if.end11.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then4.i.i.if.end31.sink.split.i.i_crit_edge:   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split.i.i

if.else.i51.i:                                    ; preds = %if.then.i49.i
  %previous_delta14.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 28, i32 2
  %42 = ptrtoint ptr %previous_delta14.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %previous_delta14.i.i, align 4
  %sub15.i.i = sub i32 %34, %43
  %44 = ptrtoint ptr %ack_seq1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub15.i.i, ptr %ack_seq1.i.i, align 4
  %call18.i.i = tail call i32 @ip_vs_get_debug_level() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call18.i.i)
  %cmp19.i.i = icmp sgt i32 %call18.i.i, 8
  br i1 %cmp19.i.i, label %if.else.i51.i.if.end31.sink.split.i.i_crit_edge, label %if.else.i51.i.if.end11.i_crit_edge

if.else.i51.i.if.end11.i_crit_edge:               ; preds = %if.else.i51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.else.i51.i.if.end31.sink.split.i.i_crit_edge:  ; preds = %if.else.i51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split.i.i

if.end31.sink.split.i.i:                          ; preds = %if.else.i51.i.if.end31.sink.split.i.i_crit_edge, %if.then4.i.i.if.end31.sink.split.i.i_crit_edge
  %delta.sink.i52.i = phi ptr [ %delta.i41.i, %if.then4.i.i.if.end31.sink.split.i.i_crit_edge ], [ %previous_delta14.i.i, %if.else.i51.i.if.end31.sink.split.i.i_crit_edge ]
  %.str.13.sink.i.i = phi ptr [ @.str.13, %if.then4.i.i.if.end31.sink.split.i.i_crit_edge ], [ @.str.16, %if.else.i51.i.if.end31.sink.split.i.i_crit_edge ]
  %45 = ptrtoint ptr %delta.sink.i52.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delta.sink.i52.i, align 4
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.13.sink.i.i, ptr noundef nonnull @.str.14, i32 noundef %46) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end31.sink.split.i.i, %if.else.i51.i.if.end11.i_crit_edge, %if.then4.i.i.if.end11.i_crit_edge, %lor.lhs.false.i45.i.if.end11.i_crit_edge, %if.end6.i.if.end11.i_crit_edge
  %pkt_in.i = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 12
  %47 = ptrtoint ptr %pkt_in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pkt_in.i, align 4
  %cmp.i = icmp eq ptr %48, null
  br i1 %cmp.i, label %if.end11.i.app_tcp_pkt_in.exit_crit_edge, label %if.end13.i

if.end11.i.app_tcp_pkt_in.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %app_tcp_pkt_in.exit

if.end13.i:                                       ; preds = %if.end11.i
  %call15.i = call i32 %48(ptr noundef nonnull %1, ptr noundef %cp, ptr noundef %skb, ptr noundef nonnull %diff.i, ptr noundef %ipvsh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.app_tcp_pkt_in.exit_crit_edge, label %if.end18.i

if.end13.i.app_tcp_pkt_in.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %app_tcp_pkt_in.exit

if.end18.i:                                       ; preds = %if.end13.i
  %49 = ptrtoint ptr %diff.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %diff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp19.not.i = icmp eq i32 %50, 0
  br i1 %cmp19.not.i, label %if.end18.i.app_tcp_pkt_in.exit_crit_edge, label %if.then20.i

if.end18.i.app_tcp_pkt_in.exit_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %app_tcp_pkt_in.exit

if.then20.i:                                      ; preds = %if.end18.i
  %in_seq21.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27
  %lock.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #7
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i, align 4
  %and.i.i = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i53.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i53.i, label %if.then20.i.if.then.i60.i_crit_edge, label %lor.lhs.false.i56.i

if.then20.i.if.then.i60.i_crit_edge:              ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i60.i

lor.lhs.false.i56.i:                              ; preds = %if.then20.i
  %53 = ptrtoint ptr %in_seq21.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %in_seq21.i, align 4
  %sub.i.i54.i = sub i32 %54, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i54.i)
  %cmp.i.i55.i = icmp slt i32 %sub.i.i54.i, 0
  br i1 %cmp.i.i55.i, label %lor.lhs.false.i56.i.if.then.i60.i_crit_edge, label %lor.lhs.false.i56.i.vs_seq_update.exit.i_crit_edge

lor.lhs.false.i56.i.vs_seq_update.exit.i_crit_edge: ; preds = %lor.lhs.false.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vs_seq_update.exit.i

lor.lhs.false.i56.i.if.then.i60.i_crit_edge:      ; preds = %lor.lhs.false.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i60.i

if.then.i60.i:                                    ; preds = %lor.lhs.false.i56.i.if.then.i60.i_crit_edge, %if.then20.i.if.then.i60.i_crit_edge
  %delta.i57.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27, i32 1
  %55 = ptrtoint ptr %delta.i57.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delta.i57.i, align 4
  %previous_delta.i58.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 27, i32 2
  %57 = ptrtoint ptr %previous_delta.i58.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %previous_delta.i58.i, align 4
  %add.i59.i = add i32 %56, %50
  store i32 %add.i59.i, ptr %delta.i57.i, align 4
  %58 = ptrtoint ptr %in_seq21.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %16, ptr %in_seq21.i, align 4
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags.i, align 4
  %or.i.i = or i32 %60, 1024
  store volatile i32 %or.i.i, ptr %flags.i, align 4
  br label %vs_seq_update.exit.i

vs_seq_update.exit.i:                             ; preds = %if.then.i60.i, %lor.lhs.false.i56.i.vs_seq_update.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #7
  br label %app_tcp_pkt_in.exit

app_tcp_pkt_in.exit:                              ; preds = %vs_seq_update.exit.i, %if.end18.i.app_tcp_pkt_in.exit_crit_edge, %if.end13.i.app_tcp_pkt_in.exit_crit_edge, %if.end11.i.app_tcp_pkt_in.exit_crit_edge, %if.then4.app_tcp_pkt_in.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then4.app_tcp_pkt_in.exit_crit_edge ], [ 1, %if.end11.i.app_tcp_pkt_in.exit_crit_edge ], [ 0, %if.end13.i.app_tcp_pkt_in.exit_crit_edge ], [ 1, %vs_seq_update.exit.i ], [ 1, %if.end18.i.app_tcp_pkt_in.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pkt_in = getelementptr inbounds %struct.ip_vs_app, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %pkt_in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pkt_in, align 4
  %cmp6 = icmp eq ptr %62, null
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 %62(ptr noundef nonnull %1, ptr noundef %cp, ptr noundef %skb, ptr noundef null, ptr noundef %ipvsh) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %app_tcp_pkt_in.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %app_tcp_pkt_in.exit ], [ %call11, %if.end9 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_app_net_init(ptr noundef %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app_list = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 3
  %0 = ptrtoint ptr %app_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %app_list, ptr %app_list, align 4
  %prev.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %app_list, ptr %prev.i, align 4
  %net = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 8
  %proc_net = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef %5, ptr noundef nonnull @ip_vs_app_seq_ops, i32 noundef 8, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_app_net_cleanup(ptr noundef %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_ip_vs_app(ptr noundef %ipvs, ptr noundef null)
  %net = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 8
  %proc_net = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_get(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_create_timeout_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_app_inc_rcu_free(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -52
  %timeout_table.i = getelementptr i8, ptr %head, i32 32
  %0 = ptrtoint ptr %timeout_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timeout_table.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_app_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ipvs.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipvs.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @__ip_vs_app_mutex, i32 noundef 0) #7
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  %app_list.i = getelementptr inbounds %struct.netns_ipvs, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %app_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %app.039.i = load ptr, ptr %app_list.i, align 4
  %cmp.not40.i = icmp eq ptr %app.039.i, %app_list.i
  br i1 %cmp.not40.i, label %cond.true.cond.end_crit_edge, label %for.body.i.preheader

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

for.body.i.preheader:                             ; preds = %cond.true
  %sub = add i64 %7, -1
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %pos.addr.1.lcssa.i = phi i64 [ %pos.addr.041.i, %for.body.i.for.cond.loopexit.i_crit_edge ], [ %dec.i, %for.inc.i.for.cond.loopexit.i_crit_edge ]
  %9 = ptrtoint ptr %app.042.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %app.0.i = load ptr, ptr %app.042.i, align 4
  %cmp.not.i = icmp eq ptr %app.0.i, %app_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.cond.end_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.loopexit.i.cond.end_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.i.preheader
  %app.042.i = phi ptr [ %app.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %app.039.i, %for.body.i.preheader ]
  %pos.addr.041.i = phi i64 [ %pos.addr.1.lcssa.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %sub, %for.body.i.preheader ]
  %incs_list.i = getelementptr inbounds %struct.ip_vs_app, ptr %app.042.i, i32 0, i32 5
  %10 = ptrtoint ptr %incs_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %inc.035.i = load ptr, ptr %incs_list.i, align 4
  %cmp9.not36.i = icmp eq ptr %inc.035.i, %incs_list.i
  br i1 %cmp9.not36.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body11.i_crit_edge

for.body.i.for.body11.i_crit_edge:                ; preds = %for.body.i
  br label %for.body11.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body.i.for.body11.i_crit_edge
  %inc.038.i = phi ptr [ %inc.0.i, %for.inc.i.for.body11.i_crit_edge ], [ %inc.035.i, %for.body.i.for.body11.i_crit_edge ]
  %pos.addr.137.i = phi i64 [ %dec.i, %for.inc.i.for.body11.i_crit_edge ], [ %pos.addr.041.i, %for.body.i.for.body11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.137.i)
  %cmp12.i = icmp eq i64 %pos.addr.137.i, 0
  br i1 %cmp12.i, label %for.body11.i.cond.end_crit_edge, label %for.inc.i

for.body11.i.cond.end_crit_edge:                  ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

for.inc.i:                                        ; preds = %for.body11.i
  %dec.i = add i64 %pos.addr.137.i, -1
  %11 = ptrtoint ptr %inc.038.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %inc.0.i = load ptr, ptr %inc.038.i, align 4
  %cmp9.not.i = icmp eq ptr %inc.0.i, %incs_list.i
  br i1 %cmp9.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i

cond.end:                                         ; preds = %for.body11.i.cond.end_crit_edge, %for.cond.loopexit.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ], [ null, %cond.true.cond.end_crit_edge ], [ %inc.038.i, %for.body11.i.cond.end_crit_edge ], [ null, %for.cond.loopexit.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_app_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @__ip_vs_app_mutex) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_app_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ipvs.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipvs.i, align 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %inc2 = add i64 %7, 1
  store i64 %inc2, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %app_list.i = getelementptr inbounds %struct.netns_ipvs, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %app_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %app.039.i = load ptr, ptr %app_list.i, align 4
  %cmp.not40.i = icmp eq ptr %app.039.i, %app_list.i
  br i1 %cmp.not40.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.loopexit.i:                              ; preds = %for.body.i
  %9 = ptrtoint ptr %app.042.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %app.0.i = load ptr, ptr %app.042.i, align 4
  %cmp.not.i = icmp eq ptr %app.0.i, %app_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.cleanup_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.loopexit.i.cleanup_crit_edge:            ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %app.042.i = phi ptr [ %app.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %app.039.i, %if.then.for.body.i_crit_edge ]
  %incs_list.i = getelementptr inbounds %struct.ip_vs_app, ptr %app.042.i, i32 0, i32 5
  %10 = ptrtoint ptr %incs_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %inc.035.i = load ptr, ptr %incs_list.i, align 4
  %cmp9.not36.i = icmp eq ptr %inc.035.i, %incs_list.i
  br i1 %cmp9.not36.i, label %for.cond.loopexit.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %app4 = getelementptr inbounds %struct.ip_vs_app, ptr %v, i32 0, i32 7
  %11 = ptrtoint ptr %app4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %app4, align 4
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v, align 4
  %incs_list = getelementptr inbounds %struct.ip_vs_app, ptr %12, i32 0, i32 5
  %cmp5.not = icmp eq ptr %14, %incs_list
  br i1 %cmp5.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %app_list = getelementptr inbounds %struct.netns_ipvs, ptr %5, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %e.0.in = phi ptr [ %e.0, %for.body.for.cond_crit_edge ], [ %12, %for.cond.preheader ]
  %15 = ptrtoint ptr %e.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %e.0 = load ptr, ptr %e.0.in, align 4
  %cmp10.not = icmp eq ptr %e.0, %app_list
  br i1 %cmp10.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %incs_list15 = getelementptr inbounds %struct.ip_vs_app, ptr %e.0, i32 0, i32 5
  %16 = ptrtoint ptr %incs_list15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %incs_list15, align 4
  %cmp22.not = icmp eq ptr %17, %incs_list15
  br i1 %cmp22.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %for.cond.loopexit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.end.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ %inc.035.i, %for.body.i.cleanup_crit_edge ], [ null, %for.cond.loopexit.i.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %17, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_app_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.18) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %protocol = getelementptr inbounds %struct.ip_vs_app, ptr %v, i32 0, i32 3
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 4
  %conv = zext i16 %1 to i32
  %call = tail call ptr @ip_vs_proto_name(i32 noundef %conv) #7
  %port = getelementptr inbounds %struct.ip_vs_app, ptr %v, i32 0, i32 8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port, align 4
  %conv1 = zext i16 %3 to i32
  %usecnt = getelementptr inbounds %struct.ip_vs_app, ptr %v, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #7
  %4 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %usecnt, align 4
  %name = getelementptr inbounds %struct.ip_vs_app, ptr %v, i32 0, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.19, ptr noundef %call, i32 noundef %conv1, i32 noundef %5, ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__ksymtab_register_ip_vs_app, !1, !"__ksymtab_register_ip_vs_app", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 36, i32 1}
!2 = !{ptr @__ksymtab_unregister_ip_vs_app, !3, !"__ksymtab_unregister_ip_vs_app", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 37, i32 1}
!4 = !{ptr @__ksymtab_register_ip_vs_app_inc, !5, !"__ksymtab_register_ip_vs_app_inc", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 38, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 602, i32 2}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 40, i32 8}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ip_vs_app_mutex, !9, !"__ip_vs_app_mutex", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 110, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ip_vs_app_inc_new._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @ip_vs_app_inc_new._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 135, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ip_vs_app_inc_release._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ip_vs_app_inc_release._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 300, i32 4}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vs_fix_seq._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @vs_fix_seq._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 304, i32 4}
!30 = !{ptr @vs_fix_seq._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vs_fix_seq._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 329, i32 4}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vs_fix_ack_seq._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @vs_fix_ack_seq._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 334, i32 4}
!39 = !{ptr @vs_fix_ack_seq._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vs_fix_ack_seq._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ip_vs_app_seq_ops, !42, !"ip_vs_app_seq_ops", i1 false, i1 false}
!42 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 591, i32 36}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 578, i32 17}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/ipvs/ip_vs_app.c", i32 582, i32 19}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2148351520, i64 2148351546, i64 2148351575, i64 2148351609, i64 2148351640, i64 2148351663}
!57 = !{i64 2148353985, i64 2148354011, i64 2148354040, i64 2148354074, i64 2148354105, i64 2148354128}
!58 = !{!"auto-init"}
