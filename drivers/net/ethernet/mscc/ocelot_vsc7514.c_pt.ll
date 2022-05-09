; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mscc/ocelot_vsc7514.c_pt.bc'
source_filename = "../drivers/net/ethernet/mscc/ocelot_vsc7514.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocelot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vcap_props = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x %struct.anon.165], i16, i16, i32, ptr, ptr }
%struct.anon.165 = type { i16, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ocelot_stat_layout = type { i32, [32 x i8] }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.vcap_field = type { i32, i32 }
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
%struct.ocelot = type { ptr, ptr, ptr, ptr, [14 x ptr], [60 x ptr], ptr, ptr, i32, [2 x [2 x i32]], i32, i32, i32, ptr, [6 x i8], %struct.list_head, i32, i8, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, [3 x %struct.ocelot_vcap_block], %struct.ocelot_vcap_policer, ptr, %struct.ocelot_psfp_list, %struct.mutex, ptr, %struct.delayed_work, ptr, %struct.mutex, %struct.mutex, ptr, i8, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, i32, %struct.spinlock, %struct.mutex, %struct.spinlock, [4 x %struct.ptp_pin_desc], ptr }
%struct.ocelot_vcap_block = type { %struct.list_head, i32 }
%struct.ocelot_vcap_policer = type { %struct.list_head, i16, i16, i16, i16 }
%struct.ocelot_psfp_list = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.169 = type { i32, ptr, i8 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.ocelot_port_private = type { %struct.ocelot_port, ptr, ptr, %struct.phylink_config, i8, %struct.ocelot_port_tc }
%struct.ocelot_port = type { ptr, ptr, i8, ptr, i32, i8, %struct.sk_buff_head, i8, i32, ptr, i8, i8, ptr, i8, i16, ptr, i8, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.ocelot_port_tc = type { i8, i32, i32 }

@__initcall__kmod_mscc_ocelot__497_724_mscc_ocelot_driver_init6 = internal global ptr @mscc_ocelot_driver_init, section ".initcall6.init", align 4
@mscc_ocelot_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mscc_ocelot_probe, ptr @mscc_ocelot_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mscc_ocelot_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mscc_ocelot_driver_exit = internal global ptr @mscc_ocelot_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description498 = internal constant [55 x i8] c"mscc_ocelot.description=Microsemi Ocelot switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author499 = internal constant [69 x i8] c"mscc_ocelot.author=Alexandre Belloni <alexandre.belloni@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file500 = internal constant [55 x i8] c"mscc_ocelot.file=drivers/net/ethernet/mscc/mscc_ocelot\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [33 x i8] c"mscc_ocelot.license=Dual MIT/GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ocelot-switch\00", [18 x i8] zeroinitializer }, align 32
@mscc_ocelot_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,vsc7514-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rew\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qsys\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ana\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"qs\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s0\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s1\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s2\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptp\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fdma\00", [27 x i8] zeroinitializer }, align 32
@__const.mscc_ocelot_probe.io_target = private unnamed_addr constant [10 x { i32, ptr, i8, [3 x i8] }] [{ i32, ptr, i8, [3 x i8] } { i32 5, ptr @.str.1, i8 0, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 4, ptr @.str.2, i8 0, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 3, ptr @.str.3, i8 0, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 1, ptr @.str.4, i8 0, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 2, ptr @.str.5, i8 0, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 6, ptr @.str.6, i8 0, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 7, ptr @.str.7, i8 0, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 8, ptr @.str.8, i8 0, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 10, ptr @.str.9, i8 -128, [3 x i8] zeroinitializer }, { i32, ptr, i8, [3 x i8] } { i32 11, ptr @.str.10, i8 -128, [3 x i8] zeroinitializer }], align 4
@ocelot_devlink_ops = external dso_local constant %struct.devlink_ops, align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mscc,ocelot-hsio\00", [47 x i8] zeroinitializer }, align 32
@mscc_ocelot_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 595, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing hsio syscon\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mscc_ocelot_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mscc/ocelot_vsc7514.c\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mscc_ocelot_probe._entry_ptr = internal global ptr @mscc_ocelot_probe._entry, section ".printk_index", align 4
@ocelot_ops = internal constant { %struct.ocelot_ops, [52 x i8] } { %struct.ocelot_ops { ptr @ocelot_port_to_netdev, ptr @ocelot_netdev_to_port, ptr @ocelot_reset, ptr @ocelot_wm_enc, ptr @ocelot_wm_dec, ptr @ocelot_wm_stat, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xtr\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"frame extraction\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptp_rdy\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptp ready\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethernet-ports\00", [17 x i8] zeroinitializer }, align 32
@mscc_ocelot_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.14, i32 633, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no ethernet-ports child node found\0A\00", [60 x i8] zeroinitializer }, align 32
@mscc_ocelot_probe._entry_ptr.24 = internal global ptr @mscc_ocelot_probe._entry.22, section ".printk_index", align 4
@vsc7514_vcap_props = internal global { [3 x %struct.vcap_props], [60 x i8] } { [3 x %struct.vcap_props] [%struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, [2 x %struct.anon.165] [%struct.anon.165 { i16 73, i16 1 }, %struct.anon.165 zeroinitializer], i16 0, i16 0, i32 6, ptr @vsc7514_vcap_es0_keys, ptr @vsc7514_vcap_es0_actions }, %struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, [2 x %struct.anon.165] [%struct.anon.165 { i16 78, i16 4 }, %struct.anon.165 zeroinitializer], i16 0, i16 0, i32 7, ptr @vsc7514_vcap_is1_keys, ptr @vsc7514_vcap_is1_actions }, %struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, [2 x %struct.anon.165] [%struct.anon.165 { i16 49, i16 2 }, %struct.anon.165 { i16 6, i16 4 }], i16 0, i16 0, i32 8, ptr @vsc7514_vcap_is2_keys, ptr @vsc7514_vcap_is2_actions }], [60 x i8] zeroinitializer }, align 32
@ocelot_ptp_clock_info = internal global { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"ocelot ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2147483647, i32 0, i32 0, i32 4, i32 4, i32 0, ptr null, ptr @ocelot_ptp_adjfine, ptr null, ptr null, ptr @ocelot_ptp_adjtime, ptr @ocelot_ptp_gettime64, ptr null, ptr null, ptr @ocelot_ptp_settime64, ptr @ocelot_ptp_enable, ptr @ocelot_ptp_verify, ptr null }, [52 x i8] zeroinitializer }, align 32
@mscc_ocelot_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.14, i32 667, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timestamp initialization failed\0A\00", [63 x i8] zeroinitializer }, align 32
@mscc_ocelot_probe._entry_ptr.27 = internal global ptr @mscc_ocelot_probe._entry.25, section ".printk_index", align 4
@ocelot_netdevice_nb = external dso_local global %struct.notifier_block, align 4
@ocelot_switchdev_nb = external dso_local global %struct.notifier_block, align 4
@ocelot_switchdev_blocking_nb = external dso_local global %struct.notifier_block, align 4
@mscc_ocelot_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.14, i32 679, ptr @.str.30, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ocelot switch probed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mscc_ocelot_probe._entry_ptr.31 = internal global ptr @mscc_ocelot_probe._entry.28, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@ocelot_regmap = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr null, ptr @vsc7514_ana_regmap, ptr @vsc7514_qs_regmap, ptr @vsc7514_qsys_regmap, ptr @vsc7514_rew_regmap, ptr @vsc7514_sys_regmap, ptr @vsc7514_vcap_regmap, ptr @vsc7514_vcap_regmap, ptr @vsc7514_vcap_regmap, ptr null, ptr @vsc7514_ptp_regmap, ptr null, ptr null, ptr @vsc7514_dev_gmii_regmap], [40 x i8] zeroinitializer }, align 32
@ocelot_stats_layout = internal constant { [93 x %struct.ocelot_stat_layout], [844 x i8] } { [93 x %struct.ocelot_stat_layout] [%struct.ocelot_stat_layout { i32 0, [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 1, [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 2, [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 3, [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 4, [32 x i8] c"rx_shorts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 5, [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 6, [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 7, [32 x i8] c"rx_crc_align_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 8, [32 x i8] c"rx_sym_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 9, [32 x i8] c"rx_frames_below_65_octets\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 10, [32 x i8] c"rx_frames_65_to_127_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 11, [32 x i8] c"rx_frames_128_to_255_octets\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 12, [32 x i8] c"rx_frames_256_to_511_octets\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 13, [32 x i8] c"rx_frames_512_to_1023_octets\00\00\00\00" }, %struct.ocelot_stat_layout { i32 14, [32 x i8] c"rx_frames_1024_to_1526_octets\00\00\00" }, %struct.ocelot_stat_layout { i32 15, [32 x i8] c"rx_frames_over_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 16, [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 17, [32 x i8] c"rx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 18, [32 x i8] c"rx_longs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 19, [32 x i8] c"rx_classified_drops\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 20, [32 x i8] c"rx_red_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 21, [32 x i8] c"rx_red_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 22, [32 x i8] c"rx_red_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 23, [32 x i8] c"rx_red_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 24, [32 x i8] c"rx_red_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 25, [32 x i8] c"rx_red_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 26, [32 x i8] c"rx_red_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 27, [32 x i8] c"rx_red_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 28, [32 x i8] c"rx_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 29, [32 x i8] c"rx_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 30, [32 x i8] c"rx_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 31, [32 x i8] c"rx_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 32, [32 x i8] c"rx_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 33, [32 x i8] c"rx_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 34, [32 x i8] c"rx_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 35, [32 x i8] c"rx_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 36, [32 x i8] c"rx_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 37, [32 x i8] c"rx_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 38, [32 x i8] c"rx_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 39, [32 x i8] c"rx_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 40, [32 x i8] c"rx_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 41, [32 x i8] c"rx_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 42, [32 x i8] c"rx_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 43, [32 x i8] c"rx_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 64, [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 65, [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 66, [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 67, [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 68, [32 x i8] c"tx_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 69, [32 x i8] c"tx_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 70, [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 71, [32 x i8] c"tx_frames_below_65_octets\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 72, [32 x i8] c"tx_frames_65_to_127_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 73, [32 x i8] c"tx_frames_128_255_octets\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 74, [32 x i8] c"tx_frames_256_511_octets\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 75, [32 x i8] c"tx_frames_512_1023_octets\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 76, [32 x i8] c"tx_frames_1024_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 77, [32 x i8] c"tx_frames_over_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 78, [32 x i8] c"tx_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 79, [32 x i8] c"tx_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 80, [32 x i8] c"tx_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 81, [32 x i8] c"tx_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 82, [32 x i8] c"tx_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 83, [32 x i8] c"tx_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 84, [32 x i8] c"tx_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 85, [32 x i8] c"tx_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 86, [32 x i8] c"tx_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 87, [32 x i8] c"tx_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 88, [32 x i8] c"tx_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 89, [32 x i8] c"tx_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 90, [32 x i8] c"tx_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 91, [32 x i8] c"tx_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 92, [32 x i8] c"tx_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 93, [32 x i8] c"tx_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 94, [32 x i8] c"tx_aged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 128, [32 x i8] c"drop_local\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 129, [32 x i8] c"drop_tail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 130, [32 x i8] c"drop_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 131, [32 x i8] c"drop_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 132, [32 x i8] c"drop_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 133, [32 x i8] c"drop_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 134, [32 x i8] c"drop_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 135, [32 x i8] c"drop_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 136, [32 x i8] c"drop_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 137, [32 x i8] c"drop_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 138, [32 x i8] c"drop_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 139, [32 x i8] c"drop_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 140, [32 x i8] c"drop_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 141, [32 x i8] c"drop_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 142, [32 x i8] c"drop_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 143, [32 x i8] c"drop_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 144, [32 x i8] c"drop_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 145, [32 x i8] c"drop_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [844 x i8] zeroinitializer }, align 32
@ocelot_regfields = internal constant { [60 x %struct.reg_field], [304 x i8] } { [60 x %struct.reg_field] [%struct.reg_field { i32 16777216, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 16777216, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777220, i32 27, i32 27, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 26, i32 26, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 25, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 24, i32 24, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 22, i32 22, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 18, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 16, i32 16, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777241, i32 18, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 16777242, i32 10, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 16777242, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 50331649, i32 14, i32 14, i32 12, i32 4 }, %struct.reg_field { i32 50331649, i32 11, i32 13, i32 12, i32 4 }, %struct.reg_field { i32 50331649, i32 10, i32 10, i32 12, i32 4 }, %struct.reg_field { i32 50331649, i32 9, i32 9, i32 12, i32 4 }, %struct.reg_field { i32 50331649, i32 1, i32 8, i32 12, i32 4 }, %struct.reg_field { i32 50331649, i32 0, i32 0, i32 12, i32 4 }, %struct.reg_field { i32 50331661, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 50331661, i32 8, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 50331661, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 50331661, i32 1, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 50331661, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 83886116, i32 5, i32 6, i32 12, i32 4 }, %struct.reg_field { i32 83886116, i32 3, i32 4, i32 12, i32 4 }, %struct.reg_field { i32 83886116, i32 1, i32 2, i32 12, i32 4 }, %struct.reg_field { i32 83886116, i32 0, i32 0, i32 12, i32 4 }, %struct.reg_field { i32 83886113, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 83886113, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 83886113, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 83886126, i32 10, i32 18, i32 12, i32 4 }, %struct.reg_field { i32 83886126, i32 1, i32 9, i32 12, i32 4 }, %struct.reg_field { i32 83886126, i32 0, i32 1, i32 12, i32 4 }], [304 x i8] zeroinitializer }, align 32
@vsc7514_ana_regmap = external dso_local constant [0 x i32], align 4
@vsc7514_qs_regmap = external dso_local constant [0 x i32], align 4
@vsc7514_qsys_regmap = external dso_local constant [0 x i32], align 4
@vsc7514_rew_regmap = external dso_local constant [0 x i32], align 4
@vsc7514_sys_regmap = external dso_local constant [0 x i32], align 4
@vsc7514_vcap_regmap = external dso_local constant [0 x i32], align 4
@vsc7514_ptp_regmap = external dso_local constant [0 x i32], align 4
@vsc7514_dev_gmii_regmap = external dso_local constant [0 x i32], align 4
@vsc7514_vcap_es0_keys = external dso_local constant [0 x %struct.vcap_field], align 4
@vsc7514_vcap_es0_actions = external dso_local constant [0 x %struct.vcap_field], align 4
@vsc7514_vcap_is1_keys = external dso_local constant [0 x %struct.vcap_field], align 4
@vsc7514_vcap_is1_actions = external dso_local constant [0 x %struct.vcap_field], align 4
@vsc7514_vcap_is2_keys = external dso_local constant [0 x %struct.vcap_field], align 4
@vsc7514_vcap_is2_actions = external dso_local constant [0 x %struct.vcap_field], align 4
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mscc_ocelot_init_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.14, i32 467, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid port number: %d >= %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mscc_ocelot_init_ports\00", [41 x i8] zeroinitializer }, align 32
@mscc_ocelot_init_ports._entry_ptr = internal global ptr @mscc_ocelot_init_ports._entry, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"port%d\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"mscc_ocelot_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 715, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 719, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"mscc_ocelot_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 281, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 545, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 546, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 547, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 548, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 549, i32 9 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 550, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 551, i32 9 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 552, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 553, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 554, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 593, i32 44 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 595, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"ocelot_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 338, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 606, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 614, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 618, i32 46 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 622, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 631, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 633, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"vsc7514_vcap_props\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 347, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"ocelot_ptp_clock_info\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 390, i32 30 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 666, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 679, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [14 x i8] c"ocelot_regmap\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 28, i32 19 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"ocelot_stats_layout\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 99, i32 40 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"ocelot_regfields\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 41, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 460, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 465, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [46 x i8] c"../drivers/net/ethernet/mscc/ocelot_vsc7514.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 471, i32 40 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author499, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_mscc_ocelot_driver_exit, ptr @__initcall__kmod_mscc_ocelot__497_724_mscc_ocelot_driver_init6, ptr @mscc_ocelot_driver_exit, ptr @mscc_ocelot_init_ports._entry, ptr @mscc_ocelot_init_ports._entry_ptr, ptr @mscc_ocelot_probe._entry, ptr @mscc_ocelot_probe._entry.22, ptr @mscc_ocelot_probe._entry.25, ptr @mscc_ocelot_probe._entry.28, ptr @mscc_ocelot_probe._entry_ptr, ptr @mscc_ocelot_probe._entry_ptr.24, ptr @mscc_ocelot_probe._entry_ptr.27, ptr @mscc_ocelot_probe._entry_ptr.31, ptr @mscc_ocelot_driver, ptr @.str, ptr @mscc_ocelot_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ocelot_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @vsc7514_vcap_props, ptr @ocelot_ptp_clock_info, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @ocelot_regmap, ptr @ocelot_stats_layout, ptr @ocelot_regfields, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_ocelot_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_ocelot_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_ocelot_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_ocelot_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc7514_vcap_props to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_ptp_clock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_ocelot_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_ocelot_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_regmap to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_stats_layout to i32), i32 3348, i32 4192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_regfields to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_ocelot_init_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_ocelot_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mscc_ocelot_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mscc_ocelot_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mscc_ocelot_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_ocelot_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup119_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup119_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call ptr @devlink_alloc_ns(ptr noundef nonnull @ocelot_devlink_ops, i32 noundef 1584, ptr noundef nonnull @init_net, ptr noundef %dev) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup119_crit_edge, label %if.end6

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devlink_priv(ptr noundef nonnull %call.i) #9
  %call8 = tail call ptr @priv_to_devlink(ptr noundef %call7) #9
  %devlink9 = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 1
  %4 = ptrtoint ptr %devlink9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %devlink9, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call7, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6
  %i.0207 = phi i32 [ 0, %if.end6 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct.anon.169], ptr @__const.mscc_ocelot_probe.io_target, i32 0, i32 %i.0207
  %name = getelementptr [10 x %struct.anon.169], ptr @__const.mscc_ocelot_probe.io_target, i32 0, i32 %i.0207, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call12 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %8) #9
  %call13 = tail call ptr @ocelot_regmap_init(ptr noundef %call7, ptr noundef %call12) #9
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %for.body
  %optional = getelementptr [10 x %struct.anon.169], ptr @__const.mscc_ocelot_probe.io_target, i32 0, i32 %i.0207, i32 2
  %9 = ptrtoint ptr %optional to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %optional, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool17.not, label %cleanup, label %if.then15.for.inc_crit_edge

if.then15.for.inc_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call13 to i32
  br label %out_free_devlink

for.inc:                                          ; preds = %if.then15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ null, %if.then15.for.inc_crit_edge ], [ %call13, %for.body.for.inc_crit_edge ]
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx20 = getelementptr %struct.ocelot, ptr %call7, i32 0, i32 4, i32 %12
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.sink, ptr %arrayidx20, align 4
  %inc = add nuw nsw i32 %i.0207, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %arrayidx30 = getelementptr %struct.ocelot, ptr %call7, i32 0, i32 4, i32 11
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %15, null
  br i1 %tobool31.not, label %for.end.if.end33_crit_edge, label %if.then32

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ocelot_fdma_init(ptr noundef %pdev, ptr noundef %call7) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.end.if.end33_crit_edge
  %call34 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.11) #9
  %cmp.i201 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %do.end, label %if.end39

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  %16 = ptrtoint ptr %call34 to i32
  br label %out_free_devlink

if.end39:                                         ; preds = %if.end33
  %arrayidx41 = getelementptr %struct.ocelot, ptr %call7, i32 0, i32 4, i32 9
  %17 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call34, ptr %arrayidx41, align 4
  %map.i = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 6
  %18 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ocelot_regmap, ptr %map.i, align 4
  %stats_layout.i = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 7
  %19 = ptrtoint ptr %stats_layout.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ocelot_stats_layout, ptr %stats_layout.i, align 4
  %num_stats.i = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 8
  %20 = ptrtoint ptr %num_stats.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 93, ptr %num_stats.i, align 4
  %num_mact_rows.i = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 12
  %21 = ptrtoint ptr %num_mact_rows.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1024, ptr %num_mact_rows.i, align 4
  %ops1.i = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 3
  %22 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ocelot_ops, ptr %ops1.i, align 4
  %call.i202 = tail call i32 @ocelot_regfields_init(ptr noundef %call7, ptr noundef nonnull @ocelot_regfields) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i, label %if.end45, label %if.end39.out_free_devlink_crit_edge

if.end39.out_free_devlink_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_devlink

if.end45:                                         ; preds = %if.end39
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx41, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 16, i32 noundef 554496) #9
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx41, align 4
  %call3.i.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 0, i32 noundef 1916432529) #9
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx41, align 4
  %call6.i.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 8, i32 noundef 1073428) #9
  %base_mac.i = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 14
  tail call void @get_random_bytes(ptr noundef %base_mac.i, i32 noundef 6) #9
  %29 = ptrtoint ptr %base_mac.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %base_mac.i, align 1
  %31 = and i8 %30, -4
  %32 = or i8 %31, 2
  store i8 %32, ptr %base_mac.i, align 1
  %arrayidx.i = getelementptr %struct.ocelot, ptr %call7, i32 0, i32 14, i32 5
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %35 = and i8 %34, -16
  store i8 %35, ptr %arrayidx.i, align 1
  %call46 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.out_free_devlink_crit_edge, label %if.end49

if.end45.out_free_devlink_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_devlink

if.end49:                                         ; preds = %if.end45
  %call51 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call46, ptr noundef null, ptr noundef nonnull @ocelot_xtr_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.18, ptr noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.out_free_devlink_crit_edge

if.end49.out_free_devlink_crit_edge:              ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_devlink

if.end54:                                         ; preds = %if.end49
  %call55 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp sgt i32 %call55, 0
  br i1 %cmp56, label %land.lhs.true57, label %if.end54.if.end68_crit_edge

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true57:                                  ; preds = %if.end54
  %arrayidx59 = getelementptr %struct.ocelot, ptr %call7, i32 0, i32 4, i32 10
  %36 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %37, null
  br i1 %tobool60.not, label %land.lhs.true57.if.end68_crit_edge, label %if.then61

land.lhs.true57.if.end68_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then61:                                        ; preds = %land.lhs.true57
  %call63 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call55, ptr noundef null, ptr noundef nonnull @ocelot_ptp_rdy_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.20, ptr noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then61.out_free_devlink_crit_edge

if.then61.out_free_devlink_crit_edge:             ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_devlink

if.end66:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %ptp = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 35
  %38 = ptrtoint ptr %ptp to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load67 = load i8, ptr %ptp, align 4
  %bf.set = or i8 %bf.load67, -128
  store i8 %bf.set, ptr %ptp, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %land.lhs.true57.if.end68_crit_edge, %if.end54.if.end68_crit_edge
  %call69 = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.21) #9
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %do.end74, label %if.end76

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.23) #12
  br label %out_free_devlink

if.end76:                                         ; preds = %if.end68
  %call77 = tail call fastcc i32 @of_get_child_count(ptr noundef nonnull %call69)
  %conv = trunc i32 %call77 to i8
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 17
  %41 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv, ptr %num_phys_ports, align 4
  %num_flooding_pgids = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 16
  %42 = ptrtoint ptr %num_flooding_pgids to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %num_flooding_pgids, align 4
  %vcap = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 26
  %43 = ptrtoint ptr %vcap to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @vsc7514_vcap_props, ptr %vcap, align 4
  %base = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 25, i32 1
  %44 = ptrtoint ptr %base to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 128, ptr %base, align 4
  %max = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 25, i32 2
  %45 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 191, ptr %max, align 2
  %npi = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 18
  %46 = ptrtoint ptr %npi to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %npi, align 4
  %call79 = tail call i32 @ocelot_init(ptr noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end76.out_put_ports_crit_edge

if.end76.out_put_ports_crit_edge:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put_ports

if.end82:                                         ; preds = %if.end76
  %call83 = tail call fastcc i32 @mscc_ocelot_init_ports(ptr noundef %pdev, ptr noundef nonnull %call69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.out_ocelot_devlink_unregister_crit_edge

if.end82.out_ocelot_devlink_unregister_crit_edge: ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ocelot_devlink_unregister

if.end86:                                         ; preds = %if.end82
  %fdma = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 44
  %47 = ptrtoint ptr %fdma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fdma, align 4
  %tobool87.not = icmp eq ptr %48, null
  br i1 %tobool87.not, label %if.end86.if.end89_crit_edge, label %if.then88

if.end86.if.end89_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ocelot_fdma_start(ptr noundef %call7) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end86.if.end89_crit_edge
  %call90 = tail call i32 @ocelot_devlink_sb_register(ptr noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %out_ocelot_release_ports

if.end93:                                         ; preds = %if.end89
  %ptp94 = getelementptr inbounds %struct.ocelot, ptr %call7, i32 0, i32 35
  %49 = ptrtoint ptr %ptp94 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load95 = load i8, ptr %ptp94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load95)
  %tobool97.not = icmp sgt i8 %bf.load95, -1
  br i1 %tobool97.not, label %if.end93.if.end111_crit_edge, label %if.then98

if.end93.if.end111_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then98:                                        ; preds = %if.end93
  %call99 = tail call i32 @ocelot_init_timestamp(ptr noundef %call7, ptr noundef nonnull @ocelot_ptp_clock_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then98.if.end111_crit_edge, label %do.end104

if.then98.if.end111_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

do.end104:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.26) #12
  %52 = ptrtoint ptr %ptp94 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load107 = load i8, ptr %ptp94, align 4
  %bf.clear108 = and i8 %bf.load107, 127
  store i8 %bf.clear108, ptr %ptp94, align 4
  br label %if.end111

if.end111:                                        ; preds = %do.end104, %if.then98.if.end111_crit_edge, %if.end93.if.end111_crit_edge
  %call112 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ocelot_netdevice_nb) #9
  %call113 = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @ocelot_switchdev_nb) #9
  %call114 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @ocelot_switchdev_blocking_nb) #9
  tail call void @of_node_put(ptr noundef nonnull %call69) #9
  tail call void @devlink_register(ptr noundef nonnull %call.i) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  br label %cleanup119

out_ocelot_release_ports:                         ; preds = %if.end89
  tail call fastcc void @mscc_ocelot_release_ports(ptr noundef %call7)
  %53 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp6.not.i = icmp eq i8 %54, 0
  br i1 %cmp6.not.i, label %out_ocelot_release_ports.out_ocelot_devlink_unregister_crit_edge, label %out_ocelot_release_ports.for.body.i_crit_edge

out_ocelot_release_ports.for.body.i_crit_edge:    ; preds = %out_ocelot_release_ports
  br label %for.body.i

out_ocelot_release_ports.out_ocelot_devlink_unregister_crit_edge: ; preds = %out_ocelot_release_ports
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ocelot_devlink_unregister

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out_ocelot_release_ports.for.body.i_crit_edge
  %port.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %out_ocelot_release_ports.for.body.i_crit_edge ]
  tail call void @ocelot_port_devlink_teardown(ptr noundef %call7, i32 noundef %port.07.i) #9
  %inc.i = add nuw nsw i32 %port.07.i, 1
  %55 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_phys_ports, align 4
  %conv.i = zext i8 %56 to i32
  %cmp.i203 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i203, label %for.body.i.for.body.i_crit_edge, label %for.body.i.out_ocelot_devlink_unregister_crit_edge

for.body.i.out_ocelot_devlink_unregister_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ocelot_devlink_unregister

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

out_ocelot_devlink_unregister:                    ; preds = %for.body.i.out_ocelot_devlink_unregister_crit_edge, %out_ocelot_release_ports.out_ocelot_devlink_unregister_crit_edge, %if.end82.out_ocelot_devlink_unregister_crit_edge
  %err.2 = phi i32 [ %call83, %if.end82.out_ocelot_devlink_unregister_crit_edge ], [ %call90, %out_ocelot_release_ports.out_ocelot_devlink_unregister_crit_edge ], [ %call90, %for.body.i.out_ocelot_devlink_unregister_crit_edge ]
  tail call void @ocelot_deinit(ptr noundef %call7) #9
  br label %out_put_ports

out_put_ports:                                    ; preds = %out_ocelot_devlink_unregister, %if.end76.out_put_ports_crit_edge
  %err.3 = phi i32 [ %call79, %if.end76.out_put_ports_crit_edge ], [ %err.2, %out_ocelot_devlink_unregister ]
  tail call void @of_node_put(ptr noundef nonnull %call69) #9
  br label %out_free_devlink

out_free_devlink:                                 ; preds = %out_put_ports, %do.end74, %if.then61.out_free_devlink_crit_edge, %if.end49.out_free_devlink_crit_edge, %if.end45.out_free_devlink_crit_edge, %if.end39.out_free_devlink_crit_edge, %do.end, %cleanup
  %err.4 = phi i32 [ %10, %cleanup ], [ %16, %do.end ], [ %call51, %if.end49.out_free_devlink_crit_edge ], [ %call63, %if.then61.out_free_devlink_crit_edge ], [ %err.3, %out_put_ports ], [ -19, %do.end74 ], [ %call46, %if.end45.out_free_devlink_crit_edge ], [ %call.i202, %if.end39.out_free_devlink_crit_edge ]
  tail call void @devlink_free(ptr noundef nonnull %call.i) #9
  br label %cleanup119

cleanup119:                                       ; preds = %out_free_devlink, %if.end111, %if.end.cleanup119_crit_edge, %land.lhs.true.cleanup119_crit_edge
  %retval.0 = phi i32 [ %err.4, %out_free_devlink ], [ 0, %if.end111 ], [ -19, %land.lhs.true.cleanup119_crit_edge ], [ -12, %if.end.cleanup119_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_ocelot_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fdma = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %fdma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdma, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ocelot_fdma_deinit(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %devlink = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink, align 4
  tail call void @devlink_unregister(ptr noundef %5) #9
  %call1 = tail call i32 @ocelot_deinit_timestamp(ptr noundef %1) #9
  tail call void @ocelot_devlink_sb_unregister(ptr noundef %1) #9
  %num_phys_ports.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_phys_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp9.not.i = icmp eq i8 %7, 0
  br i1 %cmp9.not.i, label %if.end.mscc_ocelot_teardown_devlink_ports.exit_crit_edge, label %for.body.lr.ph.i

if.end.mscc_ocelot_teardown_devlink_ports.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mscc_ocelot_teardown_devlink_ports.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %ports.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %port.010.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ocelot_deinit_port(ptr noundef %1, i32 noundef %port.010.i) #9
  tail call void @ocelot_release_port(ptr noundef nonnull %11) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %port.010.i, 1
  %12 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_phys_ports.i, align 4
  %conv.i = zext i8 %13 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %mscc_ocelot_release_ports.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mscc_ocelot_release_ports.exit:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp6.not.i = icmp eq i8 %13, 0
  br i1 %cmp6.not.i, label %mscc_ocelot_release_ports.exit.mscc_ocelot_teardown_devlink_ports.exit_crit_edge, label %mscc_ocelot_release_ports.exit.for.body.i18_crit_edge

mscc_ocelot_release_ports.exit.for.body.i18_crit_edge: ; preds = %mscc_ocelot_release_ports.exit
  br label %for.body.i18

mscc_ocelot_release_ports.exit.mscc_ocelot_teardown_devlink_ports.exit_crit_edge: ; preds = %mscc_ocelot_release_ports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mscc_ocelot_teardown_devlink_ports.exit

for.body.i18:                                     ; preds = %for.body.i18.for.body.i18_crit_edge, %mscc_ocelot_release_ports.exit.for.body.i18_crit_edge
  %port.07.i = phi i32 [ %inc.i15, %for.body.i18.for.body.i18_crit_edge ], [ 0, %mscc_ocelot_release_ports.exit.for.body.i18_crit_edge ]
  tail call void @ocelot_port_devlink_teardown(ptr noundef %1, i32 noundef %port.07.i) #9
  %inc.i15 = add nuw nsw i32 %port.07.i, 1
  %14 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_phys_ports.i, align 4
  %conv.i16 = zext i8 %15 to i32
  %cmp.i17 = icmp ult i32 %inc.i15, %conv.i16
  br i1 %cmp.i17, label %for.body.i18.for.body.i18_crit_edge, label %for.body.i18.mscc_ocelot_teardown_devlink_ports.exit_crit_edge

for.body.i18.mscc_ocelot_teardown_devlink_ports.exit_crit_edge: ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %mscc_ocelot_teardown_devlink_ports.exit

for.body.i18.for.body.i18_crit_edge:              ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i18

mscc_ocelot_teardown_devlink_ports.exit:          ; preds = %for.body.i18.mscc_ocelot_teardown_devlink_ports.exit_crit_edge, %mscc_ocelot_release_ports.exit.mscc_ocelot_teardown_devlink_ports.exit_crit_edge, %if.end.mscc_ocelot_teardown_devlink_ports.exit_crit_edge
  tail call void @ocelot_deinit(ptr noundef %1) #9
  %call2 = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @ocelot_switchdev_blocking_nb) #9
  %call3 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @ocelot_switchdev_nb) #9
  %call4 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ocelot_netdevice_nb) #9
  %16 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devlink, align 4
  tail call void @devlink_free(ptr noundef %17) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocelot_regmap_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_fdma_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_xtr_irq_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call21 = call i32 @__ocelot_read_ix(ptr noundef %arg, i32 noundef 33554436, i32 noundef 0) #9
  %and22 = and i32 %call21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not23 = icmp eq i32 %and22, 0
  br i1 %tobool.not23, label %entry.if.then8_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #9
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !99
  %call1 = call i32 @ocelot_xtr_poll_frame(ptr noundef %arg, i32 noundef 0, ptr noundef nonnull %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %out

if.end:                                           ; preds = %while.body
  %1 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %5 = getelementptr inbounds %struct.anon.51, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 2
  %8 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %9, %4
  store i32 %add, ptr %rx_bytes, align 8
  %10 = load ptr, ptr %5, align 8
  %stats3 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36
  %11 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stats3, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %stats3, align 8
  %call4 = call zeroext i1 @skb_defer_rx_timestamp(ptr noundef %2) #9
  br i1 %call4, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  %call6 = call i32 @netif_rx(ptr noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #9
  %call = call i32 @__ocelot_read_ix(ptr noundef %arg, i32 noundef 33554436, i32 noundef 0) #9
  %and = and i32 %call, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.cleanup10_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.cleanup10_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup10

out:                                              ; preds = %while.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %phi.cmp = icmp slt i32 %call1, 0
  br i1 %phi.cmp, label %out.if.then8_crit_edge, label %out.cleanup10_crit_edge

out.cleanup10_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup10

out.if.then8_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %out.if.then8_crit_edge, %entry.if.then8_crit_edge
  call void @ocelot_drain_cpu_queue(ptr noundef %arg, i32 noundef 0) #9
  br label %cleanup10

cleanup10:                                        ; preds = %if.then8, %out.cleanup10_crit_edge, %cleanup.cleanup10_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_ptp_rdy_irq_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ocelot_get_txtstamp(ptr noundef %arg) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_get_child_count(ptr noundef %np) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #9
  %cmp.not5 = icmp eq ptr %call, null
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %num.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.06 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %inc = add i32 %num.07, 1
  %call1 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06) #9
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i32 %num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mscc_ocelot_init_ports(ptr noundef %pdev, ptr noundef %ports) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %res_name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !99
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %4 to i32
  %5 = shl nuw nsw i32 %conv, 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %5, i32 noundef 3520) #9
  %ports2 = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %ports2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %ports2, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup87_crit_edge, label %devm_kcalloc.exit150

entry.cleanup87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup87

devm_kcalloc.exit150:                             ; preds = %entry
  %9 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_phys_ports, align 4
  %conv6 = zext i8 %10 to i32
  %11 = mul nuw nsw i32 %conv6, 356
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call5.i.i147 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef %11, i32 noundef 3520) #9
  %devlink_ports = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %devlink_ports to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i147, ptr %devlink_ports, align 4
  %tobool9.not = icmp eq ptr %call5.i.i147, null
  br i1 %tobool9.not, label %devm_kcalloc.exit150.cleanup87_crit_edge, label %if.end11

devm_kcalloc.exit150.cleanup87_crit_edge:         ; preds = %devm_kcalloc.exit150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup87

if.end11:                                         ; preds = %devm_kcalloc.exit150
  %call12 = tail call ptr @of_get_next_available_child(ptr noundef %ports, ptr noundef null) #9
  %cmp.not172 = icmp eq ptr %call12, null
  br i1 %cmp.not172, label %if.end11.for.cond55.preheader_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.cond55.preheader_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.inc.for.cond55.preheader_crit_edge, %if.end11.for.cond55.preheader_crit_edge
  %devlink_ports_registered.0.lcssa = phi i32 [ 0, %if.end11.for.cond55.preheader_crit_edge ], [ %devlink_ports_registered.1.ph, %for.inc.for.cond55.preheader_crit_edge ]
  %15 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp58180.not = icmp eq i8 %16, 0
  br i1 %cmp58180.not, label %for.cond55.preheader.cleanup87_crit_edge, label %for.cond55.preheader.for.body60_crit_edge

for.cond55.preheader.for.body60_crit_edge:        ; preds = %for.cond55.preheader
  br label %for.body60

for.cond55.preheader.cleanup87_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup87

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %portnp.0175 = phi ptr [ %call54, %for.inc.for.body_crit_edge ], [ %call12, %if.end11.for.body_crit_edge ]
  %devlink_ports_registered.0173 = phi i32 [ %devlink_ports_registered.1.ph, %for.inc.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res_name) #9
  %17 = ptrtoint ptr %res_name to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %res_name, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %portnp.0175, ptr noundef nonnull @.str.32, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18 = icmp slt i32 %19, 0
  br i1 %cmp18, label %if.end17.do.end_crit_edge, label %lor.lhs.false

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end17
  %20 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_phys_ports, align 4
  %conv21 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv21)
  %cmp22.not = icmp ult i32 %19, %conv21
  br i1 %cmp22.not, label %if.end28, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end17.do.end_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_phys_ports, align 4
  %conv27 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef %19, i32 noundef %conv27) #12
  br label %for.inc

if.end28:                                         ; preds = %lor.lhs.false
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %res_name, i32 noundef 8, ptr noundef nonnull @.str.35, i32 noundef %19)
  %call31 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull %res_name) #9
  %call32 = call ptr @ocelot_regmap_init(ptr noundef %1, ptr noundef %call31) #9
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call37 = call i32 @ocelot_port_devlink_init(ptr noundef %1, i32 noundef %19, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @ocelot_probe_port(ptr noundef %1, i32 noundef %19, ptr noundef %call32, ptr noundef nonnull %portnp.0175) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void @ocelot_port_devlink_teardown(ptr noundef %1, i32 noundef %19) #9
  br label %for.inc

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %19
  %or = or i32 %shl, %devlink_ports_registered.0173
  %27 = ptrtoint ptr %ports2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ports2, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %19
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %devlink_ports to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devlink_ports, align 4
  %arrayidx47 = getelementptr %struct.devlink_port, ptr %32, i32 %19
  %dev48 = getelementptr inbounds %struct.ocelot_port_private, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev48, align 4
  call void @devlink_port_type_eth_set(ptr noundef %arrayidx47, ptr noundef %34) #9
  br label %for.inc

cleanup:                                          ; preds = %if.end36.cleanup_crit_edge, %if.then34
  %err.1 = phi i32 [ %26, %if.then34 ], [ %call37, %if.end36.cleanup_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %portnp.0175) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res_name) #9
  br label %out_teardown

for.inc:                                          ; preds = %if.end44, %if.then43, %do.end, %for.body.for.inc_crit_edge
  %devlink_ports_registered.1.ph = phi i32 [ %devlink_ports_registered.0173, %for.body.for.inc_crit_edge ], [ %or, %if.end44 ], [ %devlink_ports_registered.0173, %if.then43 ], [ %devlink_ports_registered.0173, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res_name) #9
  %call54 = call ptr @of_get_next_available_child(ptr noundef %ports, ptr noundef nonnull %portnp.0175) #9
  %cmp.not = icmp eq ptr %call54, null
  br i1 %cmp.not, label %for.inc.for.cond55.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond55.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond55.preheader

for.body60:                                       ; preds = %for.inc71.for.body60_crit_edge, %for.cond55.preheader.for.body60_crit_edge
  %port.0182 = phi i32 [ %inc, %for.inc71.for.body60_crit_edge ], [ 0, %for.cond55.preheader.for.body60_crit_edge ]
  %devlink_ports_registered.2181 = phi i32 [ %devlink_ports_registered.3, %for.inc71.for.body60_crit_edge ], [ %devlink_ports_registered.0.lcssa, %for.cond55.preheader.for.body60_crit_edge ]
  %shl61 = shl nuw i32 1, %port.0182
  %and = and i32 %shl61, %devlink_ports_registered.2181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %if.end64, label %for.body60.for.inc71_crit_edge

for.body60.for.inc71_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc71

if.end64:                                         ; preds = %for.body60
  %call65 = call i32 @ocelot_port_devlink_init(ptr noundef %1, i32 noundef %port.0182, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.out_teardown_crit_edge

if.end64.out_teardown_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_teardown

if.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %or70 = or i32 %shl61, %devlink_ports_registered.2181
  br label %for.inc71

for.inc71:                                        ; preds = %if.end68, %for.body60.for.inc71_crit_edge
  %devlink_ports_registered.3 = phi i32 [ %devlink_ports_registered.2181, %for.body60.for.inc71_crit_edge ], [ %or70, %if.end68 ]
  %inc = add nuw nsw i32 %port.0182, 1
  %35 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_phys_ports, align 4
  %conv57 = zext i8 %36 to i32
  %cmp58 = icmp ult i32 %inc, %conv57
  br i1 %cmp58, label %for.inc71.for.body60_crit_edge, label %for.inc71.cleanup87_crit_edge

for.inc71.cleanup87_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup87

for.inc71.for.body60_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60

out_teardown:                                     ; preds = %if.end64.out_teardown_crit_edge, %cleanup
  %devlink_ports_registered.4 = phi i32 [ %devlink_ports_registered.0173, %cleanup ], [ %devlink_ports_registered.2181, %if.end64.out_teardown_crit_edge ]
  %err.2 = phi i32 [ %err.1, %cleanup ], [ %call65, %if.end64.out_teardown_crit_edge ]
  %37 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp9.not.i = icmp eq i8 %38, 0
  br i1 %cmp9.not.i, label %out_teardown.cleanup87_crit_edge, label %out_teardown.for.body.i_crit_edge

out_teardown.for.body.i_crit_edge:                ; preds = %out_teardown
  br label %for.body.i

out_teardown.cleanup87_crit_edge:                 ; preds = %out_teardown
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup87

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %out_teardown.for.body.i_crit_edge
  %port.010.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %out_teardown.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %ports2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ports2, align 4
  %arrayidx.i = getelementptr ptr, ptr %40, i32 %port.010.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ocelot_deinit_port(ptr noundef %1, i32 noundef %port.010.i) #9
  call void @ocelot_release_port(ptr noundef nonnull %42) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %port.010.i, 1
  %43 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_phys_ports, align 4
  %conv.i = zext i8 %44 to i32
  %cmp.i151 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i151, label %cleanup.i.for.body.i_crit_edge, label %mscc_ocelot_release_ports.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mscc_ocelot_release_ports.exit:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp76184.not = icmp eq i8 %44, 0
  br i1 %cmp76184.not, label %mscc_ocelot_release_ports.exit.cleanup87_crit_edge, label %mscc_ocelot_release_ports.exit.for.body78_crit_edge

mscc_ocelot_release_ports.exit.for.body78_crit_edge: ; preds = %mscc_ocelot_release_ports.exit
  br label %for.body78

mscc_ocelot_release_ports.exit.cleanup87_crit_edge: ; preds = %mscc_ocelot_release_ports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup87

for.body78:                                       ; preds = %for.inc84.for.body78_crit_edge, %mscc_ocelot_release_ports.exit.for.body78_crit_edge
  %port.1185 = phi i32 [ %inc85, %for.inc84.for.body78_crit_edge ], [ 0, %mscc_ocelot_release_ports.exit.for.body78_crit_edge ]
  %shl79 = shl nuw i32 1, %port.1185
  %and80 = and i32 %shl79, %devlink_ports_registered.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %for.body78.for.inc84_crit_edge, label %if.then82

for.body78.for.inc84_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc84

if.then82:                                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #11
  call void @ocelot_port_devlink_teardown(ptr noundef %1, i32 noundef %port.1185) #9
  br label %for.inc84

for.inc84:                                        ; preds = %if.then82, %for.body78.for.inc84_crit_edge
  %inc85 = add nuw nsw i32 %port.1185, 1
  %45 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_phys_ports, align 4
  %conv75 = zext i8 %46 to i32
  %cmp76 = icmp ult i32 %inc85, %conv75
  br i1 %cmp76, label %for.inc84.for.body78_crit_edge, label %for.inc84.cleanup87_crit_edge

for.inc84.cleanup87_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup87

for.inc84.for.body78_crit_edge:                   ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78

cleanup87:                                        ; preds = %for.inc84.cleanup87_crit_edge, %mscc_ocelot_release_ports.exit.cleanup87_crit_edge, %out_teardown.cleanup87_crit_edge, %for.inc71.cleanup87_crit_edge, %for.cond55.preheader.cleanup87_crit_edge, %devm_kcalloc.exit150.cleanup87_crit_edge, %entry.cleanup87_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup87_crit_edge ], [ -12, %devm_kcalloc.exit150.cleanup87_crit_edge ], [ %err.2, %mscc_ocelot_release_ports.exit.cleanup87_crit_edge ], [ 0, %for.cond55.preheader.cleanup87_crit_edge ], [ %err.2, %out_teardown.cleanup87_crit_edge ], [ %err.2, %for.inc84.cleanup87_crit_edge ], [ 0, %for.inc71.cleanup87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_fdma_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_devlink_sb_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_init_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mscc_ocelot_release_ports(ptr noundef %ocelot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 17
  %0 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp9.not = icmp eq i8 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %port.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %port.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ocelot_deinit_port(ptr noundef %ocelot, i32 noundef %port.010) #9
  tail call void @ocelot_release_port(ptr noundef nonnull %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %port.010, 1
  %6 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_regfields_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocelot_port_to_netdev(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_netdev_to_port(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_reset(ptr nocapture noundef readonly %ocelot) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !99
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 53
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx2 = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 52
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  %call.i21 = tail call i32 @regmap_field_update_bits_base(ptr noundef %4, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %retries.0 = phi i32 [ 100, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  call void @msleep(i32 noundef 1) #9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call6 = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %val) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %retries.0, -1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %call.i22 = call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx13 = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 51
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  %call.i23 = call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ocelot_wm_enc(i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %value)
  %cmp = icmp ugt i16 %value, 4095
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !100

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 316, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %value)
  %cmp21 = icmp ugt i16 %value, 255
  %0 = lshr i16 %value, 4
  %1 = or i16 %0, 256
  %retval.0 = select i1 %cmp21, i16 %1, i16 %value
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ocelot_wm_dec(i16 noundef zeroext %wm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %wm, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %and2 = shl i16 %wm, 4
  %mul = and i16 %and2, 4080
  %retval.0 = select i1 %tobool.not, i16 %wm, i16 %mul
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ocelot_wm_stat(i32 noundef %val, ptr nocapture noundef writeonly %inuse, ptr nocapture noundef writeonly %maxuse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %val, 12
  %shr = and i32 %and, 4095
  %0 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr, ptr %inuse, align 4
  %and1 = and i32 %val, 4095
  %1 = ptrtoint ptr %maxuse to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and1, ptr %maxuse, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocelot_read_ix(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_xtr_poll_frame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_defer_rx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_drain_cpu_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_get_txtstamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_devlink_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_probe_port(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_devlink_teardown(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_eth_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_adjfine(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_adjtime(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_gettime64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_settime64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_enable(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_verify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_deinit_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_release_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_fdma_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_deinit_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_devlink_sb_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_mscc_ocelot__497_724_mscc_ocelot_driver_init6, !1, !"__initcall__kmod_mscc_ocelot__497_724_mscc_ocelot_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 724, i32 1}
!2 = !{ptr @__exitcall_mscc_ocelot_driver_exit, !1, !"__exitcall_mscc_ocelot_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description498, !4, !"__UNIQUE_ID_description498", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 726, i32 1}
!5 = !{ptr @__UNIQUE_ID_author499, !6, !"__UNIQUE_ID_author499", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 727, i32 1}
!7 = !{ptr @__UNIQUE_ID_file500, !8, !"__UNIQUE_ID_file500", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 728, i32 1}
!9 = !{ptr @__UNIQUE_ID_license501, !8, !"__UNIQUE_ID_license501", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 719, i32 11}
!12 = !{ptr @mscc_ocelot_driver, !13, !"mscc_ocelot_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 715, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 545, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 546, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 547, i32 11}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 548, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 549, i32 9}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 550, i32 9}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 551, i32 9}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 552, i32 9}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 553, i32 10}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 554, i32 11}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 593, i32 44}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 595, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mscc_ocelot_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @mscc_ocelot_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 606, i32 42}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 614, i32 6}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 618, i32 46}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 622, i32 21}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 631, i32 35}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 633, i32 3}
!56 = !{ptr @mscc_ocelot_probe._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mscc_ocelot_probe._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 666, i32 4}
!60 = !{ptr @mscc_ocelot_probe._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mscc_ocelot_probe._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 679, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mscc_ocelot_probe._entry.28, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mscc_ocelot_probe._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ocelot_regmap, !68, !"ocelot_regmap", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 28, i32 19}
!69 = !{ptr @ocelot_stats_layout, !70, !"ocelot_stats_layout", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 99, i32 40}
!71 = !{ptr @ocelot_regfields, !72, !"ocelot_regfields", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 41, i32 31}
!73 = !{ptr @ocelot_ops, !74, !"ocelot_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 338, i32 32}
!75 = !{ptr @vsc7514_vcap_props, !76, !"vsc7514_vcap_props", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 347, i32 26}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 460, i32 36}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 465, i32 4}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mscc_ocelot_init_ports._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mscc_ocelot_init_ports._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 471, i32 40}
!86 = !{ptr @ocelot_ptp_clock_info, !87, !"ocelot_ptp_clock_info", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 390, i32 30}
!88 = !{ptr @mscc_ocelot_match, !89, !"mscc_ocelot_match", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mscc/ocelot_vsc7514.c", i32 281, i32 34}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 1, i32 2000}
