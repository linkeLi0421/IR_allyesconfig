; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/mac802154_hwsim.c_pt.bc'
source_filename = "../drivers/net/ieee802154/mac802154_hwsim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.100, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, i32, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.88 }
%union.anon.88 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hwsim_phy = type { ptr, i32, ptr, i8, %struct.list_head, %struct.list_head }
%struct.hwsim_edge = type { ptr, ptr, %struct.list_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.hwsim_pib = type { i8, i8, %struct.callback_head }
%struct.hwsim_edge_info = type { i8, %struct.callback_head }

@__UNIQUE_ID_description339 = internal constant [87 x i8] c"mac802154_hwsim.description=Software simulator of IEEE 802.15.4 radio(s) for mac802154\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [60 x i8] c"mac802154_hwsim.file=drivers/net/ieee802154/mac802154_hwsim\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [28 x i8] c"mac802154_hwsim.license=GPL\00", section ".modinfo", align 1
@hwsim_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"MAC802154_HWSIM\00", i32 1, i32 3, i32 0, i8 0, i8 0, i8 6, i8 1, ptr @hwsim_genl_policy, ptr null, ptr null, ptr null, ptr @hwsim_nl_ops, ptr @hwsim_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@mac802154hwsim_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hwsim_probe, ptr @hwsim_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mac802154hwsim_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_mac802154_hwsim__386_925_hwsim_init_module6 = internal global ptr @hwsim_init_module, section ".initcall6.init", align 4
@__exitcall_hwsim_remove_module = internal global ptr @hwsim_remove_module, section ".exitcall.exit", align 4
@hwsim_genl_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@hwsim_nl_ops = internal constant { [6 x %struct.genl_small_ops], [56 x i8] } { [6 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @hwsim_new_radio_nl, ptr null, i8 3, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @hwsim_del_radio_nl, ptr null, i8 4, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @hwsim_get_radio_nl, ptr @hwsim_dump_radio_nl, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @hwsim_new_edge_nl, ptr null, i8 8, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @hwsim_del_edge_nl, ptr null, i8 7, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @hwsim_set_edge_lqi, ptr null, i8 6, i8 0, i8 16, i8 3 }], [56 x i8] zeroinitializer }, align 32
@hwsim_mcgrps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"config\00\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@hwsim_radio_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hwsim_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @hwsim_hw_start, ptr @hwsim_hw_stop, ptr null, ptr @hwsim_hw_xmit, ptr @hwsim_hw_ed, ptr @hwsim_hw_channel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hwsim_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@hwsim_phys_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hwsim_phys_lock, i64 52), ptr getelementptr (i8, ptr @hwsim_phys_lock, i64 52) }, ptr @hwsim_phys_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hwsim_phys = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hwsim_phys, ptr @hwsim_phys }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ieee802154/mac802154_hwsim.c\00", [55 x i8] zeroinitializer }, align 32
@hwsim_hw_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@hwsim_hw_xmit.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@hwsim_hw_xmit.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hwsim_hw_xmit.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hwsim_hw_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hwsim_phys_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hwsim_phys_lock\00", [16 x i8] zeroinitializer }, align 32
@hwsim_subscribe_all_others.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hwsim_edge_unsubscribe_me.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hwsim_free_edge.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@append_radio_msg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@append_radio_msg.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@hwsim_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hwsim_del.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hwsim_edge_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@hwsim_new_edge_nl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hwsim_del_edge_nl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hwsim_set_edge_lqi.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mac802154_hwsim\00", [16 x i8] zeroinitializer }, align 32
@hwsim_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 859, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Added 2 mac802154 hwsim hardware radios\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hwsim_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hwsim_probe._entry_ptr = internal global ptr @hwsim_probe._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"mac802154hwsim_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 882, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"mac802154hwsim_dev\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 32, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"hwsim_genl_policy\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 579, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"hwsim_nl_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 586, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"hwsim_mcgrps\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 43, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"hwsim_radio_idx\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 37, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"hwsim_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 167, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"hwsim_phys_lock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"hwsim_phys\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 29, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 116, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 119, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 120, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 695, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 723, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 103, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 30, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 991, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 308, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"hwsim_edge_policy\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 375, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 886, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [44 x i8] c"../drivers/net/ieee802154/mac802154_hwsim.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 859, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_hwsim_remove_module, ptr @__initcall__kmod_mac802154_hwsim__386_925_hwsim_init_module6, ptr @hwsim_probe._entry, ptr @hwsim_probe._entry_ptr, ptr @hwsim_remove_module, ptr @mac802154hwsim_driver, ptr @mac802154hwsim_dev, ptr @hwsim_genl_policy, ptr @hwsim_nl_ops, ptr @hwsim_mcgrps, ptr @hwsim_radio_idx, ptr @hwsim_ops, ptr @hwsim_phys_lock, ptr @hwsim_phys, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @hwsim_edge_policy, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154hwsim_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac802154hwsim_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_genl_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_nl_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_mcgrps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_radio_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_phys_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_phys to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_edge_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwsim_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hwsim_remove_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @hwsim_genl_family) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mac802154hwsim_driver) #12
  %0 = load ptr, ptr @mac802154hwsim_dev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_init_module() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @hwsim_genl_family) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #12
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.16, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #12
  store ptr %call.i.i, ptr @mac802154hwsim_dev, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call.i.i to i32
  br label %platform_dev

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @__platform_driver_register(ptr noundef nonnull @mac802154hwsim_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %platform_drv, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

platform_drv:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %10 = load ptr, ptr @mac802154hwsim_dev, align 4
  call void @platform_device_unregister(ptr noundef %10) #12
  br label %platform_dev

platform_dev:                                     ; preds = %platform_drv, %if.then3
  %rc.0 = phi i32 [ %9, %if.then3 ], [ %call6, %platform_drv ]
  %call9 = call i32 @genl_unregister_family(ptr noundef nonnull @hwsim_genl_family) #12
  br label %cleanup

cleanup:                                          ; preds = %platform_dev, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %platform_dev ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_new_radio_nl(ptr nocapture noundef readnone %msg, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mac802154hwsim_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %call = tail call fastcc i32 @hwsim_add_one(ptr noundef %info, ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_del_radio_nl(ptr nocapture noundef readnone %msg, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in.in = phi ptr [ @hwsim_phys, %if.end ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, @hwsim_phys
  br i1 %cmp.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond
  %idx9 = getelementptr i8, ptr %.pn.in, i32 -20
  %7 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx9, align 4
  %cmp11 = icmp eq i32 %5, %8
  br i1 %cmp11, label %if.then13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %phy.0.le = getelementptr i8, ptr %.pn.in, i32 -24
  tail call fastcc void @hwsim_del(ptr noundef %phy.0.le)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then13, %for.cond.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.then13 ], [ -19, %for.cond.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_get_radio_nl(ptr nocapture noundef readnone %msg, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @hwsim_phys, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @hwsim_phys
  br i1 %cmp.not, label %for.cond.out_err_crit_edge, label %for.body

for.cond.out_err_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

for.body:                                         ; preds = %for.cond
  %idx3 = getelementptr i8, ptr %.pn, i32 -20
  %7 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx3, align 4
  %cmp4.not = icmp eq i32 %8, %5
  br i1 %cmp4.not, label %if.end6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end6:                                          ; preds = %for.body
  %phy.0.le = getelementptr i8, ptr %.pn, i32 -24
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %if.end6.out_err_crit_edge, label %if.end10

if.end6.out_err_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end10:                                         ; preds = %if.end6
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snd_portid, align 4
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %10, i32 noundef %12, ptr noundef nonnull @hwsim_genl_family, i32 noundef 0, i8 noundef zeroext 1) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end10.if.then13_crit_edge, label %if.end.i

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end.i:                                         ; preds = %if.end10
  %call4.i = tail call fastcc i32 @append_radio_msg(ptr noundef nonnull %call.i.i, ptr noundef %phy.0.le) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  %add.ptr1.i16.i = getelementptr i8, ptr %call.i, i32 -20
  br i1 %cmp.i, label %if.then.i.i, label %if.end14

if.then.i.i:                                      ; preds = %if.end.i
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i16.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then13_crit_edge, label %if.then.i.i.i.i

if.then.i.i.if.then13_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %14, %add.ptr1.i16.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !99

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i16.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  br label %if.then13

if.then13:                                        ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.end.i.i.i.i ], [ %call4.i, %if.then.i.i.if.then13_crit_edge ], [ -90, %if.end10.if.then13_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %out_err

if.end14:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i16.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %19 = ptrtoint ptr %add.ptr1.i16.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i16.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %20 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_net.i.i, align 4
  %22 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %21, i32 0, i32 21
  %24 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %25, ptr noundef nonnull %call.i.i, i32 noundef %23, i32 noundef 64) #12
  %26 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #12
  br label %out_err

out_err:                                          ; preds = %if.end14, %if.then13, %if.end6.out_err_crit_edge, %for.cond.out_err_crit_edge
  %res.0 = phi i32 [ %retval.0.i.ph, %if.then13 ], [ %26, %if.end14 ], [ -12, %if.end6.out_err_crit_edge ], [ -19, %for.cond.out_err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out_err ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_dump_radio_nl(ptr noundef %skb, ptr noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  %3 = load i32, ptr @hwsim_radio_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %entry.done_crit_edge, label %for.cond.preheader

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.cond.preheader:                               ; preds = %entry
  %.pn28 = load ptr, ptr @hwsim_phys, align 4
  %cmp1.not30 = icmp eq ptr %.pn28, @hwsim_phys
  br i1 %cmp1.not30, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn32 = phi ptr [ %.pn28, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %idx.031 = phi i32 [ %2, %for.body.lr.ph ], [ %idx.1, %for.inc.for.body_crit_edge ]
  %idx2 = getelementptr i8, ptr %.pn32, i32 -20
  %4 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %idx.031)
  %cmp3 = icmp ult i32 %5, %idx.031
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %phy.033 = getelementptr i8, ptr %.pn32, i32 -24
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid, align 4
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nlmsg_seq, align 4
  %call = tail call fastcc i32 @hwsim_get_radio(ptr noundef %skb, ptr noundef %phy.033, i32 noundef %9, i32 noundef %13, ptr noundef %cb, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.end5.for.end_crit_edge, label %if.end10

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx2, align 4
  %add = add i32 %15, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  %idx.1 = phi i32 [ %idx.031, %for.body.for.inc_crit_edge ], [ %add, %if.end10 ]
  %16 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp1.not = icmp eq ptr %.pn, @hwsim_phys
  br i1 %cmp1.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ %2, %for.cond.preheader.for.end_crit_edge ], [ %idx.031, %if.end5.for.end_crit_edge ], [ %idx.1, %for.inc.for.end_crit_edge ]
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %idx.0.lcssa, ptr %0, align 4
  br label %done

done:                                             ; preds = %for.end, %entry.done_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_new_edge_nl(ptr nocapture noundef readnone %msg, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %edge_attrs = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %edge_attrs) #12
  %0 = ptrtoint ptr %edge_attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %edge_attrs, align 4, !annotation !100
  %1 = getelementptr inbounds [3 x ptr], ptr %edge_attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds [3 x ptr], ptr %edge_attrs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !100
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %6, i32 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %edge_attrs, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @hwsim_edge_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attrs, align 4
  %arrayidx14 = getelementptr ptr, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx14, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i80, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %14, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp = icmp eq i32 %20, %22
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end19
  %.pn.in.i = phi ptr [ @hwsim_phys, %if.end19 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %23 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @hwsim_phys
  br i1 %cmp.not.i, label %for.cond.i.if.then22_crit_edge, label %for.body.i

for.cond.i.if.then22_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

for.body.i:                                       ; preds = %for.cond.i
  %idx1.i = getelementptr i8, ptr %.pn.i, i32 -20
  %24 = ptrtoint ptr %idx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx1.i, align 4
  %cmp2.i = icmp eq i32 %25, %20
  br i1 %cmp2.i, label %hwsim_get_radio_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

hwsim_get_radio_by_id.exit:                       ; preds = %for.body.i
  %phy.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %tobool21.not = icmp eq ptr %phy.0.le.i, null
  br i1 %tobool21.not, label %hwsim_get_radio_by_id.exit.if.then22_crit_edge, label %hwsim_get_radio_by_id.exit.for.cond.i85_crit_edge

hwsim_get_radio_by_id.exit.for.cond.i85_crit_edge: ; preds = %hwsim_get_radio_by_id.exit
  br label %for.cond.i85

hwsim_get_radio_by_id.exit.if.then22_crit_edge:   ; preds = %hwsim_get_radio_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %hwsim_get_radio_by_id.exit.if.then22_crit_edge, %for.cond.i.if.then22_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

for.cond.i85:                                     ; preds = %for.body.i88.for.cond.i85_crit_edge, %hwsim_get_radio_by_id.exit.for.cond.i85_crit_edge
  %.pn.in.i82 = phi ptr [ %.pn.i83, %for.body.i88.for.cond.i85_crit_edge ], [ @hwsim_phys, %hwsim_get_radio_by_id.exit.for.cond.i85_crit_edge ]
  %26 = ptrtoint ptr %.pn.in.i82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i83 = load ptr, ptr %.pn.in.i82, align 4
  %cmp.not.i84 = icmp eq ptr %.pn.i83, @hwsim_phys
  br i1 %cmp.not.i84, label %for.cond.i85.if.then26_crit_edge, label %for.body.i88

for.cond.i85.if.then26_crit_edge:                 ; preds = %for.cond.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

for.body.i88:                                     ; preds = %for.cond.i85
  %idx1.i86 = getelementptr i8, ptr %.pn.i83, i32 -20
  %27 = ptrtoint ptr %idx1.i86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx1.i86, align 4
  %cmp2.i87 = icmp eq i32 %28, %22
  br i1 %cmp2.i87, label %hwsim_get_radio_by_id.exit92, label %for.body.i88.for.cond.i85_crit_edge

for.body.i88.for.cond.i85_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i85

hwsim_get_radio_by_id.exit92:                     ; preds = %for.body.i88
  %phy.0.le.i89 = getelementptr i8, ptr %.pn.i83, i32 -24
  %tobool25.not = icmp eq ptr %phy.0.le.i89, null
  br i1 %tobool25.not, label %hwsim_get_radio_by_id.exit92.if.then26_crit_edge, label %if.end27

hwsim_get_radio_by_id.exit92.if.then26_crit_edge: ; preds = %hwsim_get_radio_by_id.exit92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.then26:                                        ; preds = %hwsim_get_radio_by_id.exit92.if.then26_crit_edge, %for.cond.i85.if.then26_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

if.end27:                                         ; preds = %hwsim_get_radio_by_id.exit92
  %29 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end27.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end27.rcu_read_lock.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end27
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end27.rcu_read_lock.exit_crit_edge
  %call28 = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call30 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true32

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b79 = load i1, ptr @hwsim_new_edge_nl.__warned, align 1
  br i1 %.b79, label %land.lhs.true32.do.end_crit_edge, label %if.then34

land.lhs.true32.do.end_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_new_edge_nl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then34, %land.lhs.true32.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %edges = getelementptr i8, ptr %.pn.i, i32 -8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %edges, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %33 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp41.not = icmp eq ptr %.pn, %edges
  br i1 %cmp41.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %e.0 = getelementptr i8, ptr %.pn, i32 -8
  %34 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %e.0, align 4
  %idx = getelementptr inbounds %struct.hwsim_phy, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx, align 4
  %cmp42 = icmp eq i32 %37, %22
  br i1 %cmp42, label %if.then43, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  call fastcc void @rcu_read_unlock()
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call fastcc void @rcu_read_unlock()
  %call54 = call fastcc ptr @hwsim_alloc_edge(ptr noundef nonnull %phy.0.le.i89)
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

if.end57:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %list58 = getelementptr inbounds %struct.hwsim_edge, ptr %call54, i32 0, i32 2
  call fastcc void @list_add_rcu(ptr noundef %list58, ptr noundef %edges)
  call void @synchronize_rcu() #12
  call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then56, %if.then43, %if.then26, %if.then22, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then43 ], [ 0, %if.end57 ], [ -12, %if.then56 ], [ -2, %if.then26 ], [ -2, %if.then22 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %edge_attrs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_del_edge_nl(ptr nocapture noundef readnone %msg, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %edge_attrs = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %edge_attrs) #12
  %0 = ptrtoint ptr %edge_attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %edge_attrs, align 4, !annotation !100
  %1 = getelementptr inbounds [3 x ptr], ptr %edge_attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds [3 x ptr], ptr %edge_attrs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !100
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %6, i32 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %edge_attrs, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @hwsim_edge_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attrs, align 4
  %arrayidx14 = getelementptr ptr, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx14, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i62, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %14, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i63, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end12
  %.pn.in.i = phi ptr [ @hwsim_phys, %if.end12 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %23 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @hwsim_phys
  br i1 %cmp.not.i, label %for.cond.i.cleanup.sink.split_crit_edge, label %for.body.i

for.cond.i.cleanup.sink.split_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %idx1.i = getelementptr i8, ptr %.pn.i, i32 -20
  %24 = ptrtoint ptr %idx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx1.i, align 4
  %cmp2.i = icmp eq i32 %25, %20
  br i1 %cmp2.i, label %hwsim_get_radio_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

hwsim_get_radio_by_id.exit:                       ; preds = %for.body.i
  %phy.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %tobool19.not = icmp eq ptr %phy.0.le.i, null
  br i1 %tobool19.not, label %hwsim_get_radio_by_id.exit.cleanup.sink.split_crit_edge, label %if.end21

hwsim_get_radio_by_id.exit.cleanup.sink.split_crit_edge: ; preds = %hwsim_get_radio_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end21:                                         ; preds = %hwsim_get_radio_by_id.exit
  %26 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end21.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end21.rcu_read_lock.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end21.rcu_read_lock.exit_crit_edge
  %call22 = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call24 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true26

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true26:                                  ; preds = %land.lhs.true
  %.b61 = load i1, ptr @hwsim_del_edge_nl.__warned, align 1
  br i1 %.b61, label %land.lhs.true26.do.end_crit_edge, label %if.then28

land.lhs.true26.do.end_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_del_edge_nl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 504, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then28, %land.lhs.true26.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %edges = getelementptr i8, ptr %.pn.i, i32 -8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %edges, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %30 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %edges
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %e.0 = getelementptr i8, ptr %.pn, i32 -8
  %31 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %e.0, align 4
  %idx = getelementptr inbounds %struct.hwsim_phy, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx, align 4
  %cmp35 = icmp eq i32 %34, %22
  br i1 %cmp35, label %if.then36, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then36:                                        ; preds = %for.body
  %e.0.le = getelementptr i8, ptr %.pn, i32 -8
  %call.i64 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i64, label %if.then36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

if.then36.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %if.then36
  %call1.i65 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %if.then36.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %35 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i71 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i72, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #12
  br i1 %call.i.i, label %if.end.i.i, label %rcu_read_unlock.exit.list_del_rcu.exit_crit_edge

rcu_read_unlock.exit.list_del_rcu.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %rcu_read_unlock.exit.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call fastcc void @hwsim_free_edge(ptr noundef %e.0.le)
  call void @synchronize_rcu() #12
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  %call.i73 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i73, label %for.end.rcu_read_unlock.exit83_crit_edge, label %land.lhs.true.i76

for.end.rcu_read_unlock.exit83_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit83

land.lhs.true.i76:                                ; preds = %for.end
  %call1.i74 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit83

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit83

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit83

rcu_read_unlock.exit83:                           ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge, %for.end.rcu_read_unlock.exit83_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %46 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i80 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i82 = add i32 %49, -1
  store volatile i32 %sub.i.i.i82, ptr %preempt_count.i.i.i.i81, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit83, %list_del_rcu.exit, %hwsim_get_radio_by_id.exit.cleanup.sink.split_crit_edge, %for.cond.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -2, %rcu_read_unlock.exit83 ], [ 0, %list_del_rcu.exit ], [ -2, %hwsim_get_radio_by_id.exit.cleanup.sink.split_crit_edge ], [ -2, %for.cond.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %edge_attrs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_set_edge_lqi(ptr nocapture noundef readnone %msg, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %edge_attrs = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %edge_attrs) #12
  %0 = ptrtoint ptr %edge_attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %edge_attrs, align 4, !annotation !100
  %1 = getelementptr inbounds [3 x ptr], ptr %edge_attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !100
  %3 = getelementptr inbounds [3 x ptr], ptr %edge_attrs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !100
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %6, i32 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %edge_attrs, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @hwsim_edge_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %lor.lhs.false11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %lor.lhs.false11.cleanup_crit_edge, label %if.end15

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %17 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attrs, align 4
  %arrayidx17 = getelementptr ptr, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx17, align 4
  %add.ptr.i.i114 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i114, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %14, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i115 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i115, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %16, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i116 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i116, align 1
  call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end15
  %.pn.in.i = phi ptr [ @hwsim_phys, %if.end15 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %27 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @hwsim_phys
  br i1 %cmp.not.i, label %for.cond.i.cleanup.sink.split_crit_edge, label %for.body.i

for.cond.i.cleanup.sink.split_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %idx1.i = getelementptr i8, ptr %.pn.i, i32 -20
  %28 = ptrtoint ptr %idx1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx1.i, align 4
  %cmp2.i = icmp eq i32 %29, %22
  br i1 %cmp2.i, label %hwsim_get_radio_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

hwsim_get_radio_by_id.exit:                       ; preds = %for.body.i
  %phy.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %tobool24.not = icmp eq ptr %phy.0.le.i, null
  br i1 %tobool24.not, label %hwsim_get_radio_by_id.exit.cleanup.sink.split_crit_edge, label %if.end26

hwsim_get_radio_by_id.exit.cleanup.sink.split_crit_edge: ; preds = %hwsim_get_radio_by_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end26:                                         ; preds = %hwsim_get_radio_by_id.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 12) #15
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end26.cleanup.sink.split_crit_edge, label %if.end30

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end30:                                         ; preds = %if.end26
  %31 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end30.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end30.rcu_read_lock.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end30
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end30.rcu_read_lock.exit_crit_edge
  %call31 = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call33 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true35

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true35:                                  ; preds = %land.lhs.true
  %.b113 = load i1, ptr @hwsim_set_edge_lqi.__warned, align 1
  br i1 %.b113, label %land.lhs.true35.do.end_crit_edge, label %if.then37

land.lhs.true35.do.end_crit_edge:                 ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_set_edge_lqi.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 560, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then37, %land.lhs.true35.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %edges = getelementptr i8, ptr %.pn.i, i32 -8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %edges, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %35 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %edges
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %e.0 = getelementptr i8, ptr %.pn, i32 -8
  %36 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %e.0, align 4
  %idx = getelementptr inbounds %struct.hwsim_phy, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx, align 4
  %cmp44 = icmp eq i32 %39, %24
  br i1 %cmp44, label %if.then45, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %26, ptr %call7.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %info74 = getelementptr i8, ptr %.pn, i32 -4
  %41 = ptrtoint ptr %info74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call7.i.i, ptr %info74, align 4
  call fastcc void @rcu_read_unlock()
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rcu_read_unlock()
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.then45, %if.end26.cleanup.sink.split_crit_edge, %hwsim_get_radio_by_id.exit.cleanup.sink.split_crit_edge, %for.cond.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -2, %for.end ], [ 0, %if.then45 ], [ -2, %hwsim_get_radio_by_id.exit.cleanup.sink.split_crit_edge ], [ -12, %if.end26.cleanup.sink.split_crit_edge ], [ -2, %for.cond.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %edge_attrs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hwsim_add_one(ptr noundef %info, ptr noundef %dev, i1 noundef zeroext %init) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @hwsim_radio_idx, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @hwsim_radio_idx, align 4
  %call = tail call ptr @ieee802154_alloc_hw(i32 noundef 32, ptr noundef nonnull @hwsim_ops) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %2, align 4
  %phy2 = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy2, align 4
  %supported = getelementptr inbounds %struct.wpan_phy, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %supported, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %supported, align 4
  %8 = load ptr, ptr %phy2, align 4
  %supported4 = getelementptr inbounds %struct.wpan_phy, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %supported4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %supported4, align 4
  %or7 = or i32 %10, 2046
  store i32 %or7, ptr %supported4, align 4
  %11 = load ptr, ptr %phy2, align 4
  %supported9 = getelementptr inbounds %struct.wpan_phy, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %supported9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %supported9, align 4
  %or12 = or i32 %13, 134215680
  store i32 %or12, ptr %supported9, align 4
  %14 = load ptr, ptr %phy2, align 4
  %arrayidx16 = getelementptr %struct.wpan_phy, ptr %14, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  %or17 = or i32 %16, 1
  store i32 %or17, ptr %arrayidx16, align 4
  %17 = load ptr, ptr %phy2, align 4
  %arrayidx21 = getelementptr %struct.wpan_phy, ptr %17, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21, align 4
  %or22 = or i32 %19, 2046
  store i32 %or22, ptr %arrayidx21, align 4
  %20 = load ptr, ptr %phy2, align 4
  %arrayidx26 = getelementptr %struct.wpan_phy, ptr %20, i32 0, i32 4, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx26, align 4
  %or27 = or i32 %22, 1
  store i32 %or27, ptr %arrayidx26, align 4
  %23 = load ptr, ptr %phy2, align 4
  %arrayidx31 = getelementptr %struct.wpan_phy, ptr %23, i32 0, i32 4, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31, align 4
  %or32 = or i32 %25, 2046
  store i32 %or32, ptr %arrayidx31, align 4
  %26 = load ptr, ptr %phy2, align 4
  %arrayidx36 = getelementptr %struct.wpan_phy, ptr %26, i32 0, i32 4, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx36, align 4
  %or37 = or i32 %28, 16383
  store i32 %or37, ptr %arrayidx36, align 4
  %29 = load ptr, ptr %phy2, align 4
  %arrayidx41 = getelementptr %struct.wpan_phy, ptr %29, i32 0, i32 4, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx41, align 4
  %or42 = or i32 %31, 1
  store i32 %or42, ptr %arrayidx41, align 4
  %32 = load ptr, ptr %phy2, align 4
  %arrayidx46 = getelementptr %struct.wpan_phy, ptr %32, i32 0, i32 4, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46, align 4
  %or47 = or i32 %34, 30
  store i32 %or47, ptr %arrayidx46, align 4
  %35 = load ptr, ptr %phy2, align 4
  %arrayidx51 = getelementptr %struct.wpan_phy, ptr %35, i32 0, i32 4, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx51, align 4
  %or52 = or i32 %37, 65504
  store i32 %or52, ptr %arrayidx51, align 4
  %38 = load ptr, ptr %phy2, align 4
  %arrayidx56 = getelementptr %struct.wpan_phy, ptr %38, i32 0, i32 4, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx56, align 4
  %or57 = or i32 %40, 15
  store i32 %or57, ptr %arrayidx56, align 4
  %41 = load ptr, ptr %phy2, align 4
  %arrayidx61 = getelementptr %struct.wpan_phy, ptr %41, i32 0, i32 4, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx61, align 4
  %or62 = or i32 %43, 240
  store i32 %or62, ptr %arrayidx61, align 4
  %44 = load ptr, ptr %phy2, align 4
  %arrayidx66 = getelementptr %struct.wpan_phy, ptr %44, i32 0, i32 4, i32 0, i32 6
  %45 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx66, align 4
  %or67 = or i32 %46, 1023
  store i32 %or67, ptr %arrayidx66, align 4
  %47 = load ptr, ptr %phy2, align 4
  %arrayidx71 = getelementptr %struct.wpan_phy, ptr %47, i32 0, i32 4, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx71, align 4
  %or72 = or i32 %49, 4193280
  store i32 %or72, ptr %arrayidx71, align 4
  %50 = load ptr, ptr %phy2, align 4
  %perm_extended_addr = getelementptr inbounds %struct.wpan_phy, ptr %50, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr, i32 noundef 8) #12
  %arrayidx.i = getelementptr i8, ptr %perm_extended_addr, i32 7
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i, align 1
  %53 = and i8 %52, -4
  %54 = or i8 %53, 2
  store i8 %54, ptr %arrayidx.i, align 1
  %55 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy2, align 4
  %current_channel = getelementptr inbounds %struct.wpan_phy, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %current_channel to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 13, ptr %current_channel, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 12) #15
  %tobool76.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool76.not, label %if.end.err_pib_crit_edge, label %if.end78

if.end.err_pib_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pib

if.end78:                                         ; preds = %if.end
  %channel = getelementptr inbounds %struct.hwsim_pib, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 13, ptr %channel, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  %pib101 = getelementptr inbounds %struct.hwsim_phy, ptr %2, i32 0, i32 2
  %60 = ptrtoint ptr %pib101 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i.i, ptr %pib101, align 4
  %idx113 = getelementptr inbounds %struct.hwsim_phy, ptr %2, i32 0, i32 1
  %61 = ptrtoint ptr %idx113 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %0, ptr %idx113, align 4
  %edges = getelementptr inbounds %struct.hwsim_phy, ptr %2, i32 0, i32 4
  %62 = ptrtoint ptr %edges to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %edges, ptr %edges, align 4
  %prev.i = getelementptr inbounds %struct.hwsim_phy, ptr %2, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %edges, ptr %prev.i, align 4
  %flags = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %flags, align 4
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 2
  %65 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %dev, ptr %parent, align 4
  %call114 = tail call i32 @ieee802154_register_hw(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end78.err_reg_crit_edge

if.end78.err_reg_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reg

if.end117:                                        ; preds = %if.end78
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  br i1 %init, label %if.then119, label %if.end117.if.end124_crit_edge

if.end117.if.end124_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then119:                                       ; preds = %if.end117
  %.pn114.i = load ptr, ptr @hwsim_phys, align 4
  %cmp.not115.i = icmp eq ptr %.pn114.i, @hwsim_phys
  br i1 %cmp.not115.i, label %if.then119.if.end124_crit_edge, label %if.then119.for.body.i_crit_edge

if.then119.for.body.i_crit_edge:                  ; preds = %if.then119
  br label %for.body.i

if.then119.if.end124_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

for.cond9.preheader.i:                            ; preds = %list_add_rcu.exit.i
  %.pn78117.pr.i = load ptr, ptr @hwsim_phys, align 4
  %cmp11.not118.i = icmp eq ptr %.pn78117.pr.i, @hwsim_phys
  br i1 %cmp11.not118.i, label %for.cond9.preheader.i.if.end124_crit_edge, label %for.cond9.preheader.i.for.body13.i_crit_edge

for.cond9.preheader.i.for.body13.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body13.i

for.cond9.preheader.i.if.end124_crit_edge:        ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

for.body.i:                                       ; preds = %list_add_rcu.exit.i.for.body.i_crit_edge, %if.then119.for.body.i_crit_edge
  %.pn116.i = phi ptr [ %.pn.i, %list_add_rcu.exit.i.for.body.i_crit_edge ], [ %.pn114.i, %if.then119.for.body.i_crit_edge ]
  %sub.0.i = getelementptr i8, ptr %.pn116.i, i32 -24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not.i81.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i81.i, label %for.body.i.me_fail.i_crit_edge, label %if.end.i.i

for.body.i.me_fail.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %me_fail.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 12) #15
  %tobool2.not.i.i = icmp eq ptr %call7.i.i1.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %me_fail.i

if.end.i:                                         ; preds = %if.end.i.i
  %68 = ptrtoint ptr %call7.i.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %call7.i.i1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !105
  %info27.i.i = getelementptr inbounds %struct.hwsim_edge, ptr %call7.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %info27.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call7.i.i1.i.i, ptr %info27.i.i, align 4
  %70 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %sub.0.i, ptr %call7.i.i.i.i, align 8
  %list1.i = getelementptr inbounds %struct.hwsim_edge, ptr %call7.i.i.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %edges to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %edges, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list1.i, ptr noundef %edges, ptr noundef %72) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_rcu.exit.i_crit_edge

if.end.i.list_add_rcu.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %list1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %list1.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.hwsim_edge, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %edges, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  %75 = ptrtoint ptr %edges to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %list1.i, ptr %edges, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %76 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %list1.i, ptr %prev37.i.i.i, align 4
  br label %list_add_rcu.exit.i

list_add_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.end.i.list_add_rcu.exit.i_crit_edge
  %77 = ptrtoint ptr %.pn116.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i = load ptr, ptr %.pn116.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @hwsim_phys
  br i1 %cmp.not.i, label %for.cond9.preheader.i, label %list_add_rcu.exit.i.for.body.i_crit_edge

list_add_rcu.exit.i.for.body.i_crit_edge:         ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body13.i:                                     ; preds = %list_add_rcu.exit96.i.for.body13.i_crit_edge, %for.cond9.preheader.i.for.body13.i_crit_edge
  %.pn78119.i = phi ptr [ %.pn78.i, %list_add_rcu.exit96.i.for.body13.i_crit_edge ], [ %.pn78117.pr.i, %for.cond9.preheader.i.for.body13.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i82.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not.i83.i = icmp eq ptr %call7.i.i.i82.i, null
  br i1 %tobool.not.i83.i, label %for.body13.i.sub_fail.i_crit_edge, label %if.end.i86.i

for.body13.i.sub_fail.i_crit_edge:                ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sub_fail.i

if.end.i86.i:                                     ; preds = %for.body13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1.i84.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 12) #15
  %tobool2.not.i85.i = icmp eq ptr %call7.i.i1.i84.i, null
  br i1 %tobool2.not.i85.i, label %if.then3.i87.i, label %if.end17.i

if.then3.i87.i:                                   ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i82.i) #12
  br label %sub_fail.i

if.end17.i:                                       ; preds = %if.end.i86.i
  %80 = ptrtoint ptr %call7.i.i1.i84.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %call7.i.i1.i84.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !105
  %info27.i88.i = getelementptr inbounds %struct.hwsim_edge, ptr %call7.i.i.i82.i, i32 0, i32 1
  %81 = ptrtoint ptr %info27.i88.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %call7.i.i1.i84.i, ptr %info27.i88.i, align 4
  %82 = ptrtoint ptr %call7.i.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %2, ptr %call7.i.i.i82.i, align 8
  %list18.i = getelementptr inbounds %struct.hwsim_edge, ptr %call7.i.i.i82.i, i32 0, i32 2
  %edges19.i = getelementptr i8, ptr %.pn78119.i, i32 -8
  %83 = ptrtoint ptr %edges19.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %edges19.i, align 4
  %call.i.i92.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list18.i, ptr noundef %edges19.i, ptr noundef %84) #12
  br i1 %call.i.i92.i, label %if.end.i.i95.i, label %if.end17.i.list_add_rcu.exit96.i_crit_edge

if.end17.i.list_add_rcu.exit96.i_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_rcu.exit96.i

if.end.i.i95.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %list18.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %list18.i, align 8
  %prev2.i.i93.i = getelementptr inbounds %struct.hwsim_edge, ptr %call7.i.i.i82.i, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %prev2.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %edges19.i, ptr %prev2.i.i93.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  %87 = ptrtoint ptr %edges19.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %list18.i, ptr %edges19.i, align 4
  %prev37.i.i94.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %88 = ptrtoint ptr %prev37.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %list18.i, ptr %prev37.i.i94.i, align 4
  br label %list_add_rcu.exit96.i

list_add_rcu.exit96.i:                            ; preds = %if.end.i.i95.i, %if.end17.i.list_add_rcu.exit96.i_crit_edge
  %89 = ptrtoint ptr %.pn78119.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn78.i = load ptr, ptr %.pn78119.i, align 4
  %cmp11.not.i = icmp eq ptr %.pn78.i, @hwsim_phys
  br i1 %cmp11.not.i, label %list_add_rcu.exit96.i.if.end124_crit_edge, label %list_add_rcu.exit96.i.for.body13.i_crit_edge

list_add_rcu.exit96.i.for.body13.i_crit_edge:     ; preds = %list_add_rcu.exit96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13.i

list_add_rcu.exit96.i.if.end124_crit_edge:        ; preds = %list_add_rcu.exit96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

sub_fail.i:                                       ; preds = %if.then3.i87.i, %for.body13.i.sub_fail.i_crit_edge
  tail call fastcc void @hwsim_edge_unsubscribe_me(ptr noundef %2) #12
  br label %me_fail.i

me_fail.i:                                        ; preds = %sub_fail.i, %if.then3.i.i, %for.body.i.me_fail.i_crit_edge
  %90 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %93, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %me_fail.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

me_fail.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %me_fail.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %me_fail.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %me_fail.i.rcu_read_lock.exit.i_crit_edge
  %call27.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call29.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true31.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true31.i:                                ; preds = %land.lhs.true.i
  %.b80.i = load i1, ptr @hwsim_subscribe_all_others.__warned, align 1
  br i1 %.b80.i, label %land.lhs.true31.i.do.end.i_crit_edge, label %if.then33.i

land.lhs.true31.i.do.end.i_crit_edge:             ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then33.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_subscribe_all_others.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 722, ptr noundef nonnull @.str.3) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then33.i, %land.lhs.true31.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %94 = ptrtoint ptr %edges to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn79120.i = load volatile ptr, ptr %edges, align 4
  %cmp47.not121.i = icmp eq ptr %.pn79120.i, %edges
  br i1 %cmp47.not121.i, label %do.end.i.for.end60.i_crit_edge, label %do.end.i.for.body48.i_crit_edge

do.end.i.for.body48.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body48.i

do.end.i.for.end60.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end60.i

for.body48.i:                                     ; preds = %list_del_rcu.exit.i.for.body48.i_crit_edge, %do.end.i.for.body48.i_crit_edge
  %.pn79122.i = phi ptr [ %.pn79.i, %list_del_rcu.exit.i.for.body48.i_crit_edge ], [ %.pn79120.i, %do.end.i.for.body48.i_crit_edge ]
  %e.0.i = getelementptr i8, ptr %.pn79122.i, i32 -8
  %call.i.i97.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn79122.i) #12
  br i1 %call.i.i97.i, label %if.end.i.i98.i, label %for.body48.i.list_del_rcu.exit.i_crit_edge

for.body48.i.list_del_rcu.exit.i_crit_edge:       ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit.i

if.end.i.i98.i:                                   ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn79122.i, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i.i, align 4
  %97 = ptrtoint ptr %.pn79122.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %.pn79122.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i98.i, %for.body48.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn79122.i, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @hwsim_free_edge(ptr noundef %e.0.i) #12
  %102 = ptrtoint ptr %.pn79122.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn79.i = load volatile ptr, ptr %.pn79122.i, align 4
  %cmp47.not.i = icmp eq ptr %.pn79.i, %edges
  br i1 %cmp47.not.i, label %list_del_rcu.exit.i.for.end60.i_crit_edge, label %list_del_rcu.exit.i.for.body48.i_crit_edge

list_del_rcu.exit.i.for.body48.i_crit_edge:       ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body48.i

list_del_rcu.exit.i.for.end60.i_crit_edge:        ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end60.i

for.end60.i:                                      ; preds = %list_del_rcu.exit.i.for.end60.i_crit_edge, %do.end.i.for.end60.i_crit_edge
  %call.i99.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i99.i, label %for.end60.i.if.then122_crit_edge, label %land.lhs.true.i102.i

for.end60.i.if.then122_crit_edge:                 ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122

land.lhs.true.i102.i:                             ; preds = %for.end60.i
  %call1.i100.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100.i)
  %tobool.not.i101.i = icmp eq i32 %call1.i100.i, 0
  br i1 %tobool.not.i101.i, label %land.lhs.true.i102.i.if.then122_crit_edge, label %land.lhs.true2.i104.i

land.lhs.true.i102.i.if.then122_crit_edge:        ; preds = %land.lhs.true.i102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122

land.lhs.true2.i104.i:                            ; preds = %land.lhs.true.i102.i
  %.b4.i103.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103.i, label %land.lhs.true2.i104.i.if.then122_crit_edge, label %if.then.i105.i

land.lhs.true2.i104.i.if.then122_crit_edge:       ; preds = %land.lhs.true2.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122

if.then.i105.i:                                   ; preds = %land.lhs.true2.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %if.then122

if.then122:                                       ; preds = %if.then.i105.i, %land.lhs.true2.i104.i.if.then122_crit_edge, %land.lhs.true.i102.i.if.then122_crit_edge, %for.end60.i.if.then122_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %103 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i106.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i106.i to ptr
  %preempt_count.i.i.i.i107.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i.i107.i, align 4
  %sub.i.i.i.i = add i32 %106, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i107.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  %107 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %2, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %108) #12
  br label %err_reg

if.end124:                                        ; preds = %list_add_rcu.exit96.i.if.end124_crit_edge, %for.cond9.preheader.i.if.end124_crit_edge, %if.then119.if.end124_crit_edge, %if.end117.if.end124_crit_edge
  %list = getelementptr inbounds %struct.hwsim_phy, ptr %2, i32 0, i32 5
  %109 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hwsim_phys, i32 0, i32 1), align 4
  %call.i.i167 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %109, ptr noundef nonnull @hwsim_phys) #12
  br i1 %call.i.i167, label %if.end.i.i168, label %if.end124.list_add_tail.exit_crit_edge

if.end124.list_add_tail.exit_crit_edge:           ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i168:                                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @hwsim_phys, i32 0, i32 1), align 4
  %110 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @hwsim_phys, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hwsim_phy, ptr %2, i32 0, i32 5, i32 1
  %111 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %109, ptr %prev3.i.i, align 4
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %list, ptr %109, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i168, %if.end124.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %list_add_tail.exit.cleanup_crit_edge, label %if.end.i169

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i169:                                      ; preds = %list_add_tail.exit
  %call1.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @hwsim_genl_family, i32 noundef 0, i8 noundef zeroext 3) #12
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i169.genlmsg_cancel.exit.i_crit_edge, label %if.end4.i

if.end.i169.genlmsg_cancel.exit.i_crit_edge:      ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %genlmsg_cancel.exit.i

if.end4.i:                                        ; preds = %if.end.i169
  %call5.i = tail call fastcc i32 @append_radio_msg(ptr noundef nonnull %call.i.i.i.i, ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  %add.ptr1.i18.i = getelementptr i8, ptr %call1.i, i32 -20
  br i1 %cmp.i, label %if.then.i19.i, label %if.end7.i

if.end7.i:                                        ; preds = %if.end4.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %113 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %114 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i18.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %115 = ptrtoint ptr %add.ptr1.i18.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i18.i, align 4
  %tobool.not.i.i170 = icmp eq ptr %info, null
  br i1 %tobool.not.i.i170, label %if.else.i.i, label %if.then.i.i171

if.then.i.i171:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @genl_notify(ptr noundef nonnull @hwsim_genl_family, ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %info, i32 noundef 0, i32 noundef 3264) #12
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end7.i
  %116 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @hwsim_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp.i.i.i.i = icmp eq i8 %116, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i.i, label %if.end39.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.else.i.i
  %.b1.i.i.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.cleanup_crit_edge, label %if.then.i.i.i.i, !prof !107

land.rhs.i.i.i.i.cleanup_crit_edge:               ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 308, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end39.i.i.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %117 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @hwsim_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 16
  %119 = ptrtoint ptr %dst_group.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %117, ptr %dst_group.i.i.i.i.i, align 8
  %call.i.i.i.i.i = tail call i32 @netlink_broadcast(ptr noundef %118, ptr noundef nonnull %call.i.i.i.i, i32 noundef 0, i32 noundef %117, i32 noundef 3264) #12
  br label %cleanup

if.then.i19.i:                                    ; preds = %if.end4.i
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i18.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i19.i.genlmsg_cancel.exit.i_crit_edge, label %if.then.i.i.i21.i

if.then.i19.i.genlmsg_cancel.exit.i_crit_edge:    ; preds = %if.then.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genlmsg_cancel.exit.i

if.then.i.i.i21.i:                                ; preds = %if.then.i19.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %120 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i20.i = icmp ugt ptr %121, %add.ptr1.i18.i
  br i1 %cmp.i.i.i20.i, label %do.end.i.i.i.i, label %if.then.i.i.i21.i.if.end.i.i.i.i_crit_edge, !prof !99

if.then.i.i.i21.i.if.end.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i21.i.if.end.i.i.i.i_crit_edge
  %122 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i18.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %123 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i.i.i, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  br label %genlmsg_cancel.exit.i

genlmsg_cancel.exit.i:                            ; preds = %if.end.i.i.i.i, %if.then.i19.i.genlmsg_cancel.exit.i_crit_edge, %if.end.i169.genlmsg_cancel.exit.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #12
  br label %cleanup

err_reg:                                          ; preds = %if.then122, %if.end78.err_reg_crit_edge
  %err.0 = phi i32 [ %call114, %if.end78.err_reg_crit_edge ], [ -12, %if.then122 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %err_pib

err_pib:                                          ; preds = %err_reg, %if.end.err_pib_crit_edge
  %err.1 = phi i32 [ %err.0, %err_reg ], [ -12, %if.end.err_pib_crit_edge ]
  %124 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %2, align 4
  tail call void @ieee802154_free_hw(ptr noundef %125) #12
  br label %cleanup

cleanup:                                          ; preds = %err_pib, %genlmsg_cancel.exit.i, %if.end39.i.i.i.i, %if.then.i.i.i.i, %land.rhs.i.i.i.i.cleanup_crit_edge, %if.then.i.i171, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_pib ], [ -12, %entry.cleanup_crit_edge ], [ %0, %list_add_tail.exit.cleanup_crit_edge ], [ %0, %if.then.i.i171 ], [ %0, %land.rhs.i.i.i.i.cleanup_crit_edge ], [ %0, %if.then.i.i.i.i ], [ %0, %if.end39.i.i.i.i ], [ %0, %genlmsg_cancel.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hwsim_hw_start(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %suspended = getelementptr inbounds %struct.hwsim_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %suspended, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hwsim_hw_stop(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %suspended = getelementptr inbounds %struct.hwsim_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_hw_xmit(ptr noundef %hw, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %suspended = getelementptr inbounds %struct.hwsim_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %pib = getelementptr inbounds %struct.hwsim_phy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pib, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end33_crit_edge

rcu_read_lock.exit.do.end33_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true.do.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true
  %.b140 = load i1, ptr @hwsim_hw_xmit.__warned, align 1
  br i1 %.b140, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_hw_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #12
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true.do.end33_crit_edge, %rcu_read_lock.exit.do.end33_crit_edge
  %call36 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %do.end33.do.end46_crit_edge

do.end33.do.end46_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true38:                                  ; preds = %do.end33
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true38.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true38.do.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %.b134139 = load i1, ptr @hwsim_hw_xmit.__warned.2, align 1
  br i1 %.b134139, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_hw_xmit.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 120, ptr noundef nonnull @.str.3) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true38.do.end46_crit_edge, %do.end33.do.end46_crit_edge
  %edges = getelementptr inbounds %struct.hwsim_phy, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %edges to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn150 = load volatile ptr, ptr %edges, align 4
  %cmp.not152 = icmp eq ptr %.pn150, %edges
  br i1 %cmp.not152, label %do.end46.for.end_crit_edge, label %for.body.lr.ph

do.end46.for.end_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end46
  %channel = getelementptr inbounds %struct.hwsim_pib, ptr %9, i32 0, i32 1
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn153 = phi ptr [ %.pn150, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %e.0154 = getelementptr i8, ptr %.pn153, i32 -8
  %11 = ptrtoint ptr %e.0154 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %e.0154, align 4
  %suspended53 = getelementptr inbounds %struct.hwsim_phy, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %suspended53 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %suspended53, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool54.not = icmp eq i8 %14, 0
  br i1 %tobool54.not, label %if.end56, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end56:                                         ; preds = %for.body
  %pib62 = getelementptr inbounds %struct.hwsim_phy, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %pib62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %pib62, align 4
  %call64 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %if.end56.do.end74_crit_edge

if.end56.do.end74_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

land.lhs.true66:                                  ; preds = %if.end56
  %call67 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true66.do.end74_crit_edge, label %land.lhs.true69

land.lhs.true66.do.end74_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %.b135138 = load i1, ptr @hwsim_hw_xmit.__warned.4, align 1
  br i1 %.b135138, label %land.lhs.true69.do.end74_crit_edge, label %if.then71

land.lhs.true69.do.end74_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

if.then71:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_hw_xmit.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 129, ptr noundef nonnull @.str.1) #12
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %land.lhs.true69.do.end74_crit_edge, %land.lhs.true66.do.end74_crit_edge, %if.end56.do.end74_crit_edge
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %9, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp78 = icmp eq i8 %18, %20
  br i1 %cmp78, label %land.lhs.true80, label %do.end74.for.inc_crit_edge

do.end74.for.inc_crit_edge:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true80:                                  ; preds = %do.end74
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %channel, align 1
  %channel82 = getelementptr inbounds %struct.hwsim_pib, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %channel82 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %channel82, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp84 = icmp eq i8 %22, %24
  br i1 %cmp84, label %if.then86, label %land.lhs.true80.for.inc_crit_edge

land.lhs.true80.for.inc_crit_edge:                ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then86:                                        ; preds = %land.lhs.true80
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #12
  %info = getelementptr i8, ptr %.pn153, i32 -4
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %info, align 4
  %call93 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %if.then86.do.end103_crit_edge

if.then86.do.end103_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end103

land.lhs.true95:                                  ; preds = %if.then86
  %call96 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true95.do.end103_crit_edge, label %land.lhs.true98

land.lhs.true95.do.end103_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end103

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %.b136137 = load i1, ptr @hwsim_hw_xmit.__warned.5, align 1
  br i1 %.b136137, label %land.lhs.true98.do.end103_crit_edge, label %if.then100

land.lhs.true98.do.end103_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end103

if.then100:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_hw_xmit.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.1) #12
  br label %do.end103

do.end103:                                        ; preds = %if.then100, %land.lhs.true98.do.end103_crit_edge, %land.lhs.true95.do.end103_crit_edge, %if.then86.do.end103_crit_edge
  %tobool105.not = icmp eq ptr %call.i.i, null
  br i1 %tobool105.not, label %do.end103.for.inc_crit_edge, label %if.then106

do.end103.for.inc_crit_edge:                      ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then106:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %e.0154 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %e.0154, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %30, align 4
  tail call void @ieee802154_rx_irqsafe(ptr noundef %34, ptr noundef nonnull %call.i.i, i8 noundef zeroext %36) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then106, %do.end103.for.inc_crit_edge, %land.lhs.true80.for.inc_crit_edge, %do.end74.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %37 = ptrtoint ptr %.pn153 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load volatile ptr, ptr %.pn153, align 4
  %cmp.not = icmp eq ptr %.pn, %edges
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end46.for.end_crit_edge
  %call.i141 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i141, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i144

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i144:                               ; preds = %for.end
  %call1.i142 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142)
  %tobool.not.i143 = icmp eq i32 %call1.i142, 0
  br i1 %tobool.not.i143, label %land.lhs.true.i144.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i146

land.lhs.true.i144.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i146:                              ; preds = %land.lhs.true.i144
  %.b4.i145 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i145, label %land.lhs.true2.i146.rcu_read_unlock.exit_crit_edge, label %if.then.i147

land.lhs.true2.i146.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i147:                                     ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i147, %land.lhs.true2.i146.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i144.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %38 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i148 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i148 to ptr
  %preempt_count.i.i.i.i149 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i149, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i149, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @ieee802154_xmit_complete(ptr noundef %hw, ptr noundef %skb, i1 noundef zeroext false) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hwsim_hw_ed(ptr nocapture noundef readnone %hw, ptr nocapture noundef writeonly %level) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -66, ptr %level, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_hw_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %page, ptr %call7.i.i, align 8
  %channel2 = getelementptr inbounds %struct.hwsim_pib, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %channel, ptr %channel2, align 1
  %call3 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call3, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @hwsim_hw_channel.__warned, align 1
  br i1 %.b65, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_hw_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @.str.9) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %pib10 = getelementptr inbounds %struct.hwsim_phy, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pib10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pib10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !109
  %7 = ptrtoint ptr %pib10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %pib10, align 4
  %tobool50.not = icmp eq ptr %6, null
  br i1 %tobool50.not, label %do.end.cleanup_crit_edge, label %do.end54

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end54:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.hwsim_pib, ptr %6, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end54 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hwsim_set_promiscuous_mode(ptr nocapture noundef readnone %hw, i1 noundef zeroext %on) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_xmit_complete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hwsim_alloc_edge(ptr noundef %endpoint) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #15
  %tobool2.not = icmp eq ptr %call7.i.i1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call7.i.i1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %call7.i.i1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !105
  %info27 = getelementptr inbounds %struct.hwsim_edge, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %info27 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i1, ptr %info27, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %endpoint, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #12
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwsim_edge_unsubscribe_me(ptr nocapture noundef readonly %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %.pn62 = load ptr, ptr @hwsim_phys, align 4
  %cmp.not63 = icmp eq ptr %.pn62, @hwsim_phys
  br i1 %cmp.not63, label %rcu_read_lock.exit.for.end38_crit_edge, label %do.body.lr.ph

rcu_read_lock.exit.for.end38_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

do.body.lr.ph:                                    ; preds = %rcu_read_lock.exit
  %idx18 = getelementptr inbounds %struct.hwsim_phy, ptr %phy, i32 0, i32 1
  br label %do.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %do.end.for.cond.loopexit_crit_edge
  %4 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn64, align 4
  %cmp.not = icmp eq ptr %.pn, @hwsim_phys
  br i1 %cmp.not, label %for.cond.loopexit.for.end38_crit_edge, label %for.cond.loopexit.do.body_crit_edge

for.cond.loopexit.do.body_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.cond.loopexit.for.end38_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

do.body:                                          ; preds = %for.cond.loopexit.do.body_crit_edge, %do.body.lr.ph
  %.pn64 = phi ptr [ %.pn62, %do.body.lr.ph ], [ %.pn, %for.cond.loopexit.do.body_crit_edge ]
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @hwsim_edge_unsubscribe_me.__warned, align 1
  br i1 %.b47, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_edge_unsubscribe_me.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %edges = getelementptr i8, ptr %.pn64, i32 -8
  %5 = ptrtoint ptr %edges to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn4657 = load volatile ptr, ptr %edges, align 4
  %cmp16.not59 = icmp eq ptr %.pn4657, %edges
  br i1 %cmp16.not59, label %do.end.for.cond.loopexit_crit_edge, label %do.end.for.body17_crit_edge

do.end.for.body17_crit_edge:                      ; preds = %do.end
  br label %for.body17

do.end.for.cond.loopexit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %do.end.for.body17_crit_edge
  %.pn4660 = phi ptr [ %.pn46, %for.inc.for.body17_crit_edge ], [ %.pn4657, %do.end.for.body17_crit_edge ]
  %e.061 = getelementptr i8, ptr %.pn4660, i32 -8
  %6 = ptrtoint ptr %e.061 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %e.061, align 4
  %idx = getelementptr inbounds %struct.hwsim_phy, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  %10 = ptrtoint ptr %idx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp19 = icmp eq i32 %9, %11
  br i1 %cmp19, label %if.then20, label %for.body17.for.inc_crit_edge

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then20:                                        ; preds = %for.body17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn4660) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.list_del_rcu.exit_crit_edge

if.then20.list_del_rcu.exit_crit_edge:            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn4660, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn4660 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn4660, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then20.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn4660, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @hwsim_free_edge(ptr noundef %e.061)
  br label %for.inc

for.inc:                                          ; preds = %list_del_rcu.exit, %for.body17.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn4660 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn46 = load volatile ptr, ptr %.pn4660, align 4
  %cmp16.not = icmp eq ptr %.pn46, %edges
  br i1 %cmp16.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.end38:                                        ; preds = %for.cond.loopexit.for.end38_crit_edge, %rcu_read_lock.exit.for.end38_crit_edge
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i48, label %for.end38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

for.end38.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %for.end38
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %for.end38.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %20 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i55 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @synchronize_rcu() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwsim_free_edge(ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %info = getelementptr inbounds %struct.hwsim_edge, ptr %e, i32 0, i32 1
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %info, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @hwsim_free_edge.__warned, align 1
  br i1 %.b32, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_free_edge.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 407, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i33, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %do.end7
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %6 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i40 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %rcu_read_unlock.exit.if.end15_crit_edge, label %do.end14

rcu_read_unlock.exit.if.end15_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end14:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.hwsim_edge_info, ptr %5, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %rcu_read_unlock.exit.if.end15_crit_edge
  %tobool20.not = icmp eq ptr %e, null
  br i1 %tobool20.not, label %if.end15.if.end26_crit_edge, label %do.end24

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %rcu25 = getelementptr inbounds %struct.hwsim_edge, ptr %e, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu25, ptr noundef nonnull inttoptr (i32 16 to ptr)) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.end15.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @append_radio_msg(ptr noundef %skb, ptr noundef %phy) unnamed_addr #2 align 64 {
entry:
  %tmp.i171 = alloca i8, align 1
  %tmp.i138 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.hwsim_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp = icmp slt i32 %call.i100, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %edges = getelementptr inbounds %struct.hwsim_phy, ptr %phy, i32 0, i32 4
  %7 = ptrtoint ptr %edges to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %edges, align 4
  %cmp.i.not = icmp eq ptr %8, %edges
  br i1 %cmp.i.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %rcu_read_lock.exit
  %call.i101 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i101, label %if.then2.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i104

if.then2.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i104:                               ; preds = %if.then2
  %call1.i102 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %tobool.not.i103 = icmp eq i32 %call1.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i104
  %.b4.i105 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i105, label %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, label %if.then.i107

land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i107:                                     ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i107, %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, %if.then2.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %9 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i108 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i109, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

if.end3:                                          ; preds = %rcu_read_lock.exit
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %call1.i110 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110)
  %cmp.i111 = icmp slt i32 %call1.i110, 0
  %tobool5.not222 = icmp eq ptr %14, null
  %tobool5.not = select i1 %cmp.i111, i1 true, i1 %tobool5.not222
  br i1 %tobool5.not, label %if.then6, label %do.body

if.then6:                                         ; preds = %if.end3
  %call.i112 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i112, label %if.then6.rcu_read_unlock.exit122_crit_edge, label %land.lhs.true.i115

if.then6.rcu_read_unlock.exit122_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit122

land.lhs.true.i115:                               ; preds = %if.then6
  %call1.i113 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool.not.i114 = icmp eq i32 %call1.i113, 0
  br i1 %tobool.not.i114, label %land.lhs.true.i115.rcu_read_unlock.exit122_crit_edge, label %land.lhs.true2.i117

land.lhs.true.i115.rcu_read_unlock.exit122_crit_edge: ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit122

land.lhs.true2.i117:                              ; preds = %land.lhs.true.i115
  %.b4.i116 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116, label %land.lhs.true2.i117.rcu_read_unlock.exit122_crit_edge, label %if.then.i118

land.lhs.true2.i117.rcu_read_unlock.exit122_crit_edge: ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit122

if.then.i118:                                     ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit122

rcu_read_unlock.exit122:                          ; preds = %if.then.i118, %land.lhs.true2.i117.rcu_read_unlock.exit122_crit_edge, %land.lhs.true.i115.rcu_read_unlock.exit122_crit_edge, %if.then6.rcu_read_unlock.exit122_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %15 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i119 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i119 to ptr
  %preempt_count.i.i.i.i120 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i120, align 4
  %sub.i.i.i121 = add i32 %18, -1
  store volatile i32 %sub.i.i.i121, ptr %preempt_count.i.i.i.i120, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

do.body:                                          ; preds = %if.end3
  %call8 = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call10 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b99 = load i1, ptr @append_radio_msg.__warned, align 1
  br i1 %.b99, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @append_radio_msg.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %19 = ptrtoint ptr %edges to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn227 = load volatile ptr, ptr %edges, align 4
  %cmp22.not229 = icmp eq ptr %.pn227, %edges
  br i1 %cmp22.not229, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn230 = phi ptr [ %.pn, %if.end52.for.body_crit_edge ], [ %.pn227, %do.end.for.body_crit_edge ]
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %call1.i124 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124)
  %cmp.i125 = icmp slt i32 %call1.i124, 0
  %tobool24.not223 = icmp eq ptr %21, null
  %tobool24.not = select i1 %cmp.i125, i1 true, i1 %tobool24.not223
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body
  %call.i127 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i127, label %if.then25.if.then.i.i_crit_edge, label %land.lhs.true.i130

if.then25.if.then.i.i_crit_edge:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true.i130:                               ; preds = %if.then25
  %call1.i128 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %tobool.not.i129 = icmp eq i32 %call1.i128, 0
  br i1 %tobool.not.i129, label %land.lhs.true.i130.if.then.i.i_crit_edge, label %land.lhs.true2.i132

land.lhs.true.i130.if.then.i.i_crit_edge:         ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true2.i132:                              ; preds = %land.lhs.true.i130
  %.b4.i131 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i131, label %land.lhs.true2.i132.if.then.i.i_crit_edge, label %if.then.i133

land.lhs.true2.i132.if.then.i.i_crit_edge:        ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i133:                                     ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i133, %land.lhs.true2.i132.if.then.i.i_crit_edge, %land.lhs.true.i130.if.then.i.i_crit_edge, %if.then25.if.then.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %22 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i134 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i134 to ptr
  %preempt_count.i.i.i.i135 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i135, align 4
  %sub.i.i.i136 = add i32 %25, -1
  store volatile i32 %sub.i.i.i136, ptr %preempt_count.i.i.i.i135, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %27, %14
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !99

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %e.0231 = getelementptr i8, ptr %.pn230, i32 -8
  %30 = ptrtoint ptr %e.0231 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %e.0231, align 4
  %idx27 = getelementptr inbounds %struct.hwsim_phy, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %idx27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i138) #12
  %34 = ptrtoint ptr %tmp.i138 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i138, align 4
  %call.i139 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i138) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i138) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp29 = icmp slt i32 %call.i139, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  %call.i140 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i140, label %if.then30.if.then.i.i154_crit_edge, label %land.lhs.true.i143

if.then30.if.then.i.i154_crit_edge:               ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i154

land.lhs.true.i143:                               ; preds = %if.then30
  %call1.i141 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i141)
  %tobool.not.i142 = icmp eq i32 %call1.i141, 0
  br i1 %tobool.not.i142, label %land.lhs.true.i143.if.then.i.i154_crit_edge, label %land.lhs.true2.i145

land.lhs.true.i143.if.then.i.i154_crit_edge:      ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i154

land.lhs.true2.i145:                              ; preds = %land.lhs.true.i143
  %.b4.i144 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i144, label %land.lhs.true2.i145.if.then.i.i154_crit_edge, label %if.then.i146

land.lhs.true2.i145.if.then.i.i154_crit_edge:     ; preds = %land.lhs.true2.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i154

if.then.i146:                                     ; preds = %land.lhs.true2.i145
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %if.then.i.i154

if.then.i.i154:                                   ; preds = %if.then.i146, %land.lhs.true2.i145.if.then.i.i154_crit_edge, %land.lhs.true.i143.if.then.i.i154_crit_edge, %if.then30.if.then.i.i154_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %35 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i147 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i147 to ptr
  %preempt_count.i.i.i.i148 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i148, align 4
  %sub.i.i.i149 = add i32 %38, -1
  store volatile i32 %sub.i.i.i149, ptr %preempt_count.i.i.i.i148, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %data.i.i152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i152 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i152, align 4
  %cmp.i.i153 = icmp ugt ptr %40, %21
  br i1 %cmp.i.i153, label %do.end.i.i155, label %if.then.i.i154.if.then.i.i164_crit_edge, !prof !99

if.then.i.i154.if.then.i.i164_crit_edge:          ; preds = %if.then.i.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i164

do.end.i.i155:                                    ; preds = %if.then.i.i154
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.then.i.i164

if.then.i.i164:                                   ; preds = %do.end.i.i155, %if.then.i.i154.if.then.i.i164_crit_edge
  %41 = ptrtoint ptr %data.i.i152 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i152, align 4
  %sub.ptr.lhs.cast.i.i156 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i157 = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i158 = sub i32 %sub.ptr.lhs.cast.i.i156, %sub.ptr.rhs.cast.i.i157
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i158) #12
  %43 = ptrtoint ptr %data.i.i152 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i152, align 4
  %cmp.i.i163 = icmp ugt ptr %44, %14
  br i1 %cmp.i.i163, label %do.end.i.i165, label %if.then.i.i164.nla_nest_cancel.exit170_crit_edge, !prof !99

if.then.i.i164.nla_nest_cancel.exit170_crit_edge: ; preds = %if.then.i.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit170

do.end.i.i165:                                    ; preds = %if.then.i.i164
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit170

nla_nest_cancel.exit170:                          ; preds = %do.end.i.i165, %if.then.i.i164.nla_nest_cancel.exit170_crit_edge
  %45 = ptrtoint ptr %data.i.i152 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i152, align 4
  %sub.ptr.lhs.cast.i.i166 = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i167 = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i168 = sub i32 %sub.ptr.lhs.cast.i.i166, %sub.ptr.rhs.cast.i.i167
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i168) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %info = getelementptr i8, ptr %.pn230, i32 -4
  %47 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %info, align 4
  %call37 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %if.end31.do.end47_crit_edge

if.end31.do.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

land.lhs.true39:                                  ; preds = %if.end31
  %call40 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true39.do.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %.b9798 = load i1, ptr @append_radio_msg.__warned.12, align 1
  br i1 %.b9798, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @append_radio_msg.__warned.12, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 247, ptr noundef nonnull @.str.1) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true39.do.end47_crit_edge, %if.end31.do.end47_crit_edge
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i171) #12
  %51 = ptrtoint ptr %tmp.i171 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %tmp.i171, align 1
  %call.i172 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i171) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i171) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp50 = icmp slt i32 %call.i172, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %do.end47
  %call.i173 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i173, label %if.then51.if.then.i.i187_crit_edge, label %land.lhs.true.i176

if.then51.if.then.i.i187_crit_edge:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i187

land.lhs.true.i176:                               ; preds = %if.then51
  %call1.i174 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i174)
  %tobool.not.i175 = icmp eq i32 %call1.i174, 0
  br i1 %tobool.not.i175, label %land.lhs.true.i176.if.then.i.i187_crit_edge, label %land.lhs.true2.i178

land.lhs.true.i176.if.then.i.i187_crit_edge:      ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i187

land.lhs.true2.i178:                              ; preds = %land.lhs.true.i176
  %.b4.i177 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i177, label %land.lhs.true2.i178.if.then.i.i187_crit_edge, label %if.then.i179

land.lhs.true2.i178.if.then.i.i187_crit_edge:     ; preds = %land.lhs.true2.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i187

if.then.i179:                                     ; preds = %land.lhs.true2.i178
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %if.then.i.i187

if.then.i.i187:                                   ; preds = %if.then.i179, %land.lhs.true2.i178.if.then.i.i187_crit_edge, %land.lhs.true.i176.if.then.i.i187_crit_edge, %if.then51.if.then.i.i187_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %52 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i180 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i180 to ptr
  %preempt_count.i.i.i.i181 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i181, align 4
  %sub.i.i.i182 = add i32 %55, -1
  store volatile i32 %sub.i.i.i182, ptr %preempt_count.i.i.i.i181, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %data.i.i185 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i185 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i185, align 4
  %cmp.i.i186 = icmp ugt ptr %57, %21
  br i1 %cmp.i.i186, label %do.end.i.i188, label %if.then.i.i187.if.then.i.i197_crit_edge, !prof !99

if.then.i.i187.if.then.i.i197_crit_edge:          ; preds = %if.then.i.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i197

do.end.i.i188:                                    ; preds = %if.then.i.i187
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.then.i.i197

if.then.i.i197:                                   ; preds = %do.end.i.i188, %if.then.i.i187.if.then.i.i197_crit_edge
  %58 = ptrtoint ptr %data.i.i185 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i185, align 4
  %sub.ptr.lhs.cast.i.i189 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i190 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i.i191 = sub i32 %sub.ptr.lhs.cast.i.i189, %sub.ptr.rhs.cast.i.i190
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i191) #12
  %60 = ptrtoint ptr %data.i.i185 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i185, align 4
  %cmp.i.i196 = icmp ugt ptr %61, %14
  br i1 %cmp.i.i196, label %do.end.i.i198, label %if.then.i.i197.nla_nest_cancel.exit203_crit_edge, !prof !99

if.then.i.i197.nla_nest_cancel.exit203_crit_edge: ; preds = %if.then.i.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit203

do.end.i.i198:                                    ; preds = %if.then.i.i197
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit203

nla_nest_cancel.exit203:                          ; preds = %do.end.i.i198, %if.then.i.i197.nla_nest_cancel.exit203_crit_edge
  %62 = ptrtoint ptr %data.i.i185 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i185, align 4
  %sub.ptr.lhs.cast.i.i199 = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i200 = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i201 = sub i32 %sub.ptr.lhs.cast.i.i199, %sub.ptr.rhs.cast.i.i200
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i201) #12
  br label %cleanup

if.end52:                                         ; preds = %do.end47
  %64 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i205 = trunc i32 %sub.ptr.sub.i to i16
  %66 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i205, ptr %21, align 2
  %67 = ptrtoint ptr %.pn230 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn = load volatile ptr, ptr %.pn230, align 4
  %cmp22.not = icmp eq ptr %.pn, %edges
  br i1 %cmp22.not, label %if.end52.for.end_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i206 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i206, label %for.end.rcu_read_unlock.exit216_crit_edge, label %land.lhs.true.i209

for.end.rcu_read_unlock.exit216_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit216

land.lhs.true.i209:                               ; preds = %for.end
  %call1.i207 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i207)
  %tobool.not.i208 = icmp eq i32 %call1.i207, 0
  br i1 %tobool.not.i208, label %land.lhs.true.i209.rcu_read_unlock.exit216_crit_edge, label %land.lhs.true2.i211

land.lhs.true.i209.rcu_read_unlock.exit216_crit_edge: ; preds = %land.lhs.true.i209
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit216

land.lhs.true2.i211:                              ; preds = %land.lhs.true.i209
  %.b4.i210 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i210, label %land.lhs.true2.i211.rcu_read_unlock.exit216_crit_edge, label %if.then.i212

land.lhs.true2.i211.rcu_read_unlock.exit216_crit_edge: ; preds = %land.lhs.true2.i211
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit216

if.then.i212:                                     ; preds = %land.lhs.true2.i211
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit216

rcu_read_unlock.exit216:                          ; preds = %if.then.i212, %land.lhs.true2.i211.rcu_read_unlock.exit216_crit_edge, %land.lhs.true.i209.rcu_read_unlock.exit216_crit_edge, %for.end.rcu_read_unlock.exit216_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %68 = call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i213 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i213 to ptr
  %preempt_count.i.i.i.i214 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i214 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i214, align 4
  %sub.i.i.i215 = add i32 %71, -1
  store volatile i32 %sub.i.i.i215, ptr %preempt_count.i.i.i.i214, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %72 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i218 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i219 = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i220 = sub i32 %sub.ptr.lhs.cast.i218, %sub.ptr.rhs.cast.i219
  %conv.i221 = trunc i32 %sub.ptr.sub.i220 to i16
  %74 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i221, ptr %14, align 2
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit216, %nla_nest_cancel.exit203, %nla_nest_cancel.exit170, %nla_nest_cancel.exit, %rcu_read_unlock.exit122, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %call.i139, %nla_nest_cancel.exit170 ], [ %call.i172, %nla_nest_cancel.exit203 ], [ -105, %nla_nest_cancel.exit ], [ 0, %rcu_read_unlock.exit216 ], [ -105, %rcu_read_unlock.exit122 ], [ %call.i100, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @genl_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwsim_del(ptr noundef %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hwsim_edge_unsubscribe_me(ptr noundef %phy)
  %list = getelementptr inbounds %struct.hwsim_phy, ptr %phy, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hwsim_phy, ptr %phy, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.hwsim_phy, ptr %phy, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %list_del.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

list_del.exit.rcu_read_lock.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %list_del.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %list_del.exit.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @hwsim_del.__warned, align 1
  br i1 %.b61, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %edges = getelementptr inbounds %struct.hwsim_phy, ptr %phy, i32 0, i32 4
  %12 = ptrtoint ptr %edges to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn76 = load volatile ptr, ptr %edges, align 4
  %cmp.not77 = icmp eq ptr %.pn76, %edges
  br i1 %cmp.not77, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del_rcu.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn78 = phi ptr [ %.pn, %list_del_rcu.exit.for.body_crit_edge ], [ %.pn76, %do.end.for.body_crit_edge ]
  %e.0 = getelementptr i8, ptr %.pn78, i32 -8
  %call.i.i62 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn78) #12
  br i1 %call.i.i62, label %if.end.i.i65, label %for.body.list_del_rcu.exit_crit_edge

for.body.list_del_rcu.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i65:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i63 = getelementptr inbounds %struct.list_head, ptr %.pn78, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i63, align 4
  %15 = ptrtoint ptr %.pn78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn78, align 4
  %prev1.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i64, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i65, %for.body.list_del_rcu.exit_crit_edge
  %prev.i66 = getelementptr inbounds %struct.list_head, ptr %.pn78, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i66, align 4
  tail call fastcc void @hwsim_free_edge(ptr noundef %e.0)
  %20 = ptrtoint ptr %.pn78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load volatile ptr, ptr %.pn78, align 4
  %cmp.not = icmp eq ptr %.pn, %edges
  br i1 %cmp.not, label %list_del_rcu.exit.for.end_crit_edge, label %list_del_rcu.exit.for.body_crit_edge

list_del_rcu.exit.for.body_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del_rcu.exit.for.end_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del_rcu.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %pib25 = getelementptr inbounds %struct.hwsim_phy, ptr %phy, i32 0, i32 2
  %21 = ptrtoint ptr %pib25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pib25, align 4
  %call27 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %for.end.do.end37_crit_edge

for.end.do.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

land.lhs.true29:                                  ; preds = %for.end
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b5960 = load i1, ptr @hwsim_del.__warned.15, align 1
  br i1 %.b5960, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hwsim_del.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 839, ptr noundef nonnull @.str.1) #12
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %for.end.do.end37_crit_edge
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i67, label %do.end37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

do.end37.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %do.end37
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %do.end37.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %23 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i74 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool40.not = icmp eq ptr %22, null
  br i1 %tobool40.not, label %rcu_read_unlock.exit.if.end45_crit_edge, label %do.end44

rcu_read_unlock.exit.if.end45_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end44:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.hwsim_pib, ptr %22, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %rcu_read_unlock.exit.if.end45_crit_edge
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %28) #12
  %29 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy, align 4
  tail call void @ieee802154_free_hw(ptr noundef %30) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hwsim_get_radio(ptr noundef %skb, ptr noundef %phy, i32 noundef %portid, i32 noundef %seq, ptr noundef %cb, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @hwsim_genl_family, i32 noundef %flags, i8 noundef zeroext 1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %cb, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_dump_check_consistent.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  %call4 = tail call fastcc i32 @append_radio_msg(ptr noundef %skb, ptr noundef %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  %add.ptr1.i16 = getelementptr i8, ptr %call, i32 -20
  br i1 %cmp, label %if.then.i, label %if.end6

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %12 = ptrtoint ptr %add.ptr1.i16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i16, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i16, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %14, %add.ptr1.i16
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !99

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i16 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -90, %entry.cleanup_crit_edge ], [ %call4, %if.then.i.cleanup_crit_edge ], [ %call4, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call fastcc i32 @hwsim_add_one(ptr noundef null, ptr noundef %dev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.err_slave_crit_edge, label %for.cond

entry.err_slave_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_slave

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @hwsim_add_one(ptr noundef null, ptr noundef %dev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %for.cond.err_slave_crit_edge, label %for.cond.1

for.cond.err_slave_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_slave

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #16
  br label %cleanup

err_slave:                                        ; preds = %for.cond.err_slave_crit_edge, %entry.err_slave_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.err_slave_crit_edge ], [ %call.1, %for.cond.err_slave_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  %0 = load ptr, ptr @hwsim_phys, align 4
  %cmp9.not29 = icmp eq ptr %0, @hwsim_phys
  br i1 %cmp9.not29, label %err_slave.for.end17_crit_edge, label %err_slave.for.body10_crit_edge

err_slave.for.body10_crit_edge:                   ; preds = %err_slave
  br label %for.body10

err_slave.for.end17_crit_edge:                    ; preds = %err_slave
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %err_slave.for.body10_crit_edge
  %.pn.in30 = phi ptr [ %.pn, %for.body10.for.body10_crit_edge ], [ %0, %err_slave.for.body10_crit_edge ]
  %phy.0 = getelementptr i8, ptr %.pn.in30, i32 -24
  %1 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in30, align 4
  tail call fastcc void @hwsim_del(ptr noundef %phy.0)
  %cmp9.not = icmp eq ptr %.pn, @hwsim_phys
  br i1 %cmp9.not, label %for.body10.for.end17_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.body10.for.end17_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.end17:                                        ; preds = %for.body10.for.end17_crit_edge, %err_slave.for.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end17, %for.cond.1
  %retval.0 = phi i32 [ %call.lcssa, %for.end17 ], [ 0, %for.cond.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwsim_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwsim_phys_lock, i32 noundef 0) #12
  %0 = load ptr, ptr @hwsim_phys, align 4
  %cmp.not15 = icmp eq ptr %0, @hwsim_phys
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in16 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %phy.0 = getelementptr i8, ptr %.pn.in16, i32 -24
  %1 = ptrtoint ptr %.pn.in16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in16, align 4
  tail call fastcc void @hwsim_del(ptr noundef %phy.0)
  %cmp.not = icmp eq ptr %.pn, @hwsim_phys
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hwsim_phys_lock) #12
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !88}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__UNIQUE_ID_description339, !1, !"__UNIQUE_ID_description339", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_file340, !3, !"__UNIQUE_ID_file340", i1 false, i1 false}
!3 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_license341, !3, !"__UNIQUE_ID_license341", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_mac802154_hwsim__386_925_hwsim_init_module6, !6, !"__initcall__kmod_mac802154_hwsim__386_925_hwsim_init_module6", i1 false, i1 false}
!6 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 925, i32 1}
!7 = !{ptr @__exitcall_hwsim_remove_module, !8, !"__exitcall_hwsim_remove_module", i1 false, i1 false}
!8 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 926, i32 1}
!9 = !{ptr @mac802154hwsim_dev, !10, !"mac802154hwsim_dev", i1 false, i1 false}
!10 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 32, i32 32}
!11 = !{ptr @hwsim_genl_family, !12, !"hwsim_genl_family", i1 false, i1 false}
!12 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 625, i32 27}
!13 = !{ptr @hwsim_genl_policy, !14, !"hwsim_genl_policy", i1 false, i1 false}
!14 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 579, i32 32}
!15 = !{ptr @hwsim_nl_ops, !16, !"hwsim_nl_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 586, i32 36}
!17 = !{ptr @hwsim_radio_idx, !18, !"hwsim_radio_idx", i1 false, i1 false}
!18 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 37, i32 12}
!19 = !{ptr @hwsim_ops, !20, !"hwsim_ops", i1 false, i1 false}
!20 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 167, i32 36}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 116, i32 2}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 119, i32 16}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 120, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 129, i32 18}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 134, i32 12}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 103, i32 12}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 30, i32 8}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hwsim_phys_lock, !44, !"hwsim_phys_lock", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 722, i32 2}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 683, i32 3}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 407, i32 10}
!53 = !{ptr @hwsim_phys, !54, !"hwsim_phys", i1 false, i1 false}
!54 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 29, i32 8}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 229, i32 2}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 247, i32 11}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/net/netlink.h", i32 991, i32 3}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!63 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 835, i32 2}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 839, i32 8}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 451, i32 2}
!70 = !{ptr @hwsim_edge_policy, !71, !"hwsim_edge_policy", i1 false, i1 false}
!71 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 375, i32 32}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 504, i32 2}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 560, i32 2}
!76 = !{ptr @hwsim_mcgrps, !77, !"hwsim_mcgrps", i1 false, i1 false}
!77 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 43, i32 42}
!78 = !{ptr @.str.16, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 886, i32 12}
!80 = !{ptr @mac802154hwsim_driver, !81, !"mac802154hwsim_driver", i1 false, i1 false}
!81 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 882, i32 31}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ieee802154/mac802154_hwsim.c", i32 859, i32 2}
!84 = !{ptr @.str.18, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @hwsim_probe._entry, !83, !"_entry", i1 false, i1 false}
!88 = !{ptr @hwsim_probe._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{!"auto-init"}
!101 = !{i64 2149375335}
!102 = !{i64 2149375601}
!103 = !{i64 2156378532}
!104 = !{i64 2156472633}
!105 = !{i64 2156255193}
!106 = !{i64 2151708227}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i8 0, i8 2}
!109 = !{i64 2156137085}
