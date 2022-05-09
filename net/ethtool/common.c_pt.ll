; ModuleID = '/llk/IR_all_yes/net/ethtool/common.c_pt.bc'
source_filename = "../net/ethtool/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ethtool_get_phc_vclocks\22, \22a\22\09"
module asm "\09.weak\09__crc_ethtool_get_phc_vclocks\09\09\09\09"
module asm "\09.long\09__crc_ethtool_get_phc_vclocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_get_phc_vclocks:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_get_phc_vclocks\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_get_phc_vclocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ethtool_set_ethtool_phy_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ethtool_set_ethtool_phy_ops\09\09\09\09"
module asm "\09.long\09__crc_ethtool_set_ethtool_phy_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_set_ethtool_phy_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_set_ethtool_phy_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_set_ethtool_phy_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ethtool_params_from_link_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_ethtool_params_from_link_mode\09\09\09\09"
module asm "\09.long\09__crc_ethtool_params_from_link_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_params_from_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_params_from_link_mode\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_params_from_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.link_mode_info = type { i32, i8, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }

@netdev_features_strings = dso_local constant { [64 x [32 x i8]], [512 x i8] } { [64 x [32 x i8]] [[32 x i8] c"tx-scatter-gather\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-checksum-ipv4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [32 x i8] c"tx-checksum-ip-generic\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-checksum-ipv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"highdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-scatter-gather-fraglist\00\00\00\00\00\00", [32 x i8] c"tx-vlan-hw-insert\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-vlan-hw-parse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-vlan-filter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"vlan-challenged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-generic-segmentation\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-lockless\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"netns-local\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-gro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-lro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-tcp-segmentation\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-gso-robust\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-tcp-ecn-segmentation\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-tcp-mangleid-segmentation\00\00\00\00", [32 x i8] c"tx-tcp6-segmentation\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-fcoe-segmentation\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-gre-segmentation\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-gre-csum-segmentation\00\00\00\00\00\00\00\00", [32 x i8] c"tx-ipxip4-segmentation\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-ipxip6-segmentation\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-udp_tnl-segmentation\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-udp_tnl-csum-segmentation\00\00\00\00", [32 x i8] c"tx-gso-partial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-tunnel-remcsum-segmentation\00\00", [32 x i8] c"tx-sctp-segmentation\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-esp-segmentation\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [32 x i8] c"tx-udp-segmentation\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-gso-list\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-checksum-fcoe-crc\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-checksum-sctp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"fcoe-mtu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-ntuple-filter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-hashing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-checksum\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-nocache-copy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"loopback\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-all\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-vlan-stag-hw-insert\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-vlan-stag-hw-parse\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-vlan-stag-filter\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"l2-fwd-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hw-tc-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"esp-hw-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"esp-tx-csum-hw-offload\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-udp_tunnel-port-offload\00\00\00\00\00\00", [32 x i8] c"tls-hw-tx-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tls-hw-rx-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-gro-hw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tls-hw-record\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-gro-list\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"macsec-hw-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-udp-gro-forwarding\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hsr-tag-ins-offload\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hsr-tag-rm-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hsr-fwd-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hsr-dup-offload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [512 x i8] zeroinitializer }, align 32
@rss_hash_func_strings = dso_local constant { [3 x [32 x i8]], [32 x i8] } { [3 x [32 x i8]] [[32 x i8] c"toeplitz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"xor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@tunable_strings = dso_local constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Unspec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx-copybreak\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-copybreak\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pfc-prevention-tout\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx-copybreak-buf-size\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@phy_tunable_strings = dso_local constant { [4 x [32 x i8]], [32 x i8] } { [4 x [32 x i8]] [[32 x i8] c"Unspec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"phy-downshift\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"phy-fast-link-down\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"phy-energy-detect-power-down\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@link_mode_names = dso_local constant { [92 x [32 x i8]], [736 x i8] } { [92 x [32 x i8]] [[32 x i8] c"10baseT/Half\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseT/Half\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseT/Half\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Autoneg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"AUI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MII\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FIBRE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"BNC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Asym_Pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"2500baseX/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Backplane\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseKX/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseKX4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseKR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseR_FEC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"20000baseMLD2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"20000baseKR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"40000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"40000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"40000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"40000baseLR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"56000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"56000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"56000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"56000baseLR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"25000baseCR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"25000baseKR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"25000baseSR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseCR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseKR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseLR4_ER4/Full\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseSR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseX/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseCR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseSR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseLR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseLRM/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"10000baseER/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"2500baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"5000baseT/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"None\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"BASER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseKR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseSR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseCR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseLR_ER_FR/Full\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"50000baseDR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseKR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseSR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseCR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseLR2_ER2_FR2/Full\00\00\00\00\00\00", [32 x i8] c"100000baseDR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseLR4_ER4_FR4/Full\00\00\00\00\00\00", [32 x i8] c"200000baseDR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseT1/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"1000baseT1/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseKR8/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseSR8/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseLR8_ER8_FR8/Full\00\00\00\00\00\00", [32 x i8] c"400000baseDR8/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseCR8/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"LLRS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseKR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseSR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseLR_ER_FR/Full\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseCR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100000baseDR/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseKR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseSR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseLR2_ER2_FR2/Full\00\00\00\00\00\00", [32 x i8] c"200000baseDR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"200000baseCR2/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseKR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseSR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseLR4_ER4_FR4/Full\00\00\00\00\00\00", [32 x i8] c"400000baseDR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"400000baseCR4/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseFX/Half\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"100baseFX/Full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [736 x i8] zeroinitializer }, align 32
@link_mode_params = dso_local constant { [92 x %struct.link_mode_info], [160 x i8] } { [92 x %struct.link_mode_info] [%struct.link_mode_info { i32 10, i8 1, i8 0 }, %struct.link_mode_info { i32 10, i8 1, i8 1 }, %struct.link_mode_info { i32 100, i8 1, i8 0 }, %struct.link_mode_info { i32 100, i8 1, i8 1 }, %struct.link_mode_info { i32 1000, i8 1, i8 0 }, %struct.link_mode_info { i32 1000, i8 1, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 2500, i8 1, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 1000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 4, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 20000, i8 2, i8 1 }, %struct.link_mode_info { i32 20000, i8 2, i8 1 }, %struct.link_mode_info { i32 40000, i8 4, i8 1 }, %struct.link_mode_info { i32 40000, i8 4, i8 1 }, %struct.link_mode_info { i32 40000, i8 4, i8 1 }, %struct.link_mode_info { i32 40000, i8 4, i8 1 }, %struct.link_mode_info { i32 56000, i8 4, i8 1 }, %struct.link_mode_info { i32 56000, i8 4, i8 1 }, %struct.link_mode_info { i32 56000, i8 4, i8 1 }, %struct.link_mode_info { i32 56000, i8 4, i8 1 }, %struct.link_mode_info { i32 25000, i8 1, i8 1 }, %struct.link_mode_info { i32 25000, i8 1, i8 1 }, %struct.link_mode_info { i32 25000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 2, i8 1 }, %struct.link_mode_info { i32 50000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 4, i8 1 }, %struct.link_mode_info { i32 100000, i8 4, i8 1 }, %struct.link_mode_info { i32 100000, i8 4, i8 1 }, %struct.link_mode_info { i32 100000, i8 4, i8 1 }, %struct.link_mode_info { i32 50000, i8 2, i8 1 }, %struct.link_mode_info { i32 1000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 10000, i8 1, i8 1 }, %struct.link_mode_info { i32 2500, i8 1, i8 1 }, %struct.link_mode_info { i32 5000, i8 1, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 50000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 100000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 200000, i8 4, i8 1 }, %struct.link_mode_info { i32 100, i8 1, i8 1 }, %struct.link_mode_info { i32 1000, i8 1, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 400000, i8 8, i8 1 }, %struct.link_mode_info { i32 -1, i8 0, i8 -1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 100000, i8 1, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 200000, i8 2, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 400000, i8 4, i8 1 }, %struct.link_mode_info { i32 100, i8 1, i8 0 }, %struct.link_mode_info { i32 100, i8 1, i8 1 }], [160 x i8] zeroinitializer }, align 32
@netif_msg_class_names = dso_local constant { [15 x [32 x i8]], [96 x i8] } { [15 x [32 x i8]] [[32 x i8] c"drv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"probe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"link\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ifdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ifup\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_queued\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"intr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_done\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pktdata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"wol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [96 x i8] zeroinitializer }, align 32
@wol_mode_names = dso_local constant { [8 x [32 x i8]], [64 x i8] } { [8 x [32 x i8]] [[32 x i8] c"phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ucast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"arp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"magic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"magicsecure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"filter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [64 x i8] zeroinitializer }, align 32
@sof_timestamping_names = dso_local constant { [16 x [32 x i8]], [128 x i8] } { [16 x [32 x i8]] [[32 x i8] c"hardware-transmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"software-transmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hardware-receive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"software-receive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"software-system-clock\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hardware-legacy-clock\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"hardware-raw-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"sched-transmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ack-transmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-cmsg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-tsonly\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-pktinfo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"option-tx-swhw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bind-phc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [128 x i8] zeroinitializer }, align 32
@ts_tx_type_names = dso_local constant { [4 x [32 x i8]], [32 x i8] } { [4 x [32 x i8]] [[32 x i8] c"off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"on\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"onestep-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"onestep-p2p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@ts_rx_filter_names = dso_local constant { [16 x [32 x i8]], [128 x i8] } { [16 x [32 x i8]] [[32 x i8] c"none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"all\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"some\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv1-l4-event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv1-l4-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv1-l4-delay-req\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l4-event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l4-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l4-delay-req\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l2-event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l2-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-l2-delay-req\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ptpv2-delay-req\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ntp-all\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [128 x i8] zeroinitializer }, align 32
@udp_tunnel_type_names = dso_local constant { [3 x [32 x i8]], [32 x i8] } { [3 x [32 x i8]] [[32 x i8] c"vxlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"geneve\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"vxlan-gpe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ethtool/common.c\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_ethtool_get_phc_vclocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_get_phc_vclocks = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_get_phc_vclocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_get_phc_vclocks to i32), ptr @__kstrtab_ethtool_get_phc_vclocks, ptr @__kstrtabns_ethtool_get_phc_vclocks }, section "___ksymtab+ethtool_get_phc_vclocks", align 4
@ethtool_phy_ops = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ethtool_set_ethtool_phy_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_set_ethtool_phy_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_set_ethtool_phy_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_set_ethtool_phy_ops to i32), ptr @__kstrtab_ethtool_set_ethtool_phy_ops, ptr @__kstrtabns_ethtool_set_ethtool_phy_ops }, section "___ksymtab_gpl+ethtool_set_ethtool_phy_ops", align 4
@ethtool_params_from_link_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ethtool_params_from_link_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_params_from_link_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_params_from_link_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_params_from_link_mode to i32), ptr @__kstrtab_ethtool_params_from_link_mode, ptr @__kstrtabns_ethtool_params_from_link_mode }, section "___ksymtab_gpl+ethtool_params_from_link_mode", align 4
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"netdev_features_strings\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 11, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"rss_hash_func_strings\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 80, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"tunable_strings\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 87, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"phy_tunable_strings\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 96, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"link_mode_names\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 111, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"link_mode_params\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 255, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"netif_msg_class_names\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 355, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"wol_mode_names\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 374, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"sof_timestamping_names\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 386, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"ts_tx_type_names\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 406, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"ts_rx_filter_names\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 414, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"udp_tunnel_type_names\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 434, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 531, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"ethtool_phy_ops\00", align 1
@___asan_gen_.41 = private constant [24 x i8] c"../net/ethtool/common.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 572, i32 31 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_ethtool_get_phc_vclocks, ptr @__ksymtab_ethtool_params_from_link_mode, ptr @__ksymtab_ethtool_set_ethtool_phy_ops, ptr @netdev_features_strings, ptr @rss_hash_func_strings, ptr @tunable_strings, ptr @phy_tunable_strings, ptr @link_mode_names, ptr @link_mode_params, ptr @netif_msg_class_names, ptr @wol_mode_names, ptr @sof_timestamping_names, ptr @ts_tx_type_names, ptr @ts_rx_filter_names, ptr @udp_tunnel_type_names, ptr @.str, ptr @ethtool_phy_ops], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_features_strings to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rss_hash_func_strings to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunable_strings to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_tunable_strings to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_mode_names to i32), i32 2944, i32 3680, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_mode_params to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netif_msg_class_names to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wol_mode_names to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_timestamping_names to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_tx_type_names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_rx_filter_names to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_tunnel_type_names to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_phy_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @convert_legacy_settings_to_link_ksettings(ptr noundef %link_ksettings, ptr nocapture noundef readonly %legacy_settings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %link_ksettings, i32 0, i32 88)
  %maxtxpkt = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 10
  %1 = ptrtoint ptr %maxtxpkt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %maxtxpkt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %maxrxpkt = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 11
  %3 = ptrtoint ptr %maxrxpkt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %maxrxpkt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %retval1.0.off0 = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.if.end_crit_edge ]
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1
  %supported3 = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 1
  %5 = ptrtoint ptr %supported3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %supported3, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %6) #5
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  %advertising6 = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 2
  %7 = ptrtoint ptr %advertising6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %advertising6, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising, i32 noundef %8) #5
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 2
  %lp_advertising9 = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 15
  %9 = ptrtoint ptr %lp_advertising9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lp_advertising9, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %lp_advertising, i32 noundef %10) #5
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 12
  %11 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %speed_hi.i, align 4
  %conv.i = zext i16 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 3
  %13 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %speed.i, align 4
  %conv1.i = zext i16 %14 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 4
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %duplex, align 2
  %duplex11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %18 = ptrtoint ptr %duplex11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %duplex11, align 4
  %port = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 5
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port, align 1
  %port13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %21 = ptrtoint ptr %port13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %port13, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 6
  %22 = ptrtoint ptr %phy_address to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %phy_address, align 4
  %phy_address15 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 4
  %24 = ptrtoint ptr %phy_address15 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %phy_address15, align 2
  %autoneg = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 8
  %25 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %autoneg, align 2
  %autoneg17 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %27 = ptrtoint ptr %autoneg17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %autoneg17, align 1
  %mdio_support = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 9
  %28 = ptrtoint ptr %mdio_support to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mdio_support, align 1
  %mdio_support19 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 6
  %30 = ptrtoint ptr %mdio_support19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %mdio_support19, align 4
  %eth_tp_mdix = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 13
  %31 = ptrtoint ptr %eth_tp_mdix to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %eth_tp_mdix, align 2
  %eth_tp_mdix21 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 7
  %33 = ptrtoint ptr %eth_tp_mdix21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %eth_tp_mdix21, align 1
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_cmd, ptr %legacy_settings, i32 0, i32 14
  %34 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %eth_tp_mdix_ctrl, align 1
  %eth_tp_mdix_ctrl23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 8
  %36 = ptrtoint ptr %eth_tp_mdix_ctrl23 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %eth_tp_mdix_ctrl23, align 2
  ret i1 %retval1.0.off0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ethtool_get_link(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_ops, align 16
  %get_link = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_link, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.return_crit_edge, label %land.rhs

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 %3(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4 = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %return

return:                                           ; preds = %land.rhs, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethtool_get_max_rxfh_channel(ptr noundef %dev, ptr nocapture noundef writeonly %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_ops, align 16
  %get_rxfh_indir_size = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %get_rxfh_indir_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_rxfh_indir_size, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_rxfh = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %get_rxfh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_rxfh, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 %3(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #5
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end6.cleanup_crit_edge, label %if.end7.i.i, !prof !45

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end6
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 1052096) #8
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end10

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ethtool_ops, align 16
  %get_rxfh12 = getelementptr inbounds %struct.ethtool_ops, ptr %10, i32 0, i32 38
  %11 = ptrtoint ptr %get_rxfh12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_rxfh12, align 4
  %call13 = tail call i32 %12(ptr noundef %dev, ptr noundef nonnull %call8.i.i, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.while.body_crit_edge, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end10.while.body_crit_edge
  %current_max.047 = phi i32 [ %15, %while.body.while.body_crit_edge ], [ 0, %if.end10.while.body_crit_edge ]
  %dev_size.046 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %call, %if.end10.while.body_crit_edge ]
  %dec = add i32 %dev_size.046, -1
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %dec
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %current_max.047, i32 %14)
  %tobool17.not = icmp eq i32 %dec, 0
  br i1 %tobool17.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max, align 4
  br label %out

out:                                              ; preds = %while.end, %if.end10.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %out ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethtool_check_ops(ptr nocapture noundef readonly %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %set_coalesce = getelementptr inbounds %struct.ethtool_ops, ptr %ops, i32 0, i32 17
  %0 = ptrtoint ptr %set_coalesce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_coalesce, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %land.end

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

land.end:                                         ; preds = %entry
  %supported_coalesce_params = getelementptr inbounds %struct.ethtool_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %supported_coalesce_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_coalesce_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %4, label %land.end.if.end.thread_crit_edge, !prof !45

land.end.if.end.thread_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

4:                                                ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 531, i32 noundef 9, ptr noundef null) #5
  br label %if.end.thread

if.end.thread:                                    ; preds = %4, %land.end.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %5 = phi i32 [ -22, %4 ], [ 0, %land.end.if.end.thread_crit_edge ], [ 0, %entry.if.end.thread_crit_edge ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ethtool_get_ts_info(ptr noundef %dev, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_ops, align 16
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 16
  %4 = getelementptr inbounds i8, ptr %info, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65, ptr %info, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %mii_ts.i = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 37
  %7 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mii_ts.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %phy_has_tsinfo.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

phy_has_tsinfo.exit:                              ; preds = %land.lhs.true.i
  %ts_info.i = getelementptr inbounds %struct.mii_timestamper, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ts_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ts_info.i, align 4
  %tobool3.i.not = icmp eq ptr %10, null
  br i1 %tobool3.i.not, label %phy_has_tsinfo.exit.if.end_crit_edge, label %if.then

phy_has_tsinfo.exit.if.end_crit_edge:             ; preds = %phy_has_tsinfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %phy_has_tsinfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mii_ts.i, align 4
  %ts_info.i18 = getelementptr inbounds %struct.mii_timestamper, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ts_info.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ts_info.i18, align 4
  %call.i = tail call i32 %14(ptr noundef %12, ptr noundef %info) #5
  br label %cleanup

if.end:                                           ; preds = %phy_has_tsinfo.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %get_ts_info = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 47
  %15 = ptrtoint ptr %get_ts_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_ts_info, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 %16(ptr noundef %dev, ptr noundef %info) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %17 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24, ptr %so_timestamping, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %phc_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call5, %if.then3 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethtool_get_phc_vclocks(ptr noundef %dev, ptr noundef %vclock_index) #0 align 64 {
entry:
  %info = alloca %struct.ethtool_ts_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %info) #5
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_ops.i, align 16
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1.i, align 16
  %4 = getelementptr inbounds i8, ptr %info, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65, ptr %info, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %entry
  %mii_ts.i.i = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 37
  %7 = ptrtoint ptr %mii_ts.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mii_ts.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %phy_has_tsinfo.exit.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

phy_has_tsinfo.exit.i:                            ; preds = %land.lhs.true.i.i
  %ts_info.i.i = getelementptr inbounds %struct.mii_timestamper, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ts_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ts_info.i.i, align 4
  %tobool3.i.not.i = icmp eq ptr %10, null
  br i1 %tobool3.i.not.i, label %phy_has_tsinfo.exit.i.if.end.i_crit_edge, label %if.then.i

phy_has_tsinfo.exit.i.if.end.i_crit_edge:         ; preds = %phy_has_tsinfo.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %phy_has_tsinfo.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 %10(ptr noundef nonnull %8, ptr noundef nonnull %info) #5
  br label %__ethtool_get_ts_info.exit

if.end.i:                                         ; preds = %phy_has_tsinfo.exit.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %get_ts_info.i = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 47
  %11 = ptrtoint ptr %get_ts_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_ts_info.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %__ethtool_get_ts_info.exit.thread, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 %12(ptr noundef %dev, ptr noundef nonnull %info) #5
  br label %__ethtool_get_ts_info.exit

__ethtool_get_ts_info.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 24, ptr %4, align 4
  %phc_index.i = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %phc_index.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %phc_index.i, align 4
  br label %if.then

__ethtool_get_ts_info.exit:                       ; preds = %if.then3.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call5.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %__ethtool_get_ts_info.exit.if.then_crit_edge, label %__ethtool_get_ts_info.exit.if.end_crit_edge

__ethtool_get_ts_info.exit.if.end_crit_edge:      ; preds = %__ethtool_get_ts_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

__ethtool_get_ts_info.exit.if.then_crit_edge:     ; preds = %__ethtool_get_ts_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %__ethtool_get_ts_info.exit.if.then_crit_edge, %__ethtool_get_ts_info.exit.thread
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %phc_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phc_index, align 4
  %call1 = call i32 @ptp_get_vclocks_index(i32 noundef %16, ptr noundef %vclock_index) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %__ethtool_get_ts_info.exit.if.end_crit_edge
  %num.0 = phi i32 [ 0, %__ethtool_get_ts_info.exit.if.end_crit_edge ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %info) #5
  ret i32 %num.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_get_vclocks_index(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ethtool_set_ethtool_phy_ops(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #5
  store ptr %ops, ptr @ethtool_phy_ops, align 4
  tail call void @rtnl_unlock() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ethtool_params_from_link_mode(ptr nocapture noundef writeonly %link_ksettings, i32 noundef %link_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %link_mode)
  %cmp = icmp ugt i32 %link_mode, 91
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @ethtool_params_from_link_mode.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !46

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ethtool_params_from_link_mode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [92 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %link_mode
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %speed38 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %2 = ptrtoint ptr %speed38 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %speed38, align 4
  %lanes = getelementptr [92 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %link_mode, i32 1
  %3 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lanes, align 4
  %conv = zext i8 %4 to i32
  %lanes39 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 2
  %5 = ptrtoint ptr %lanes39 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %lanes39, align 4
  %duplex = getelementptr [92 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %link_mode, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex, align 1
  %duplex41 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %8 = ptrtoint ptr %duplex41 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %duplex41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @netdev_features_strings, !1, !"netdev_features_strings", i1 false, i1 false}
!1 = !{!"../net/ethtool/common.c", i32 11, i32 12}
!2 = !{ptr @rss_hash_func_strings, !3, !"rss_hash_func_strings", i1 false, i1 false}
!3 = !{!"../net/ethtool/common.c", i32 80, i32 1}
!4 = !{ptr @tunable_strings, !5, !"tunable_strings", i1 false, i1 false}
!5 = !{!"../net/ethtool/common.c", i32 87, i32 1}
!6 = !{ptr @phy_tunable_strings, !7, !"phy_tunable_strings", i1 false, i1 false}
!7 = !{!"../net/ethtool/common.c", i32 96, i32 1}
!8 = !{ptr @link_mode_names, !9, !"link_mode_names", i1 false, i1 false}
!9 = !{!"../net/ethtool/common.c", i32 111, i32 12}
!10 = !{ptr @link_mode_params, !11, !"link_mode_params", i1 false, i1 false}
!11 = !{!"../net/ethtool/common.c", i32 255, i32 29}
!12 = !{ptr @netif_msg_class_names, !13, !"netif_msg_class_names", i1 false, i1 false}
!13 = !{!"../net/ethtool/common.c", i32 355, i32 12}
!14 = !{ptr @wol_mode_names, !15, !"wol_mode_names", i1 false, i1 false}
!15 = !{!"../net/ethtool/common.c", i32 374, i32 12}
!16 = !{ptr @sof_timestamping_names, !17, !"sof_timestamping_names", i1 false, i1 false}
!17 = !{!"../net/ethtool/common.c", i32 386, i32 12}
!18 = !{ptr @ts_tx_type_names, !19, !"ts_tx_type_names", i1 false, i1 false}
!19 = !{!"../net/ethtool/common.c", i32 406, i32 12}
!20 = !{ptr @ts_rx_filter_names, !21, !"ts_rx_filter_names", i1 false, i1 false}
!21 = !{!"../net/ethtool/common.c", i32 414, i32 12}
!22 = !{ptr @udp_tunnel_type_names, !23, !"udp_tunnel_type_names", i1 false, i1 false}
!23 = !{!"../net/ethtool/common.c", i32 434, i32 12}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ethtool/common.c", i32 531, i32 6}
!26 = !{ptr @__ksymtab_ethtool_get_phc_vclocks, !27, !"__ksymtab_ethtool_get_phc_vclocks", i1 false, i1 false}
!27 = !{!"../net/ethtool/common.c", i32 570, i32 1}
!28 = !{ptr @__ksymtab_ethtool_set_ethtool_phy_ops, !29, !"__ksymtab_ethtool_set_ethtool_phy_ops", i1 false, i1 false}
!29 = !{!"../net/ethtool/common.c", i32 580, i32 1}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/ethtool/common.c", i32 588, i32 6}
!32 = !{ptr @__ksymtab_ethtool_params_from_link_mode, !33, !"__ksymtab_ethtool_params_from_link_mode", i1 false, i1 false}
!33 = !{!"../net/ethtool/common.c", i32 596, i32 1}
!34 = !{ptr @ethtool_phy_ops, !35, !"ethtool_phy_ops", i1 false, i1 false}
!35 = !{!"../net/ethtool/common.c", i32 572, i32 31}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"branch_weights", i32 2000, i32 1}
