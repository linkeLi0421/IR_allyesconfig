; ModuleID = '/llk/IR_all_yes/net/xfrm/xfrm_replay.c_pt.bc'
source_filename = "../net/xfrm/xfrm_replay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xfrm_replay_seqhi\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_replay_seqhi\09\09\09\09"
module asm "\09.long\09__crc_xfrm_replay_seqhi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_replay_seqhi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_replay_seqhi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_replay_seqhi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm_init_replay\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_init_replay\09\09\09\09"
module asm "\09.long\09__crc_xfrm_init_replay\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_init_replay:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_init_replay\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_init_replay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.114, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.115, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.115 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.xfrm_replay_state_esn = type { i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.km_event = type { %union.anon.151, i32, i32, i32, ptr }
%union.anon.151 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xfrmdev_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.113, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.113 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.108, i32, %struct.spinlock }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sk_buff = type { %union.anon.21, %union.anon.24, %union.anon.25, [48 x i8], %union.anon.26, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.28, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, ptr, %union.anon.23 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { ptr }
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32, ptr }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.30, i32, i32, i32, i16, i16, %union.anon.32, i32, %union.anon.33, %union.anon.34, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.30 = type { i32 }
%union.anon.32 = type { i32 }
%union.anon.33 = type { i32 }
%union.anon.34 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.157, i32, i32, i8, i8 }
%struct.anon.157 = type { i32, i32 }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_xfrm_replay_seqhi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_replay_seqhi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_replay_seqhi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_replay_seqhi to i32), ptr @__kstrtab_xfrm_replay_seqhi, ptr @__kstrtabns_xfrm_replay_seqhi }, section "___ksymtab+xfrm_replay_seqhi", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_xfrm_init_replay = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_init_replay = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_init_replay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_init_replay to i32), ptr @__kstrtab_xfrm_init_replay, ptr @__kstrtabns_xfrm_init_replay }, section "___ksymtab+xfrm_init_replay", align 4
@xfrm_aevent_is_on.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/xfrm.h\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_ = private constant [26 x i8] c"../net/xfrm/xfrm_replay.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"../include/net/xfrm.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 1754, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 695, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 723, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_xfrm_init_replay, ptr @__ksymtab_xfrm_replay_seqhi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfrm_replay_seqhi(ptr nocapture noundef readonly %x, i32 noundef %net_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %replay_esn1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %2 = ptrtoint ptr %replay_esn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %replay_esn1, align 8
  %seq_hi2 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %seq_hi2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq_hi2, align 4
  %seq3 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %seq3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq3, align 4
  %replay_window = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %replay_window to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %replay_window, align 4
  %sub = sub i32 %7, %9
  %add = add i32 %sub, 1
  %sub6 = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub6)
  %cmp.not = icmp ult i32 %7, %sub6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %net_seq)
  %cmp21.not = icmp ugt i32 %add, %net_seq
  br i1 %cmp.not, label %if.else, label %if.then10, !prof !25

if.then10:                                        ; preds = %if.end
  br i1 %cmp21.not, label %if.then19, label %if.then10.cleanup_crit_edge, !prof !25

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %5, 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %cmp21.not, label %if.else.cleanup_crit_edge, label %if.then29, !prof !26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %5, -1
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.else.cleanup_crit_edge, %if.then19, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %inc, %if.then19 ], [ %5, %if.then10.cleanup_crit_edge ], [ %dec, %if.then29 ], [ %5, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm_replay_notify(ptr noundef %x, i32 noundef %event) local_unnamed_addr #2 align 64 {
entry:
  %c.i57 = alloca %struct.km_event, align 4
  %c.i = alloca %struct.km_event, align 4
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #8
  %0 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %repl_mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 33
  %1 = getelementptr inbounds i8, ptr %c, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = ptrtoint ptr %repl_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %repl_mode, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.epilog [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c.i) #8
  %6 = getelementptr inbounds %struct.km_event, ptr %c.i, i32 0, i32 3
  %replay_esn1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %7 = getelementptr inbounds i8, ptr %c.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %replay_esn1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %replay_esn1.i, align 8
  %preplay_esn2.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 32
  %11 = ptrtoint ptr %preplay_esn2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %preplay_esn2.i, align 8
  %13 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %event, label %sw.bb.sw.epilog.i_crit_edge [
    i32 16, label %sw.bb.i
    i32 32, label %sw.bb12.i
  ]

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.bb
  %replay_maxdiff.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 36
  %14 = ptrtoint ptr %replay_maxdiff.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %replay_maxdiff.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.i.if.then.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %seq.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seq.i, align 4
  %seq3.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seq3.i, align 4
  %sub.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %15)
  %cmp.i = icmp ult i32 %sub.i, %15
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false.i.sw.epilog.i_crit_edge

lor.lhs.false.i.sw.epilog.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %oseq.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %10, i32 0, i32 1
  %20 = ptrtoint ptr %oseq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oseq.i, align 4
  %oseq5.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %12, i32 0, i32 1
  %22 = ptrtoint ptr %oseq5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oseq5.i, align 4
  %sub6.i = sub i32 %21, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %15)
  %cmp8.i = icmp ult i32 %sub6.i, %15
  br i1 %cmp8.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.sw.epilog.i_crit_edge

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %sw.bb.i.if.then.i_crit_edge
  %xflags.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %24 = ptrtoint ptr %xflags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xflags.i, align 8
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.then.i.xfrm_replay_notify_bmp.exit_crit_edge, label %if.then.i.sw.epilog.i_crit_edge

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.i.xfrm_replay_notify_bmp.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_notify_bmp.exit

sw.bb12.i:                                        ; preds = %sw.bb
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %10, align 4
  %mul.i.i = shl i32 %27, 2
  %add.i.i = add i32 %mul.i.i, 24
  %bcmp.i = tail call i32 @bcmp(ptr %10, ptr %12, i32 %add.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp16.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %sw.bb12.i.sw.epilog.i_crit_edge

sw.bb12.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then17.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  %xflags18.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %28 = ptrtoint ptr %xflags18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xflags18.i, align 8
  %or.i = or i32 %29, 1
  store i32 %or.i, ptr %xflags18.i, align 8
  br label %xfrm_replay_notify_bmp.exit

sw.epilog.i:                                      ; preds = %sw.bb12.i.sw.epilog.i_crit_edge, %if.then.i.sw.epilog.i_crit_edge, %land.lhs.true.i.sw.epilog.i_crit_edge, %lor.lhs.false.i.sw.epilog.i_crit_edge, %sw.bb.sw.epilog.i_crit_edge
  %event.addr.0.i = phi i32 [ %event, %sw.bb.sw.epilog.i_crit_edge ], [ 32, %sw.bb12.i.sw.epilog.i_crit_edge ], [ 16, %land.lhs.true.i.sw.epilog.i_crit_edge ], [ 16, %lor.lhs.false.i.sw.epilog.i_crit_edge ], [ 32, %if.then.i.sw.epilog.i_crit_edge ]
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %10, align 4
  %mul.i55.i = shl i32 %31, 2
  %add.i56.i = add i32 %mul.i55.i, 24
  %32 = call ptr @memcpy(ptr %12, ptr %10, i32 %add.i56.i)
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 30, ptr %6, align 4
  %34 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %event.addr.0.i, ptr %c.i, align 4
  call void @km_state_notify(ptr noundef %x, ptr noundef nonnull %c.i) #8
  %replay_maxage.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 35
  %35 = ptrtoint ptr %replay_maxage.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %replay_maxage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool24.not.i = icmp eq i32 %36, 0
  br i1 %tobool24.not.i, label %sw.epilog.i.xfrm_replay_notify_bmp.exit_crit_edge, label %land.lhs.true25.i

sw.epilog.i.xfrm_replay_notify_bmp.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_notify_bmp.exit

land.lhs.true25.i:                                ; preds = %sw.epilog.i
  %rtimer.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %37, %36
  %call27.i = call i32 @mod_timer(ptr noundef %rtimer.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %land.lhs.true25.i.xfrm_replay_notify_bmp.exit_crit_edge

land.lhs.true25.i.xfrm_replay_notify_bmp.exit_crit_edge: ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_notify_bmp.exit

if.then29.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  %xflags30.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %38 = ptrtoint ptr %xflags30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xflags30.i, align 8
  %and31.i = and i32 %39, -2
  store i32 %and31.i, ptr %xflags30.i, align 8
  br label %xfrm_replay_notify_bmp.exit

xfrm_replay_notify_bmp.exit:                      ; preds = %if.then29.i, %land.lhs.true25.i.xfrm_replay_notify_bmp.exit_crit_edge, %sw.epilog.i.xfrm_replay_notify_bmp.exit_crit_edge, %if.then17.i, %if.then.i.xfrm_replay_notify_bmp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c.i) #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c.i57) #8
  %40 = getelementptr inbounds %struct.km_event, ptr %c.i57, i32 0, i32 3
  %replay_esn1.i58 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %41 = getelementptr inbounds i8, ptr %c.i57, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %replay_esn1.i58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %replay_esn1.i58, align 8
  %preplay_esn2.i59 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 32
  %45 = ptrtoint ptr %preplay_esn2.i59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %preplay_esn2.i59, align 8
  %47 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %event, label %sw.bb1.sw.epilog.i74_crit_edge [
    i32 16, label %sw.bb.i62
    i32 32, label %sw.bb32.i
  ]

sw.bb1.sw.epilog.i74_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i74

sw.bb.i62:                                        ; preds = %sw.bb1
  %replay_maxdiff.i60 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 36
  %48 = ptrtoint ptr %replay_maxdiff.i60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %replay_maxdiff.i60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i61 = icmp eq i32 %49, 0
  br i1 %tobool.not.i61, label %sw.bb.i62.if.end27.i_crit_edge, label %if.end.i

sw.bb.i62.if.end27.i_crit_edge:                   ; preds = %sw.bb.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.end.i:                                         ; preds = %sw.bb.i62
  %.sink.in.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %44, i32 0, i32 2
  %50 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %.sink87.in.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %46, i32 0, i32 2
  %51 = ptrtoint ptr %.sink87.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.sink87.i = load i32, ptr %.sink87.in.i, align 4
  %add8.i = sub i32 %.sink.i, %.sink87.i
  %.sink88.in.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %.sink88.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.sink88.i = load i32, ptr %.sink88.in.i, align 4
  %.sink89.in.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %46, i32 0, i32 1
  %53 = ptrtoint ptr %.sink89.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.sink89.i = load i32, ptr %.sink89.in.i, align 4
  %add19.i = sub i32 %.sink88.i, %.sink89.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %49)
  %cmp22.not.i = icmp ult i32 %add8.i, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i, i32 %49)
  %cmp24.not.i = icmp ult i32 %add19.i, %49
  %or.cond.i = select i1 %cmp22.not.i, i1 %cmp24.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i.if.end27.i_crit_edge, label %if.end.i.sw.epilog.i74_crit_edge

if.end.i.sw.epilog.i74_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i74

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end.i.if.end27.i_crit_edge, %sw.bb.i62.if.end27.i_crit_edge
  %xflags.i65 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %54 = ptrtoint ptr %xflags.i65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %xflags.i65, align 8
  %and.i66 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool28.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool28.not.i67, label %if.end27.i.xfrm_replay_notify_esn.exit_crit_edge, label %if.end27.i.sw.epilog.i74_crit_edge

if.end27.i.sw.epilog.i74_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i74

if.end27.i.xfrm_replay_notify_esn.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_notify_esn.exit

sw.bb32.i:                                        ; preds = %sw.bb1
  %56 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %44, align 4
  %mul.i.i68 = shl i32 %57, 2
  %add.i.i69 = add i32 %mul.i.i68, 24
  %bcmp.i70 = tail call i32 @bcmp(ptr %44, ptr %46, i32 %add.i.i69) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i70)
  %cmp36.i = icmp eq i32 %bcmp.i70, 0
  br i1 %cmp36.i, label %if.then37.i, label %sw.bb32.i.sw.epilog.i74_crit_edge

sw.bb32.i.sw.epilog.i74_crit_edge:                ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i74

if.then37.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #10
  %xflags38.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %58 = ptrtoint ptr %xflags38.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %xflags38.i, align 8
  %or.i71 = or i32 %59, 1
  store i32 %or.i71, ptr %xflags38.i, align 8
  br label %xfrm_replay_notify_esn.exit

sw.epilog.i74:                                    ; preds = %sw.bb32.i.sw.epilog.i74_crit_edge, %if.end27.i.sw.epilog.i74_crit_edge, %if.end.i.sw.epilog.i74_crit_edge, %sw.bb1.sw.epilog.i74_crit_edge
  %event.addr.0.i72 = phi i32 [ %event, %sw.bb1.sw.epilog.i74_crit_edge ], [ 32, %sw.bb32.i.sw.epilog.i74_crit_edge ], [ 16, %if.end.i.sw.epilog.i74_crit_edge ], [ 32, %if.end27.i.sw.epilog.i74_crit_edge ]
  %60 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %44, align 4
  %mul.i85.i = shl i32 %61, 2
  %add.i86.i = add i32 %mul.i85.i, 24
  %62 = call ptr @memcpy(ptr %46, ptr %44, i32 %add.i86.i)
  %63 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 30, ptr %40, align 4
  %64 = ptrtoint ptr %c.i57 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %event.addr.0.i72, ptr %c.i57, align 4
  call void @km_state_notify(ptr noundef %x, ptr noundef nonnull %c.i57) #8
  %replay_maxage.i73 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 35
  %65 = ptrtoint ptr %replay_maxage.i73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %replay_maxage.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool44.not.i = icmp eq i32 %66, 0
  br i1 %tobool44.not.i, label %sw.epilog.i74.xfrm_replay_notify_esn.exit_crit_edge, label %land.lhs.true.i76

sw.epilog.i74.xfrm_replay_notify_esn.exit_crit_edge: ; preds = %sw.epilog.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_notify_esn.exit

land.lhs.true.i76:                                ; preds = %sw.epilog.i74
  %rtimer.i75 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %add46.i = add i32 %67, %66
  %call47.i = call i32 @mod_timer(ptr noundef %rtimer.i75, i32 noundef %add46.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %land.lhs.true.i76.xfrm_replay_notify_esn.exit_crit_edge

land.lhs.true.i76.xfrm_replay_notify_esn.exit_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_notify_esn.exit

if.then49.i:                                      ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #10
  %xflags50.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %68 = ptrtoint ptr %xflags50.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xflags50.i, align 8
  %and51.i = and i32 %69, -2
  store i32 %and51.i, ptr %xflags50.i, align 8
  br label %xfrm_replay_notify_esn.exit

xfrm_replay_notify_esn.exit:                      ; preds = %if.then49.i, %land.lhs.true.i76.xfrm_replay_notify_esn.exit_crit_edge, %sw.epilog.i74.xfrm_replay_notify_esn.exit_crit_edge, %if.then37.i, %if.end27.i.xfrm_replay_notify_esn.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c.i57) #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %70 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %event, label %sw.epilog.sw.epilog21_crit_edge [
    i32 16, label %sw.bb2
    i32 32, label %sw.bb14
  ]

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.bb2:                                           ; preds = %sw.epilog
  %replay_maxdiff = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 36
  %71 = ptrtoint ptr %replay_maxdiff to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %replay_maxdiff, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not = icmp eq i32 %72, 0
  br i1 %tobool.not, label %sw.bb2.if.then_crit_edge, label %lor.lhs.false

sw.bb2.if.then_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb2
  %seq = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29, i32 1
  %73 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %seq, align 4
  %seq3 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 31, i32 1
  %75 = ptrtoint ptr %seq3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %seq3, align 4
  %sub = sub i32 %74, %76
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %72)
  %cmp = icmp ult i32 %sub, %72
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.sw.epilog21_crit_edge

lor.lhs.false.sw.epilog21_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

land.lhs.true:                                    ; preds = %lor.lhs.false
  %preplay = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 31
  %replay = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29
  %77 = ptrtoint ptr %replay to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %replay, align 4
  %79 = ptrtoint ptr %preplay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %preplay, align 4
  %sub8 = sub i32 %78, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %72)
  %cmp10 = icmp ult i32 %sub8, %72
  br i1 %cmp10, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.sw.epilog21_crit_edge

land.lhs.true.sw.epilog21_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %sw.bb2.if.then_crit_edge
  %xflags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %81 = ptrtoint ptr %xflags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %xflags, align 8
  %and = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then.cleanup_crit_edge, label %if.then.sw.epilog21_crit_edge

if.then.sw.epilog21_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog
  %replay15 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29
  %preplay16 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 31
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %replay15, ptr noundef dereferenceable(12) %preplay16, i32 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp17 = icmp eq i32 %bcmp, 0
  br i1 %cmp17, label %if.then18, label %sw.bb14.sw.epilog21_crit_edge

sw.bb14.sw.epilog21_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

if.then18:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %xflags19 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %83 = ptrtoint ptr %xflags19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %xflags19, align 8
  %or = or i32 %84, 1
  store i32 %or, ptr %xflags19, align 8
  br label %cleanup

sw.epilog21:                                      ; preds = %sw.bb14.sw.epilog21_crit_edge, %if.then.sw.epilog21_crit_edge, %land.lhs.true.sw.epilog21_crit_edge, %lor.lhs.false.sw.epilog21_crit_edge, %sw.epilog.sw.epilog21_crit_edge
  %event.addr.0 = phi i32 [ %event, %sw.epilog.sw.epilog21_crit_edge ], [ 32, %sw.bb14.sw.epilog21_crit_edge ], [ 16, %land.lhs.true.sw.epilog21_crit_edge ], [ 16, %lor.lhs.false.sw.epilog21_crit_edge ], [ 32, %if.then.sw.epilog21_crit_edge ]
  %preplay22 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 31
  %replay23 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29
  %85 = call ptr @memcpy(ptr %preplay22, ptr %replay23, i32 12)
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 30, ptr %0, align 4
  %87 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %event.addr.0, ptr %c, align 4
  call void @km_state_notify(ptr noundef %x, ptr noundef nonnull %c) #8
  %replay_maxage = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 35
  %88 = ptrtoint ptr %replay_maxage to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %replay_maxage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool25.not = icmp eq i32 %89, 0
  br i1 %tobool25.not, label %sw.epilog21.cleanup_crit_edge, label %land.lhs.true26

sw.epilog21.cleanup_crit_edge:                    ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true26:                                  ; preds = %sw.epilog21
  %rtimer = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %90, %89
  %call28 = call i32 @mod_timer(ptr noundef %rtimer, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true26.cleanup_crit_edge

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  %xflags31 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 34
  %91 = ptrtoint ptr %xflags31 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %xflags31, align 8
  %and32 = and i32 %92, -2
  store i32 %and32, ptr %xflags31, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %land.lhs.true26.cleanup_crit_edge, %sw.epilog21.cleanup_crit_edge, %if.then18, %if.then.cleanup_crit_edge, %xfrm_replay_notify_esn.exit, %xfrm_replay_notify_bmp.exit
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_state_notify(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm_replay_advance(ptr noundef %x, i32 noundef %net_seq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %repl_mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 33
  %0 = ptrtoint ptr %repl_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %repl_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %replay_esn1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %3 = ptrtoint ptr %replay_esn1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %replay_esn1.i, align 8
  %replay_window.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %replay_window.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %seq2.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %seq2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq2.i, align 4
  %sub.i = add i32 %8, -1
  %rem.i = urem i32 %sub.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %net_seq)
  %cmp.i = icmp ult i32 %8, %net_seq
  br i1 %cmp.i, label %if.then5.i, label %if.else31.i

if.then5.i:                                       ; preds = %if.end.i
  %sub7.i = sub i32 %net_seq, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %6)
  %cmp9.i = icmp ult i32 %sub7.i, %6
  br i1 %cmp9.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub7.i)
  %cmp11104.i = icmp ugt i32 %sub7.i, 1
  br i1 %cmp11104.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end26.i_crit_edge

for.cond.preheader.i.if.end26.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0105.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add i32 %i.0105.i, %rem.i
  %rem13.i = urem i32 %add.i, %6
  %shr.i = lshr i32 %rem13.i, 5
  %and.i = and i32 %rem13.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %arrayidx.i = getelementptr %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 6, i32 %shr.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %and14.i = and i32 %10, %neg.i
  store i32 %and14.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.0105.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub7.i
  br i1 %exitcond.not.i, label %for.body.i.if.end26.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.else.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i = add i32 %6, -1
  %uglygep.i = getelementptr i8, ptr %4, i32 24
  %11 = lshr i32 %sub16.i, 3
  %12 = and i32 %11, 536870908
  %13 = add nuw nsw i32 %12, 4
  %14 = call ptr @memset(ptr %uglygep.i, i32 0, i32 %13)
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %for.body.i.if.end26.i_crit_edge, %for.cond.preheader.i.if.end26.i_crit_edge
  %add27.i = add i32 %rem.i, %sub7.i
  %15 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %replay_window.i, align 4
  %rem29.i = urem i32 %add27.i, %16
  %17 = ptrtoint ptr %seq2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %net_seq, ptr %seq2.i, align 4
  br label %if.end44.i

if.else31.i:                                      ; preds = %if.end.i
  %sub33.i = sub i32 %8, %net_seq
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %sub33.i)
  %cmp34.not.i = icmp ult i32 %rem.i, %sub33.i
  br i1 %cmp34.not.i, label %if.else39.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub36.i = sub i32 %rem.i, %sub33.i
  %rem38.i = urem i32 %sub36.i, %6
  br label %if.end44.i

if.else39.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub41.neg.i = sub i32 %6, %sub33.i
  %sub42.i = add i32 %sub41.neg.i, %rem.i
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else39.i, %if.then35.i, %if.end26.i
  %bitnr.0.i = phi i32 [ %rem29.i, %if.end26.i ], [ %rem38.i, %if.then35.i ], [ %sub42.i, %if.else39.i ]
  %shr45.i = lshr i32 %bitnr.0.i, 5
  %and46.i = and i32 %bitnr.0.i, 31
  %shl47.i = shl nuw i32 1, %and46.i
  %arrayidx49.i = getelementptr %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 6, i32 %shr45.i
  %18 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx49.i, align 4
  %or.i = or i32 %shl47.i, %19
  store i32 %or.i, ptr %arrayidx49.i, align 4
  %20 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %x, align 4
  %call50.i = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end44.i.cleanup_crit_edge, label %if.then52.i

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then52.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16) #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %replay_esn1.i55 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %22 = ptrtoint ptr %replay_esn1.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %replay_esn1.i55, align 8
  %replay_window.i56 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %replay_window.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %replay_window.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i57 = icmp eq i32 %25, 0
  br i1 %tobool.not.i57, label %sw.bb1.cleanup_crit_edge, label %if.end.i61

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i61:                                       ; preds = %sw.bb1
  %seq2.i58 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %seq2.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seq2.i58, align 4
  %sub.i59 = add i32 %27, -1
  %rem.i60 = urem i32 %sub.i59, %25
  %flags.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool.not.i.i = icmp sgt i8 %29, -1
  br i1 %tobool.not.i.i, label %if.end.i61.xfrm_replay_seqhi.exit.i_crit_edge, label %if.end.i.i

if.end.i61.xfrm_replay_seqhi.exit.i_crit_edge:    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_seqhi.exit.i

if.end.i.i:                                       ; preds = %if.end.i61
  %seq_hi2.i.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %23, i32 0, i32 4
  %30 = ptrtoint ptr %seq_hi2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seq_hi2.i.i, align 4
  %sub.i.i = sub i32 1, %25
  %add.i.i = add i32 %sub.i.i, %27
  %sub6.i.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub6.i.i)
  %cmp.not.i.i = icmp ult i32 %27, %sub6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %net_seq)
  %cmp21.not.i.i = icmp ugt i32 %add.i.i, %net_seq
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then10.i.i, !prof !25

if.then10.i.i:                                    ; preds = %if.end.i.i
  br i1 %cmp21.not.i.i, label %if.then19.i.i, label %if.then10.i.i.xfrm_replay_seqhi.exit.i_crit_edge, !prof !25

if.then10.i.i.xfrm_replay_seqhi.exit.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_seqhi.exit.i

if.then19.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i.i = add i32 %31, 1
  br label %xfrm_replay_seqhi.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  br i1 %cmp21.not.i.i, label %if.else.i.i.xfrm_replay_seqhi.exit.i_crit_edge, label %if.then29.i.i, !prof !26

if.else.i.i.xfrm_replay_seqhi.exit.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_seqhi.exit.i

if.then29.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i = add i32 %31, -1
  br label %xfrm_replay_seqhi.exit.i

xfrm_replay_seqhi.exit.i:                         ; preds = %if.then29.i.i, %if.else.i.i.xfrm_replay_seqhi.exit.i_crit_edge, %if.then19.i.i, %if.then10.i.i.xfrm_replay_seqhi.exit.i_crit_edge, %if.end.i61.xfrm_replay_seqhi.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i61.xfrm_replay_seqhi.exit.i_crit_edge ], [ %inc.i.i, %if.then19.i.i ], [ %31, %if.then10.i.i.xfrm_replay_seqhi.exit.i_crit_edge ], [ %dec.i.i, %if.then29.i.i ], [ %31, %if.else.i.i.xfrm_replay_seqhi.exit.i_crit_edge ]
  %seq_hi4.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %23, i32 0, i32 4
  %32 = ptrtoint ptr %seq_hi4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seq_hi4.i, align 4
  %sub5.i = sub i32 %retval.0.i.i, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %33)
  %tobool6.not.i = icmp eq i32 %retval.0.i.i, %33
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %xfrm_replay_seqhi.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %net_seq)
  %cmp.i62 = icmp ult i32 %27, %net_seq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp8.i = icmp sgt i32 %sub5.i, 0
  %or.cond.i = select i1 %cmp.i62, i1 true, i1 %cmp8.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %land.lhs.true.i.if.else57.i_crit_edge

land.lhs.true.i.if.else57.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else57.i

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

lor.lhs.false.i:                                  ; preds = %xfrm_replay_seqhi.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp8.old.i = icmp sgt i32 %sub5.i, 0
  br i1 %cmp8.old.i, label %lor.lhs.false.i.if.end19.i_crit_edge, label %lor.lhs.false.i.if.else57.i_crit_edge

lor.lhs.false.i.if.else57.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else57.i

lor.lhs.false.i.if.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %lor.lhs.false.i.if.end19.i_crit_edge, %land.lhs.true.i.if.end19.i_crit_edge
  %diff.0.i = sub i32 %net_seq, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %diff.0.i, i32 %25)
  %cmp21.i = icmp ult i32 %diff.0.i, %25
  br i1 %cmp21.i, label %for.cond.preheader.i63, label %if.else29.i

for.cond.preheader.i63:                           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %diff.0.i)
  %cmp23145.i = icmp ugt i32 %diff.0.i, 1
  br i1 %cmp23145.i, label %for.cond.preheader.i63.for.body.i70_crit_edge, label %for.cond.preheader.i63.if.end41.i_crit_edge

for.cond.preheader.i63.if.end41.i_crit_edge:      ; preds = %for.cond.preheader.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

for.cond.preheader.i63.for.body.i70_crit_edge:    ; preds = %for.cond.preheader.i63
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.body.i70.for.body.i70_crit_edge, %for.cond.preheader.i63.for.body.i70_crit_edge
  %i.0146.i = phi i32 [ %inc.i68, %for.body.i70.for.body.i70_crit_edge ], [ 1, %for.cond.preheader.i63.for.body.i70_crit_edge ]
  %add24.i = add i32 %i.0146.i, %rem.i60
  %rem26.i = urem i32 %add24.i, %25
  %shr.i64 = lshr i32 %rem26.i, 5
  %and.i65 = and i32 %rem26.i, 31
  %shl.i66 = shl nuw i32 1, %and.i65
  %neg27.i = xor i32 %shl.i66, -1
  %arrayidx.i67 = getelementptr %struct.xfrm_replay_state_esn, ptr %23, i32 0, i32 6, i32 %shr.i64
  %34 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i67, align 4
  %and28.i = and i32 %35, %neg27.i
  store i32 %and28.i, ptr %arrayidx.i67, align 4
  %inc.i68 = add nuw i32 %i.0146.i, 1
  %exitcond.not.i69 = icmp eq i32 %inc.i68, %diff.0.i
  br i1 %exitcond.not.i69, label %for.body.i70.if.end41.i_crit_edge, label %for.body.i70.for.body.i70_crit_edge

for.body.i70.for.body.i70_crit_edge:              ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i70

for.body.i70.if.end41.i_crit_edge:                ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.else29.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub31.i = add i32 %25, -1
  %uglygep.i71 = getelementptr i8, ptr %23, i32 24
  %36 = lshr i32 %sub31.i, 3
  %37 = and i32 %36, 536870908
  %38 = add nuw nsw i32 %37, 4
  %39 = call ptr @memset(ptr %uglygep.i71, i32 0, i32 %38)
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else29.i, %for.body.i70.if.end41.i_crit_edge, %for.cond.preheader.i63.if.end41.i_crit_edge
  %add42.i = add i32 %rem.i60, %diff.0.i
  %40 = ptrtoint ptr %replay_window.i56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %replay_window.i56, align 4
  %rem44.i = urem i32 %add42.i, %41
  %42 = ptrtoint ptr %seq2.i58 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %net_seq, ptr %seq2.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp46.i = icmp sgt i32 %sub5.i, 0
  br i1 %cmp46.i, label %if.then53.i, label %if.end41.i.if.end70.i_crit_edge, !prof !25

if.end41.i.if.end70.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

if.then53.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %seq_hi4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seq_hi4.i, align 4
  %inc55.i = add i32 %44, 1
  store i32 %inc55.i, ptr %seq_hi4.i, align 4
  br label %if.end70.i

if.else57.i:                                      ; preds = %lor.lhs.false.i.if.else57.i_crit_edge, %land.lhs.true.i.if.else57.i_crit_edge
  %sub59.i = sub i32 %27, %net_seq
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i60, i32 %sub59.i)
  %cmp60.not.i = icmp ult i32 %rem.i60, %sub59.i
  br i1 %cmp60.not.i, label %if.else65.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub62.i = sub i32 %rem.i60, %sub59.i
  %rem64.i = urem i32 %sub62.i, %25
  br label %if.end70.i

if.else65.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub67.neg.i = sub i32 %25, %sub59.i
  %sub68.i = add i32 %sub67.neg.i, %rem.i60
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else65.i, %if.then61.i, %if.then53.i, %if.end41.i.if.end70.i_crit_edge
  %bitnr.0.i72 = phi i32 [ %rem44.i, %if.then53.i ], [ %rem44.i, %if.end41.i.if.end70.i_crit_edge ], [ %rem64.i, %if.then61.i ], [ %sub68.i, %if.else65.i ]
  %xso1.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41
  %45 = ptrtoint ptr %xso1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xso1.i.i, align 4
  %tobool.not.i141.i = icmp eq ptr %46, null
  br i1 %tobool.not.i141.i, label %if.end70.i.xfrm_dev_state_advance_esn.exit.i_crit_edge, label %land.lhs.true.i.i

if.end70.i.xfrm_dev_state_advance_esn.exit.i_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dev_state_advance_esn.exit.i

land.lhs.true.i.i:                                ; preds = %if.end70.i
  %xfrmdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 47
  %47 = ptrtoint ptr %xfrmdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xfrmdev_ops.i.i, align 4
  %xdo_dev_state_advance_esn.i.i = getelementptr inbounds %struct.xfrmdev_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %xdo_dev_state_advance_esn.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xdo_dev_state_advance_esn.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %50, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.xfrm_dev_state_advance_esn.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.xfrm_dev_state_advance_esn.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_dev_state_advance_esn.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %50(ptr noundef %x) #8
  br label %xfrm_dev_state_advance_esn.exit.i

xfrm_dev_state_advance_esn.exit.i:                ; preds = %if.then.i.i, %land.lhs.true.i.i.xfrm_dev_state_advance_esn.exit.i_crit_edge, %if.end70.i.xfrm_dev_state_advance_esn.exit.i_crit_edge
  %shr71.i = lshr i32 %bitnr.0.i72, 5
  %and72.i = and i32 %bitnr.0.i72, 31
  %shl73.i = shl nuw i32 1, %and72.i
  %arrayidx75.i = getelementptr %struct.xfrm_replay_state_esn, ptr %23, i32 0, i32 6, i32 %shr71.i
  %51 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx75.i, align 4
  %or.i73 = or i32 %52, %shl73.i
  store i32 %or.i73, ptr %arrayidx75.i, align 4
  %53 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %x, align 4
  %call77.i = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %xfrm_dev_state_advance_esn.exit.i.cleanup_crit_edge, label %if.then79.i

xfrm_dev_state_advance_esn.exit.i.cleanup_crit_edge: ; preds = %xfrm_dev_state_advance_esn.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then79.i:                                      ; preds = %xfrm_dev_state_advance_esn.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16) #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %replay_window = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 2
  %55 = ptrtoint ptr %replay_window to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %replay_window, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not = icmp eq i8 %56, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %seq2 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29, i32 1
  %57 = ptrtoint ptr %seq2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seq2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %net_seq)
  %cmp = icmp ult i32 %58, %net_seq
  br i1 %cmp, label %if.then3, label %if.else19

if.then3:                                         ; preds = %if.end
  %sub = sub i32 %net_seq, %58
  %conv = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp8 = icmp ult i32 %sub, %conv
  %bitmap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29, i32 2
  br i1 %cmp8, label %if.then10, label %if.then3.if.end16_crit_edge

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bitmap, align 4
  %shl = shl i32 %60, %sub
  %or = or i32 %shl, 1
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.then3.if.end16_crit_edge
  %.sink = phi i32 [ %or, %if.then10 ], [ 1, %if.then3.if.end16_crit_edge ]
  %61 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %bitmap, align 4
  %62 = ptrtoint ptr %seq2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %net_seq, ptr %seq2, align 4
  br label %if.end27

if.else19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub22 = sub i32 %58, %net_seq
  %shl23 = shl nuw i32 1, %sub22
  %bitmap25 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29, i32 2
  %63 = ptrtoint ptr %bitmap25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bitmap25, align 4
  %or26 = or i32 %64, %shl23
  store i32 %or26, ptr %bitmap25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else19, %if.end16
  %65 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %x, align 4
  %call28 = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.then30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end27.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then79.i, %xfrm_dev_state_advance_esn.exit.i.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.then52.i, %if.end44.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_aevent_is_on(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %nlsk1 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 17
  %4 = ptrtoint ptr %nlsk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %nlsk1, align 8
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @xfrm_aevent_is_on.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xfrm_aevent_is_on.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %5, i32 noundef 5) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ 0, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %6 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i.i.i23 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfrm_replay_check(ptr nocapture noundef %x, ptr nocapture noundef readnone %skb, i32 noundef %net_seq) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %repl_mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 33
  %0 = ptrtoint ptr %repl_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %repl_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %replay_esn1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %3 = ptrtoint ptr %replay_esn1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %replay_esn1.i, align 8
  %seq2.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %seq2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %seq2.i, align 4
  %sub.i = sub i32 %6, %net_seq
  %replay_window.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %replay_window.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %net_seq)
  %cmp.i = icmp eq i32 %net_seq, 0
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %if.end6.i, !prof !25

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %net_seq)
  %cmp8.i = icmp ult i32 %6, %net_seq
  br i1 %cmp8.i, label %if.end6.i.return_crit_edge, label %if.end16.i, !prof !26

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end16.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub.i)
  %cmp18.not.i = icmp ugt i32 %8, %sub.i
  br i1 %cmp18.not.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %stats.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  br label %return.sink.split

if.end21.i:                                       ; preds = %if.end16.i
  %sub23.i = add i32 %6, -1
  %rem.i = urem i32 %sub23.i, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %sub.i)
  %cmp25.not.i = icmp ult i32 %rem.i, %sub.i
  br i1 %cmp25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub27.i = sub i32 %rem.i, %sub.i
  %rem29.i = urem i32 %sub27.i, %8
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub31.neg.i = sub i32 %8, %sub.i
  %sub32.i = add i32 %sub31.neg.i, %rem.i
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.then26.i
  %bitnr.0.i = phi i32 [ %rem29.i, %if.then26.i ], [ %sub32.i, %if.else.i ]
  %shr.i = lshr i32 %bitnr.0.i, 5
  %and.i = and i32 %bitnr.0.i, 31
  %arrayidx.i = getelementptr %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 6, i32 %shr.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %and.i
  %and34.i = and i32 %shl.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.return_crit_edge, label %err_replay.i

if.end33.i.return_crit_edge:                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

err_replay.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %replay.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 1
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %replay_esn1.i11 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %11 = ptrtoint ptr %replay_esn1.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %replay_esn1.i11, align 8
  %replay_window.i12 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %replay_window.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %replay_window.i12, align 4
  %seq2.i13 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %seq2.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq2.i13, align 4
  %sub.i14 = sub i32 %16, %14
  %add.i = add i32 %sub.i14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i15 = icmp eq i32 %14, 0
  br i1 %tobool.not.i15, label %sw.bb1.return_crit_edge, label %if.end.i17

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i17:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %net_seq)
  %cmp.i16 = icmp eq i32 %net_seq, 0
  br i1 %cmp.i16, label %land.lhs.true.i, label %if.end.if.end11_crit_edge.i

if.end.if.end11_crit_edge.i:                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i = add i32 %14, -1
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i17
  %seq_hi.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %seq_hi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq_hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.i = icmp eq i32 %18, 0
  %sub6.i = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub6.i)
  %cmp7.i = icmp ult i32 %16, %sub6.i
  %or.cond.i = select i1 %cmp3.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge, !prof !29

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end.if.end11_crit_edge.i
  %sub13.pre-phi.i = phi i32 [ %.pre.i, %if.end.if.end11_crit_edge.i ], [ %sub6.i, %land.lhs.true.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub13.pre-phi.i)
  %cmp14.not.i = icmp ult i32 %16, %sub13.pre-phi.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %net_seq)
  %cmp32.i = icmp ult i32 %16, %net_seq
  br i1 %cmp14.not.i, label %if.else.i18, label %if.then21.i, !prof !25

if.then21.i:                                      ; preds = %if.end11.i
  br i1 %cmp32.i, label %if.then21.i.return_crit_edge, label %lor.lhs.false.i, !prof !26

if.then21.i.return_crit_edge:                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i:                                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %net_seq)
  %cmp29.i = icmp ugt i32 %add.i, %net_seq
  br i1 %cmp29.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.if.end49.i_crit_edge

lor.lhs.false.i.if.end49.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else.i18:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %net_seq)
  %cmp34.i = icmp ugt i32 %add.i, %net_seq
  %spec.select.i = select i1 %cmp32.i, i1 %cmp34.i, i1 false, !prof !26
  br i1 %spec.select.i, label %if.else.i18.return_crit_edge, label %if.else.i18.if.end49.i_crit_edge, !prof !26

if.else.i18.if.end49.i_crit_edge:                 ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.else.i18.return_crit_edge:                     ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end49.i:                                       ; preds = %if.else.i18.if.end49.i_crit_edge, %lor.lhs.false.i.if.end49.i_crit_edge
  %diff.0.i = sub i32 %16, %net_seq
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %diff.0.i)
  %cmp51.not.i = icmp ugt i32 %14, %diff.0.i
  br i1 %cmp51.not.i, label %if.end54.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %stats.i19 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  br label %return.sink.split

if.end54.i:                                       ; preds = %if.end49.i
  %sub56.i = add i32 %16, -1
  %rem.i20 = urem i32 %sub56.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i20, i32 %diff.0.i)
  %cmp58.not.i = icmp ult i32 %rem.i20, %diff.0.i
  br i1 %cmp58.not.i, label %if.else63.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub60.i = sub i32 %rem.i20, %diff.0.i
  %rem62.i = urem i32 %sub60.i, %14
  br label %if.end67.i

if.else63.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub65.neg.i = sub i32 %14, %diff.0.i
  %sub66.i = add i32 %sub65.neg.i, %rem.i20
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else63.i, %if.then59.i
  %bitnr.0.i21 = phi i32 [ %rem62.i, %if.then59.i ], [ %sub66.i, %if.else63.i ]
  %shr.i22 = lshr i32 %bitnr.0.i21, 5
  %and.i23 = and i32 %bitnr.0.i21, 31
  %arrayidx.i24 = getelementptr %struct.xfrm_replay_state_esn, ptr %12, i32 0, i32 6, i32 %shr.i22
  %19 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i24, align 4
  %shl.i25 = shl nuw i32 1, %and.i23
  %and68.i = and i32 %shl.i25, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end67.i.return_crit_edge, label %err_replay.i27

if.end67.i.return_crit_edge:                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

err_replay.i27:                                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %replay.i26 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 1
  br label %return.sink.split

sw.epilog:                                        ; preds = %entry
  %replay_window.i31 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 2
  %21 = ptrtoint ptr %replay_window.i31 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %replay_window.i31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i32 = icmp eq i8 %22, 0
  br i1 %tobool.not.i32, label %sw.epilog.return_crit_edge, label %if.end.i34

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i34:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %net_seq)
  %cmp.i33 = icmp eq i32 %net_seq, 0
  br i1 %cmp.i33, label %if.end.i34.return_crit_edge, label %if.end4.i, !prof !25

if.end.i34.return_crit_edge:                      ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.i:                                        ; preds = %if.end.i34
  %seq5.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29, i32 1
  %23 = ptrtoint ptr %seq5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seq5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %net_seq)
  %cmp6.i = icmp ult i32 %24, %net_seq
  br i1 %cmp6.i, label %if.end4.i.return_crit_edge, label %if.end14.i, !prof !26

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end14.i:                                       ; preds = %if.end4.i
  %sub.i35 = sub i32 %24, %net_seq
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i35, i32 %conv.i)
  %cmp19.not.i = icmp ult i32 %sub.i35, %conv.i
  br i1 %cmp19.not.i, label %if.end23.i, label %if.then21.i37

if.then21.i37:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %stats.i36 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  br label %return.sink.split

if.end23.i:                                       ; preds = %if.end14.i
  %bitmap.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29, i32 2
  %25 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bitmap.i, align 4
  %shl.i38 = shl nuw i32 1, %sub.i35
  %and.i39 = and i32 %26, %shl.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool25.not.i = icmp eq i32 %and.i39, 0
  br i1 %tobool25.not.i, label %if.end23.i.return_crit_edge, label %if.then26.i40

if.end23.i.return_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then26.i40:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %replay28.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then26.i40, %if.then21.i37, %err_replay.i27, %if.then52.i, %err_replay.i, %if.then19.i
  %stats.sink1.i41.sink45 = phi ptr [ %stats.i, %if.then19.i ], [ %replay.i, %err_replay.i ], [ %stats.i19, %if.then52.i ], [ %replay.i26, %err_replay.i27 ], [ %stats.i36, %if.then21.i37 ], [ %replay28.i, %if.then26.i40 ]
  %27 = ptrtoint ptr %stats.sink1.i41.sink45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stats.sink1.i41.sink45, align 4
  %inc.i42 = add i32 %28, 1
  store i32 %inc.i42, ptr %stats.sink1.i41.sink45, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end23.i.return_crit_edge, %if.end4.i.return_crit_edge, %if.end.i34.return_crit_edge, %sw.epilog.return_crit_edge, %if.end67.i.return_crit_edge, %if.else.i18.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.then21.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %sw.bb1.return_crit_edge, %if.end33.i.return_crit_edge, %if.end6.i.return_crit_edge, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.return_crit_edge ], [ 0, %if.end6.i.return_crit_edge ], [ 0, %if.end33.i.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.then21.i.return_crit_edge ], [ 0, %if.else.i18.return_crit_edge ], [ 0, %if.end67.i.return_crit_edge ], [ -22, %land.lhs.true.i.return_crit_edge ], [ 0, %sw.epilog.return_crit_edge ], [ 0, %if.end4.i.return_crit_edge ], [ 0, %if.end23.i.return_crit_edge ], [ -22, %if.end.i34.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfrm_replay_recheck(ptr nocapture noundef %x, ptr nocapture noundef readonly %skb, i32 noundef %net_seq) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %repl_mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 33
  %0 = ptrtoint ptr %repl_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %repl_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %replay_esn1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %3 = ptrtoint ptr %replay_esn1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %replay_esn1.i, align 8
  %seq2.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %seq2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %seq2.i, align 4
  %sub.i = sub i32 %6, %net_seq
  %replay_window.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %replay_window.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %net_seq)
  %cmp.i = icmp eq i32 %net_seq, 0
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %if.end6.i, !prof !25

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %net_seq)
  %cmp8.i = icmp ult i32 %6, %net_seq
  br i1 %cmp8.i, label %if.end6.i.return_crit_edge, label %if.end16.i, !prof !26

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end16.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub.i)
  %cmp18.not.i = icmp ugt i32 %8, %sub.i
  br i1 %cmp18.not.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %stats.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  br label %return.sink.split

if.end21.i:                                       ; preds = %if.end16.i
  %sub23.i = add i32 %6, -1
  %rem.i = urem i32 %sub23.i, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %sub.i)
  %cmp25.not.i = icmp ult i32 %rem.i, %sub.i
  br i1 %cmp25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub27.i = sub i32 %rem.i, %sub.i
  %rem29.i = urem i32 %sub27.i, %8
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub31.neg.i = sub i32 %8, %sub.i
  %sub32.i = add i32 %sub31.neg.i, %rem.i
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.then26.i
  %bitnr.0.i = phi i32 [ %rem29.i, %if.then26.i ], [ %sub32.i, %if.else.i ]
  %shr.i = lshr i32 %bitnr.0.i, 5
  %and.i = and i32 %bitnr.0.i, 31
  %arrayidx.i = getelementptr %struct.xfrm_replay_state_esn, ptr %4, i32 0, i32 6, i32 %shr.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %and.i
  %and34.i = and i32 %shl.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.return_crit_edge, label %err_replay.i

if.end33.i.return_crit_edge:                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

err_replay.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %replay.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 1
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %hi.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %11 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hi.i, align 4
  %flags.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not.i.i = icmp sgt i8 %14, -1
  br i1 %tobool.not.i.i, label %sw.bb1.xfrm_replay_seqhi.exit.i_crit_edge, label %if.end.i.i

sw.bb1.xfrm_replay_seqhi.exit.i_crit_edge:        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_seqhi.exit.i

if.end.i.i:                                       ; preds = %sw.bb1
  %replay_esn1.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %15 = ptrtoint ptr %replay_esn1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %replay_esn1.i.i, align 8
  %seq_hi2.i.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %seq_hi2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq_hi2.i.i, align 4
  %seq3.i.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %seq3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq3.i.i, align 4
  %replay_window.i.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %replay_window.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %replay_window.i.i, align 4
  %sub.i.i = add i32 %20, 1
  %add.i.i = sub i32 %sub.i.i, %22
  %sub6.i.i = add i32 %22, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub6.i.i)
  %cmp.not.i.i = icmp ult i32 %20, %sub6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %net_seq)
  %cmp21.not.i.i = icmp ugt i32 %add.i.i, %net_seq
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then10.i.i, !prof !25

if.then10.i.i:                                    ; preds = %if.end.i.i
  br i1 %cmp21.not.i.i, label %if.then19.i.i, label %if.then10.i.i.xfrm_replay_seqhi.exit.i_crit_edge, !prof !25

if.then10.i.i.xfrm_replay_seqhi.exit.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_seqhi.exit.i

if.then19.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i.i = add i32 %18, 1
  br label %xfrm_replay_seqhi.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  br i1 %cmp21.not.i.i, label %if.else.i.i.xfrm_replay_seqhi.exit.i_crit_edge, label %if.then29.i.i, !prof !26

if.else.i.i.xfrm_replay_seqhi.exit.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_replay_seqhi.exit.i

if.then29.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i = add i32 %18, -1
  br label %xfrm_replay_seqhi.exit.i

xfrm_replay_seqhi.exit.i:                         ; preds = %if.then29.i.i, %if.else.i.i.xfrm_replay_seqhi.exit.i_crit_edge, %if.then19.i.i, %if.then10.i.i.xfrm_replay_seqhi.exit.i_crit_edge, %sw.bb1.xfrm_replay_seqhi.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %sw.bb1.xfrm_replay_seqhi.exit.i_crit_edge ], [ %inc.i.i, %if.then19.i.i ], [ %18, %if.then10.i.i.xfrm_replay_seqhi.exit.i_crit_edge ], [ %dec.i.i, %if.then29.i.i ], [ %18, %if.else.i.i.xfrm_replay_seqhi.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %retval.0.i.i)
  %cmp.not.i = icmp eq i32 %12, %retval.0.i.i
  br i1 %cmp.not.i, label %if.end.i12, label %if.then.i, !prof !26

if.then.i:                                        ; preds = %xfrm_replay_seqhi.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %stats.i11 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  br label %return.sink.split

if.end.i12:                                       ; preds = %xfrm_replay_seqhi.exit.i
  %replay_esn1.i7.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %23 = ptrtoint ptr %replay_esn1.i7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %replay_esn1.i7.i, align 8
  %replay_window.i8.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %replay_window.i8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %replay_window.i8.i, align 4
  %seq2.i.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %seq2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seq2.i.i, align 4
  %sub.i9.i = sub i32 %28, %26
  %add.i10.i = add i32 %sub.i9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i11.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i11.i, label %if.end.i12.return_crit_edge, label %if.end.i12.i

if.end.i12.return_crit_edge:                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i12.i:                                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %net_seq)
  %cmp.i.i = icmp eq i32 %net_seq, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.if.end11_crit_edge.i.i

if.end.if.end11_crit_edge.i.i:                    ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i.i = add i32 %26, -1
  br label %if.end11.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i12.i
  %seq_hi.i.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %24, i32 0, i32 4
  %29 = ptrtoint ptr %seq_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq_hi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp3.i.i = icmp eq i32 %30, 0
  %sub6.i13.i = add i32 %26, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %sub6.i13.i)
  %cmp7.i.i = icmp ult i32 %28, %sub6.i13.i
  %or.cond.i.i = select i1 %cmp3.i.i, i1 %cmp7.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.return_crit_edge, label %land.lhs.true.i.i.if.end11.i.i_crit_edge, !prof !29

land.lhs.true.i.i.if.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

land.lhs.true.i.i.return_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11.i.i:                                     ; preds = %land.lhs.true.i.i.if.end11.i.i_crit_edge, %if.end.if.end11_crit_edge.i.i
  %sub13.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.end.if.end11_crit_edge.i.i ], [ %sub6.i13.i, %land.lhs.true.i.i.if.end11.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %sub13.pre-phi.i.i)
  %cmp14.not.i.i = icmp ult i32 %28, %sub13.pre-phi.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %net_seq)
  %cmp32.i.i = icmp ult i32 %28, %net_seq
  br i1 %cmp14.not.i.i, label %if.else.i14.i, label %if.then21.i.i, !prof !25

if.then21.i.i:                                    ; preds = %if.end11.i.i
  br i1 %cmp32.i.i, label %if.then21.i.i.return_crit_edge, label %lor.lhs.false.i.i, !prof !26

if.then21.i.i.return_crit_edge:                   ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i.i:                                ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i10.i, i32 %net_seq)
  %cmp29.i.i = icmp ugt i32 %add.i10.i, %net_seq
  br i1 %cmp29.i.i, label %lor.lhs.false.i.i.return_crit_edge, label %lor.lhs.false.i.i.if.end49.i.i_crit_edge

lor.lhs.false.i.i.if.end49.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i

lor.lhs.false.i.i.return_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else.i14.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i10.i, i32 %net_seq)
  %cmp34.i.i = icmp ugt i32 %add.i10.i, %net_seq
  %spec.select.i.i = select i1 %cmp32.i.i, i1 %cmp34.i.i, i1 false, !prof !26
  br i1 %spec.select.i.i, label %if.else.i14.i.return_crit_edge, label %if.else.i14.i.if.end49.i.i_crit_edge, !prof !26

if.else.i14.i.if.end49.i.i_crit_edge:             ; preds = %if.else.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i

if.else.i14.i.return_crit_edge:                   ; preds = %if.else.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end49.i.i:                                     ; preds = %if.else.i14.i.if.end49.i.i_crit_edge, %lor.lhs.false.i.i.if.end49.i.i_crit_edge
  %diff.0.i.i = sub i32 %28, %net_seq
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %diff.0.i.i)
  %cmp51.not.i.i = icmp ugt i32 %26, %diff.0.i.i
  br i1 %cmp51.not.i.i, label %if.end54.i.i, label %if.then52.i.i

if.then52.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %stats.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  br label %return.sink.split

if.end54.i.i:                                     ; preds = %if.end49.i.i
  %sub56.i.i = add i32 %28, -1
  %rem.i.i = urem i32 %sub56.i.i, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %diff.0.i.i)
  %cmp58.not.i.i = icmp ult i32 %rem.i.i, %diff.0.i.i
  br i1 %cmp58.not.i.i, label %if.else63.i.i, label %if.then59.i.i

if.then59.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub60.i.i = sub i32 %rem.i.i, %diff.0.i.i
  %rem62.i.i = urem i32 %sub60.i.i, %26
  br label %if.end67.i.i

if.else63.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub65.neg.i.i = sub i32 %26, %diff.0.i.i
  %sub66.i.i = add i32 %sub65.neg.i.i, %rem.i.i
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.else63.i.i, %if.then59.i.i
  %bitnr.0.i.i = phi i32 [ %rem62.i.i, %if.then59.i.i ], [ %sub66.i.i, %if.else63.i.i ]
  %shr.i.i = lshr i32 %bitnr.0.i.i, 5
  %and.i.i = and i32 %bitnr.0.i.i, 31
  %arrayidx.i.i = getelementptr %struct.xfrm_replay_state_esn, ptr %24, i32 0, i32 6, i32 %shr.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %shl.i.i = shl nuw i32 1, %and.i.i
  %and68.i.i = and i32 %shl.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %tobool69.not.i.i = icmp eq i32 %and68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.end67.i.i.return_crit_edge, label %err_replay.i.i

if.end67.i.i.return_crit_edge:                    ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

err_replay.i.i:                                   ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %replay.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 1
  br label %return.sink.split

sw.epilog:                                        ; preds = %entry
  %replay_window.i14 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 2
  %33 = ptrtoint ptr %replay_window.i14 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %replay_window.i14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i15 = icmp eq i8 %34, 0
  br i1 %tobool.not.i15, label %sw.epilog.return_crit_edge, label %if.end.i17

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i17:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %net_seq)
  %cmp.i16 = icmp eq i32 %net_seq, 0
  br i1 %cmp.i16, label %if.end.i17.return_crit_edge, label %if.end4.i, !prof !25

if.end.i17.return_crit_edge:                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.i:                                        ; preds = %if.end.i17
  %seq5.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29, i32 1
  %35 = ptrtoint ptr %seq5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seq5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %net_seq)
  %cmp6.i = icmp ult i32 %36, %net_seq
  br i1 %cmp6.i, label %if.end4.i.return_crit_edge, label %if.end14.i, !prof !26

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end14.i:                                       ; preds = %if.end4.i
  %sub.i18 = sub i32 %36, %net_seq
  %conv.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i18, i32 %conv.i)
  %cmp19.not.i = icmp ult i32 %sub.i18, %conv.i
  br i1 %cmp19.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %stats.i19 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  br label %return.sink.split

if.end23.i:                                       ; preds = %if.end14.i
  %bitmap.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29, i32 2
  %37 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bitmap.i, align 4
  %shl.i20 = shl nuw i32 1, %sub.i18
  %and.i21 = and i32 %38, %shl.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool25.not.i = icmp eq i32 %and.i21, 0
  br i1 %tobool25.not.i, label %if.end23.i.return_crit_edge, label %if.then26.i22

if.end23.i.return_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then26.i22:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %replay28.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then26.i22, %if.then21.i, %err_replay.i.i, %if.then52.i.i, %if.then.i, %err_replay.i, %if.then19.i
  %stats.sink1.i23.sink27 = phi ptr [ %stats.i, %if.then19.i ], [ %replay.i, %err_replay.i ], [ %stats.i11, %if.then.i ], [ %stats.i.i, %if.then52.i.i ], [ %replay.i.i, %err_replay.i.i ], [ %stats.i19, %if.then21.i ], [ %replay28.i, %if.then26.i22 ]
  %39 = ptrtoint ptr %stats.sink1.i23.sink27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stats.sink1.i23.sink27, align 4
  %inc.i24 = add i32 %40, 1
  store i32 %inc.i24, ptr %stats.sink1.i23.sink27, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end23.i.return_crit_edge, %if.end4.i.return_crit_edge, %if.end.i17.return_crit_edge, %sw.epilog.return_crit_edge, %if.end67.i.i.return_crit_edge, %if.else.i14.i.return_crit_edge, %lor.lhs.false.i.i.return_crit_edge, %if.then21.i.i.return_crit_edge, %land.lhs.true.i.i.return_crit_edge, %if.end.i12.return_crit_edge, %if.end33.i.return_crit_edge, %if.end6.i.return_crit_edge, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.return_crit_edge ], [ 0, %if.end6.i.return_crit_edge ], [ 0, %if.end33.i.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ 0, %if.end.i12.return_crit_edge ], [ 0, %lor.lhs.false.i.i.return_crit_edge ], [ 0, %if.then21.i.i.return_crit_edge ], [ 0, %if.else.i14.i.return_crit_edge ], [ 0, %if.end67.i.i.return_crit_edge ], [ -22, %land.lhs.true.i.i.return_crit_edge ], [ 0, %sw.epilog.return_crit_edge ], [ 0, %if.end4.i.return_crit_edge ], [ 0, %if.end23.i.return_crit_edge ], [ -22, %if.end.i17.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm_replay_overflow(ptr noundef %x, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %repl_mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 33
  %0 = ptrtoint ptr %repl_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %repl_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %3 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i.i.i.i, label %sw.bb.xfrm_offload.exit.thread.i_crit_edge, label %skb_sec_path.exit.i.i

sw.bb.xfrm_offload.exit.thread.i_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i

skb_sec_path.exit.i.i:                            ; preds = %sw.bb
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %6 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extensions.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.skb_ext, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %9 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %skb_sec_path.exit.i.i.xfrm_offload.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

skb_sec_path.exit.i.i.xfrm_offload.exit.thread.i_crit_edge: ; preds = %skb_sec_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %skb_sec_path.exit.i.i
  %olen.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %olen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.xfrm_offload.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.xfrm_offload.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %12 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i.i = icmp eq i32 %13, %11
  br i1 %cmp.not.i.i, label %xfrm_offload.exit.i, label %lor.lhs.false2.i.i.xfrm_offload.exit.thread.i_crit_edge

lor.lhs.false2.i.i.xfrm_offload.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i

xfrm_offload.exit.thread.i:                       ; preds = %lor.lhs.false2.i.i.xfrm_offload.exit.thread.i_crit_edge, %lor.lhs.false.i.i.xfrm_offload.exit.thread.i_crit_edge, %skb_sec_path.exit.i.i.xfrm_offload.exit.thread.i_crit_edge, %sw.bb.xfrm_offload.exit.thread.i_crit_edge
  %replay_esn175.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %14 = ptrtoint ptr %replay_esn175.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %replay_esn175.i, align 8
  %16 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %x, align 4
  %oseq376.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %oseq376.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oseq376.i, align 4
  br label %if.then.i

xfrm_offload.exit.i:                              ; preds = %lor.lhs.false2.i.i
  %sub.i.i = add i32 %11, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 3, i32 %sub.i.i
  %replay_esn1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %20 = ptrtoint ptr %replay_esn1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %replay_esn1.i, align 8
  %22 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %x, align 4
  %oseq3.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %oseq3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oseq3.i, align 4
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %xfrm_offload.exit.i.if.then.i_crit_edge, label %if.end.i

xfrm_offload.exit.i.if.then.i_crit_edge:          ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %xfrm_offload.exit.i.if.then.i_crit_edge, %xfrm_offload.exit.thread.i
  %26 = phi i32 [ %19, %xfrm_offload.exit.thread.i ], [ %25, %xfrm_offload.exit.i.if.then.i_crit_edge ]
  %oseq379.i = phi ptr [ %oseq376.i, %xfrm_offload.exit.thread.i ], [ %oseq3.i, %xfrm_offload.exit.i.if.then.i_crit_edge ]
  %27 = phi ptr [ %17, %xfrm_offload.exit.thread.i ], [ %23, %xfrm_offload.exit.i.if.then.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 45
  %28 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.xfrm_type, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags.i.i, align 1
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i71.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i71.i, label %if.then.i.return_crit_edge, label %if.then.i.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i.i:                                      ; preds = %if.then.i
  %inc.i.i = add i32 %26, 1
  %33 = ptrtoint ptr %oseq379.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.i.i, ptr %oseq379.i, align 4
  %seq.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %34 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc.i.i, ptr %seq.i.i, align 4
  %hi.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %35 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %hi.i.i, align 4
  %36 = load i32, ptr %oseq379.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.i.i.if.end.i72.i_crit_edge, !prof !25

if.then.i.i.if.end.i72.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i72.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %extra_flags.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 11
  %37 = ptrtoint ptr %extra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %extra_flags.i.i, align 4
  %and9.i.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %land.lhs.true.i.i.if.end.i72.i_crit_edge

land.lhs.true.i.i.if.end.i72.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i72.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %oseq379.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %oseq379.i, align 4
  br label %return

if.end.i72.i:                                     ; preds = %land.lhs.true.i.i.if.end.i72.i_crit_edge, %if.then.i.i.if.end.i72.i_crit_edge
  %call13.i.i = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end.i72.i.return_crit_edge, label %if.then15.i.i

if.end.i72.i.return_crit_edge:                    ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then15.i.i:                                    ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16) #8
  br label %return

if.end.i:                                         ; preds = %xfrm_offload.exit.i
  %type.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 45
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %type.i, align 8
  %flags.i = getelementptr inbounds %struct.xfrm_type, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags.i, align 1
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool5.not.i = icmp eq i8 %44, 0
  br i1 %tobool5.not.i, label %if.end.i.return_crit_edge, label %if.then6.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then6.i:                                       ; preds = %if.end.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %45 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.i.not.i = icmp eq i16 %48, 0
  %inc.i = add i32 %25, 1
  %seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %49 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc.i, ptr %seq.i, align 4
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc.i, ptr %arrayidx.i.i, align 4
  br i1 %tobool.i.not.i, label %if.then6.i.if.end21.i_crit_edge, label %if.else.i

if.then6.i.if.end21.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end.i.i.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %gso_segs.i, align 2
  %conv19.i = zext i16 %54 to i32
  %add20.i = add i32 %25, %conv19.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then6.i.if.end21.i_crit_edge
  %oseq.0.i = phi i32 [ %add20.i, %if.else.i ], [ %inc.i, %if.then6.i.if.end21.i_crit_edge ]
  %hi.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %55 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %hi.i, align 4
  %hi26.i = getelementptr inbounds %struct.anon.157, ptr %arrayidx.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %hi26.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %hi26.i, align 4
  %57 = ptrtoint ptr %oseq3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %oseq3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %oseq.0.i, i32 %58)
  %cmp.i = icmp ult i32 %oseq.0.i, %58
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end21.i.if.else34.i_crit_edge, !prof !25

if.end21.i.if.else34.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else34.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %extra_flags.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 11
  %59 = ptrtoint ptr %extra_flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %extra_flags.i, align 4
  %and31.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.else34.i_crit_edge

land.lhs.true.i.if.else34.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else34.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else34.i:                                      ; preds = %land.lhs.true.i.if.else34.i_crit_edge, %if.end21.i.if.else34.i_crit_edge
  %61 = ptrtoint ptr %oseq3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %oseq.0.i, ptr %oseq3.i, align 4
  %call37.i = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.else34.i.return_crit_edge, label %if.then39.i

if.else34.i.return_crit_edge:                     ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then39.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %active_extensions.i.i.i.i.i9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %62 = ptrtoint ptr %active_extensions.i.i.i.i.i9 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %active_extensions.i.i.i.i.i9, align 1
  %64 = and i8 %63, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.i.not.i.i.i.i10 = icmp eq i8 %64, 0
  br i1 %tobool.i.not.i.i.i.i10, label %sw.bb1.xfrm_offload.exit.thread.i23_crit_edge, label %skb_sec_path.exit.i.i17

sw.bb1.xfrm_offload.exit.thread.i23_crit_edge:    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i23

skb_sec_path.exit.i.i17:                          ; preds = %sw.bb1
  %extensions.i.i.i.i11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %65 = ptrtoint ptr %extensions.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %extensions.i.i.i.i11, align 8
  %arrayidx.i.i.i.i12 = getelementptr %struct.skb_ext, ptr %66, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %arrayidx.i.i.i.i12 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.i.i.i12, align 1
  %conv.i.i.i.i13 = zext i8 %68 to i32
  %shl.i.i.i.i14 = shl nuw nsw i32 %conv.i.i.i.i13, 3
  %add.ptr.i.i.i.i15 = getelementptr i8, ptr %66, i32 %shl.i.i.i.i14
  %tobool.not.i.i16 = icmp eq ptr %add.ptr.i.i.i.i15, null
  br i1 %tobool.not.i.i16, label %skb_sec_path.exit.i.i17.xfrm_offload.exit.thread.i23_crit_edge, label %lor.lhs.false.i.i20

skb_sec_path.exit.i.i17.xfrm_offload.exit.thread.i23_crit_edge: ; preds = %skb_sec_path.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i23

lor.lhs.false.i.i20:                              ; preds = %skb_sec_path.exit.i.i17
  %olen.i.i18 = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i15, i32 0, i32 1
  %69 = ptrtoint ptr %olen.i.i18 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %olen.i.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool1.not.i.i19 = icmp eq i32 %70, 0
  br i1 %tobool1.not.i.i19, label %lor.lhs.false.i.i20.xfrm_offload.exit.thread.i23_crit_edge, label %lor.lhs.false2.i.i22

lor.lhs.false.i.i20.xfrm_offload.exit.thread.i23_crit_edge: ; preds = %lor.lhs.false.i.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i23

lor.lhs.false2.i.i22:                             ; preds = %lor.lhs.false.i.i20
  %71 = ptrtoint ptr %add.ptr.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i.i.i15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp.not.i.i21 = icmp eq i32 %72, %70
  br i1 %cmp.not.i.i21, label %xfrm_offload.exit.i29, label %lor.lhs.false2.i.i22.xfrm_offload.exit.thread.i23_crit_edge

lor.lhs.false2.i.i22.xfrm_offload.exit.thread.i23_crit_edge: ; preds = %lor.lhs.false2.i.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i23

xfrm_offload.exit.thread.i23:                     ; preds = %lor.lhs.false2.i.i22.xfrm_offload.exit.thread.i23_crit_edge, %lor.lhs.false.i.i20.xfrm_offload.exit.thread.i23_crit_edge, %skb_sec_path.exit.i.i17.xfrm_offload.exit.thread.i23_crit_edge, %sw.bb1.xfrm_offload.exit.thread.i23_crit_edge
  %replay_esn1109.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %73 = ptrtoint ptr %replay_esn1109.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %replay_esn1109.i, align 8
  %75 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %x, align 4
  %oseq3110.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %oseq3110.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %oseq3110.i, align 4
  %oseq_hi4111.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %74, i32 0, i32 3
  br label %if.then.i32

xfrm_offload.exit.i29:                            ; preds = %lor.lhs.false2.i.i22
  %sub.i.i24 = add i32 %70, -1
  %arrayidx.i.i25 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i15, i32 0, i32 3, i32 %sub.i.i24
  %replay_esn1.i26 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %79 = ptrtoint ptr %replay_esn1.i26 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %replay_esn1.i26, align 8
  %81 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %x, align 4
  %oseq3.i27 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %oseq3.i27 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %oseq3.i27, align 4
  %oseq_hi4.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %80, i32 0, i32 3
  %85 = ptrtoint ptr %oseq_hi4.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %oseq_hi4.i, align 4
  %tobool.not.i28 = icmp eq ptr %arrayidx.i.i25, null
  br i1 %tobool.not.i28, label %xfrm_offload.exit.i29.if.then.i32_crit_edge, label %if.end.i40

xfrm_offload.exit.i29.if.then.i32_crit_edge:      ; preds = %xfrm_offload.exit.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i32

if.then.i32:                                      ; preds = %xfrm_offload.exit.i29.if.then.i32_crit_edge, %xfrm_offload.exit.thread.i23
  %oseq_hi4116.i = phi ptr [ %oseq_hi4111.i, %xfrm_offload.exit.thread.i23 ], [ %oseq_hi4.i, %xfrm_offload.exit.i29.if.then.i32_crit_edge ]
  %87 = phi i32 [ %78, %xfrm_offload.exit.thread.i23 ], [ %84, %xfrm_offload.exit.i29.if.then.i32_crit_edge ]
  %oseq3115.i = phi ptr [ %oseq3110.i, %xfrm_offload.exit.thread.i23 ], [ %oseq3.i27, %xfrm_offload.exit.i29.if.then.i32_crit_edge ]
  %88 = phi ptr [ %76, %xfrm_offload.exit.thread.i23 ], [ %82, %xfrm_offload.exit.i29.if.then.i32_crit_edge ]
  %type.i.i30 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 45
  %89 = ptrtoint ptr %type.i.i30 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %type.i.i30, align 8
  %flags.i.i31 = getelementptr inbounds %struct.xfrm_type, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %flags.i.i31 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flags.i.i31, align 1
  %93 = and i8 %92, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i106.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i106.i, label %if.then.i32.return_crit_edge, label %if.then.i.i37

if.then.i32.return_crit_edge:                     ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i.i37:                                    ; preds = %if.then.i32
  %inc.i.i33 = add i32 %87, 1
  %94 = ptrtoint ptr %oseq3115.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %inc.i.i33, ptr %oseq3115.i, align 4
  %seq.i.i34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %95 = ptrtoint ptr %seq.i.i34 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %inc.i.i33, ptr %seq.i.i34, align 4
  %96 = ptrtoint ptr %oseq_hi4116.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %oseq_hi4116.i, align 4
  %hi.i.i35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %98 = ptrtoint ptr %hi.i.i35 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %hi.i.i35, align 4
  %99 = load i32, ptr %oseq3115.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i.i36 = icmp eq i32 %99, 0
  br i1 %cmp.i.i36, label %if.then9.i.i, label %if.then.i.i37.if.end23.i.i_crit_edge, !prof !25

if.then.i.i37.if.end23.i.i_crit_edge:             ; preds = %if.then.i.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i37
  %100 = ptrtoint ptr %oseq_hi4116.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %oseq_hi4116.i, align 4
  %inc11.i.i = add i32 %101, 1
  store i32 %inc11.i.i, ptr %oseq_hi4116.i, align 4
  %102 = ptrtoint ptr %hi.i.i35 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %inc11.i.i, ptr %hi.i.i35, align 4
  %103 = load i32, ptr %oseq_hi4116.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp17.i.i = icmp eq i32 %103, 0
  br i1 %cmp17.i.i, label %if.then19.i.i, label %if.then9.i.i.if.end23.i.i_crit_edge

if.then9.i.i.if.end23.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i

if.then19.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %oseq3115.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %oseq3115.i, align 4
  %dec.i.i = add i32 %105, -1
  store i32 %dec.i.i, ptr %oseq3115.i, align 4
  %106 = ptrtoint ptr %oseq_hi4116.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %oseq_hi4116.i, align 4
  br label %return

if.end23.i.i:                                     ; preds = %if.then9.i.i.if.end23.i.i_crit_edge, %if.then.i.i37.if.end23.i.i_crit_edge
  %call24.i.i = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end23.i.i.return_crit_edge, label %if.then26.i.i

if.end23.i.i.return_crit_edge:                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then26.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16) #8
  br label %return

if.end.i40:                                       ; preds = %xfrm_offload.exit.i29
  %type.i38 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 45
  %107 = ptrtoint ptr %type.i38 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %type.i38, align 8
  %flags.i39 = getelementptr inbounds %struct.xfrm_type, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %flags.i39, align 1
  %111 = and i8 %110, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool6.not.i = icmp eq i8 %111, 0
  br i1 %tobool6.not.i, label %if.end.i40.return_crit_edge, label %if.then7.i

if.end.i40.return_crit_edge:                      ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then7.i:                                       ; preds = %if.end.i40
  %end.i.i.i41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %112 = ptrtoint ptr %end.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i.i.i41, align 4
  %gso_size.i.i42 = getelementptr inbounds %struct.skb_shared_info, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %gso_size.i.i42 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %gso_size.i.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool.i.not.i43 = icmp eq i16 %115, 0
  %inc.i44 = add i32 %84, 1
  %seq.i45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %116 = ptrtoint ptr %seq.i45 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %inc.i44, ptr %seq.i45, align 4
  %hi.i46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %117 = ptrtoint ptr %hi.i46 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %86, ptr %hi.i46, align 4
  %118 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %inc.i44, ptr %arrayidx.i.i25, align 4
  %hi16.i = getelementptr inbounds %struct.anon.157, ptr %arrayidx.i.i25, i32 0, i32 1
  %119 = ptrtoint ptr %hi16.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %86, ptr %hi16.i, align 4
  br i1 %tobool.i.not.i43, label %if.then7.i.if.end33.i_crit_edge, label %if.else.i48

if.then7.i.if.end33.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.else.i48:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %end.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %end.i.i.i41, align 4
  %gso_segs.i47 = getelementptr inbounds %struct.skb_shared_info, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %gso_segs.i47 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %gso_segs.i47, align 2
  %conv31.i = zext i16 %123 to i32
  %add32.i = add i32 %84, %conv31.i
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i48, %if.then7.i.if.end33.i_crit_edge
  %oseq.0.i49 = phi i32 [ %add32.i, %if.else.i48 ], [ %inc.i44, %if.then7.i.if.end33.i_crit_edge ]
  %124 = ptrtoint ptr %oseq3.i27 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %oseq3.i27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %oseq.0.i49, i32 %125)
  %cmp.i50 = icmp ult i32 %oseq.0.i49, %125
  br i1 %cmp.i50, label %if.then38.i, label %if.end33.i.if.end55.i_crit_edge, !prof !25

if.end33.i.if.end55.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then38.i:                                      ; preds = %if.end33.i
  %inc39.i = add i32 %86, 1
  %126 = ptrtoint ptr %hi.i46 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %inc39.i, ptr %hi.i46, align 4
  %127 = ptrtoint ptr %hi16.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %inc39.i, ptr %hi16.i, align 4
  %128 = ptrtoint ptr %oseq_hi4.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %inc39.i, ptr %oseq_hi4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc39.i)
  %cmp48.i = icmp eq i32 %inc39.i, 0
  br i1 %cmp48.i, label %if.then50.i, label %if.then38.i.if.end55.i_crit_edge

if.then38.i.if.end55.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then50.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %oseq3.i27 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %oseq3.i27, align 4
  %dec.i = add i32 %130, -1
  store i32 %dec.i, ptr %oseq3.i27, align 4
  %131 = ptrtoint ptr %oseq_hi4.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %86, ptr %oseq_hi4.i, align 4
  br label %return

if.end55.i:                                       ; preds = %if.then38.i.if.end55.i_crit_edge, %if.end33.i.if.end55.i_crit_edge
  %132 = ptrtoint ptr %oseq3.i27 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %oseq.0.i49, ptr %oseq3.i27, align 4
  %call57.i = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end55.i.return_crit_edge, label %if.then59.i

if.end55.i.return_crit_edge:                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then59.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16) #8
  br label %return

sw.epilog:                                        ; preds = %entry
  %133 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %x, align 4
  %active_extensions.i.i.i.i.i52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %135 = ptrtoint ptr %active_extensions.i.i.i.i.i52 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %active_extensions.i.i.i.i.i52, align 1
  %137 = and i8 %136, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.i.not.i.i.i.i53 = icmp eq i8 %137, 0
  br i1 %tobool.i.not.i.i.i.i53, label %sw.epilog.xfrm_offload.exit.thread.i66_crit_edge, label %skb_sec_path.exit.i.i60

sw.epilog.xfrm_offload.exit.thread.i66_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i66

skb_sec_path.exit.i.i60:                          ; preds = %sw.epilog
  %extensions.i.i.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %138 = ptrtoint ptr %extensions.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %extensions.i.i.i.i54, align 8
  %arrayidx.i.i.i.i55 = getelementptr %struct.skb_ext, ptr %139, i32 0, i32 1, i32 1
  %140 = ptrtoint ptr %arrayidx.i.i.i.i55 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i.i.i.i55, align 1
  %conv.i.i.i.i56 = zext i8 %141 to i32
  %shl.i.i.i.i57 = shl nuw nsw i32 %conv.i.i.i.i56, 3
  %add.ptr.i.i.i.i58 = getelementptr i8, ptr %139, i32 %shl.i.i.i.i57
  %tobool.not.i.i59 = icmp eq ptr %add.ptr.i.i.i.i58, null
  br i1 %tobool.not.i.i59, label %skb_sec_path.exit.i.i60.xfrm_offload.exit.thread.i66_crit_edge, label %lor.lhs.false.i.i63

skb_sec_path.exit.i.i60.xfrm_offload.exit.thread.i66_crit_edge: ; preds = %skb_sec_path.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i66

lor.lhs.false.i.i63:                              ; preds = %skb_sec_path.exit.i.i60
  %olen.i.i61 = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i58, i32 0, i32 1
  %142 = ptrtoint ptr %olen.i.i61 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %olen.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool1.not.i.i62 = icmp eq i32 %143, 0
  br i1 %tobool1.not.i.i62, label %lor.lhs.false.i.i63.xfrm_offload.exit.thread.i66_crit_edge, label %lor.lhs.false2.i.i65

lor.lhs.false.i.i63.xfrm_offload.exit.thread.i66_crit_edge: ; preds = %lor.lhs.false.i.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i66

lor.lhs.false2.i.i65:                             ; preds = %lor.lhs.false.i.i63
  %144 = ptrtoint ptr %add.ptr.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %add.ptr.i.i.i.i58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %143)
  %cmp.not.i.i64 = icmp eq i32 %145, %143
  br i1 %cmp.not.i.i64, label %xfrm_offload.exit.i70, label %lor.lhs.false2.i.i65.xfrm_offload.exit.thread.i66_crit_edge

lor.lhs.false2.i.i65.xfrm_offload.exit.thread.i66_crit_edge: ; preds = %lor.lhs.false2.i.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfrm_offload.exit.thread.i66

xfrm_offload.exit.thread.i66:                     ; preds = %lor.lhs.false2.i.i65.xfrm_offload.exit.thread.i66_crit_edge, %lor.lhs.false.i.i63.xfrm_offload.exit.thread.i66_crit_edge, %skb_sec_path.exit.i.i60.xfrm_offload.exit.thread.i66_crit_edge, %sw.epilog.xfrm_offload.exit.thread.i66_crit_edge
  %replay74.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29
  %146 = ptrtoint ptr %replay74.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %replay74.i, align 4
  br label %if.then.i73

xfrm_offload.exit.i70:                            ; preds = %lor.lhs.false2.i.i65
  %sub.i.i67 = add i32 %143, -1
  %arrayidx.i.i68 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i58, i32 0, i32 3, i32 %sub.i.i67
  %replay.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29
  %148 = ptrtoint ptr %replay.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %replay.i, align 4
  %tobool.not.i69 = icmp eq ptr %arrayidx.i.i68, null
  br i1 %tobool.not.i69, label %xfrm_offload.exit.i70.if.then.i73_crit_edge, label %if.end.i86

xfrm_offload.exit.i70.if.then.i73_crit_edge:      ; preds = %xfrm_offload.exit.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i73

if.then.i73:                                      ; preds = %xfrm_offload.exit.i70.if.then.i73_crit_edge, %xfrm_offload.exit.thread.i66
  %150 = phi i32 [ %147, %xfrm_offload.exit.thread.i66 ], [ %149, %xfrm_offload.exit.i70.if.then.i73_crit_edge ]
  %replay77.i = phi ptr [ %replay74.i, %xfrm_offload.exit.thread.i66 ], [ %replay.i, %xfrm_offload.exit.i70.if.then.i73_crit_edge ]
  %type.i.i71 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 45
  %151 = ptrtoint ptr %type.i.i71 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %type.i.i71, align 8
  %flags.i.i72 = getelementptr inbounds %struct.xfrm_type, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %flags.i.i72 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %flags.i.i72, align 1
  %155 = and i8 %154, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i70.i = icmp eq i8 %155, 0
  br i1 %tobool.not.i70.i, label %if.then.i73.return_crit_edge, label %if.then.i.i78

if.then.i73.return_crit_edge:                     ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i.i78:                                    ; preds = %if.then.i73
  %inc.i.i74 = add i32 %150, 1
  %156 = ptrtoint ptr %replay77.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %inc.i.i74, ptr %replay77.i, align 4
  %seq.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %157 = ptrtoint ptr %seq.i.i75 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %inc.i.i74, ptr %seq.i.i75, align 4
  %hi.i.i76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %158 = ptrtoint ptr %hi.i.i76 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %hi.i.i76, align 4
  %159 = load i32, ptr %replay77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.i.i77 = icmp eq i32 %159, 0
  br i1 %cmp.i.i77, label %land.lhs.true.i.i82, label %if.then.i.i78.if.end.i71.i_crit_edge, !prof !25

if.then.i.i78.if.end.i71.i_crit_edge:             ; preds = %if.then.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i71.i

land.lhs.true.i.i82:                              ; preds = %if.then.i.i78
  %extra_flags.i.i79 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 11
  %160 = ptrtoint ptr %extra_flags.i.i79 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %extra_flags.i.i79, align 4
  %and9.i.i80 = and i32 %161, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i80)
  %tobool10.not.i.i81 = icmp eq i32 %and9.i.i80, 0
  br i1 %tobool10.not.i.i81, label %if.then11.i.i83, label %land.lhs.true.i.i82.if.end.i71.i_crit_edge

land.lhs.true.i.i82.if.end.i71.i_crit_edge:       ; preds = %land.lhs.true.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i71.i

if.then11.i.i83:                                  ; preds = %land.lhs.true.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %replay77.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %replay77.i, align 4
  br label %return

if.end.i71.i:                                     ; preds = %land.lhs.true.i.i82.if.end.i71.i_crit_edge, %if.then.i.i78.if.end.i71.i_crit_edge
  %call14.i.i = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %134) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end.i71.i.return_crit_edge, label %if.then16.i.i

if.end.i71.i.return_crit_edge:                    ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then16.i.i:                                    ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16) #8
  br label %return

if.end.i86:                                       ; preds = %xfrm_offload.exit.i70
  %type.i84 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 45
  %163 = ptrtoint ptr %type.i84 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %type.i84, align 8
  %flags.i85 = getelementptr inbounds %struct.xfrm_type, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %flags.i85, align 1
  %167 = and i8 %166, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool4.not.i = icmp eq i8 %167, 0
  br i1 %tobool4.not.i, label %if.end.i86.return_crit_edge, label %if.then5.i

if.end.i86.return_crit_edge:                      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then5.i:                                       ; preds = %if.end.i86
  %end.i.i.i87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %168 = ptrtoint ptr %end.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %end.i.i.i87, align 4
  %gso_size.i.i88 = getelementptr inbounds %struct.skb_shared_info, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %gso_size.i.i88 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %gso_size.i.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool.i.not.i89 = icmp eq i16 %171, 0
  %inc.i90 = add i32 %149, 1
  %seq.i91 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %172 = ptrtoint ptr %seq.i91 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %inc.i90, ptr %seq.i91, align 4
  %173 = ptrtoint ptr %arrayidx.i.i68 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %inc.i90, ptr %arrayidx.i.i68, align 4
  br i1 %tobool.i.not.i89, label %if.then5.i.if.end20.i_crit_edge, label %if.else.i93

if.then5.i.if.end20.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.else.i93:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %174 = ptrtoint ptr %end.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %end.i.i.i87, align 4
  %gso_segs.i92 = getelementptr inbounds %struct.skb_shared_info, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %gso_segs.i92 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %gso_segs.i92, align 2
  %conv18.i = zext i16 %177 to i32
  %add19.i = add i32 %149, %conv18.i
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i93, %if.then5.i.if.end20.i_crit_edge
  %oseq.0.i94 = phi i32 [ %add19.i, %if.else.i93 ], [ %inc.i90, %if.then5.i.if.end20.i_crit_edge ]
  %hi.i95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %178 = ptrtoint ptr %hi.i95 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %hi.i95, align 4
  %hi25.i = getelementptr inbounds %struct.anon.157, ptr %arrayidx.i.i68, i32 0, i32 1
  %179 = ptrtoint ptr %hi25.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %hi25.i, align 4
  %180 = ptrtoint ptr %replay.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %replay.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %oseq.0.i94, i32 %181)
  %cmp.i96 = icmp ult i32 %oseq.0.i94, %181
  br i1 %cmp.i96, label %land.lhs.true.i100, label %if.end20.i.if.end34.i_crit_edge, !prof !25

if.end20.i.if.end34.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i100:                               ; preds = %if.end20.i
  %extra_flags.i97 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 11
  %182 = ptrtoint ptr %extra_flags.i97 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %extra_flags.i97, align 4
  %and31.i98 = and i32 %183, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i98)
  %tobool32.not.i99 = icmp eq i32 %and31.i98, 0
  br i1 %tobool32.not.i99, label %land.lhs.true.i100.return_crit_edge, label %land.lhs.true.i100.if.end34.i_crit_edge

land.lhs.true.i100.if.end34.i_crit_edge:          ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i100.return_crit_edge:              ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end34.i:                                       ; preds = %land.lhs.true.i100.if.end34.i_crit_edge, %if.end20.i.if.end34.i_crit_edge
  %184 = ptrtoint ptr %replay.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %oseq.0.i94, ptr %replay.i, align 4
  %call37.i101 = tail call fastcc i32 @xfrm_aevent_is_on(ptr noundef %134) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i101)
  %tobool38.not.i102 = icmp eq i32 %call37.i101, 0
  br i1 %tobool38.not.i102, label %if.end34.i.return_crit_edge, label %if.then39.i103

if.end34.i.return_crit_edge:                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then39.i103:                                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfrm_replay_notify(ptr noundef %x, i32 noundef 16) #8
  br label %return

return:                                           ; preds = %if.then39.i103, %if.end34.i.return_crit_edge, %land.lhs.true.i100.return_crit_edge, %if.end.i86.return_crit_edge, %if.then16.i.i, %if.end.i71.i.return_crit_edge, %if.then11.i.i83, %if.then.i73.return_crit_edge, %if.then59.i, %if.end55.i.return_crit_edge, %if.then50.i, %if.end.i40.return_crit_edge, %if.then26.i.i, %if.end23.i.i.return_crit_edge, %if.then19.i.i, %if.then.i32.return_crit_edge, %if.then39.i, %if.else34.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then15.i.i, %if.end.i72.i.return_crit_edge, %if.then11.i.i, %if.then.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.else34.i.return_crit_edge ], [ 0, %if.then39.i ], [ 0, %if.end.i.return_crit_edge ], [ -75, %if.then11.i.i ], [ 0, %if.end.i72.i.return_crit_edge ], [ 0, %if.then15.i.i ], [ 0, %if.then.i.return_crit_edge ], [ -75, %land.lhs.true.i.return_crit_edge ], [ -75, %if.then50.i ], [ 0, %if.end55.i.return_crit_edge ], [ 0, %if.then59.i ], [ 0, %if.end.i40.return_crit_edge ], [ -75, %if.then19.i.i ], [ 0, %if.end23.i.i.return_crit_edge ], [ 0, %if.then26.i.i ], [ 0, %if.then.i32.return_crit_edge ], [ 0, %if.end34.i.return_crit_edge ], [ 0, %if.then39.i103 ], [ 0, %if.end.i86.return_crit_edge ], [ -75, %if.then11.i.i83 ], [ 0, %if.end.i71.i.return_crit_edge ], [ 0, %if.then16.i.i ], [ 0, %if.then.i73.return_crit_edge ], [ -75, %land.lhs.true.i100.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfrm_init_replay(ptr nocapture noundef %x) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %replay_esn1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %0 = ptrtoint ptr %replay_esn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %replay_esn1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.then

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then:                                          ; preds = %entry
  %replay_window = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %replay_window to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %replay_window, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %mul2 = shl i32 %5, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul2)
  %cmp = icmp ugt i32 %3, %mul2
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool4.not = icmp sgt i8 %7, -1
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then5.cleanup.sink.split_crit_edge ], [ 1, %if.end.cleanup.sink.split_crit_edge ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %repl_mode14 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 33
  %8 = ptrtoint ptr %repl_mode14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %repl_mode14, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !12, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab_xfrm_replay_seqhi, !1, !"__ksymtab_xfrm_replay_seqhi", i1 false, i1 false}
!1 = !{!"../net/xfrm/xfrm_replay.c", i32 36, i32 1}
!2 = !{ptr @__ksymtab_xfrm_init_replay, !3, !"__ksymtab_xfrm_init_replay", i1 false, i1 false}
!3 = !{!"../net/xfrm/xfrm_replay.c", i32 791, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/net/xfrm.h", i32 1754, i32 9}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2149748687}
!28 = !{i64 2149748953}
!29 = !{!"branch_weights", i32 1, i32 4001}
