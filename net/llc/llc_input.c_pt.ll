; ModuleID = '/llk/IR_all_yes/net/llc/llc_input.c_pt.bc'
source_filename = "../net/llc/llc_input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+llc_add_pack\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_add_pack\09\09\09\09"
module asm "\09.long\09__crc_llc_add_pack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_add_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_add_pack\22\09\09\09\09\09"
module asm "__kstrtabns_llc_add_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llc_remove_pack\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_remove_pack\09\09\09\09"
module asm "\09.long\09__crc_llc_remove_pack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_remove_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_remove_pack\22\09\09\09\09\09"
module asm "__kstrtabns_llc_remove_pack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llc_set_station_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_set_station_handler\09\09\09\09"
module asm "\09.long\09__crc_llc_set_station_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_set_station_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_set_station_handler\22\09\09\09\09\09"
module asm "__kstrtabns_llc_set_station_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.45, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.50, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.50 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.96, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.hlist_nulls_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.llc_pdu_sn = type { i8, i8, i8, i8 }

@llc_type_handlers = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@llc_station_handler = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_net = external dso_local global %struct.net, align 128
@llc_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/llc/llc_input.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_llc_add_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_add_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_add_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_add_pack to i32), ptr @__kstrtab_llc_add_pack, ptr @__kstrtabns_llc_add_pack }, section "___ksymtab+llc_add_pack", align 4
@__kstrtab_llc_remove_pack = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_remove_pack = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_remove_pack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_remove_pack to i32), ptr @__kstrtab_llc_remove_pack, ptr @__kstrtabns_llc_remove_pack }, section "___ksymtab+llc_remove_pack", align 4
@__kstrtab_llc_set_station_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_set_station_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_set_station_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_set_station_handler to i32), ptr @__kstrtab_llc_set_station_handler, ptr @__kstrtabns_llc_set_station_handler }, section "___ksymtab+llc_set_station_handler", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 12, i64 64, i64 96, i64 108, i64 132, i64 172, i64 224]
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"llc_type_handlers\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 39, i32 15 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"llc_station_handler\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 34, i32 15 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [23 x i8] c"../net/llc/llc_input.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 195, i32 8 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_llc_add_pack, ptr @__ksymtab_llc_remove_pack, ptr @__ksymtab_llc_set_station_handler, ptr @llc_type_handlers, ptr @llc_station_handler, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_type_handlers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_station_handler to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_add_pack(i32 noundef %type, ptr noundef %handler) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !25
  %type.off = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off)
  %switch = icmp ult i32 %type.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [2 x ptr], ptr @llc_type_handlers, i32 0, i32 %type.off
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %handler, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_remove_pack(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %type.off = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off)
  %switch = icmp ult i32 %type.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [2 x ptr], ptr @llc_type_handlers, i32 0, i32 %type.off
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @synchronize_net() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_set_station_handler(ptr noundef %handler) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handler, null
  br i1 %tobool.not, label %if.then4.critedge, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !26
  store ptr %handler, ptr @llc_station_handler, align 4
  br label %if.end5

if.then4.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  store ptr null, ptr @llc_station_handler, align 4
  tail call void @synchronize_net() #3
  br label %if.end5

if.end5:                                          ; preds = %if.then4.critedge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_rcv(ptr noundef %skb, ptr noundef %dev, ptr noundef %pt, ptr noundef %orig_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %1, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end:                                           ; preds = %entry
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp, label %if.end.drop_crit_edge, label %if.end6, !prof !27

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end6:                                          ; preds = %if.end
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #3
  %3 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end6
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #3
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread143, !prof !27

skb_share_check.exit.thread143:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @consume_skb(ptr noundef %skb) #3
  br label %if.end18

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %out

skb_share_check.exit:                             ; preds = %if.end6
  %tobool8.not = icmp eq ptr %skb, null
  br i1 %tobool8.not, label %skb_share_check.exit.out_crit_edge, label %skb_share_check.exit.if.end18_crit_edge, !prof !27

skb_share_check.exit.if.end18_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

skb_share_check.exit.out_crit_edge:               ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end18:                                         ; preds = %skb_share_check.exit.if.end18_crit_edge, %skb_share_check.exit.thread143
  %skb.addr.0.i146 = phi ptr [ %call7.i, %skb_share_check.exit.thread143 ], [ %skb, %skb_share_check.exit.if.end18_crit_edge ]
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 3
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end18.if.end.i_crit_edge, !prof !27

if.end18.if.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp3.i.i = icmp ult i32 %6, 3
  br i1 %cmp3.i.i, label %if.end.i.i.drop_crit_edge, label %pskb_may_pull.exit.i, !prof !27

if.end.i.i.drop_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 3, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i146, i32 noundef %sub.i.i) #3
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.drop_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !27

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

pskb_may_pull.exit.i.drop_crit_edge:              ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %if.end18.if.end.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl_1.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i133 = icmp eq i8 %13, 3
  %spec.select.i = select i1 %cmp.i133, i32 3, i32 4
  %14 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i.i, align 4
  %16 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i69.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %sub.i.i69.i)
  %cmp.not.i70.i = icmp ugt i32 %spec.select.i, %sub.i.i69.i
  br i1 %cmp.not.i70.i, label %if.end.i72.i, label %if.end.i.if.end19.i_crit_edge, !prof !27

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19.i

if.end.i72.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %spec.select.i)
  %cmp3.i71.i = icmp ult i32 %15, %spec.select.i
  br i1 %cmp3.i71.i, label %if.end.i72.i.drop_crit_edge, label %pskb_may_pull.exit78.i, !prof !27

if.end.i72.i.drop_crit_edge:                      ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

pskb_may_pull.exit78.i:                           ; preds = %if.end.i72.i
  %sub.i73.i = sub i32 %spec.select.i, %sub.i.i69.i
  %call13.i74.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i146, i32 noundef %sub.i73.i) #3
  %cmp14.i75.not.i = icmp eq ptr %call13.i74.i, null
  br i1 %cmp14.i75.not.i, label %pskb_may_pull.exit78.i.drop_crit_edge, label %pskb_may_pull.exit78.i.if.end19.i_crit_edge, !prof !27

pskb_may_pull.exit78.i.if.end19.i_crit_edge:      ; preds = %pskb_may_pull.exit78.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19.i

pskb_may_pull.exit78.i.drop_crit_edge:            ; preds = %pskb_may_pull.exit78.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end19.i:                                       ; preds = %pskb_may_pull.exit78.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %transport_header.i, align 2
  %20 = trunc i32 %spec.select.i to i16
  %conv23.i = add i16 %19, %20
  store i16 %conv23.i, ptr %transport_header.i, align 2
  %call25.i = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i146, i32 noundef %spec.select.i) #3
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 15, i32 0, i32 18
  %21 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %22)
  %cmp27.i = icmp eq i16 %22, 4
  br i1 %cmp27.i, label %if.then29.i, label %if.end19.i.if.end30_crit_edge

if.end19.i.if.end30_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then29.i:                                      ; preds = %if.end19.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %26 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %h_proto.i, align 1
  %conv31.i = zext i16 %28 to i32
  %sub.i = sub nsw i32 %conv31.i, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp33.i = icmp slt i32 %sub.i, 0
  br i1 %cmp33.i, label %if.then29.i.drop_crit_edge, label %lor.lhs.false.i

if.then29.i.drop_crit_edge:                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

lor.lhs.false.i:                                  ; preds = %if.then29.i
  %29 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i.i, align 4
  %31 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i81.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub.i.i81.i)
  %cmp.not.i82.i = icmp ugt i32 %sub.i, %sub.i.i81.i
  br i1 %cmp.not.i82.i, label %if.end.i84.i, label %lor.lhs.false.i.if.end37.i_crit_edge, !prof !27

lor.lhs.false.i.if.end37.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37.i

if.end.i84.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sub.i)
  %cmp3.i83.i = icmp ult i32 %30, %sub.i
  br i1 %cmp3.i83.i, label %if.end.i84.i.drop_crit_edge, label %pskb_may_pull.exit90.i, !prof !27

if.end.i84.i.drop_crit_edge:                      ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

pskb_may_pull.exit90.i:                           ; preds = %if.end.i84.i
  %sub.i85.i = sub i32 %sub.i, %sub.i.i81.i
  %call13.i86.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i146, i32 noundef %sub.i85.i) #3
  %cmp14.i87.not.i = icmp eq ptr %call13.i86.i, null
  br i1 %cmp14.i87.not.i, label %pskb_may_pull.exit90.i.drop_crit_edge, label %pskb_may_pull.exit90.i.if.end37.i_crit_edge

pskb_may_pull.exit90.i.if.end37.i_crit_edge:      ; preds = %pskb_may_pull.exit90.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37.i

pskb_may_pull.exit90.i.drop_crit_edge:            ; preds = %pskb_may_pull.exit90.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end37.i:                                       ; preds = %pskb_may_pull.exit90.i.if.end37.i_crit_edge, %lor.lhs.false.i.if.end37.i_crit_edge
  %33 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %sub.i)
  %cmp.not.i91.i = icmp ugt i32 %34, %sub.i
  br i1 %cmp.not.i91.i, label %pskb_trim_rcsum.exit.i, label %if.end37.i.if.end30_crit_edge, !prof !27

if.end37.i.if.end30_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

pskb_trim_rcsum.exit.i:                           ; preds = %if.end37.i
  %call.i.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %skb.addr.0.i146, i32 noundef %sub.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool39.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool39.not.i, label %pskb_trim_rcsum.exit.i.if.end30_crit_edge, label %pskb_trim_rcsum.exit.i.drop_crit_edge

pskb_trim_rcsum.exit.i.drop_crit_edge:            ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

pskb_trim_rcsum.exit.i.if.end30_crit_edge:        ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.end30:                                         ; preds = %pskb_trim_rcsum.exit.i.if.end30_crit_edge, %if.end37.i.if.end30_crit_edge, %if.end19.i.if.end30_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i146, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool32.not = icmp eq i8 %40, 0
  br i1 %tobool32.not, label %do.end100, label %if.end42, !prof !27

if.end42:                                         ; preds = %if.end30
  %call44 = tail call ptr @llc_sap_find(i8 noundef zeroext %40) #3
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end42.drop_crit_edge, label %if.end55, !prof !27

if.end42.drop_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end55:                                         ; preds = %if.end42
  %rcv_func = getelementptr inbounds %struct.llc_sap, ptr %call44, i32 0, i32 4
  %41 = ptrtoint ptr %rcv_func to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %rcv_func, align 4
  %call57 = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true, label %if.end55.do.end66_crit_edge

if.end55.do.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end66

land.lhs.true:                                    ; preds = %if.end55
  %call59 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true.do.end66_crit_edge, label %land.lhs.true61

land.lhs.true.do.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end66

land.lhs.true61:                                  ; preds = %land.lhs.true
  %.b132 = load i1, ptr @llc_rcv.__warned, align 1
  br i1 %.b132, label %land.lhs.true61.do.end66_crit_edge, label %if.then63

land.lhs.true61.do.end66_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end66

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @llc_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #3
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %land.lhs.true61.do.end66_crit_edge, %land.lhs.true.do.end66_crit_edge, %if.end55.do.end66_crit_edge
  %43 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i, align 8
  %45 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i135 = zext i16 %46 to i32
  %add.ptr.i.i.i136 = getelementptr i8, ptr %44, i32 %conv.i.i.i135
  %ctrl_1.i137 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.i136, i32 0, i32 2
  %47 = ptrtoint ptr %ctrl_1.i137 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ctrl_1.i137, align 1
  %49 = and i8 %48, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp.not.i = icmp eq i8 %49, 3
  br i1 %cmp.not.i, label %if.end.i138, label %do.end66.cond.end_crit_edge

do.end66.cond.end_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.end.i138:                                      ; preds = %do.end66
  %and4.i = and i8 %48, -20
  %50 = zext i8 %and4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i8 %and4.i, label %if.end.i138.if.then83_crit_edge [
    i8 -84, label %if.end.i138.sw.bb.i_crit_edge
    i8 0, label %if.end.i138.sw.bb.i_crit_edge154
    i8 -32, label %if.end.i138.sw.bb.i_crit_edge155
    i8 108, label %if.end.i138.cond.end_crit_edge
    i8 64, label %if.end.i138.cond.end_crit_edge156
    i8 96, label %if.end.i138.cond.end_crit_edge157
    i8 12, label %if.end.i138.cond.end_crit_edge158
    i8 -124, label %if.end.i138.cond.end_crit_edge159
  ]

if.end.i138.cond.end_crit_edge159:                ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.end.i138.cond.end_crit_edge158:                ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.end.i138.cond.end_crit_edge157:                ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.end.i138.cond.end_crit_edge156:                ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.end.i138.cond.end_crit_edge:                   ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.end.i138.sw.bb.i_crit_edge155:                 ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end.i138.sw.bb.i_crit_edge154:                 ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end.i138.sw.bb.i_crit_edge:                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end.i138.if.then83_crit_edge:                  ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then83

sw.bb.i:                                          ; preds = %if.end.i138.sw.bb.i_crit_edge, %if.end.i138.sw.bb.i_crit_edge154, %if.end.i138.sw.bb.i_crit_edge155
  br label %cond.end

cond.end:                                         ; preds = %sw.bb.i, %if.end.i138.cond.end_crit_edge, %if.end.i138.cond.end_crit_edge156, %if.end.i138.cond.end_crit_edge157, %if.end.i138.cond.end_crit_edge158, %if.end.i138.cond.end_crit_edge159, %do.end66.cond.end_crit_edge
  %type.0.i.ph = phi i32 [ 0, %sw.bb.i ], [ 1, %if.end.i138.cond.end_crit_edge ], [ 1, %if.end.i138.cond.end_crit_edge156 ], [ 1, %if.end.i138.cond.end_crit_edge157 ], [ 1, %if.end.i138.cond.end_crit_edge158 ], [ 1, %if.end.i138.cond.end_crit_edge159 ], [ 1, %do.end66.cond.end_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr @llc_type_handlers, i32 0, i32 %type.0.i.ph
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %arrayidx, align 4
  %tobool74.not = icmp eq ptr %52, null
  br i1 %tobool74.not, label %cond.end.if.then83_crit_edge, label %if.else88, !prof !27

cond.end.if.then83_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then83

if.then83:                                        ; preds = %cond.end.if.then83_crit_edge, %if.end.i138.if.then83_crit_edge
  %tobool84.not = icmp eq ptr %42, null
  br i1 %tobool84.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #5
  %call86 = tail call i32 %42(ptr noundef nonnull %skb.addr.0.i146, ptr noundef %dev, ptr noundef %pt, ptr noundef %orig_dev) #3
  br label %if.end97

if.else:                                          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i146, i32 noundef 0) #3
  br label %if.end97

if.else88:                                        ; preds = %cond.end
  %tobool89.not = icmp eq ptr %42, null
  br i1 %tobool89.not, label %if.else88.if.end96_crit_edge, label %if.then90

if.else88.if.end96_crit_edge:                     ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end96

if.then90:                                        ; preds = %if.else88
  %call91 = tail call ptr @skb_clone(ptr noundef nonnull %skb.addr.0.i146, i32 noundef 2592) #3
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.then90.if.end96_crit_edge, label %if.then93

if.then90.if.end96_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end96

if.then93:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #5
  %call94 = tail call i32 %42(ptr noundef nonnull %call91, ptr noundef %dev, ptr noundef %pt, ptr noundef %orig_dev) #3
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.then90.if.end96_crit_edge, %if.else88.if.end96_crit_edge
  tail call void %52(ptr noundef nonnull %call44, ptr noundef nonnull %skb.addr.0.i146) #3
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.else, %if.then85
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %call44, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #3
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #3, !srcloc !29
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #3
  br label %out

if.then.i:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @llc_sap_close(ptr noundef nonnull %call44) #3
  br label %out

out:                                              ; preds = %if.end104, %drop, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %skb_share_check.exit.out_crit_edge, %skb_share_check.exit.thread
  ret i32 0

drop:                                             ; preds = %do.end100.drop_crit_edge, %if.end42.drop_crit_edge, %pskb_trim_rcsum.exit.i.drop_crit_edge, %pskb_may_pull.exit90.i.drop_crit_edge, %if.end.i84.i.drop_crit_edge, %if.then29.i.drop_crit_edge, %pskb_may_pull.exit78.i.drop_crit_edge, %if.end.i72.i.drop_crit_edge, %pskb_may_pull.exit.i.drop_crit_edge, %if.end.i.i.drop_crit_edge, %if.end.drop_crit_edge, %entry.drop_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %if.end.drop_crit_edge ], [ %skb.addr.0.i146, %do.end100.drop_crit_edge ], [ %skb.addr.0.i146, %if.end42.drop_crit_edge ], [ %skb, %entry.drop_crit_edge ], [ %skb.addr.0.i146, %pskb_trim_rcsum.exit.i.drop_crit_edge ], [ %skb.addr.0.i146, %pskb_may_pull.exit.i.drop_crit_edge ], [ %skb.addr.0.i146, %pskb_may_pull.exit78.i.drop_crit_edge ], [ %skb.addr.0.i146, %pskb_may_pull.exit90.i.drop_crit_edge ], [ %skb.addr.0.i146, %if.then29.i.drop_crit_edge ], [ %skb.addr.0.i146, %if.end.i.i.drop_crit_edge ], [ %skb.addr.0.i146, %if.end.i72.i.drop_crit_edge ], [ %skb.addr.0.i146, %if.end.i84.i.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #3
  br label %out

do.end100:                                        ; preds = %if.end30
  %54 = load volatile ptr, ptr @llc_station_handler, align 4
  %tobool102.not = icmp eq ptr %54, null
  br i1 %tobool102.not, label %do.end100.drop_crit_edge, label %if.end104

do.end100.drop_crit_edge:                         ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end104:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %54(ptr noundef nonnull %skb.addr.0.i146) #3
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_sap_find(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/llc/llc_input.c", i32 195, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_llc_add_pack, !5, !"__ksymtab_llc_add_pack", i1 false, i1 false}
!5 = !{!"../net/llc/llc_input.c", i32 225, i32 1}
!6 = !{ptr @__ksymtab_llc_remove_pack, !7, !"__ksymtab_llc_remove_pack", i1 false, i1 false}
!7 = !{!"../net/llc/llc_input.c", i32 226, i32 1}
!8 = !{ptr @__ksymtab_llc_set_station_handler, !9, !"__ksymtab_llc_set_station_handler", i1 false, i1 false}
!9 = !{!"../net/llc/llc_input.c", i32 227, i32 1}
!10 = !{ptr @llc_station_handler, !11, !"llc_station_handler", i1 false, i1 false}
!11 = !{!"../net/llc/llc_input.c", i32 34, i32 15}
!12 = !{ptr @llc_type_handlers, !13, !"llc_type_handlers", i1 false, i1 false}
!13 = !{!"../net/llc/llc_input.c", i32 39, i32 15}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2155961678}
!26 = !{i64 2155961854}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2148575731}
!29 = !{i64 2148490171, i64 2148490203, i64 2148490232, i64 2148490266, i64 2148490297, i64 2148490320}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2149809951}
