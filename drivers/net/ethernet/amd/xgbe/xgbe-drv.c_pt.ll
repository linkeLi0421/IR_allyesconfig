; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-drv.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xgbe_mmc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgbe_ext_stats = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.xgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xgbe_phy = type { %struct.ethtool_link_ksettings, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.152, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.152 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.160, i32 }
%union.anon.160 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xgbe_channel = type { [16 x i8], ptr, i32, ptr, i32, [48 x i8], %struct.napi_struct, i32, i32, i32, %struct.timer_list, ptr, ptr, i32, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.xgbe_version_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_ring = type { %struct.spinlock, %struct.xgbe_packet_data, ptr, i32, i32, ptr, %struct.xgbe_page_alloc, %struct.xgbe_page_alloc, i32, i32, i32, i32, %union.anon.155, [68 x i8] }
%struct.xgbe_packet_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, i64, i32, i32, i32, i32 }
%struct.xgbe_page_alloc = type { ptr, i32, i32, i32 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, i32, i16, i16 }
%struct.xgbe_ring_data = type { ptr, i32, ptr, i32, i32, %struct.xgbe_tx_ring_data, %struct.xgbe_rx_ring_data, i32, i32, %struct.anon.154 }
%struct.xgbe_tx_ring_data = type { i32, i32 }
%struct.xgbe_rx_ring_data = type { %struct.xgbe_buffer_data, %struct.xgbe_buffer_data, i16, i16 }
%struct.xgbe_buffer_data = type { %struct.xgbe_page_alloc, %struct.xgbe_page_alloc, i32, i32, i32 }
%struct.anon.154 = type { ptr, i32, i32 }
%struct.xgbe_ring_desc = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.vlan_ethhdr = type { %union.anon.167, i16, i16, i16 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { [6 x i8], [6 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.137, %union.anon.138 }
%union.anon.137 = type { [16 x i8] }
%union.anon.138 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }

@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug592 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgbe_get_all_hw_features\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-drv.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Hardware features:\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  1GbE support              : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  VLAN hash filter          : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  MDIO interface            : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Wake-up packet support    : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Magic packet support      : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Management counters       : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  ARP offload               : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  IEEE 1588-2008 Timestamp  : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Energy Efficient Ethernet : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  TX checksum offload       : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  RX checksum offload       : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Additional MAC addresses  : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.18, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Timestamp source          : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"internal/external\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"n/a\00", [28 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 0, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  SA/VLAN insertion         : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.24, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  VXLAN/NVGRE support       : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug608 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.25, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  RX fifo size              : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug609 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.26, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  TX fifo size              : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.27, i8 0, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  IEEE 1588 high word       : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug611 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.28, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  DMA width                 : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug612 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.29, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Data Center Bridging      : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.30, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Split header              : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.31, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  TCP Segmentation Offload  : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.32, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Debug memory interface    : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Receive Side Scaling      : %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.34, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Traffic Class count       : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.35, i8 0, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Hash table size           : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.36, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  L3/L4 Filters             : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.37, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  RX queue count            : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.38, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  TX queue count            : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.39, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  RX DMA channel count      : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.40, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  TX DMA channel count      : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.41, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  PPS outputs               : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_get_all_hw_features.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.42, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Auxiliary snapshot inputs : %u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_udp_tunnels = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr @xgbe_vxlan_set_port, ptr @xgbe_vxlan_unset_port, ptr null, ptr null, i32 2, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 1, i32 1 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device is already powered down\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Device is already powered up\0A\00", [34 x i8] zeroinitializer }, align 32
@xgbe_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @xgbe_open, ptr @xgbe_close, ptr @xgbe_xmit, ptr @xgbe_features_check, ptr null, ptr null, ptr @xgbe_set_rx_mode, ptr @xgbe_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @xgbe_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_change_mtu, ptr null, ptr @xgbe_tx_timeout, ptr @xgbe_get_stats64, ptr null, ptr null, ptr null, ptr @xgbe_vlan_rx_add_vid, ptr @xgbe_vlan_rx_kill_vid, ptr @xgbe_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_fix_features, ptr @xgbe_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@xgbe_dump_tx_desc.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 2, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_dump_tx_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUEUED FOR TX\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX BY DEVICE\00", [19 x i8] zeroinitializer }, align 32
@xgbe_dump_rx_desc.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 2, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_dump_rx_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RX_NORMAL_DESC[%d RX BY DEVICE] = %08x:%08x:%08x:%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_print_pkt.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 2, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgbe_print_pkt\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0A************** SKB dump ****************\0A\00", [53 x i8] zeroinitializer }, align 32
@xgbe_print_pkt.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 2, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s packet of %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@xgbe_print_pkt.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.56, i8 2, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dst MAC addr: %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@xgbe_print_pkt.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.57, i8 2, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Src MAC addr: %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@xgbe_print_pkt.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.58, i8 2, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Protocol: %#06hx\0A\00", [46 x i8] zeroinitializer }, align 32
@xgbe_print_pkt.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.59, i8 2, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  %#06x: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@xgbe_print_pkt.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 2, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error in received packet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"packet length exceeds configured MTU\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"channel-%u\00", [21 x i8] zeroinitializer }, align 32
@xgbe_alloc_channels.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ring->lock\00", [20 x i8] zeroinitializer }, align 32
@xgbe_alloc_channels.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xgbe_alloc_channels.__UNIQUE_ID_ddebug580 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgbe_alloc_channels\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: cpu=%u, node=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_alloc_channels.__UNIQUE_ID_ddebug581 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: dma_regs=%p, dma_irq=%d, tx=%p, rx=%p\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@xgbe_init_timers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&pdata->service_timer)\00", [40 x i8] zeroinitializer }, align 32
@xgbe_init_timers.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&channel->tx_timer)\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error setting real tx queue count\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error setting real rx queue count\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error requesting irq %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error requesting ecc irq %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-TxRx-%u\00", [21 x i8] zeroinitializer }, align 32
@xgbe_isr_task.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgbe_isr_task\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA_ISR=%#010x\0A\00", [16 x i8] zeroinitializer }, align 32
@xgbe_isr_task.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.79, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA_CH%u_ISR=%#010x\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_isr_task.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.80, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MAC_ISR=%#010x\0A\00", [16 x i8] zeroinitializer }, align 32
@xgbe_isr_task.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.81, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAC_TSSR=%#010x\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_isr_task.__UNIQUE_ID_ddebug591 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.82, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MAC_MDIOISR=%#010x\0A\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@xgbe_ecc_isr_task.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_ecc_isr_task\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ECC_ISR=%#010x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX fifo\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX fifo\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"descriptor cache\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s ECC detected errors exceed threshold\0A\00", [55 x i8] zeroinitializer }, align 32
@xgbe_ecc_sec.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@xgbe_ecc_sec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 374, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s ECC corrected errors exceed informational threshold\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xgbe_ecc_sec\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgbe_ecc_sec._entry_ptr = internal global ptr @xgbe_ecc_sec._entry, section ".printk_index", align 4
@xgbe_ecc_sec.__print_once.93 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@xgbe_ecc_sec._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 379, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s ECC corrected errors exceed warning threshold\0A\00", [46 x i8] zeroinitializer }, align 32
@xgbe_ecc_sec._entry_ptr.96 = internal global ptr @xgbe_ecc_sec._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-pcs\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-ecc\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-i2c\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device workqueue creation failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy workqueue creation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dma clk_prepare_enable failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ptp clk_prepare_enable failed\0A\00", [33 x i8] zeroinitializer }, align 32
@xgbe_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&pdata->service_work)\00", [56 x i8] zeroinitializer }, align 32
@xgbe_open.__key.107 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&pdata->restart_work)\00", [56 x i8] zeroinitializer }, align 32
@xgbe_open.__key.109 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&pdata->stopdev_work)\00", [56 x i8] zeroinitializer }, align 32
@xgbe_open.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&pdata->tx_tstamp_work)\00", [54 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device stopped\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"empty skb received from stack\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error processing TSO packet\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Tx queue stopped, not enough descriptors available\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx timeout, device restarting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"forcing tx udp tunnel support\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"forcing both tx and rx udp tunnel support\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"forcing tx udp tunnel checksumming on\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"forcing tx udp tunnel checksumming off\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.xgbe_get_all_hw_features = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 128, i32 256], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.134 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 831, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 834, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 836, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 838, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 840, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 842, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 844, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 846, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 848, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 850, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 852, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 854, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 856, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 858, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 862, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 864, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 868, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 870, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 872, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 874, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 876, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 878, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 880, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 882, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 884, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 886, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 888, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 890, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 894, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 896, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 898, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 900, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 902, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 904, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"xgbe_udp_tunnels\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 931, i32 41 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1174, i32 24 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1213, i32 24 }
@___asan_gen_.273 = private unnamed_addr constant [16 x i8] c"xgbe_netdev_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2277, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2749, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2768, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2780, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2782, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2785, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2786, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2787, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2794, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2542, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2604, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 211, i32 50 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 227, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 238, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 244, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 247, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 108, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 696, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 703, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1304, i32 22 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1310, i32 22 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1002, i32 24 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1011, i32 25 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1024, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 493, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 502, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 542, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 554, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 569, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 415, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 419, i32 32 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 424, i32 32 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 430, i32 10 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 398, i32 9 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 372, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 377, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 4963, i32 10 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1823, i32 55 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1826, i32 57 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1829, i32 57 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1834, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1836, i32 22 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1843, i32 22 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1856, i32 24 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1862, i32 24 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1866, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1867, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1868, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1869, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1420, i32 30 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1944, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1961, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 279, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 598, i32 8 }
@___asan_gen_.502 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 174, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2071, i32 22 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2197, i32 10 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2204, i32 10 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2211, i32 11 }
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.517 = private constant [44 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2217, i32 11 }
@___asan_gen_.519 = private unnamed_addr constant [38 x i8] c"switch.table.xgbe_get_all_hw_features\00", align 1
@llvm.compiler.used = appending global [131 x ptr] [ptr @xgbe_ecc_sec._entry, ptr @xgbe_ecc_sec._entry.94, ptr @xgbe_ecc_sec._entry_ptr, ptr @xgbe_ecc_sec._entry_ptr.96, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @xgbe_udp_tunnels, ptr @.str.43, ptr @.str.44, ptr @xgbe_netdev_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @xgbe_alloc_channels.__key, ptr @.str.63, ptr @xgbe_alloc_channels.__key.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @xgbe_init_timers.__key, ptr @.str.69, ptr @xgbe_init_timers.__key.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @xgbe_open.__key, ptr @.str.106, ptr @xgbe_open.__key.107, ptr @.str.108, ptr @xgbe_open.__key.109, ptr @.str.110, ptr @xgbe_open.__key.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @switch.table.xgbe_get_all_hw_features], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_udp_tunnels to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_alloc_channels.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_alloc_channels.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_init_timers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_init_timers.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_ecc_sec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_ecc_sec._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_open.__key.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_open.__key.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_open.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_get_all_hw_features to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_get_all_hw_features(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_feat1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 284
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !307
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 288
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #11, !srcloc !307
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %8 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 292
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !307
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %12 = call ptr @memset(ptr %hw_feat1, i32 0, i32 136)
  %13 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 272
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !307
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %17 = ptrtoint ptr %hw_feat1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hw_feat1, align 4
  %shr = lshr i32 %3, 1
  %and = and i32 %shr, 1
  %gmii = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 1
  %18 = ptrtoint ptr %gmii to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %gmii, align 4
  %shr11 = lshr i32 %3, 4
  %and12 = and i32 %shr11, 1
  %vlhash = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 2
  %19 = ptrtoint ptr %vlhash to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and12, ptr %vlhash, align 4
  %shr13 = lshr i32 %3, 5
  %and14 = and i32 %shr13, 1
  %sma = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 3
  %20 = ptrtoint ptr %sma to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and14, ptr %sma, align 4
  %shr15 = lshr i32 %3, 6
  %and16 = and i32 %shr15, 1
  %rwk = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 4
  %21 = ptrtoint ptr %rwk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and16, ptr %rwk, align 4
  %shr17 = lshr i32 %3, 7
  %and18 = and i32 %shr17, 1
  %mgk = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 5
  %22 = ptrtoint ptr %mgk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and18, ptr %mgk, align 4
  %shr19 = lshr i32 %3, 8
  %and20 = and i32 %shr19, 1
  %mmc = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 6
  %23 = ptrtoint ptr %mmc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and20, ptr %mmc, align 4
  %shr21 = lshr i32 %3, 9
  %and22 = and i32 %shr21, 1
  %aoe = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 7
  %24 = ptrtoint ptr %aoe to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and22, ptr %aoe, align 4
  %shr23 = lshr i32 %3, 12
  %and24 = and i32 %shr23, 1
  %ts = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 8
  %25 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and24, ptr %ts, align 4
  %shr25 = lshr i32 %3, 13
  %and26 = and i32 %shr25, 1
  %eee = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 9
  %26 = ptrtoint ptr %eee to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and26, ptr %eee, align 4
  %shr27 = lshr i32 %3, 14
  %and28 = and i32 %shr27, 1
  %tx_coe = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 10
  %27 = ptrtoint ptr %tx_coe to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and28, ptr %tx_coe, align 4
  %shr29 = lshr i32 %3, 16
  %and30 = and i32 %shr29, 1
  %rx_coe = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 11
  %28 = ptrtoint ptr %rx_coe to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and30, ptr %rx_coe, align 4
  %shr31 = lshr i32 %3, 18
  %and32 = and i32 %shr31, 31
  %addn_mac = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 12
  %29 = ptrtoint ptr %addn_mac to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and32, ptr %addn_mac, align 4
  %shr33 = lshr i32 %3, 25
  %and34 = and i32 %shr33, 3
  %ts_src = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 13
  %30 = ptrtoint ptr %ts_src to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and34, ptr %ts_src, align 4
  %shr35 = lshr i32 %3, 27
  %and36 = and i32 %shr35, 1
  %sa_vlan_ins = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 14
  %31 = ptrtoint ptr %sa_vlan_ins to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and36, ptr %sa_vlan_ins, align 4
  %shr37 = lshr i32 %3, 29
  %and38 = and i32 %shr37, 1
  %vxn = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 15
  %32 = ptrtoint ptr %vxn to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and38, ptr %vxn, align 4
  %and40 = and i32 %7, 31
  %rx_fifo_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 16
  %33 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and40, ptr %rx_fifo_size, align 4
  %shr41 = lshr i32 %7, 6
  %and42 = and i32 %shr41, 31
  %tx_fifo_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 17
  %34 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and42, ptr %tx_fifo_size, align 4
  %shr43 = lshr i32 %7, 13
  %and44 = and i32 %shr43, 1
  %adv_ts_hi = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 18
  %35 = ptrtoint ptr %adv_ts_hi to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and44, ptr %adv_ts_hi, align 4
  %shr45 = lshr i32 %7, 14
  %and46 = and i32 %shr45, 3
  %dma_width = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 19
  %shr47 = lshr i32 %7, 16
  %and48 = and i32 %shr47, 1
  %dcb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 20
  %36 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and48, ptr %dcb, align 4
  %shr49 = lshr i32 %7, 17
  %and50 = and i32 %shr49, 1
  %sph = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 21
  %37 = ptrtoint ptr %sph to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and50, ptr %sph, align 4
  %shr51 = lshr i32 %7, 18
  %and52 = and i32 %shr51, 1
  %tso = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 22
  %38 = ptrtoint ptr %tso to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and52, ptr %tso, align 4
  %shr53 = lshr i32 %7, 19
  %and54 = and i32 %shr53, 1
  %dma_debug = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 23
  %39 = ptrtoint ptr %dma_debug to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and54, ptr %dma_debug, align 4
  %shr55 = lshr i32 %7, 20
  %and56 = and i32 %shr55, 1
  %rss = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 24
  %40 = ptrtoint ptr %rss to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and56, ptr %rss, align 4
  %shr57 = lshr i32 %7, 21
  %and58 = and i32 %shr57, 7
  %tc_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 25
  %shr59 = lshr i32 %7, 24
  %and60 = and i32 %shr59, 7
  %hash_table_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 26
  %41 = ptrtoint ptr %hash_table_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and60, ptr %hash_table_size, align 4
  %shr61 = lshr i32 %7, 27
  %and62 = and i32 %shr61, 15
  %l3l4_filter_num = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 27
  %42 = ptrtoint ptr %l3l4_filter_num to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and62, ptr %l3l4_filter_num, align 4
  %and64 = and i32 %11, 15
  %rx_q_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 28
  %shr65 = lshr i32 %11, 6
  %and66 = and i32 %shr65, 15
  %tx_q_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 29
  %shr67 = lshr i32 %11, 12
  %and68 = and i32 %shr67, 15
  %rx_ch_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 30
  %shr69 = lshr i32 %11, 18
  %and70 = and i32 %shr69, 15
  %tx_ch_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 31
  %shr71 = lshr i32 %11, 24
  %and72 = and i32 %shr71, 7
  %pps_out_num = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 32
  %43 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and72, ptr %pps_out_num, align 4
  %shr73 = lshr i32 %11, 28
  %and74 = and i32 %shr73, 7
  %aux_snap_num = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 33
  %44 = ptrtoint ptr %aux_snap_num to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and74, ptr %aux_snap_num, align 4
  %switch.tableidx = add nsw i32 %and60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 3
  br i1 %45, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.xgbe_get_all_hw_features, i32 0, i32 %switch.tableidx
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  %47 = ptrtoint ptr %hash_table_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %switch.load, ptr %hash_table_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and46)
  %switch.selectcmp = icmp eq i32 %and46, 1
  %switch.select = select i1 %switch.selectcmp, i32 40, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and46)
  %switch.selectcmp1043 = icmp eq i32 %and46, 2
  %switch.select1044 = select i1 %switch.selectcmp1043, i32 48, i32 %switch.select
  %48 = ptrtoint ptr %dma_width to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %switch.select1044, ptr %dma_width, align 4
  %inc = add nuw nsw i32 %and64, 1
  %49 = ptrtoint ptr %rx_q_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc, ptr %rx_q_cnt, align 4
  %inc92 = add nuw nsw i32 %and66, 1
  %50 = ptrtoint ptr %tx_q_cnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc92, ptr %tx_q_cnt, align 4
  %inc94 = add nuw nsw i32 %and68, 1
  %51 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc94, ptr %rx_ch_cnt, align 4
  %inc96 = add nuw nsw i32 %and70, 1
  %52 = ptrtoint ptr %tx_ch_cnt to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc96, ptr %tx_ch_cnt, align 4
  %inc98 = add nuw nsw i32 %and58, 1
  %53 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc98, ptr %tc_cnt, align 4
  %shl = shl i32 128, %and40
  %54 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl, ptr %rx_fifo_size, align 4
  %shl103 = shl i32 128, %and42
  %55 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl103, ptr %tx_fifo_size, align 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %56 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable, align 4
  %and105 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool.not = icmp eq i32 %and105, 0
  br i1 %tobool.not, label %sw.epilog.if.end752_crit_edge, label %do.body

sw.epilog.if.end752_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end752

do.body:                                          ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug592, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then110)) #11
          to label %do.body111 [label %if.then110], !srcloc !309

if.then110:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug592, ptr noundef %59, ptr noundef nonnull @.str.3) #11
  br label %do.body111

do.body111:                                       ; preds = %if.then110, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then123)) #11
          to label %do.body130 [label %if.then123], !srcloc !309

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #13
  %dev124 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %60 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev124, align 8
  %62 = ptrtoint ptr %gmii to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gmii, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool126.not = icmp eq i32 %63, 0
  %cond = select i1 %tobool126.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug593, ptr noundef %61, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond) #11
  br label %do.body130

do.body130:                                       ; preds = %if.then123, %do.body111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then142)) #11
          to label %do.body150 [label %if.then142], !srcloc !309

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #13
  %dev143 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %64 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev143, align 8
  %66 = ptrtoint ptr %vlhash to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vlhash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool145.not = icmp eq i32 %67, 0
  %cond146 = select i1 %tobool145.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug594, ptr noundef %65, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond146) #11
  br label %do.body150

do.body150:                                       ; preds = %if.then142, %do.body130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then162)) #11
          to label %do.body170 [label %if.then162], !srcloc !309

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #13
  %dev163 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %68 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev163, align 8
  %70 = ptrtoint ptr %sma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool165.not = icmp eq i32 %71, 0
  %cond166 = select i1 %tobool165.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug595, ptr noundef %69, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond166) #11
  br label %do.body170

do.body170:                                       ; preds = %if.then162, %do.body150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then182)) #11
          to label %do.body190 [label %if.then182], !srcloc !309

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #13
  %dev183 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %72 = ptrtoint ptr %dev183 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev183, align 8
  %74 = ptrtoint ptr %rwk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rwk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool185.not = icmp eq i32 %75, 0
  %cond186 = select i1 %tobool185.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug596, ptr noundef %73, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond186) #11
  br label %do.body190

do.body190:                                       ; preds = %if.then182, %do.body170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then202)) #11
          to label %do.body210 [label %if.then202], !srcloc !309

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #13
  %dev203 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %76 = ptrtoint ptr %dev203 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev203, align 8
  %78 = ptrtoint ptr %mgk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mgk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool205.not = icmp eq i32 %79, 0
  %cond206 = select i1 %tobool205.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug597, ptr noundef %77, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond206) #11
  br label %do.body210

do.body210:                                       ; preds = %if.then202, %do.body190
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then222)) #11
          to label %do.body230 [label %if.then222], !srcloc !309

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #13
  %dev223 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %80 = ptrtoint ptr %dev223 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev223, align 8
  %82 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mmc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool225.not = icmp eq i32 %83, 0
  %cond226 = select i1 %tobool225.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug598, ptr noundef %81, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond226) #11
  br label %do.body230

do.body230:                                       ; preds = %if.then222, %do.body210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then242)) #11
          to label %do.body250 [label %if.then242], !srcloc !309

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #13
  %dev243 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %84 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev243, align 8
  %86 = ptrtoint ptr %aoe to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %aoe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool245.not = icmp eq i32 %87, 0
  %cond246 = select i1 %tobool245.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug599, ptr noundef %85, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond246) #11
  br label %do.body250

do.body250:                                       ; preds = %if.then242, %do.body230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then262)) #11
          to label %do.body270 [label %if.then262], !srcloc !309

if.then262:                                       ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #13
  %dev263 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %88 = ptrtoint ptr %dev263 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev263, align 8
  %90 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool265.not = icmp eq i32 %91, 0
  %cond266 = select i1 %tobool265.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug600, ptr noundef %89, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond266) #11
  br label %do.body270

do.body270:                                       ; preds = %if.then262, %do.body250
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then282)) #11
          to label %do.body290 [label %if.then282], !srcloc !309

if.then282:                                       ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #13
  %dev283 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %92 = ptrtoint ptr %dev283 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev283, align 8
  %94 = ptrtoint ptr %eee to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %eee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool285.not = icmp eq i32 %95, 0
  %cond286 = select i1 %tobool285.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug601, ptr noundef %93, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond286) #11
  br label %do.body290

do.body290:                                       ; preds = %if.then282, %do.body270
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then302)) #11
          to label %do.body310 [label %if.then302], !srcloc !309

if.then302:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #13
  %dev303 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %96 = ptrtoint ptr %dev303 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev303, align 8
  %98 = ptrtoint ptr %tx_coe to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_coe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool305.not = icmp eq i32 %99, 0
  %cond306 = select i1 %tobool305.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug602, ptr noundef %97, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond306) #11
  br label %do.body310

do.body310:                                       ; preds = %if.then302, %do.body290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then322)) #11
          to label %do.body330 [label %if.then322], !srcloc !309

if.then322:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #13
  %dev323 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %100 = ptrtoint ptr %dev323 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev323, align 8
  %102 = ptrtoint ptr %rx_coe to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_coe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool325.not = icmp eq i32 %103, 0
  %cond326 = select i1 %tobool325.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug603, ptr noundef %101, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond326) #11
  br label %do.body330

do.body330:                                       ; preds = %if.then322, %do.body310
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then342)) #11
          to label %do.body348 [label %if.then342], !srcloc !309

if.then342:                                       ; preds = %do.body330
  call void @__sanitizer_cov_trace_pc() #13
  %dev343 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %104 = ptrtoint ptr %dev343 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev343, align 8
  %106 = ptrtoint ptr %addn_mac to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addn_mac, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug604, ptr noundef %105, ptr noundef nonnull @.str.17, i32 noundef %107) #11
  br label %do.body348

do.body348:                                       ; preds = %if.then342, %do.body330
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then360)) #11
          to label %do.body376 [label %if.then360], !srcloc !309

if.then360:                                       ; preds = %do.body348
  %dev361 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %108 = ptrtoint ptr %dev361 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev361, align 8
  %110 = ptrtoint ptr %ts_src to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ts_src, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values)
  switch i32 %111, label %cond.false366 [
    i32 1, label %if.then360.cond.end371_crit_edge
    i32 2, label %cond.end371.fold.split
  ]

if.then360.cond.end371_crit_edge:                 ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end371

cond.false366:                                    ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cmp368 = icmp eq i32 %111, 3
  %cond369 = select i1 %cmp368, ptr @.str.21, ptr @.str.22
  br label %cond.end371

cond.end371.fold.split:                           ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end371

cond.end371:                                      ; preds = %cond.end371.fold.split, %cond.false366, %if.then360.cond.end371_crit_edge
  %cond372 = phi ptr [ @.str.19, %if.then360.cond.end371_crit_edge ], [ %cond369, %cond.false366 ], [ @.str.20, %cond.end371.fold.split ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug605, ptr noundef %109, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond372) #11
  br label %do.body376

do.body376:                                       ; preds = %cond.end371, %do.body348
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then388)) #11
          to label %do.body396 [label %if.then388], !srcloc !309

if.then388:                                       ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #13
  %dev389 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %113 = ptrtoint ptr %dev389 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev389, align 8
  %115 = ptrtoint ptr %sa_vlan_ins to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sa_vlan_ins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool391.not = icmp eq i32 %116, 0
  %cond392 = select i1 %tobool391.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug606, ptr noundef %114, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond392) #11
  br label %do.body396

do.body396:                                       ; preds = %if.then388, %do.body376
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then408)) #11
          to label %do.body416 [label %if.then408], !srcloc !309

if.then408:                                       ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #13
  %dev409 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %117 = ptrtoint ptr %dev409 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev409, align 8
  %119 = ptrtoint ptr %vxn to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %vxn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool411.not = icmp eq i32 %120, 0
  %cond412 = select i1 %tobool411.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug607, ptr noundef %118, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond412) #11
  br label %do.body416

do.body416:                                       ; preds = %if.then408, %do.body396
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug608, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then428)) #11
          to label %do.body434 [label %if.then428], !srcloc !309

if.then428:                                       ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #13
  %dev429 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %121 = ptrtoint ptr %dev429 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev429, align 8
  %123 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_fifo_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug608, ptr noundef %122, ptr noundef nonnull @.str.25, i32 noundef %124) #11
  br label %do.body434

do.body434:                                       ; preds = %if.then428, %do.body416
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug609, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then446)) #11
          to label %do.body452 [label %if.then446], !srcloc !309

if.then446:                                       ; preds = %do.body434
  call void @__sanitizer_cov_trace_pc() #13
  %dev447 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %125 = ptrtoint ptr %dev447 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev447, align 8
  %127 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_fifo_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug609, ptr noundef %126, ptr noundef nonnull @.str.26, i32 noundef %128) #11
  br label %do.body452

do.body452:                                       ; preds = %if.then446, %do.body434
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then464)) #11
          to label %do.body472 [label %if.then464], !srcloc !309

if.then464:                                       ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #13
  %dev465 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %129 = ptrtoint ptr %dev465 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev465, align 8
  %131 = ptrtoint ptr %adv_ts_hi to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %adv_ts_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool467.not = icmp eq i32 %132, 0
  %cond468 = select i1 %tobool467.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug610, ptr noundef %130, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond468) #11
  br label %do.body472

do.body472:                                       ; preds = %if.then464, %do.body452
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug611, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then484)) #11
          to label %do.body490 [label %if.then484], !srcloc !309

if.then484:                                       ; preds = %do.body472
  call void @__sanitizer_cov_trace_pc() #13
  %dev485 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %133 = ptrtoint ptr %dev485 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev485, align 8
  %135 = ptrtoint ptr %dma_width to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dma_width, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug611, ptr noundef %134, ptr noundef nonnull @.str.28, i32 noundef %136) #11
  br label %do.body490

do.body490:                                       ; preds = %if.then484, %do.body472
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug612, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then502)) #11
          to label %do.body510 [label %if.then502], !srcloc !309

if.then502:                                       ; preds = %do.body490
  call void @__sanitizer_cov_trace_pc() #13
  %dev503 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %137 = ptrtoint ptr %dev503 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev503, align 8
  %139 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dcb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool505.not = icmp eq i32 %140, 0
  %cond506 = select i1 %tobool505.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug612, ptr noundef %138, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond506) #11
  br label %do.body510

do.body510:                                       ; preds = %if.then502, %do.body490
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then522)) #11
          to label %do.body530 [label %if.then522], !srcloc !309

if.then522:                                       ; preds = %do.body510
  call void @__sanitizer_cov_trace_pc() #13
  %dev523 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %141 = ptrtoint ptr %dev523 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev523, align 8
  %143 = ptrtoint ptr %sph to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sph, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool525.not = icmp eq i32 %144, 0
  %cond526 = select i1 %tobool525.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug613, ptr noundef %142, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond526) #11
  br label %do.body530

do.body530:                                       ; preds = %if.then522, %do.body510
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then542)) #11
          to label %do.body550 [label %if.then542], !srcloc !309

if.then542:                                       ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #13
  %dev543 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %145 = ptrtoint ptr %dev543 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev543, align 8
  %147 = ptrtoint ptr %tso to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tso, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool545.not = icmp eq i32 %148, 0
  %cond546 = select i1 %tobool545.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug614, ptr noundef %146, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond546) #11
  br label %do.body550

do.body550:                                       ; preds = %if.then542, %do.body530
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then562)) #11
          to label %do.body570 [label %if.then562], !srcloc !309

if.then562:                                       ; preds = %do.body550
  call void @__sanitizer_cov_trace_pc() #13
  %dev563 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %149 = ptrtoint ptr %dev563 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev563, align 8
  %151 = ptrtoint ptr %dma_debug to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dma_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool565.not = icmp eq i32 %152, 0
  %cond566 = select i1 %tobool565.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug615, ptr noundef %150, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond566) #11
  br label %do.body570

do.body570:                                       ; preds = %if.then562, %do.body550
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then582)) #11
          to label %do.body590 [label %if.then582], !srcloc !309

if.then582:                                       ; preds = %do.body570
  call void @__sanitizer_cov_trace_pc() #13
  %dev583 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %153 = ptrtoint ptr %dev583 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev583, align 8
  %155 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool585.not = icmp eq i32 %156, 0
  %cond586 = select i1 %tobool585.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug616, ptr noundef %154, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond586) #11
  br label %do.body590

do.body590:                                       ; preds = %if.then582, %do.body570
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then602)) #11
          to label %do.body608 [label %if.then602], !srcloc !309

if.then602:                                       ; preds = %do.body590
  call void @__sanitizer_cov_trace_pc() #13
  %dev603 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %157 = ptrtoint ptr %dev603 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev603, align 8
  %159 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tc_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug617, ptr noundef %158, ptr noundef nonnull @.str.34, i32 noundef %160) #11
  br label %do.body608

do.body608:                                       ; preds = %if.then602, %do.body590
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then620)) #11
          to label %do.body626 [label %if.then620], !srcloc !309

if.then620:                                       ; preds = %do.body608
  call void @__sanitizer_cov_trace_pc() #13
  %dev621 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %161 = ptrtoint ptr %dev621 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev621, align 8
  %163 = ptrtoint ptr %hash_table_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %hash_table_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug618, ptr noundef %162, ptr noundef nonnull @.str.35, i32 noundef %164) #11
  br label %do.body626

do.body626:                                       ; preds = %if.then620, %do.body608
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then638)) #11
          to label %do.body644 [label %if.then638], !srcloc !309

if.then638:                                       ; preds = %do.body626
  call void @__sanitizer_cov_trace_pc() #13
  %dev639 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %165 = ptrtoint ptr %dev639 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev639, align 8
  %167 = ptrtoint ptr %l3l4_filter_num to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %l3l4_filter_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug619, ptr noundef %166, ptr noundef nonnull @.str.36, i32 noundef %168) #11
  br label %do.body644

do.body644:                                       ; preds = %if.then638, %do.body626
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then656)) #11
          to label %do.body662 [label %if.then656], !srcloc !309

if.then656:                                       ; preds = %do.body644
  call void @__sanitizer_cov_trace_pc() #13
  %dev657 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %169 = ptrtoint ptr %dev657 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev657, align 8
  %171 = ptrtoint ptr %rx_q_cnt to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rx_q_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug620, ptr noundef %170, ptr noundef nonnull @.str.37, i32 noundef %172) #11
  br label %do.body662

do.body662:                                       ; preds = %if.then656, %do.body644
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then674)) #11
          to label %do.body680 [label %if.then674], !srcloc !309

if.then674:                                       ; preds = %do.body662
  call void @__sanitizer_cov_trace_pc() #13
  %dev675 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %173 = ptrtoint ptr %dev675 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev675, align 8
  %175 = ptrtoint ptr %tx_q_cnt to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tx_q_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug621, ptr noundef %174, ptr noundef nonnull @.str.38, i32 noundef %176) #11
  br label %do.body680

do.body680:                                       ; preds = %if.then674, %do.body662
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then692)) #11
          to label %do.body698 [label %if.then692], !srcloc !309

if.then692:                                       ; preds = %do.body680
  call void @__sanitizer_cov_trace_pc() #13
  %dev693 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %177 = ptrtoint ptr %dev693 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev693, align 8
  %179 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %rx_ch_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug622, ptr noundef %178, ptr noundef nonnull @.str.39, i32 noundef %180) #11
  br label %do.body698

do.body698:                                       ; preds = %if.then692, %do.body680
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then710)) #11
          to label %do.body716 [label %if.then710], !srcloc !309

if.then710:                                       ; preds = %do.body698
  call void @__sanitizer_cov_trace_pc() #13
  %dev711 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %181 = ptrtoint ptr %dev711 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev711, align 8
  %183 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rx_ch_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug623, ptr noundef %182, ptr noundef nonnull @.str.40, i32 noundef %184) #11
  br label %do.body716

do.body716:                                       ; preds = %if.then710, %do.body698
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then728)) #11
          to label %do.body734 [label %if.then728], !srcloc !309

if.then728:                                       ; preds = %do.body716
  call void @__sanitizer_cov_trace_pc() #13
  %dev729 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %185 = ptrtoint ptr %dev729 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev729, align 8
  %187 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %pps_out_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug624, ptr noundef %186, ptr noundef nonnull @.str.41, i32 noundef %188) #11
  br label %do.body734

do.body734:                                       ; preds = %if.then728, %do.body716
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_get_all_hw_features, %if.then746)) #11
          to label %if.end752 [label %if.then746], !srcloc !309

if.then746:                                       ; preds = %do.body734
  call void @__sanitizer_cov_trace_pc() #13
  %dev747 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %189 = ptrtoint ptr %dev747 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev747, align 8
  %191 = ptrtoint ptr %aux_snap_num to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %aux_snap_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug625, ptr noundef %190, ptr noundef nonnull @.str.42, i32 noundef %192) #11
  br label %if.end752

if.end752:                                        ; preds = %if.then746, %do.body734, %sw.epilog.if.end752_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @xgbe_get_udp_tunnel_info() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @xgbe_udp_tunnels
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_init_tx_coalesce(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_usecs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 88
  %0 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tx_usecs, align 4
  %tx_frames = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 89
  %1 = ptrtoint ptr %tx_frames to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 25, ptr %tx_frames, align 8
  %config_tx_coalesce = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 42
  %2 = ptrtoint ptr %config_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config_tx_coalesce, align 4
  %call = tail call i32 %3(ptr noundef %pdata) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_init_rx_coalesce(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_to_riwt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 43
  %0 = ptrtoint ptr %usec_to_riwt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usec_to_riwt, align 4
  %call = tail call i32 %1(ptr noundef %pdata, i32 noundef 30) #11
  %rx_riwt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 90
  %2 = ptrtoint ptr %rx_riwt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %rx_riwt, align 4
  %rx_usecs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 91
  %3 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 30, ptr %rx_usecs, align 8
  %rx_frames = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 92
  %4 = ptrtoint ptr %rx_frames to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 25, ptr %rx_frames, align 4
  %config_rx_coalesce = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 41
  %5 = ptrtoint ptr %config_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config_rx_coalesce, align 4
  %call2 = tail call i32 %6(ptr noundef %pdata) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgbe_powerdown(ptr noundef %netdev, i32 noundef %caller) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %caller)
  %cmp = icmp eq i32 %caller, 2
  br i1 %cmp, label %land.lhs.true, label %do.body7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %power_down = getelementptr i8, ptr %netdev, i32 7112
  %2 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_down, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body7.thread, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

do.body7.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %lock47 = getelementptr i8, ptr %netdev, i32 2388
  %call1048 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock47) #11
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %netdev, ptr noundef nonnull @.str.43) #14
  br label %cleanup

do.body7:                                         ; preds = %lor.lhs.false
  %lock = getelementptr i8, ptr %netdev, i32 2388
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %caller)
  %cmp15 = icmp eq i32 %caller, 1
  br i1 %cmp15, label %if.then17, label %do.body7.if.end18_crit_edge

do.body7.if.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_device_detach(ptr noundef %netdev) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body7.if.end18_crit_edge, %do.body7.thread
  %call1051 = phi i32 [ %call1048, %do.body7.thread ], [ %call10, %if.then17 ], [ %call10, %do.body7.if.end18_crit_edge ]
  %lock50 = phi ptr [ %lock47, %do.body7.thread ], [ %lock, %if.then17 ], [ %lock, %do.body7.if.end18_crit_edge ]
  tail call void @netif_tx_stop_all_queues(ptr noundef %netdev) #11
  %service_timer.i = getelementptr i8, ptr %netdev, i32 3304
  %call.i = tail call i32 @del_timer_sync(ptr noundef %service_timer.i) #11
  %channel_count.i = getelementptr i8, ptr %netdev, i32 3424
  %4 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.not.i = icmp eq i32 %5, 0
  br i1 %cmp9.not.i, label %if.end18.xgbe_stop_timers.exit_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.xgbe_stop_timers.exit_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_stop_timers.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 62, i32 %i.010.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.xgbe_stop_timers.exit_crit_edge, label %if.end.i

for.body.i.xgbe_stop_timers.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_stop_timers.exit

if.end.i:                                         ; preds = %for.body.i
  %tx_timer.i = getelementptr inbounds %struct.xgbe_channel, ptr %7, i32 0, i32 10
  %call2.i = tail call i32 @del_timer_sync(ptr noundef %tx_timer.i) #11
  %tx_timer_active.i = getelementptr inbounds %struct.xgbe_channel, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %tx_timer_active.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tx_timer_active.i, align 8
  %inc.i = add nuw i32 %i.010.i, 1
  %11 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.xgbe_stop_timers.exit_crit_edge

if.end.i.xgbe_stop_timers.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_stop_timers.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_stop_timers.exit:                            ; preds = %if.end.i.xgbe_stop_timers.exit_crit_edge, %for.body.i.xgbe_stop_timers.exit_crit_edge, %if.end18.xgbe_stop_timers.exit_crit_edge
  %dev_workqueue = getelementptr i8, ptr %netdev, i32 3256
  %13 = ptrtoint ptr %dev_workqueue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_workqueue, align 8
  tail call void @flush_workqueue(ptr noundef %14) #11
  %powerdown_tx = getelementptr i8, ptr %netdev, i32 2872
  %15 = ptrtoint ptr %powerdown_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %powerdown_tx, align 4
  tail call void %16(ptr noundef %add.ptr.i) #11
  %powerdown_rx = getelementptr i8, ptr %netdev, i32 2880
  %17 = ptrtoint ptr %powerdown_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %powerdown_rx, align 4
  tail call void %18(ptr noundef %add.ptr.i) #11
  %per_channel_irq.i = getelementptr i8, ptr %netdev, i32 2716
  %19 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i41 = icmp eq i32 %20, 0
  br i1 %tobool.not.i41, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %xgbe_stop_timers.exit
  %21 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp19.not.i = icmp eq i32 %22, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.xgbe_napi_disable.exit_crit_edge, label %for.cond.preheader.i.for.body.i44_crit_edge

for.cond.preheader.i.for.body.i44_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i44

for.cond.preheader.i.xgbe_napi_disable.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_disable.exit

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %for.cond.preheader.i.for.body.i44_crit_edge
  %i.020.i = phi i32 [ %inc.i45, %for.body.i44.for.body.i44_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i44_crit_edge ]
  %arrayidx.i43 = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 62, i32 %i.020.i
  %23 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i43, align 4
  %napi.i = getelementptr inbounds %struct.xgbe_channel, ptr %24, i32 0, i32 6
  tail call void @napi_disable(ptr noundef %napi.i) #11
  %inc.i45 = add nuw i32 %i.020.i, 1
  %25 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel_count.i, align 8
  %cmp.i46 = icmp ult i32 %inc.i45, %26
  br i1 %cmp.i46, label %for.body.i44.for.body.i44_crit_edge, label %for.body.i44.xgbe_napi_disable.exit_crit_edge

for.body.i44.xgbe_napi_disable.exit_crit_edge:    ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_disable.exit

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i44

if.else.i:                                        ; preds = %xgbe_stop_timers.exit
  call void @__sanitizer_cov_trace_pc() #13
  %napi5.i = getelementptr i8, ptr %netdev, i32 4768
  tail call void @napi_disable(ptr noundef %napi5.i) #11
  br label %xgbe_napi_disable.exit

xgbe_napi_disable.exit:                           ; preds = %if.else.i, %for.body.i44.xgbe_napi_disable.exit_crit_edge, %for.cond.preheader.i.xgbe_napi_disable.exit_crit_edge
  %power_down19 = getelementptr i8, ptr %netdev, i32 7112
  %27 = ptrtoint ptr %power_down19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %power_down19, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock50, i32 noundef %call1051) #11
  br label %cleanup

cleanup:                                          ; preds = %xgbe_napi_disable.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %xgbe_napi_disable.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgbe_powerup(ptr noundef %netdev, i32 noundef %caller) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %caller)
  %cmp = icmp eq i32 %caller, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.do.body7_crit_edge

lor.lhs.false.do.body7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %power_down = getelementptr i8, ptr %netdev, i32 7112
  %2 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_down, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.do.body7_crit_edge

land.lhs.true.do.body7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body7

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %netdev, ptr noundef nonnull @.str.44) #14
  br label %cleanup

do.body7:                                         ; preds = %land.lhs.true.do.body7_crit_edge, %lor.lhs.false.do.body7_crit_edge
  %lock = getelementptr i8, ptr %netdev, i32 2388
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %power_down15 = getelementptr i8, ptr %netdev, i32 7112
  %4 = ptrtoint ptr %power_down15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power_down15, align 8
  %per_channel_irq.i = getelementptr i8, ptr %netdev, i32 2716
  %5 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.body7
  %channel_count.i = getelementptr i8, ptr %netdev, i32 3424
  %7 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22.not.i = icmp eq i32 %8, 0
  br i1 %cmp22.not.i, label %for.cond.preheader.i.xgbe_napi_enable.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.xgbe_napi_enable.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_enable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 62, i32 %i.023.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %napi4.i = getelementptr inbounds %struct.xgbe_channel, ptr %10, i32 0, i32 6
  tail call void @napi_enable(ptr noundef %napi4.i) #11
  %inc.i = add nuw i32 %i.023.i, 1
  %11 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.xgbe_napi_enable.exit_crit_edge

for.body.i.xgbe_napi_enable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_enable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.else.i:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %napi10.i = getelementptr i8, ptr %netdev, i32 4768
  tail call void @napi_enable(ptr noundef %napi10.i) #11
  br label %xgbe_napi_enable.exit

xgbe_napi_enable.exit:                            ; preds = %if.else.i, %for.body.i.xgbe_napi_enable.exit_crit_edge, %for.cond.preheader.i.xgbe_napi_enable.exit_crit_edge
  %powerup_tx = getelementptr i8, ptr %netdev, i32 2868
  %13 = ptrtoint ptr %powerup_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %powerup_tx, align 4
  tail call void %14(ptr noundef %add.ptr.i) #11
  %powerup_rx = getelementptr i8, ptr %netdev, i32 2876
  %15 = ptrtoint ptr %powerup_rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %powerup_rx, align 4
  tail call void %16(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %caller)
  %cmp16 = icmp eq i32 %caller, 1
  br i1 %cmp16, label %if.then18, label %xgbe_napi_enable.exit.if.end19_crit_edge

xgbe_napi_enable.exit.if.end19_crit_edge:         ; preds = %xgbe_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %xgbe_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_device_attach(ptr noundef %netdev) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %xgbe_napi_enable.exit.if.end19_crit_edge
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %17 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.not.i = icmp eq i32 %18, 0
  br i1 %cmp4.not.i, label %if.end19.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i40

if.end19.netif_tx_start_all_queues.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i40:                               ; preds = %if.end19
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.body.i43.for.body.i43_crit_edge, %for.body.lr.ph.i40
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i40 ], [ %inc.i41, %for.body.i43.for.body.i43_crit_edge ]
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %20, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %inc.i41 = add nuw i32 %i.05.i, 1
  %21 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i42 = icmp ult i32 %inc.i41, %22
  br i1 %cmp.i42, label %for.body.i43.for.body.i43_crit_edge, label %for.body.i43.netif_tx_start_all_queues.exit_crit_edge

for.body.i43.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_start_all_queues.exit

for.body.i43.for.body.i43_crit_edge:              ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i43

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i43.netif_tx_start_all_queues.exit_crit_edge, %if.end19.netif_tx_start_all_queues.exit_crit_edge
  %service_timer.i = getelementptr i8, ptr %netdev, i32 3304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %23, 100
  %call.i = tail call i32 @mod_timer(ptr noundef %service_timer.i, i32 noundef %add.i) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %netif_tx_start_all_queues.exit, %if.then
  %retval.0 = phi i32 [ 0, %netif_tx_start_all_queues.exit ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_full_restart_dev(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @xgbe_stop(ptr noundef %pdata)
  %free_ring_resources.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 53, i32 1
  %4 = ptrtoint ptr %free_ring_resources.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_ring_resources.i, align 4
  tail call void %5(ptr noundef %pdata) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end
  %i.020.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.020.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ring.i.i, align 16
  tail call void @kfree(ptr noundef %9) #11
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %tx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring.i.i, align 4
  tail call void @kfree(ptr noundef %13) #11
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %15) #11
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %xgbe_free_memory.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

xgbe_free_memory.exit:                            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %channel_count.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %17 = ptrtoint ptr %channel_count.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %channel_count.i.i, align 8
  %call1 = tail call fastcc i32 @xgbe_alloc_memory(ptr noundef %pdata)
  %call2 = tail call fastcc i32 @xgbe_start(ptr noundef %pdata)
  br label %return

return:                                           ; preds = %xgbe_free_memory.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_stop(ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %dev_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 29
  %2 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_state, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_tx_stop_all_queues(ptr noundef %1) #11
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 8
  tail call void @netif_carrier_off(ptr noundef %6) #11
  %service_timer.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 61
  %call.i = tail call i32 @del_timer_sync(ptr noundef %service_timer.i) #11
  %channel_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %7 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.not.i = icmp eq i32 %8, 0
  br i1 %cmp9.not.i, label %if.end.xgbe_stop_timers.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.xgbe_stop_timers.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_stop_timers.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.010.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.xgbe_stop_timers.exit_crit_edge, label %if.end.i

for.body.i.xgbe_stop_timers.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_stop_timers.exit

if.end.i:                                         ; preds = %for.body.i
  %tx_timer.i = getelementptr inbounds %struct.xgbe_channel, ptr %10, i32 0, i32 10
  %call2.i = tail call i32 @del_timer_sync(ptr noundef %tx_timer.i) #11
  %tx_timer_active.i = getelementptr inbounds %struct.xgbe_channel, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %tx_timer_active.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_timer_active.i, align 8
  %inc.i = add nuw i32 %i.010.i, 1
  %14 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.xgbe_stop_timers.exit_crit_edge

if.end.i.xgbe_stop_timers.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_stop_timers.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_stop_timers.exit:                            ; preds = %if.end.i.xgbe_stop_timers.exit_crit_edge, %for.body.i.xgbe_stop_timers.exit_crit_edge, %if.end.xgbe_stop_timers.exit_crit_edge
  %dev_workqueue = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 59
  %16 = ptrtoint ptr %dev_workqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_workqueue, align 8
  tail call void @flush_workqueue(ptr noundef %17) #11
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %disable_vxlan.i = getelementptr i8, ptr %1, i32 3052
  %18 = ptrtoint ptr %disable_vxlan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disable_vxlan.i, align 4
  tail call void %19(ptr noundef %add.ptr.i.i) #11
  %vxlan_port.i = getelementptr i8, ptr %1, i32 4748
  %20 = ptrtoint ptr %vxlan_port.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %vxlan_port.i, align 4
  %disable_tx = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 19
  %21 = ptrtoint ptr %disable_tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disable_tx, align 4
  tail call void %22(ptr noundef %pdata) #11
  %disable_rx = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 21
  %23 = ptrtoint ptr %disable_rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %disable_rx, align 4
  tail call void %24(ptr noundef %pdata) #11
  %phy_stop = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 4
  %25 = ptrtoint ptr %phy_stop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_stop, align 4
  tail call void %26(ptr noundef %pdata) #11
  tail call fastcc void @xgbe_free_irqs(ptr noundef %pdata)
  %per_channel_irq.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 46
  %27 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i43 = icmp eq i32 %28, 0
  br i1 %tobool.not.i43, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %xgbe_stop_timers.exit
  %29 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp19.not.i = icmp eq i32 %30, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.xgbe_napi_disable.exit_crit_edge, label %for.cond.preheader.i.for.body.i46_crit_edge

for.cond.preheader.i.for.body.i46_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i46

for.cond.preheader.i.xgbe_napi_disable.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_disable.exit

for.body.i46:                                     ; preds = %for.body.i46.for.body.i46_crit_edge, %for.cond.preheader.i.for.body.i46_crit_edge
  %i.020.i = phi i32 [ %inc.i47, %for.body.i46.for.body.i46_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i46_crit_edge ]
  %arrayidx.i45 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.020.i
  %31 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i45, align 4
  %napi.i = getelementptr inbounds %struct.xgbe_channel, ptr %32, i32 0, i32 6
  tail call void @napi_disable(ptr noundef %napi.i) #11
  tail call void @__netif_napi_del(ptr noundef %napi.i) #11
  tail call void @synchronize_net() #11
  %inc.i47 = add nuw i32 %i.020.i, 1
  %33 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel_count.i, align 8
  %cmp.i48 = icmp ult i32 %inc.i47, %34
  br i1 %cmp.i48, label %for.body.i46.for.body.i46_crit_edge, label %for.body.i46.xgbe_napi_disable.exit_crit_edge

for.body.i46.xgbe_napi_disable.exit_crit_edge:    ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_disable.exit

for.body.i46.for.body.i46_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i46

if.else.i:                                        ; preds = %xgbe_stop_timers.exit
  call void @__sanitizer_cov_trace_pc() #13
  %napi5.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 105
  tail call void @napi_disable(ptr noundef %napi5.i) #11
  tail call void @__netif_napi_del(ptr noundef %napi5.i) #11
  tail call void @synchronize_net() #11
  br label %xgbe_napi_disable.exit

xgbe_napi_disable.exit:                           ; preds = %if.else.i, %for.body.i46.xgbe_napi_disable.exit_crit_edge, %for.cond.preheader.i.xgbe_napi_disable.exit_crit_edge
  %exit = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 27
  %35 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %exit, align 4
  %call6 = tail call i32 %36(ptr noundef %pdata) #11
  %37 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp50.not = icmp eq i32 %38, 0
  br i1 %cmp50.not, label %xgbe_napi_disable.exit.for.end_crit_edge, label %for.body.lr.ph

xgbe_napi_disable.exit.for.end_crit_edge:         ; preds = %xgbe_napi_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %xgbe_napi_disable.exit
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.051
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_ring, align 4
  %tobool8.not = icmp eq ptr %42, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %queue_index = getelementptr inbounds %struct.xgbe_channel, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %queue_index, align 4
  %45 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %46, i32 %44, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #11
  %dql.i = getelementptr %struct.netdev_queue, ptr %46, i32 %44, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.051, 1
  %47 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel_count.i, align 8
  %cmp = icmp ult i32 %inc, %48
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %xgbe_napi_disable.exit.for.end_crit_edge
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dev_state) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_alloc_memory(ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_if1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 53
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %new_tx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 70
  %2 = ptrtoint ptr %new_tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_tx_ring_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 66
  %4 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tx_ring_count, align 4
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %5 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %tx_q_count, align 4
  %6 = ptrtoint ptr %new_tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %new_tx_ring_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %new_rx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 71
  %7 = ptrtoint ptr %new_rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_rx_ring_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 68
  %9 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_ring_count, align 4
  %10 = ptrtoint ptr %new_rx_ring_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %new_rx_ring_count, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu, align 4
  %add2.i = add i32 %12, 22
  %13 = tail call i32 @llvm.umax.i32(i32 %add2.i, i32 1522) #11
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 4096) #11
  %sub.i = add nuw nsw i32 %14, 63
  %and.i = and i32 %sub.i, 16320
  %rx_buf_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 93
  %15 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %rx_buf_size, align 8
  %call11 = tail call fastcc i32 @xgbe_alloc_channels(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %desc_if1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_if1, align 4
  %call15 = tail call i32 %17(ptr noundef %pdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %err_channels

if.end18:                                         ; preds = %if.end14
  %service_timer.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 61
  tail call void @init_timer_key(ptr noundef %service_timer.i, ptr noundef nonnull @xgbe_service_timer, i32 noundef 0, ptr noundef nonnull @.str.69, ptr noundef nonnull @xgbe_init_timers.__key) #11
  %channel_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %18 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp10.not.i = icmp eq i32 %19, 0
  br i1 %cmp10.not.i, label %if.end18.cleanup_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %do.body2.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %do.body2.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.011.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %do.body2.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2.i:                                       ; preds = %for.body.i
  %tx_timer.i = getelementptr inbounds %struct.xgbe_channel, ptr %21, i32 0, i32 10
  tail call void @init_timer_key(ptr noundef %tx_timer.i, ptr noundef nonnull @xgbe_tx_timer, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @xgbe_init_timers.__key.70) #11
  %inc.i = add nuw i32 %i.011.i, 1
  %24 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %do.body2.i.for.body.i_crit_edge, label %do.body2.i.cleanup_crit_edge

do.body2.i.cleanup_crit_edge:                     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2.i.for.body.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

err_channels:                                     ; preds = %if.end14
  %free_ring_resources.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 53, i32 1
  %26 = ptrtoint ptr %free_ring_resources.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %free_ring_resources.i, align 4
  tail call void %27(ptr noundef %pdata) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %err_channels
  %i.020.i.i = phi i32 [ 0, %err_channels ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.020.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ring.i.i, align 16
  tail call void @kfree(ptr noundef %31) #11
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %tx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_ring.i.i, align 4
  tail call void @kfree(ptr noundef %35) #11
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %37) #11
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %xgbe_free_memory.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

xgbe_free_memory.exit:                            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %channel_count.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %39 = ptrtoint ptr %channel_count.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %channel_count.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %xgbe_free_memory.exit, %do.body2.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %xgbe_free_memory.exit ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ], [ 0, %do.body2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_start(ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %tx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 66
  %2 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_count, align 4
  %call = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %1, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.72) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 68
  %4 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_count, align 4
  %call4 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %1, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.do.body_crit_edge, label %if.then6

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.73) #14
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %i.0104 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 100, i32 %i.0104
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and = and i32 %7, -16
  store i32 %and, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_count, align 4
  %rem = urem i32 %i.0104, %9
  %and9 = and i32 %rem, 15
  %or = or i32 %and9, %and
  store i32 %or, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %do.body
  %init = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 26
  %10 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init, align 4
  %call12 = tail call i32 %11(ptr noundef %pdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %per_channel_irq.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 46
  %12 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end15
  %channel_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %14 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp22.not.i = icmp eq i32 %15, 0
  br i1 %cmp22.not.i, label %for.cond.preheader.i.xgbe_napi_enable.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.xgbe_napi_enable.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_enable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.023.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 8
  %napi.i = getelementptr inbounds %struct.xgbe_channel, ptr %17, i32 0, i32 6
  tail call void @netif_napi_add(ptr noundef %19, ptr noundef %napi.i, ptr noundef nonnull @xgbe_one_poll, i32 noundef 64) #11
  tail call void @napi_enable(ptr noundef %napi.i) #11
  %inc.i = add nuw i32 %i.023.i, 1
  %20 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.xgbe_napi_enable.exit_crit_edge

for.body.i.xgbe_napi_enable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_enable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.else.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  %napi8.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 105
  tail call void @netif_napi_add(ptr noundef %23, ptr noundef %napi8.i, ptr noundef nonnull @xgbe_all_poll, i32 noundef 64) #11
  tail call void @napi_enable(ptr noundef %napi8.i) #11
  br label %xgbe_napi_enable.exit

xgbe_napi_enable.exit:                            ; preds = %if.else.i, %for.body.i.xgbe_napi_enable.exit_crit_edge, %for.cond.preheader.i.xgbe_napi_enable.exit_crit_edge
  %24 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata, align 8
  %tasklet_dev.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 169
  tail call void @tasklet_setup(ptr noundef %tasklet_dev.i, ptr noundef nonnull @xgbe_isr_task) #11
  %tasklet_ecc.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 170
  tail call void @tasklet_setup(ptr noundef %tasklet_ecc.i, ptr noundef nonnull @xgbe_ecc_isr_task) #11
  %dev.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %dev_irq.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %28 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev_irq.i, align 8
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %25, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %xgbe_napi_enable.exit.netdev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

xgbe_napi_enable.exit.netdev_name.exit.i_crit_edge: ; preds = %xgbe_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %xgbe_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call ptr @strchr(ptr noundef %25, i32 noundef 37) #11
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %spec.select.i.i = select i1 %tobool2.not.i.i, ptr %25, ptr @.str.97
  br label %netdev_name.exit.i

netdev_name.exit.i:                               ; preds = %lor.lhs.false.i.i, %xgbe_napi_enable.exit.netdev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.97, %xgbe_napi_enable.exit.netdev_name.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %call.i117.i = tail call i32 @devm_request_threaded_irq(ptr noundef %27, i32 noundef %29, ptr noundef nonnull @xgbe_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %pdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %tobool.not.i70 = icmp eq i32 %call.i117.i, 0
  br i1 %tobool.not.i70, label %if.end.i, label %xgbe_request_irqs.exit.thread98

xgbe_request_irqs.exit.thread98:                  ; preds = %netdev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_irq.i, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %25, ptr noundef nonnull @.str.74, i32 noundef %33) #14
  br label %err_napi

if.end.i:                                         ; preds = %netdev_name.exit.i
  %vdata.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %34 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdata.i, align 4
  %ecc_support.i = getelementptr inbounds %struct.xgbe_version_data, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %ecc_support.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ecc_support.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i = icmp eq i32 %37, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end14.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %38 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev_irq.i, align 8
  %ecc_irq.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 43
  %40 = ptrtoint ptr %ecc_irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ecc_irq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.not.i = icmp eq i32 %39, %41
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  %ecc_name.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 50
  %call.i118.i = tail call i32 @devm_request_threaded_irq(ptr noundef %43, i32 noundef %41, ptr noundef nonnull @xgbe_ecc_isr, ptr noundef null, i32 noundef 0, ptr noundef %ecc_name.i, ptr noundef %pdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i)
  %tobool10.not.i = icmp eq i32 %call.i118.i, 0
  br i1 %tobool10.not.i, label %if.then6.i.if.end14.i_crit_edge, label %if.then11.i

if.then6.i.if.end14.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %ecc_irq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ecc_irq.i, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %25, ptr noundef nonnull @.str.75, i32 noundef %45) #14
  br label %xgbe_request_irqs.exit

if.end14.i:                                       ; preds = %if.then6.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %46 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool15.not.i = icmp eq i32 %47, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end19_crit_edge, label %for.cond.preheader.i73

if.end14.i.if.end19_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.cond.preheader.i73:                           ; preds = %if.end14.i
  %channel_count.i72 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %48 = ptrtoint ptr %channel_count.i72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channel_count.i72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp18130.not.i = icmp eq i32 %49, 0
  br i1 %cmp18130.not.i, label %for.cond.preheader.i73.if.end19_crit_edge, label %for.cond.preheader.i73.for.body.i75_crit_edge

for.cond.preheader.i73.for.body.i75_crit_edge:    ; preds = %for.cond.preheader.i73
  br label %for.body.i75

for.cond.preheader.i73.if.end19_crit_edge:        ; preds = %for.cond.preheader.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.body.i75:                                     ; preds = %if.end30.i.for.body.i75_crit_edge, %for.cond.preheader.i73.for.body.i75_crit_edge
  %i.0131.i = phi i32 [ %inc.i76, %if.end30.i.for.body.i75_crit_edge ], [ 0, %for.cond.preheader.i73.for.body.i75_crit_edge ]
  %arrayidx.i74 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.0131.i
  %50 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i74, align 4
  %dma_irq_name.i = getelementptr inbounds %struct.xgbe_channel, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %25, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i119.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i119.i, label %for.body.i75.netdev_name.exit125.i_crit_edge, label %lor.lhs.false.i123.i

for.body.i75.netdev_name.exit125.i_crit_edge:     ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_name.exit125.i

lor.lhs.false.i123.i:                             ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #13
  %call.i120.i = tail call ptr @strchr(ptr noundef %25, i32 noundef 37) #11
  %tobool2.not.i121.i = icmp eq ptr %call.i120.i, null
  %spec.select.i122.i = select i1 %tobool2.not.i121.i, ptr %25, ptr @.str.97
  br label %netdev_name.exit125.i

netdev_name.exit125.i:                            ; preds = %lor.lhs.false.i123.i, %for.body.i75.netdev_name.exit125.i_crit_edge
  %retval.0.i124.i = phi ptr [ @.str.97, %for.body.i75.netdev_name.exit125.i_crit_edge ], [ %spec.select.i122.i, %lor.lhs.false.i123.i ]
  %queue_index.i = getelementptr inbounds %struct.xgbe_channel, ptr %51, i32 0, i32 2
  %54 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %queue_index.i, align 4
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dma_irq_name.i, i32 noundef 47, ptr noundef nonnull @.str.76, ptr noundef %retval.0.i124.i, i32 noundef %55) #11
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  %dma_irq.i = getelementptr inbounds %struct.xgbe_channel, ptr %51, i32 0, i32 4
  %58 = ptrtoint ptr %dma_irq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_irq.i, align 4
  %call.i126.i = tail call i32 @devm_request_threaded_irq(ptr noundef %57, i32 noundef %59, ptr noundef nonnull @xgbe_dma_isr, ptr noundef null, i32 noundef 0, ptr noundef %dma_irq_name.i, ptr noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i)
  %tobool27.not.i = icmp eq i32 %call.i126.i, 0
  %60 = ptrtoint ptr %dma_irq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_irq.i, align 4
  br i1 %tobool27.not.i, label %if.end30.i, label %if.then28.i

if.then28.i:                                      ; preds = %netdev_name.exit125.i
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %25, ptr noundef nonnull @.str.74, i32 noundef %61) #14
  %i.1132.i = add i32 %i.0131.i, -1
  %62 = ptrtoint ptr %channel_count.i72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %channel_count.i72, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1132.i, i32 %63)
  %cmp35133.i = icmp ult i32 %i.1132.i, %63
  br i1 %cmp35133.i, label %if.then28.i.for.body36.i_crit_edge, label %if.then28.i.for.end45.i_crit_edge

if.then28.i.for.end45.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45.i

if.then28.i.for.body36.i_crit_edge:               ; preds = %if.then28.i
  br label %for.body36.i

if.end30.i:                                       ; preds = %netdev_name.exit125.i
  %affinity_mask.i = getelementptr inbounds %struct.xgbe_channel, ptr %51, i32 0, i32 14
  %call.i.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %61, ptr noundef %affinity_mask.i, i1 noundef zeroext true) #11
  %inc.i76 = add nuw i32 %i.0131.i, 1
  %64 = ptrtoint ptr %channel_count.i72 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %channel_count.i72, align 8
  %cmp18.i = icmp ult i32 %inc.i76, %65
  br i1 %cmp18.i, label %if.end30.i.for.body.i75_crit_edge, label %if.end30.i.if.end19_crit_edge

if.end30.i.if.end19_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end30.i.for.body.i75_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i75

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %if.then28.i.for.body36.i_crit_edge
  %i.1134.i = phi i32 [ %i.1.i, %for.body36.i.for.body36.i_crit_edge ], [ %i.1132.i, %if.then28.i.for.body36.i_crit_edge ]
  %arrayidx38.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.1134.i
  %66 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx38.i, align 4
  %dma_irq39.i = getelementptr inbounds %struct.xgbe_channel, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %dma_irq39.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_irq39.i, align 4
  %call.i.i127.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %69, ptr noundef null, i1 noundef zeroext true) #11
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 8
  %72 = ptrtoint ptr %dma_irq39.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_irq39.i, align 4
  tail call void @devm_free_irq(ptr noundef %71, i32 noundef %73, ptr noundef %67) #11
  %i.1.i = add i32 %i.1134.i, -1
  %74 = ptrtoint ptr %channel_count.i72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channel_count.i72, align 8
  %cmp35.i = icmp ult i32 %i.1.i, %75
  br i1 %cmp35.i, label %for.body36.i.for.body36.i_crit_edge, label %for.body36.i.for.end45.i_crit_edge

for.body36.i.for.end45.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45.i

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body36.i

for.end45.i:                                      ; preds = %for.body36.i.for.end45.i_crit_edge, %if.then28.i.for.end45.i_crit_edge
  %76 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vdata.i, align 4
  %ecc_support47.i = getelementptr inbounds %struct.xgbe_version_data, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %ecc_support47.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ecc_support47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool48.not.i = icmp eq i32 %79, 0
  br i1 %tobool48.not.i, label %for.end45.i.xgbe_request_irqs.exit_crit_edge, label %land.lhs.true49.i

for.end45.i.xgbe_request_irqs.exit_crit_edge:     ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_request_irqs.exit

land.lhs.true49.i:                                ; preds = %for.end45.i
  %80 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dev_irq.i, align 8
  %ecc_irq51.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 43
  %82 = ptrtoint ptr %ecc_irq51.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ecc_irq51.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp52.not.i = icmp eq i32 %81, %83
  br i1 %cmp52.not.i, label %land.lhs.true49.i.xgbe_request_irqs.exit_crit_edge, label %if.then53.i

land.lhs.true49.i.xgbe_request_irqs.exit_crit_edge: ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_request_irqs.exit

if.then53.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 8
  tail call void @devm_free_irq(ptr noundef %85, i32 noundef %83, ptr noundef %pdata) #11
  br label %xgbe_request_irqs.exit

xgbe_request_irqs.exit:                           ; preds = %if.then53.i, %land.lhs.true49.i.xgbe_request_irqs.exit_crit_edge, %for.end45.i.xgbe_request_irqs.exit_crit_edge, %if.then11.i
  %ret.0.i = phi i32 [ %call.i118.i, %if.then11.i ], [ %call.i126.i, %if.then53.i ], [ %call.i126.i, %land.lhs.true49.i.xgbe_request_irqs.exit_crit_edge ], [ %call.i126.i, %for.end45.i.xgbe_request_irqs.exit_crit_edge ]
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 8
  %88 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dev_irq.i, align 8
  tail call void @devm_free_irq(ptr noundef %87, i32 noundef %89, ptr noundef %pdata) #11
  br label %err_napi

if.end19:                                         ; preds = %if.end30.i.if.end19_crit_edge, %for.cond.preheader.i73.if.end19_crit_edge, %if.end14.i.if.end19_crit_edge
  %phy_start = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 3
  %90 = ptrtoint ptr %phy_start to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy_start, align 4
  %call20 = tail call i32 %91(ptr noundef %pdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %err_irqs

if.end23:                                         ; preds = %if.end19
  %enable_tx = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 18
  %92 = ptrtoint ptr %enable_tx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %enable_tx, align 4
  tail call void %93(ptr noundef %pdata) #11
  %enable_rx = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 20
  %94 = ptrtoint ptr %enable_rx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %enable_rx, align 4
  tail call void %95(ptr noundef %pdata) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %96 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i77 = icmp eq ptr %96, null
  br i1 %tobool.not.i77, label %if.end23.udp_tunnel_nic_reset_ntf.exit_crit_edge, label %if.then.i78

if.end23.udp_tunnel_nic_reset_ntf.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp_tunnel_nic_reset_ntf.exit

if.then.i78:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %reset_ntf.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %reset_ntf.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reset_ntf.i, align 4
  tail call void %98(ptr noundef %1) #11
  br label %udp_tunnel_nic_reset_ntf.exit

udp_tunnel_nic_reset_ntf.exit:                    ; preds = %if.then.i78, %if.end23.udp_tunnel_nic_reset_ntf.exit_crit_edge
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %99 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp4.not.i = icmp eq i32 %100, 0
  br i1 %cmp4.not.i, label %udp_tunnel_nic_reset_ntf.exit.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i80

udp_tunnel_nic_reset_ntf.exit.netif_tx_start_all_queues.exit_crit_edge: ; preds = %udp_tunnel_nic_reset_ntf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i80:                               ; preds = %udp_tunnel_nic_reset_ntf.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i83

for.body.i83:                                     ; preds = %for.body.i83.for.body.i83_crit_edge, %for.body.lr.ph.i80
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i80 ], [ %inc.i81, %for.body.i83.for.body.i83_crit_edge ]
  %101 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %102, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %inc.i81 = add nuw i32 %i.05.i, 1
  %103 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i82 = icmp ult i32 %inc.i81, %104
  br i1 %cmp.i82, label %for.body.i83.for.body.i83_crit_edge, label %for.body.i83.netif_tx_start_all_queues.exit_crit_edge

for.body.i83.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_start_all_queues.exit

for.body.i83.for.body.i83_crit_edge:              ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i83

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i83.netif_tx_start_all_queues.exit_crit_edge, %udp_tunnel_nic_reset_ntf.exit.netif_tx_start_all_queues.exit_crit_edge
  %service_timer.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %105, 100
  %call.i = tail call i32 @mod_timer(ptr noundef %service_timer.i, i32 noundef %add.i) #11
  %dev_workqueue = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 59
  %106 = ptrtoint ptr %dev_workqueue to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev_workqueue, align 8
  %service_work = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 60
  %call.i84 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %107, ptr noundef %service_work) #11
  %dev_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 29
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %dev_state) #11
  br label %cleanup

err_irqs:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @xgbe_free_irqs(ptr noundef %pdata)
  br label %err_napi

err_napi:                                         ; preds = %err_irqs, %xgbe_request_irqs.exit, %xgbe_request_irqs.exit.thread98
  %ret.0 = phi i32 [ %ret.0.i, %xgbe_request_irqs.exit ], [ %call20, %err_irqs ], [ %call.i117.i, %xgbe_request_irqs.exit.thread98 ]
  %108 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i86 = icmp eq i32 %109, 0
  br i1 %tobool.not.i86, label %if.else.i95, label %for.cond.preheader.i88

for.cond.preheader.i88:                           ; preds = %err_napi
  %channel_count.i87 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %110 = ptrtoint ptr %channel_count.i87 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %channel_count.i87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp19.not.i = icmp eq i32 %111, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i88.xgbe_napi_disable.exit_crit_edge, label %for.cond.preheader.i88.for.body.i92_crit_edge

for.cond.preheader.i88.for.body.i92_crit_edge:    ; preds = %for.cond.preheader.i88
  br label %for.body.i92

for.cond.preheader.i88.xgbe_napi_disable.exit_crit_edge: ; preds = %for.cond.preheader.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_disable.exit

for.body.i92:                                     ; preds = %for.body.i92.for.body.i92_crit_edge, %for.cond.preheader.i88.for.body.i92_crit_edge
  %i.020.i = phi i32 [ %inc.i93, %for.body.i92.for.body.i92_crit_edge ], [ 0, %for.cond.preheader.i88.for.body.i92_crit_edge ]
  %arrayidx.i90 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.020.i
  %112 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i90, align 4
  %napi.i91 = getelementptr inbounds %struct.xgbe_channel, ptr %113, i32 0, i32 6
  tail call void @napi_disable(ptr noundef %napi.i91) #11
  tail call void @__netif_napi_del(ptr noundef %napi.i91) #11
  tail call void @synchronize_net() #11
  %inc.i93 = add nuw i32 %i.020.i, 1
  %114 = ptrtoint ptr %channel_count.i87 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %channel_count.i87, align 8
  %cmp.i94 = icmp ult i32 %inc.i93, %115
  br i1 %cmp.i94, label %for.body.i92.for.body.i92_crit_edge, label %for.body.i92.xgbe_napi_disable.exit_crit_edge

for.body.i92.xgbe_napi_disable.exit_crit_edge:    ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_napi_disable.exit

for.body.i92.for.body.i92_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i92

if.else.i95:                                      ; preds = %err_napi
  call void @__sanitizer_cov_trace_pc() #13
  %napi5.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 105
  tail call void @napi_disable(ptr noundef %napi5.i) #11
  tail call void @__netif_napi_del(ptr noundef %napi5.i) #11
  tail call void @synchronize_net() #11
  br label %xgbe_napi_disable.exit

xgbe_napi_disable.exit:                           ; preds = %if.else.i95, %for.body.i92.xgbe_napi_disable.exit_crit_edge, %for.cond.preheader.i88.xgbe_napi_disable.exit_crit_edge
  %exit = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 27
  %116 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %exit, align 4
  %call25 = tail call i32 %117(ptr noundef %pdata) #11
  br label %cleanup

cleanup:                                          ; preds = %xgbe_napi_disable.exit, %netif_tx_start_all_queues.exit, %for.end.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then6 ], [ %ret.0, %xgbe_napi_disable.exit ], [ 0, %netif_tx_start_all_queues.exit ], [ %call12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_restart_dev(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @xgbe_stop(ptr noundef %pdata)
  %channel_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %4 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.not.i = icmp eq i32 %5, 0
  br i1 %cmp26.not.i, label %if.end.xgbe_free_rx_data.exit_crit_edge, label %for.body.lr.ph.i

if.end.xgbe_free_rx_data.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_rx_data.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %unmap_rdata.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 53, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc7.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc8.i, %for.inc7.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.027.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %xgbe_free_tx_data.exitthread-pre-split, label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i
  %rdesc_count.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rdesc_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp324.not.i = icmp eq i32 %11, 0
  br i1 %cmp324.not.i, label %for.cond2.preheader.i.for.inc7.i_crit_edge, label %for.body4.lr.ph.i

for.cond2.preheader.i.for.inc7.i_crit_edge:       ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc7.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %rdata5.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 5
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %12 = phi i32 [ %11, %for.body4.lr.ph.i ], [ %18, %for.body4.i.for.body4.i_crit_edge ]
  %j.025.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %13 = ptrtoint ptr %rdata5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdata5.i, align 4
  %sub.i = add i32 %12, -1
  %and.i = and i32 %sub.i, %j.025.i
  %add.ptr.i = getelementptr %struct.xgbe_ring_data, ptr %14, i32 %and.i
  %15 = ptrtoint ptr %unmap_rdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unmap_rdata.i, align 4
  tail call void %16(ptr noundef %pdata, ptr noundef %add.ptr.i) #11
  %inc.i = add nuw i32 %j.025.i, 1
  %17 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rdesc_count.i, align 8
  %cmp3.i = icmp ult i32 %inc.i, %18
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc7.i_crit_edge

for.body4.i.for.inc7.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc7.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i

for.inc7.i:                                       ; preds = %for.body4.i.for.inc7.i_crit_edge, %for.cond2.preheader.i.for.inc7.i_crit_edge
  %inc8.i = add nuw i32 %i.027.i, 1
  %19 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel_count.i, align 8
  %cmp.i = icmp ult i32 %inc8.i, %20
  br i1 %cmp.i, label %for.inc7.i.for.body.i_crit_edge, label %for.inc7.i.xgbe_free_tx_data.exit_crit_edge

for.inc7.i.xgbe_free_tx_data.exit_crit_edge:      ; preds = %for.inc7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_tx_data.exit

for.inc7.i.for.body.i_crit_edge:                  ; preds = %for.inc7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_free_tx_data.exitthread-pre-split:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %channel_count.i, align 8
  br label %xgbe_free_tx_data.exit

xgbe_free_tx_data.exit:                           ; preds = %xgbe_free_tx_data.exitthread-pre-split, %for.inc7.i.xgbe_free_tx_data.exit_crit_edge
  %22 = phi i32 [ %.pr, %xgbe_free_tx_data.exitthread-pre-split ], [ %20, %for.inc7.i.xgbe_free_tx_data.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp26.not.i7 = icmp eq i32 %22, 0
  br i1 %cmp26.not.i7, label %xgbe_free_tx_data.exit.xgbe_free_rx_data.exit_crit_edge, label %xgbe_free_tx_data.exit.for.body.i13_crit_edge

xgbe_free_tx_data.exit.for.body.i13_crit_edge:    ; preds = %xgbe_free_tx_data.exit
  br label %for.body.i13

xgbe_free_tx_data.exit.xgbe_free_rx_data.exit_crit_edge: ; preds = %xgbe_free_tx_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_rx_data.exit

for.body.i13:                                     ; preds = %for.inc7.i28.for.body.i13_crit_edge, %xgbe_free_tx_data.exit.for.body.i13_crit_edge
  %i.027.i10 = phi i32 [ %inc8.i26, %for.inc7.i28.for.body.i13_crit_edge ], [ 0, %xgbe_free_tx_data.exit.for.body.i13_crit_edge ]
  %arrayidx.i11 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.027.i10
  %23 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i11, align 4
  %rx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_ring.i, align 16
  %tobool.not.i12 = icmp eq ptr %26, null
  br i1 %tobool.not.i12, label %for.body.i13.xgbe_free_rx_data.exit_crit_edge, label %for.cond2.preheader.i16

for.body.i13.xgbe_free_rx_data.exit_crit_edge:    ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_rx_data.exit

for.cond2.preheader.i16:                          ; preds = %for.body.i13
  %rdesc_count.i14 = getelementptr inbounds %struct.xgbe_ring, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %rdesc_count.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rdesc_count.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp324.not.i15 = icmp eq i32 %28, 0
  br i1 %cmp324.not.i15, label %for.cond2.preheader.i16.for.inc7.i28_crit_edge, label %for.body4.lr.ph.i18

for.cond2.preheader.i16.for.inc7.i28_crit_edge:   ; preds = %for.cond2.preheader.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc7.i28

for.body4.lr.ph.i18:                              ; preds = %for.cond2.preheader.i16
  %rdata5.i17 = getelementptr inbounds %struct.xgbe_ring, ptr %26, i32 0, i32 5
  br label %for.body4.i25

for.body4.i25:                                    ; preds = %for.body4.i25.for.body4.i25_crit_edge, %for.body4.lr.ph.i18
  %29 = phi i32 [ %28, %for.body4.lr.ph.i18 ], [ %35, %for.body4.i25.for.body4.i25_crit_edge ]
  %j.025.i19 = phi i32 [ 0, %for.body4.lr.ph.i18 ], [ %inc.i23, %for.body4.i25.for.body4.i25_crit_edge ]
  %30 = ptrtoint ptr %rdata5.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rdata5.i17, align 4
  %sub.i20 = add i32 %29, -1
  %and.i21 = and i32 %sub.i20, %j.025.i19
  %add.ptr.i22 = getelementptr %struct.xgbe_ring_data, ptr %31, i32 %and.i21
  %32 = ptrtoint ptr %unmap_rdata.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unmap_rdata.i, align 4
  tail call void %33(ptr noundef %pdata, ptr noundef %add.ptr.i22) #11
  %inc.i23 = add nuw i32 %j.025.i19, 1
  %34 = ptrtoint ptr %rdesc_count.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rdesc_count.i14, align 8
  %cmp3.i24 = icmp ult i32 %inc.i23, %35
  br i1 %cmp3.i24, label %for.body4.i25.for.body4.i25_crit_edge, label %for.body4.i25.for.inc7.i28_crit_edge

for.body4.i25.for.inc7.i28_crit_edge:             ; preds = %for.body4.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc7.i28

for.body4.i25.for.body4.i25_crit_edge:            ; preds = %for.body4.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i25

for.inc7.i28:                                     ; preds = %for.body4.i25.for.inc7.i28_crit_edge, %for.cond2.preheader.i16.for.inc7.i28_crit_edge
  %inc8.i26 = add nuw i32 %i.027.i10, 1
  %36 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel_count.i, align 8
  %cmp.i27 = icmp ult i32 %inc8.i26, %37
  br i1 %cmp.i27, label %for.inc7.i28.for.body.i13_crit_edge, label %for.inc7.i28.xgbe_free_rx_data.exit_crit_edge

for.inc7.i28.xgbe_free_rx_data.exit_crit_edge:    ; preds = %for.inc7.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_rx_data.exit

for.inc7.i28.for.body.i13_crit_edge:              ; preds = %for.inc7.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i13

xgbe_free_rx_data.exit:                           ; preds = %for.inc7.i28.xgbe_free_rx_data.exit_crit_edge, %for.body.i13.xgbe_free_rx_data.exit_crit_edge, %xgbe_free_tx_data.exit.xgbe_free_rx_data.exit_crit_edge, %if.end.xgbe_free_rx_data.exit_crit_edge
  %call1 = tail call fastcc i32 @xgbe_start(ptr noundef %pdata)
  br label %return

return:                                           ; preds = %xgbe_free_rx_data.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @xgbe_get_netdev_ops() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @xgbe_netdev_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_dump_tx_desc(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %ring, i32 noundef %idx, i32 noundef %count, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not17 = icmp eq i32 %count, 0
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rdata1 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 5
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp = icmp eq i32 %flag, 1
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  br label %while.body

while.body:                                       ; preds = %do.end8.while.body_crit_edge, %while.body.lr.ph
  %dec19.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec19, %do.end8.while.body_crit_edge ]
  %idx.addr.018 = phi i32 [ %idx, %while.body.lr.ph ], [ %inc, %do.end8.while.body_crit_edge ]
  %dec19 = add i32 %dec19.in, -1
  %0 = ptrtoint ptr %rdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata1, align 4
  %2 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rdesc_count, align 8
  %sub = add i32 %3, -1
  %and = and i32 %sub, %idx.addr.018
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %1, i32 %and
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_tx_desc.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_tx_desc, %if.then)) #11
          to label %do.end8 [label %if.then], !srcloc !309

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %desc1 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc1, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %desc2 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc2, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %desc3 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desc3, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dump_tx_desc.__UNIQUE_ID_ddebug632, ptr noundef %7, ptr noundef nonnull @.str.46, i32 noundef %idx.addr.018, ptr noundef nonnull %cond, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %while.body
  %inc = add i32 %idx.addr.018, 1
  %tobool.not = icmp eq i32 %dec19, 0
  br i1 %tobool.not, label %do.end8.while.end_crit_edge, label %do.end8.while.body_crit_edge

do.end8.while.body_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end8.while.end_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end8.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_dump_rx_desc(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %ring, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rdata1 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 5
  %0 = ptrtoint ptr %rdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata1, align 4
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 4
  %2 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rdesc_count, align 8
  %sub = add i32 %3, -1
  %and = and i32 %sub, %idx
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %1, i32 %and
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_rx_desc.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_rx_desc, %if.then)) #11
          to label %do.end7 [label %if.then], !srcloc !309

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %desc1 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc1, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %desc2 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc2, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %desc3 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desc3, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dump_rx_desc.__UNIQUE_ID_ddebug633, ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef %idx, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_print_pkt(ptr noundef %netdev, ptr nocapture noundef readonly %skb, i1 noundef zeroext %tx_rx) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buffer) #11
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 128)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_print_pkt, %if.then)) #11
          to label %do.body8 [label %if.then], !srcloc !309

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_print_pkt.__UNIQUE_ID_ddebug634, ptr noundef %netdev, ptr noundef nonnull @.str.52) #11
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_print_pkt, %if.then20)) #11
          to label %do.body28 [label %if.then20], !srcloc !309

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %tx_rx, ptr @.str.54, ptr @.str.55
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_print_pkt.__UNIQUE_ID_ddebug635, ptr noundef %netdev, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond, i32 noundef %4) #11
  br label %do.body28

do.body28:                                        ; preds = %if.then20, %do.body8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_print_pkt, %if.then40)) #11
          to label %do.body47 [label %if.then40], !srcloc !309

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_print_pkt.__UNIQUE_ID_ddebug636, ptr noundef %netdev, ptr noundef nonnull @.str.56, ptr noundef %1) #11
  br label %do.body47

do.body47:                                        ; preds = %if.then40, %do.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_print_pkt, %if.then59)) #11
          to label %do.body67 [label %if.then59], !srcloc !309

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_print_pkt.__UNIQUE_ID_ddebug637, ptr noundef %netdev, ptr noundef nonnull @.str.57, ptr noundef %h_source) #11
  br label %do.body67

do.body67:                                        ; preds = %if.then59, %do.body47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_print_pkt, %if.then79)) #11
          to label %do.end84 [label %if.then79], !srcloc !309

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %h_proto, align 1
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_print_pkt.__UNIQUE_ID_ddebug638, ptr noundef %netdev, ptr noundef nonnull @.str.58, i32 noundef %conv) #11
  br label %do.end84

do.end84:                                         ; preds = %if.then79, %do.body67
  %len85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len85 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp178.not = icmp eq i32 %8, 0
  br i1 %cmp178.not, label %do.end84.do.body117_crit_edge, label %do.end84.for.body_crit_edge

do.end84.for.body_crit_edge:                      ; preds = %do.end84
  br label %for.body

do.end84.do.body117_crit_edge:                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body117

for.body:                                         ; preds = %do.end115.for.body_crit_edge, %do.end84.for.body_crit_edge
  %9 = phi i32 [ %14, %do.end115.for.body_crit_edge ], [ %8, %do.end84.for.body_crit_edge ]
  %i.0179 = phi i32 [ %add, %do.end115.for.body_crit_edge ], [ 0, %do.end84.for.body_crit_edge ]
  %sub = sub i32 %9, %i.0179
  %10 = call i32 @llvm.umin.i32(i32 %sub, i32 32)
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %i.0179
  %call95 = call i32 @hex_dump_to_buffer(ptr noundef %arrayidx, i32 noundef %10, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %buffer, i32 noundef 128, i1 noundef zeroext false) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_print_pkt, %if.then109)) #11
          to label %do.end115 [label %if.then109], !srcloc !309

if.then109:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_print_pkt.__UNIQUE_ID_ddebug641, ptr noundef %netdev, ptr noundef nonnull @.str.59, i32 noundef %i.0179, ptr noundef nonnull %buffer) #11
  br label %do.end115

do.end115:                                        ; preds = %if.then109, %for.body
  %add = add i32 %i.0179, 32
  %13 = ptrtoint ptr %len85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len85, align 4
  %cmp = icmp ugt i32 %14, %add
  br i1 %cmp, label %do.end115.for.body_crit_edge, label %do.end115.do.body117_crit_edge

do.end115.do.body117_crit_edge:                   ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body117

do.end115.for.body_crit_edge:                     ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body117:                                       ; preds = %do.end115.do.body117_crit_edge, %do.end84.do.body117_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_print_pkt, %if.then129)) #11
          to label %do.end134 [label %if.then129], !srcloc !309

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_print_pkt.__UNIQUE_ID_ddebug642, ptr noundef %netdev, ptr noundef nonnull @.str.52) #11
  br label %do.end134

do.end134:                                        ; preds = %if.then129, %do.body117
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buffer) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_vxlan_set_port(ptr noundef %netdev, i32 noundef %table, i32 noundef %entry1, ptr nocapture noundef readonly %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port, align 2
  %vxlan_port = getelementptr i8, ptr %netdev, i32 4748
  %2 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %vxlan_port, align 4
  %enable_vxlan = getelementptr i8, ptr %netdev, i32 3048
  %3 = ptrtoint ptr %enable_vxlan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enable_vxlan, align 4
  tail call void %4(ptr noundef %add.ptr.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_vxlan_unset_port(ptr noundef %netdev, i32 noundef %table, i32 noundef %entry1, ptr nocapture noundef readnone %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %disable_vxlan = getelementptr i8, ptr %netdev, i32 3052
  %0 = ptrtoint ptr %disable_vxlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disable_vxlan, align 4
  tail call void %1(ptr noundef %add.ptr.i) #11
  %vxlan_port = getelementptr i8, ptr %netdev, i32 4748
  %2 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %vxlan_port, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_one_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -80
  %pdata1 = getelementptr i8, ptr %napi, i32 -64
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  tail call fastcc void @xgbe_tx_poll(ptr noundef %add.ptr)
  %call2 = tail call fastcc i32 @xgbe_rx_poll(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %budget)
  %cmp = icmp slt i32 %call2, %budget
  br i1 %cmp, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call2) #11
  br i1 %call3, label %if.then, label %land.lhs.true.do.end8_crit_edge

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true
  %channel_irq_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %channel_irq_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_irq_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %tx_ring.i = getelementptr i8, ptr %napi, i32 284
  %4 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %rx_ring7.i = getelementptr i8, ptr %napi, i32 288
  %6 = ptrtoint ptr %rx_ring7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring7.i, align 16
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else6.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 6
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.then4
  br i1 %tobool8.not.i, label %if.else6.i.do.end8_crit_edge, label %if.else6.i.if.end12.i_crit_edge

if.else6.i.if.end12.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.else6.i.do.end8_crit_edge:                     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.end12.i:                                       ; preds = %if.else6.i.if.end12.i_crit_edge, %land.lhs.true.i
  %int_id.0.i = phi i32 [ 3, %if.else6.i.if.end12.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %enable_int.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 28
  %8 = ptrtoint ptr %enable_int.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_int.i, align 4
  %call.i = tail call i32 %9(ptr noundef %add.ptr, i32 noundef %int_id.0.i) #11
  br label %do.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dma_irq = getelementptr i8, ptr %napi, i32 -52
  %10 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_irq, align 4
  tail call void @enable_irq(i32 noundef %11) #11
  br label %do.end8

do.end8:                                          ; preds = %if.else, %if.end12.i, %if.else6.i.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_all_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_count = getelementptr i8, ptr %napi, i32 -1332
  %0 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_count, align 4
  %div = udiv i32 %budget, %1
  %channel_count = getelementptr i8, ptr %napi, i32 -1344
  %channel2 = getelementptr i8, ptr %napi, i32 -1416
  br label %do.body1

do.body1:                                         ; preds = %do.cond6.do.body1_crit_edge, %entry
  %ring_budget.0 = phi i32 [ %div, %entry ], [ %6, %do.cond6.do.body1_crit_edge ]
  %processed.0 = phi i32 [ 0, %entry ], [ %add, %do.cond6.do.body1_crit_edge ]
  %2 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp37.not = icmp eq i32 %3, 0
  br i1 %cmp37.not, label %do.cond6.thread, label %do.body1.for.body_crit_edge

do.body1.for.body_crit_edge:                      ; preds = %do.body1
  br label %for.body

do.cond6.thread:                                  ; preds = %do.body1
  call void @__sanitizer_cov_trace_cmp4(i32 %processed.0, i32 %budget)
  %cmp744 = icmp slt i32 %processed.0, %budget
  br i1 %cmp744, label %do.cond6.thread.land.lhs.true_crit_edge, label %do.cond6.thread.do.end16_crit_edge

do.cond6.thread.do.end16_crit_edge:               ; preds = %do.cond6.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.cond6.thread.land.lhs.true_crit_edge:          ; preds = %do.cond6.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body1.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body1.for.body_crit_edge ]
  %processed.139 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %processed.0, %do.body1.for.body_crit_edge ]
  %ring_budget.138 = phi i32 [ %6, %for.body.for.body_crit_edge ], [ %ring_budget.0, %do.body1.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %channel2, i32 0, i32 %i.040
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @xgbe_tx_poll(ptr noundef %5)
  %sub = sub i32 %budget, %processed.139
  %6 = tail call i32 @llvm.smin.i32(i32 %ring_budget.138, i32 %sub)
  %call5 = tail call fastcc i32 @xgbe_rx_poll(ptr noundef %5, i32 noundef %6)
  %add = add i32 %call5, %processed.139
  %inc = add nuw i32 %i.040, 1
  %7 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %do.cond6

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.cond6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp7 = icmp slt i32 %add, %budget
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %processed.0)
  %cmp8.not = icmp ne i32 %add, %processed.0
  %9 = and i1 %cmp7, %cmp8.not
  br i1 %9, label %do.cond6.do.body1_crit_edge, label %do.end9

do.cond6.do.body1_crit_edge:                      ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1

do.end9:                                          ; preds = %do.cond6
  br i1 %cmp7, label %do.end9.land.lhs.true_crit_edge, label %do.end9.do.end16_crit_edge

do.end9.do.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.end9.land.lhs.true_crit_edge:                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end9.land.lhs.true_crit_edge, %do.cond6.thread.land.lhs.true_crit_edge
  %processed.1.lcssa4650 = phi i32 [ %processed.0, %do.cond6.thread.land.lhs.true_crit_edge ], [ %add, %do.end9.land.lhs.true_crit_edge ]
  %add.ptr51 = getelementptr i8, ptr %napi, i32 -2464
  %call11 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %processed.1.lcssa4650) #11
  br i1 %call11, label %if.then12, label %land.lhs.true.do.end16_crit_edge

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then12:                                        ; preds = %land.lhs.true
  %10 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5.not.i = icmp eq i32 %11, 0
  br i1 %cmp5.not.i, label %if.then12.do.end16_crit_edge, label %for.body.lr.ph.i

if.then12.do.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

for.body.lr.ph.i:                                 ; preds = %if.then12
  %enable_int.i.i = getelementptr i8, ptr %napi, i32 -1876
  br label %for.body.i

for.body.i:                                       ; preds = %xgbe_enable_rx_tx_int.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %xgbe_enable_rx_tx_int.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %add.ptr51, i32 0, i32 62, i32 %i.06.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  %rx_ring7.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %13, i32 0, i32 12
  %16 = ptrtoint ptr %rx_ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring7.i.i, align 16
  %tobool8.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.else6.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i.i = select i1 %tobool8.not.i.i, i32 0, i32 6
  br label %if.end12.i.i

if.else6.i.i:                                     ; preds = %for.body.i
  br i1 %tobool8.not.i.i, label %if.else6.i.i.xgbe_enable_rx_tx_int.exit.i_crit_edge, label %if.else6.i.i.if.end12.i.i_crit_edge

if.else6.i.i.if.end12.i.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.else6.i.i.xgbe_enable_rx_tx_int.exit.i_crit_edge: ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_enable_rx_tx_int.exit.i

if.end12.i.i:                                     ; preds = %if.else6.i.i.if.end12.i.i_crit_edge, %land.lhs.true.i.i
  %int_id.0.i.i = phi i32 [ 3, %if.else6.i.i.if.end12.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %18 = ptrtoint ptr %enable_int.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable_int.i.i, align 4
  %call.i.i = tail call i32 %19(ptr noundef %13, i32 noundef %int_id.0.i.i) #11
  br label %xgbe_enable_rx_tx_int.exit.i

xgbe_enable_rx_tx_int.exit.i:                     ; preds = %if.end12.i.i, %if.else6.i.i.xgbe_enable_rx_tx_int.exit.i_crit_edge
  %inc.i = add nuw i32 %i.06.i, 1
  %20 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_count, align 8
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %xgbe_enable_rx_tx_int.exit.i.for.body.i_crit_edge, label %xgbe_enable_rx_tx_int.exit.i.do.end16_crit_edge

xgbe_enable_rx_tx_int.exit.i.do.end16_crit_edge:  ; preds = %xgbe_enable_rx_tx_int.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

xgbe_enable_rx_tx_int.exit.i.for.body.i_crit_edge: ; preds = %xgbe_enable_rx_tx_int.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end16:                                         ; preds = %xgbe_enable_rx_tx_int.exit.i.do.end16_crit_edge, %if.then12.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %do.end9.do.end16_crit_edge, %do.cond6.thread.do.end16_crit_edge
  %processed.1.lcssa47 = phi i32 [ %processed.1.lcssa4650, %if.then12.do.end16_crit_edge ], [ %add, %do.end9.do.end16_crit_edge ], [ %processed.1.lcssa4650, %land.lhs.true.do.end16_crit_edge ], [ %processed.0, %do.cond6.thread.do.end16_crit_edge ], [ %processed.1.lcssa4650, %xgbe_enable_rx_tx_int.exit.i.do.end16_crit_edge ]
  ret i32 %processed.1.lcssa47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_tx_poll(ptr nocapture noundef readonly %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %hw_if2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %cur5 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !310
  %queue_index = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 2
  %8 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_index, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %11, i32 %9
  %dirty = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 10
  %rdata13 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 5
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  %is_last_desc = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 36
  %unmap_rdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 53, i32 4
  %tx_desc_reset = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 34
  br label %land.rhs

land.rhs:                                         ; preds = %if.end30.land.rhs_crit_edge, %if.end
  %tx_bytes.09 = phi i32 [ 0, %if.end ], [ %tx_bytes.1, %if.end30.land.rhs_crit_edge ]
  %processed.07 = phi i32 [ 0, %if.end ], [ %inc, %if.end30.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp12.not = icmp eq i32 %13, %7
  br i1 %cmp12.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %14 = ptrtoint ptr %rdata13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdata13, align 4
  %16 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rdesc_count, align 8
  %sub = add i32 %17, -1
  %and = and i32 %sub, %13
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %15, i32 %and
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %hw_if2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_if2, align 4
  %call16 = tail call i32 %21(ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %while.body.while.end_crit_edge, label %if.end19

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end19:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !311
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and20 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dirty, align 8
  %26 = ptrtoint ptr %rdata13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rdata13, align 4
  %28 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rdesc_count, align 8
  %sub.i = add i32 %29, -1
  %and.i = and i32 %sub.i, %25
  %add.ptr.i = getelementptr %struct.xgbe_ring_data, ptr %27, i32 %and.i
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_tx_desc.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_tx_poll, %if.then.i)) #11
          to label %if.end24 [label %if.then.i], !srcloc !309

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  %desc1.i = getelementptr inbounds %struct.xgbe_ring_desc, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc1.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %desc2.i = getelementptr inbounds %struct.xgbe_ring_desc, ptr %31, i32 0, i32 2
  %40 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %desc2.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #11
  %desc3.i = getelementptr inbounds %struct.xgbe_ring_desc, ptr %31, i32 0, i32 3
  %43 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %desc3.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dump_tx_desc.__UNIQUE_ID_ddebug632, ptr noundef %33, ptr noundef nonnull @.str.46, i32 noundef %25, ptr noundef nonnull @.str.48, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then.i, %if.then22, %if.end19.if.end24_crit_edge
  %46 = ptrtoint ptr %is_last_desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %is_last_desc, align 4
  %call25 = tail call i32 %47(ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %bytes = getelementptr %struct.xgbe_ring_data, ptr %15, i32 %and, i32 5, i32 1
  %48 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bytes, align 4
  %add29 = add i32 %49, %tx_bytes.09
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %tx_bytes.1 = phi i32 [ %add29, %if.then27 ], [ %tx_bytes.09, %if.end24.if.end30_crit_edge ]
  %50 = ptrtoint ptr %unmap_rdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %unmap_rdata, align 4
  tail call void %51(ptr noundef %1, ptr noundef %add.ptr) #11
  %52 = ptrtoint ptr %tx_desc_reset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_desc_reset, align 4
  tail call void %53(ptr noundef %add.ptr) #11
  %inc = add nuw nsw i32 %processed.07, 1
  %54 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dirty, align 8
  %inc32 = add i32 %55, 1
  store i32 %inc32, ptr %dirty, align 8
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %if.end30.if.end35_crit_edge, label %if.end30.land.rhs_crit_edge

if.end30.land.rhs_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %processed.07)
  %tobool33.not = icmp eq i32 %processed.07, 0
  br i1 %tobool33.not, label %while.end.cleanup_crit_edge, label %while.end.if.end35_crit_edge

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %while.end.if.end35_crit_edge, %if.end30.if.end35_crit_edge
  %tx_bytes.05 = phi i32 [ %tx_bytes.09, %while.end.if.end35_crit_edge ], [ %tx_bytes.1, %if.end30.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_bytes.05)
  %tobool.not.i1 = icmp eq i32 %tx_bytes.05, 0
  br i1 %tobool.not.i1, label %if.end35.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i, !prof !312

if.end35.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.end.i:                                         ; preds = %if.end35
  %dql.i = getelementptr %struct.netdev_queue, ptr %11, i32 %9, i32 15
  tail call void @dql_completed(ptr noundef %dql.i, i32 noundef %tx_bytes.05) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !313
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %9, i32 15, i32 1
  %56 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %adj_limit.i.i, align 4
  %58 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %57, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i, label %if.end.i.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !312

if.end.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i
  %state.i = getelementptr %struct.netdev_queue, ptr %11, i32 %9, i32 13
  %call15.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i) #11
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i.netdev_tx_completed_queue.exit_crit_edge, %if.end35.netdev_tx_completed_queue.exit_crit_edge
  %60 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 12
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp36 = icmp eq i32 %62, 1
  br i1 %cmp36, label %land.lhs.true, label %netdev_tx_completed_queue.exit.cleanup_crit_edge

netdev_tx_completed_queue.exit.cleanup_crit_edge: ; preds = %netdev_tx_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %netdev_tx_completed_queue.exit
  %63 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rdesc_count, align 8
  %65 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cur5, align 4
  %67 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dirty, align 8
  %sub.neg.i = sub i32 %64, %66
  %sub1.i = add i32 %sub.neg.i, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub1.i)
  %cmp38 = icmp ugt i32 %sub1.i, 64
  br i1 %cmp38, label %if.then39, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %60, align 16
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true.cleanup_crit_edge, %netdev_tx_completed_queue.exit.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_rx_poll(ptr noundef %channel, i32 noundef %budget) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 12
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %per_channel_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %napi5 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 6
  %napi6 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 105
  %cond = select i1 %tobool4.not, ptr %napi6, ptr %napi5
  %rdata7 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 5
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 9
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 4
  %packet_data = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp402 = icmp sgt i32 %budget, 0
  br i1 %cmp402, label %do.end10.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end10.lr.ph:                                   ; preds = %if.end
  %8 = ptrtoint ptr %rdata7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdata7, align 4
  %10 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rdesc_count, align 8
  %sub = add i32 %11, -1
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur, align 4
  %and = and i32 %sub, %13
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %9, i32 %and
  %dirty.i = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 10
  %dma_regs.i = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 3
  %dev_read = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 31
  %attributes = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 1
  %errors = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 2
  %dev.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  %mtu = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %vlan_ctag = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 9
  %tstamp_tc = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 118
  %rx_tstamp = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 10
  %rss_hash = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 11
  %rss_hash_type = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 12
  %queue_index = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 2
  br label %do.end10

do.end10:                                         ; preds = %next_packet.do.end10_crit_edge, %do.end10.lr.ph
  %packet_count.0407 = phi i32 [ 0, %do.end10.lr.ph ], [ %inc190, %next_packet.do.end10_crit_edge ]
  %received.0406 = phi i32 [ 0, %do.end10.lr.ph ], [ %inc, %next_packet.do.end10_crit_edge ]
  %context_next.0405 = phi i32 [ 0, %do.end10.lr.ph ], [ %and38.lcssa428, %next_packet.do.end10_crit_edge ]
  %last.0404 = phi i32 [ 0, %do.end10.lr.ph ], [ %and35, %next_packet.do.end10_crit_edge ]
  %rdata.0403 = phi ptr [ %add.ptr, %do.end10.lr.ph ], [ %add.ptr25.lcssa364366, %next_packet.do.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %received.0406)
  %tobool11.not = icmp eq i32 %received.0406, 0
  br i1 %tobool11.not, label %land.lhs.true, label %do.end10.if.else_crit_edge

do.end10.if.else_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %do.end10
  %state_saved = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.0403, i32 0, i32 8
  %14 = ptrtoint ptr %state_saved to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state_saved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %land.lhs.true.if.else_crit_edge, label %if.then13

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.0403, i32 0, i32 9
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %error16 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.0403, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %error16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error16, align 4
  %len18 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.0403, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len18, align 4
  br label %read_again.outer.preheader

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end10.if.else_crit_edge
  %22 = call ptr @memset(ptr %packet_data, i32 0, i32 64)
  br label %read_again.outer.preheader

read_again.outer.preheader:                       ; preds = %if.else, %if.then13
  %skb.2.ph.ph = phi ptr [ %17, %if.then13 ], [ null, %if.else ]
  %error.2.ph.ph = phi i32 [ %19, %if.then13 ], [ 0, %if.else ]
  %len.2.ph.ph = phi i32 [ %21, %if.then13 ], [ 0, %if.else ]
  br label %read_again.outer

read_again.outer:                                 ; preds = %skip_data.read_again.outer_crit_edge, %read_again.outer.preheader
  %skb.2.ph = phi ptr [ %skb.4, %skip_data.read_again.outer_crit_edge ], [ %skb.2.ph.ph, %read_again.outer.preheader ]
  %last.1.ph = phi i32 [ %and35, %skip_data.read_again.outer_crit_edge ], [ %last.0404, %read_again.outer.preheader ]
  %error.2.ph = phi i32 [ %error.3, %skip_data.read_again.outer_crit_edge ], [ %error.2.ph.ph, %read_again.outer.preheader ]
  %context_next.1.ph = phi i32 [ %and38, %skip_data.read_again.outer_crit_edge ], [ %context_next.0405, %read_again.outer.preheader ]
  %len.2.ph = phi i32 [ %len.3, %skip_data.read_again.outer_crit_edge ], [ %len.2.ph.ph, %read_again.outer.preheader ]
  %received.1.ph = phi i32 [ %inc, %skip_data.read_again.outer_crit_edge ], [ %received.0406, %read_again.outer.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2.ph)
  %tobool45.not = icmp eq i32 %error.2.ph, 0
  br label %read_again

read_again:                                       ; preds = %if.end32.read_again_crit_edge, %read_again.outer
  %last.1 = phi i32 [ %and35, %if.end32.read_again_crit_edge ], [ %last.1.ph, %read_again.outer ]
  %context_next.1 = phi i32 [ %and38, %if.end32.read_again_crit_edge ], [ %context_next.1.ph, %read_again.outer ]
  %received.1 = phi i32 [ %inc, %if.end32.read_again_crit_edge ], [ %received.1.ph, %read_again.outer ]
  %23 = ptrtoint ptr %rdata7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdata7, align 4
  %25 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur, align 4
  %27 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rdesc_count, align 8
  %29 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty.i, align 8
  %sub.i = sub i32 %26, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %cmp26 = icmp ugt i32 %sub.i, 64
  br i1 %cmp26, label %if.then27, label %read_again.if.end28_crit_edge

read_again.if.end28_crit_edge:                    ; preds = %read_again
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %read_again
  %31 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata1, align 16
  %33 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_ring, align 16
  %rdata4.i = getelementptr inbounds %struct.xgbe_ring, ptr %34, i32 0, i32 5
  %dirty.i346 = getelementptr inbounds %struct.xgbe_ring, ptr %34, i32 0, i32 10
  %cur.i347 = getelementptr inbounds %struct.xgbe_ring, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %dirty.i346 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dirty.i346, align 8
  %37 = ptrtoint ptr %cur.i347 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur.i347, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.not37.i = icmp eq i32 %36, %38
  br i1 %cmp.not37.i, label %if.then27.xgbe_rx_refresh.exit_crit_edge, label %while.body.lr.ph.i

if.then27.xgbe_rx_refresh.exit_crit_edge:         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_rx_refresh.exit

while.body.lr.ph.i:                               ; preds = %if.then27
  %rdesc_count.i = getelementptr inbounds %struct.xgbe_ring, ptr %34, i32 0, i32 4
  %unmap_rdata.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %32, i32 0, i32 53, i32 4
  %map_rx_buffer.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %32, i32 0, i32 53, i32 3
  %rx_desc_reset.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %32, i32 0, i32 51, i32 35
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %39 = phi i32 [ %36, %while.body.lr.ph.i ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %40 = ptrtoint ptr %rdata4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdata4.i, align 4
  %42 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rdesc_count.i, align 8
  %sub.i348 = add i32 %43, -1
  %and.i = and i32 %sub.i348, %39
  %add.ptr.i = getelementptr %struct.xgbe_ring_data, ptr %41, i32 %and.i
  %44 = ptrtoint ptr %unmap_rdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %unmap_rdata.i, align 4
  tail call void %45(ptr noundef %32, ptr noundef %add.ptr.i) #11
  %46 = ptrtoint ptr %map_rx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map_rx_buffer.i, align 4
  %call.i = tail call i32 %47(ptr noundef %32, ptr noundef %34, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.xgbe_rx_refresh.exit_crit_edge

while.body.i.xgbe_rx_refresh.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_rx_refresh.exit

if.end.i:                                         ; preds = %while.body.i
  %48 = ptrtoint ptr %rx_desc_reset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_desc_reset.i, align 4
  %50 = ptrtoint ptr %dirty.i346 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dirty.i346, align 8
  tail call void %49(ptr noundef %32, ptr noundef %add.ptr.i, i32 noundef %51) #11
  %52 = ptrtoint ptr %dirty.i346 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dirty.i346, align 8
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %dirty.i346, align 8
  %54 = ptrtoint ptr %cur.i347 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur.i347, align 4
  %cmp.not.i = icmp eq i32 %inc.i, %55
  br i1 %cmp.not.i, label %if.end.i.xgbe_rx_refresh.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.xgbe_rx_refresh.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_rx_refresh.exit

xgbe_rx_refresh.exit:                             ; preds = %if.end.i.xgbe_rx_refresh.exit_crit_edge, %while.body.i.xgbe_rx_refresh.exit_crit_edge, %if.then27.xgbe_rx_refresh.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %rdata4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rdata4.i, align 4
  %58 = ptrtoint ptr %dirty.i346 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dirty.i346, align 8
  %sub10.i = add i32 %59, -1
  %rdesc_count11.i = getelementptr inbounds %struct.xgbe_ring, ptr %34, i32 0, i32 4
  %60 = ptrtoint ptr %rdesc_count11.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rdesc_count11.i, align 8
  %sub12.i = add i32 %61, -1
  %and13.i = and i32 %sub12.i, %sub10.i
  %rdesc_dma.i = getelementptr %struct.xgbe_ring_data, ptr %57, i32 %and13.i, i32 1
  %62 = ptrtoint ptr %rdesc_dma.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rdesc_dma.i, align 4
  %64 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %65, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %66 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %66) #11, !srcloc !316
  br label %if.end28

if.end28:                                         ; preds = %xgbe_rx_refresh.exit, %read_again.if.end28_crit_edge
  %67 = ptrtoint ptr %dev_read to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_read, align 4
  %call29 = tail call i32 %68(ptr noundef %channel) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.while.end_crit_edge

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end32:                                         ; preds = %if.end28
  %inc = add i32 %received.1, 1
  %69 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur, align 4
  %inc34 = add i32 %70, 1
  store i32 %inc34, ptr %cur, align 4
  %71 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %attributes, align 4
  %shr = lshr i32 %72, 2
  %and35 = and i32 %shr, 1
  %shr37 = lshr i32 %72, 3
  %and38 = and i32 %shr37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool42.not = icmp ne i32 %and35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool43.not = icmp eq i32 %and38, 0
  %or.cond = select i1 %tobool42.not, i1 %tobool43.not, i1 false
  %or.cond342 = select i1 %or.cond, i1 true, i1 %tobool45.not
  br i1 %or.cond342, label %if.end47, label %if.end32.read_again_crit_edge

if.end32.read_again_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %read_again

if.end47:                                         ; preds = %if.end32
  %sub23.le = add i32 %28, -1
  %and24.le = and i32 %sub23.le, %26
  %73 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %errors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool50.not = icmp eq i32 %74, 0
  br i1 %tobool45.not, label %lor.lhs.false49, label %if.then51

lor.lhs.false49:                                  ; preds = %if.end47
  br i1 %tobool50.not, label %if.end63, label %lor.lhs.false49.do.body55_crit_edge

lor.lhs.false49.do.body55_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

if.then51:                                        ; preds = %if.end47
  br i1 %tobool50.not, label %if.then51.if.end62_crit_edge, label %if.then51.do.body55_crit_edge

if.then51.do.body55_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

if.then51.if.end62_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.body55:                                        ; preds = %if.then51.do.body55_crit_edge, %lor.lhs.false49.do.body55_crit_edge
  %75 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable, align 4
  %and56 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.if.end62_crit_edge, label %if.then58

do.body55.if.end62_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then58:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.60) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %do.body55.if.end62_crit_edge, %if.then51.if.end62_crit_edge
  tail call void @consume_skb(ptr noundef %skb.2.ph) #11
  br label %next_packet

if.end63:                                         ; preds = %lor.lhs.false49
  %77 = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool64.not = icmp eq i32 %77, 0
  br i1 %tobool64.not, label %if.then65, label %if.end63.skip_data_crit_edge

if.end63.skip_data_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_data

if.then65:                                        ; preds = %if.end63
  %78 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %attributes, align 4
  %80 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i349 = icmp eq i32 %80, 0
  br i1 %tobool.not.i349, label %if.then65.xgbe_rx_buf1_len.exit_crit_edge, label %if.end.i350

if.then65.xgbe_rx_buf1_len.exit_crit_edge:        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_rx_buf1_len.exit

if.end.i350:                                      ; preds = %if.then65
  %hdr_len.i = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 2
  %81 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %hdr_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool1.not.i = icmp eq i16 %82, 0
  br i1 %tobool1.not.i, label %if.end5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %82 to i32
  br label %xgbe_rx_buf1_len.exit

if.end5.i:                                        ; preds = %if.end.i350
  %83 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool9.not.i = icmp eq i32 %83, 0
  %dma_len.i = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 0, i32 4
  %84 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_len.i, align 4
  br i1 %tobool9.not.i, label %if.end5.i.xgbe_rx_buf1_len.exit_crit_edge, label %if.end12.i

if.end5.i.xgbe_rx_buf1_len.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_rx_buf1_len.exit

if.end12.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 3
  %86 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %len.i, align 2
  %conv17.i = zext i16 %87 to i32
  %88 = tail call i32 @llvm.umin.i32(i32 %85, i32 %conv17.i) #11
  br label %xgbe_rx_buf1_len.exit

xgbe_rx_buf1_len.exit:                            ; preds = %if.end12.i, %if.end5.i.xgbe_rx_buf1_len.exit_crit_edge, %if.then2.i, %if.then65.xgbe_rx_buf1_len.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then2.i ], [ %88, %if.end12.i ], [ 0, %if.then65.xgbe_rx_buf1_len.exit_crit_edge ], [ %85, %if.end5.i.xgbe_rx_buf1_len.exit_crit_edge ]
  %add = add i32 %retval.0.i, %len.2.ph
  %89 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i352 = icmp eq i32 %89, 0
  br i1 %tobool.not.i352, label %if.then.i, label %if.end.i356

if.then.i:                                        ; preds = %xgbe_rx_buf1_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dma_len.i353 = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 1, i32 4
  %90 = ptrtoint ptr %dma_len.i353 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_len.i353, align 4
  br label %xgbe_rx_buf2_len.exit

if.end.i356:                                      ; preds = %xgbe_rx_buf1_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  %len2.i = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 3
  %92 = ptrtoint ptr %len2.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %len2.i, align 2
  %conv.i354 = zext i16 %93 to i32
  %sub.i355 = sub i32 %conv.i354, %add
  br label %xgbe_rx_buf2_len.exit

xgbe_rx_buf2_len.exit:                            ; preds = %if.end.i356, %if.then.i
  %retval.0.i357 = phi i32 [ %sub.i355, %if.end.i356 ], [ %91, %if.then.i ]
  %add68 = add i32 %retval.0.i357, %add
  %buf = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 1
  %dma_len = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 1, i32 4
  %94 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i357, i32 %95)
  %cmp69 = icmp ugt i32 %retval.0.i357, %95
  br i1 %cmp69, label %xgbe_rx_buf2_len.exit.skip_data_crit_edge, label %if.end71

xgbe_rx_buf2_len.exit.skip_data_crit_edge:        ; preds = %xgbe_rx_buf2_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_data

if.end71:                                         ; preds = %xgbe_rx_buf2_len.exit
  %tobool72.not = icmp eq ptr %skb.2.ph, null
  br i1 %tobool72.not, label %if.then73, label %if.end71.if.end78_crit_edge

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then73:                                        ; preds = %if.end71
  %dma_len.i358 = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 0, i32 4
  %96 = ptrtoint ptr %dma_len.i358 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_len.i358, align 4
  %call.i.i = tail call ptr @__napi_alloc_skb(ptr noundef %cond, i32 noundef %97, i32 noundef 2592) #11
  %tobool.not.i359 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i359, label %if.then73.skip_data_crit_edge, label %xgbe_create_skb.exit

if.then73.skip_data_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_data

xgbe_create_skb.exit:                             ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  %rx.i = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 8
  %dma_base.i = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 0, i32 2
  %100 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_base.i, align 4
  %dma_off.i = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 0, i32 3
  %102 = ptrtoint ptr %dma_off.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dma_off.i, align 4
  %104 = ptrtoint ptr %dma_len.i358 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_len.i358, align 4
  %add.i.i = add i32 %103, %101
  tail call void @dma_sync_single_for_cpu(ptr noundef %99, i32 noundef %add.i.i, i32 noundef %105, i32 noundef 2) #11
  %106 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx.i, align 4
  %call10.i = tail call ptr @page_address(ptr noundef %107) #11
  %pages_offset.i = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 0, i32 0, i32 2
  %108 = ptrtoint ptr %pages_offset.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pages_offset.i, align 4
  %add.ptr.i360 = getelementptr i8, ptr %call10.i, i32 %109
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %110 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i.i, align 4
  %112 = call ptr @memcpy(ptr %111, ptr %add.ptr.i360, i32 %retval.0.i)
  %call14.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %retval.0.i) #11
  br label %if.end78

if.end78:                                         ; preds = %xgbe_create_skb.exit, %if.end71.if.end78_crit_edge
  %skb.3 = phi ptr [ %skb.2.ph, %if.end71.if.end78_crit_edge ], [ %call.i.i, %xgbe_create_skb.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i357)
  %tobool79.not = icmp eq i32 %retval.0.i357, 0
  br i1 %tobool79.not, label %if.end78.skip_data_crit_edge, label %if.then80

if.end78.skip_data_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_data

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 8
  %dma_base = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 1, i32 2
  %115 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_base, align 4
  %dma_off = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le, i32 6, i32 1, i32 3
  %117 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_off, align 4
  %119 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma_len, align 4
  %add.i = add i32 %118, %116
  tail call void @dma_sync_single_for_cpu(ptr noundef %114, i32 noundef %add.i, i32 noundef %120, i32 noundef 2) #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 17
  %121 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %124 to i32
  %125 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buf, align 4
  %pages_offset = getelementptr inbounds %struct.xgbe_page_alloc, ptr %buf, i32 0, i32 2
  %127 = ptrtoint ptr %pages_offset to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pages_offset, align 4
  %129 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_len, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %skb.3, i32 noundef %conv, ptr noundef %126, i32 noundef %128, i32 noundef %retval.0.i357, i32 noundef %130) #11
  %131 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %buf, align 4
  br label %skip_data

skip_data:                                        ; preds = %if.then80, %if.end78.skip_data_crit_edge, %if.then73.skip_data_crit_edge, %xgbe_rx_buf2_len.exit.skip_data_crit_edge, %if.end63.skip_data_crit_edge
  %skb.4 = phi ptr [ %skb.2.ph, %if.end63.skip_data_crit_edge ], [ %skb.3, %if.then80 ], [ %skb.3, %if.end78.skip_data_crit_edge ], [ %skb.2.ph, %xgbe_rx_buf2_len.exit.skip_data_crit_edge ], [ null, %if.then73.skip_data_crit_edge ]
  %tobool110.not = phi i1 [ false, %if.end63.skip_data_crit_edge ], [ false, %if.then80 ], [ false, %if.end78.skip_data_crit_edge ], [ true, %xgbe_rx_buf2_len.exit.skip_data_crit_edge ], [ true, %if.then73.skip_data_crit_edge ]
  %error.3 = phi i32 [ 0, %if.end63.skip_data_crit_edge ], [ 0, %if.then80 ], [ 0, %if.end78.skip_data_crit_edge ], [ 1, %xgbe_rx_buf2_len.exit.skip_data_crit_edge ], [ 1, %if.then73.skip_data_crit_edge ]
  %len.3 = phi i32 [ %len.2.ph, %if.end63.skip_data_crit_edge ], [ %add68, %if.then80 ], [ %add68, %if.end78.skip_data_crit_edge ], [ %add68, %xgbe_rx_buf2_len.exit.skip_data_crit_edge ], [ %add68, %if.then73.skip_data_crit_edge ]
  br i1 %or.cond, label %if.end107, label %skip_data.read_again.outer_crit_edge

skip_data.read_again.outer_crit_edge:             ; preds = %skip_data
  call void @__sanitizer_cov_trace_pc() #13
  br label %read_again.outer

if.end107:                                        ; preds = %skip_data
  %tobool108.not = icmp eq ptr %skb.4, null
  %brmerge = or i1 %tobool108.not, %tobool110.not
  br i1 %brmerge, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb.4) #11
  br label %next_packet

if.end112:                                        ; preds = %if.end107
  %132 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mtu, align 4
  %add113 = add i32 %133, 14
  %134 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %features, align 16
  %and114 = and i64 %135, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and114)
  %tobool115.not = icmp eq i64 %and114, 0
  br i1 %tobool115.not, label %land.lhs.true116, label %if.end112.if.end122_crit_edge

if.end112.if.end122_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

land.lhs.true116:                                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 18
  %136 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %137)
  %cmp118 = icmp eq i16 %137, -32512
  %add121 = add i32 %133, 18
  %spec.select = select i1 %cmp118, i32 %add121, i32 %add113
  br label %if.end122

if.end122:                                        ; preds = %land.lhs.true116, %if.end112.if.end122_crit_edge
  %max_len.0 = phi i32 [ %add113, %if.end112.if.end122_crit_edge ], [ %spec.select, %land.lhs.true116 ]
  %len123 = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 6
  %138 = ptrtoint ptr %len123 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %max_len.0)
  %cmp124 = icmp ugt i32 %139, %max_len.0
  %140 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %msg_enable, align 4
  br i1 %cmp124, label %do.body127, label %if.end135

do.body127:                                       ; preds = %if.end122
  %and129 = and i32 %141, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.body127.do.end134_crit_edge, label %if.then131

do.body127.do.end134_crit_edge:                   ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end134

if.then131:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.61) #14
  br label %do.end134

do.end134:                                        ; preds = %if.then131, %do.body127.do.end134_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %skb.4) #11
  br label %next_packet

if.end135:                                        ; preds = %if.end122
  %and137 = and i32 %141, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end135.if.end140_crit_edge, label %if.then139

if.end135.if.end140_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xgbe_print_pkt(ptr noundef %5, ptr noundef nonnull %skb.4, i1 noundef zeroext false)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.end135.if.end140_crit_edge
  %142 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %attributes, align 4
  %and143 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end140.if.end146_crit_edge, label %if.then145

if.end140.if.end146_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end146

if.then145:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15
  %144 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end140.if.end146_crit_edge
  %145 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %attributes, align 4
  %147 = and i32 %146, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool150.not = icmp eq i32 %147, 0
  br i1 %tobool150.not, label %if.end146.if.end164_crit_edge, label %if.then151

if.end146.if.end164_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then151:                                       ; preds = %if.end146
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15
  %148 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load152 = load i16, ptr %encapsulation, align 8
  %bf.set154 = or i16 %bf.load152, 4
  store i16 %bf.set154, ptr %encapsulation, align 8
  %149 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %attributes, align 4
  %151 = and i32 %150, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool158.not = icmp eq i32 %151, 0
  br i1 %tobool158.not, label %if.then151.if.end164_crit_edge, label %if.then159

if.then151.if.end164_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then159:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  %csum_level = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 3
  %152 = ptrtoint ptr %csum_level to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %bf.load160 = load i32, ptr %csum_level, align 2
  %bf.clear161 = and i32 %bf.load160, -805306369
  %bf.set162 = or i32 %bf.clear161, 268435456
  store i32 %bf.set162, ptr %csum_level, align 2
  br label %if.end164

if.end164:                                        ; preds = %if.then159, %if.then151.if.end164_crit_edge, %if.end146.if.end164_crit_edge
  %153 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %attributes, align 4
  %155 = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool168.not = icmp eq i32 %155, 0
  br i1 %tobool168.not, label %if.end164.if.end170_crit_edge, label %if.then169

if.end164.if.end170_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then169:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %vlan_ctag, align 2
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 9
  %158 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 10
  %159 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %157, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 3
  %160 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.end164.if.end170_crit_edge
  %161 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %attributes, align 4
  %163 = and i32 %162, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool174.not = icmp eq i32 %163, 0
  br i1 %tobool174.not, label %if.end170.if.end179_crit_edge, label %if.then175

if.end170.if.end179_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

if.then175:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  %164 = ptrtoint ptr %rx_tstamp to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %rx_tstamp, align 8
  %call176 = tail call i64 @timecounter_cyc2time(ptr noundef %tstamp_tc, i64 noundef %165) #11
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 17
  %166 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %167, i32 0, i32 7
  %168 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %call176, ptr %hwtstamps.i, align 8
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %if.end170.if.end179_crit_edge
  %169 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %attributes, align 4
  %171 = and i32 %170, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool183.not = icmp eq i32 %171, 0
  br i1 %tobool183.not, label %if.end179.if.end185_crit_edge, label %if.then184

if.end179.if.end185_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185

if.then184:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %rss_hash to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rss_hash, align 8
  %174 = ptrtoint ptr %rss_hash_type to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rss_hash_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %175)
  %cmp.i = icmp eq i32 %175, 3
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15
  %176 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.shl.i.i = select i1 %cmp.i, i16 128, i16 0
  %bf.clear.i.i = and i16 %bf.load.i.i, -193
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %l4_hash.i.i, align 8
  %hash10.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 8
  %177 = ptrtoint ptr %hash10.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %173, ptr %hash10.i.i, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.end179.if.end185_crit_edge
  %178 = getelementptr inbounds %struct.anon.0, ptr %skb.4, i32 0, i32 2
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %5, ptr %178, align 8
  %call186 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.4, ptr noundef %5) #11
  %protocol187 = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 18
  %180 = ptrtoint ptr %protocol187 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %call186, ptr %protocol187, align 8
  %181 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %queue_index, align 4
  %conv188 = trunc i32 %182 to i16
  %add.i362 = add i16 %conv188, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 10
  %183 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %add.i362, ptr %queue_mapping.i, align 8
  %call189 = tail call i32 @napi_gro_receive(ptr noundef %cond, ptr noundef nonnull %skb.4) #11
  br label %next_packet

next_packet:                                      ; preds = %if.end185, %do.end134, %if.then111, %if.end62
  %and38.lcssa428 = phi i32 [ %and38, %if.end62 ], [ 0, %if.then111 ], [ 0, %do.end134 ], [ 0, %if.end185 ]
  %skb.5 = phi ptr [ %skb.2.ph, %if.end62 ], [ %skb.4, %if.then111 ], [ %skb.4, %do.end134 ], [ %skb.4, %if.end185 ]
  %error.4 = phi i32 [ %error.2.ph, %if.end62 ], [ %error.3, %if.then111 ], [ 0, %do.end134 ], [ 0, %if.end185 ]
  %len.4 = phi i32 [ %len.2.ph, %if.end62 ], [ %len.3, %if.then111 ], [ %len.3, %do.end134 ], [ %len.3, %if.end185 ]
  %add.ptr25.lcssa364366 = getelementptr %struct.xgbe_ring_data, ptr %24, i32 %and24.le
  %inc190 = add nuw nsw i32 %packet_count.0407, 1
  %exitcond.not = icmp eq i32 %inc190, %budget
  br i1 %exitcond.not, label %next_packet.while.end_crit_edge, label %next_packet.do.end10_crit_edge

next_packet.do.end10_crit_edge:                   ; preds = %next_packet
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

next_packet.while.end_crit_edge:                  ; preds = %next_packet
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %next_packet.while.end_crit_edge, %if.end28.while.end_crit_edge
  %packet_count.0390 = phi i32 [ %packet_count.0407, %if.end28.while.end_crit_edge ], [ %budget, %next_packet.while.end_crit_edge ]
  %skb.6 = phi ptr [ %skb.2.ph, %if.end28.while.end_crit_edge ], [ %skb.5, %next_packet.while.end_crit_edge ]
  %last.2 = phi i32 [ %last.1, %if.end28.while.end_crit_edge ], [ %and35, %next_packet.while.end_crit_edge ]
  %error.5 = phi i32 [ %error.2.ph, %if.end28.while.end_crit_edge ], [ %error.4, %next_packet.while.end_crit_edge ]
  %context_next.2 = phi i32 [ %context_next.1, %if.end28.while.end_crit_edge ], [ %and38.lcssa428, %next_packet.while.end_crit_edge ]
  %len.5 = phi i32 [ %len.2.ph, %if.end28.while.end_crit_edge ], [ %len.4, %next_packet.while.end_crit_edge ]
  %received.2 = phi i32 [ %received.1, %if.end28.while.end_crit_edge ], [ %inc, %next_packet.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %received.2)
  %tobool191.not = icmp eq i32 %received.2, 0
  br i1 %tobool191.not, label %while.end.cleanup_crit_edge, label %land.lhs.true192

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true192:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last.2)
  %tobool193.not = icmp ne i32 %last.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context_next.2)
  %tobool195.not = icmp eq i32 %context_next.2, 0
  %or.cond345 = select i1 %tobool193.not, i1 %tobool195.not, i1 false
  br i1 %or.cond345, label %land.lhs.true192.cleanup_crit_edge, label %if.then196

land.lhs.true192.cleanup_crit_edge:               ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then196:                                       ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #13
  %184 = ptrtoint ptr %rdata7 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rdata7, align 4
  %186 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cur, align 4
  %188 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rdesc_count, align 8
  %sub200 = add i32 %189, -1
  %and201 = and i32 %sub200, %187
  %state_saved203 = getelementptr %struct.xgbe_ring_data, ptr %185, i32 %and201, i32 8
  %190 = ptrtoint ptr %state_saved203 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1, ptr %state_saved203, align 4
  %state204 = getelementptr %struct.xgbe_ring_data, ptr %185, i32 %and201, i32 9
  %191 = ptrtoint ptr %state204 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %skb.6, ptr %state204, align 4
  %len207 = getelementptr %struct.xgbe_ring_data, ptr %185, i32 %and201, i32 9, i32 1
  %192 = ptrtoint ptr %len207 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %len.5, ptr %len207, align 4
  %error209 = getelementptr %struct.xgbe_ring_data, ptr %185, i32 %and201, i32 9, i32 2
  %193 = ptrtoint ptr %error209 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %error.5, ptr %error209, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then196, %land.lhs.true192.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %packet_count.0390, %land.lhs.true192.cleanup_crit_edge ], [ %packet_count.0390, %while.end.cleanup_crit_edge ], [ %packet_count.0390, %if.then196 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_free_irqs(ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %2 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_irq, align 8
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %3, ptr noundef %pdata) #11
  %vdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %4 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdata, align 4
  %ecc_support = getelementptr inbounds %struct.xgbe_version_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ecc_support to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_irq, align 8
  %ecc_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 43
  %10 = ptrtoint ptr %ecc_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ecc_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void @devm_free_irq(ptr noundef %13, i32 noundef %11, ptr noundef %pdata) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %per_channel_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 46
  %14 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %16 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp728.not = icmp eq i32 %17, 0
  br i1 %cmp728.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.029
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %dma_irq = getelementptr inbounds %struct.xgbe_channel, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_irq, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %21, ptr noundef null, i1 noundef zeroext true) #11
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_irq, align 4
  tail call void @devm_free_irq(ptr noundef %23, i32 noundef %25, ptr noundef %19) #11
  %inc = add nuw i32 %i.029, 1
  %26 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_count, align 8
  %cmp7 = icmp ult i32 %inc, %27
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_alloc_channels(ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 66
  %0 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ring_count, align 4
  %rx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 68
  %2 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_count, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1177.not = icmp eq i32 %4, 0
  br i1 %cmp1177.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %per_channel_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 46
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call2 = tail call i32 @cpumask_local_spread(i32 noundef %i.0178, i32 noundef -1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 384) #15
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %xgbe_alloc_node.exit, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xgbe_alloc_node.exit:                             ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 384) #15
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %xgbe_alloc_node.exit.for.body.i.preheader_crit_edge, label %xgbe_alloc_node.exit.if.end_crit_edge

xgbe_alloc_node.exit.if.end_crit_edge:            ; preds = %xgbe_alloc_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xgbe_alloc_node.exit.for.body.i.preheader_crit_edge: ; preds = %xgbe_alloc_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %xgbe_alloc_node.exit164.for.body.i.preheader_crit_edge, %xgbe_alloc_node.exit158.for.body.i.preheader_crit_edge, %xgbe_alloc_node.exit.for.body.i.preheader_crit_edge
  br label %for.body.i

if.end:                                           ; preds = %xgbe_alloc_node.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %mem.0.i168 = phi ptr [ %call7.i.i.i, %xgbe_alloc_node.exit.if.end_crit_edge ], [ %call.i.i.i.i, %for.body.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.0178
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mem.0.i168, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mem.0.i168, i32 noundef 16, ptr noundef nonnull @.str.62, i32 noundef %i.0178)
  %pdata6 = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 1
  %8 = ptrtoint ptr %pdata6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdata, ptr %pdata6, align 16
  %queue_index = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 2
  %9 = ptrtoint ptr %queue_index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.0178, ptr %queue_index, align 4
  %10 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 12544
  %mul = shl i32 %i.0178, 7
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %mul
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 3
  %12 = ptrtoint ptr %dma_regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr7, ptr %dma_regs, align 8
  %node8 = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 13
  %13 = ptrtoint ptr %node8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %node8, align 4
  %affinity_mask = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call2)
  %cmp.not.i.i.i = icmp ugt i32 %14, %call2
  br i1 %cmp.not.i.i.i, label %if.end.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end.cpumask_set_cpu.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !317

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.end.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %call2, ptr noundef %affinity_mask) #11
  %15 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %cpumask_set_cpu.exit.if.end12_crit_edge, label %if.then10

cpumask_set_cpu.exit.if.end12_crit_edge:          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 45, i32 %i.0178
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx11, align 4
  %dma_irq = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 4
  %19 = ptrtoint ptr %dma_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dma_irq, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %cpumask_set_cpu.exit.if.end12_crit_edge
  %20 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_ring_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0178, i32 %21)
  %cmp14 = icmp ult i32 %i.0178, %21
  br i1 %cmp14, label %if.then15, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then15:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call.i.i.i.i153 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 256) #15
  %tobool.not.i154 = icmp eq ptr %call.i.i.i.i153, null
  br i1 %tobool.not.i154, label %xgbe_alloc_node.exit158, label %if.then15.do.body_crit_edge

if.then15.do.body_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

xgbe_alloc_node.exit158:                          ; preds = %if.then15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i155 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 256) #15
  %tobool17.not = icmp eq ptr %call7.i.i.i155, null
  br i1 %tobool17.not, label %xgbe_alloc_node.exit158.for.body.i.preheader_crit_edge, label %xgbe_alloc_node.exit158.do.body_crit_edge

xgbe_alloc_node.exit158.do.body_crit_edge:        ; preds = %xgbe_alloc_node.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

xgbe_alloc_node.exit158.for.body.i.preheader_crit_edge: ; preds = %xgbe_alloc_node.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

do.body:                                          ; preds = %xgbe_alloc_node.exit158.do.body_crit_edge, %if.then15.do.body_crit_edge
  %mem.0.i157171 = phi ptr [ %call7.i.i.i155, %xgbe_alloc_node.exit158.do.body_crit_edge ], [ %call.i.i.i.i153, %if.then15.do.body_crit_edge ]
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %mem.0.i157171, ptr noundef nonnull @.str.63, ptr noundef nonnull @xgbe_alloc_channels.__key, i16 noundef signext 3) #11
  %node21 = getelementptr inbounds %struct.xgbe_ring, ptr %mem.0.i157171, i32 0, i32 8
  %24 = ptrtoint ptr %node21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %node21, align 32
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 11
  %25 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mem.0.i157171, ptr %tx_ring, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.body, %if.end12.if.end22_crit_edge
  %26 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_ring_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0178, i32 %27)
  %cmp24 = icmp ult i32 %i.0178, %27
  br i1 %cmp24, label %if.then25, label %if.end22.do.body37_crit_edge

if.end22.do.body37_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

if.then25:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call.i.i.i.i159 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 256) #15
  %tobool.not.i160 = icmp eq ptr %call.i.i.i.i159, null
  br i1 %tobool.not.i160, label %xgbe_alloc_node.exit164, label %if.then25.do.body30_crit_edge

if.then25.do.body30_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

xgbe_alloc_node.exit164:                          ; preds = %if.then25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i161 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 256) #15
  %tobool27.not = icmp eq ptr %call7.i.i.i161, null
  br i1 %tobool27.not, label %xgbe_alloc_node.exit164.for.body.i.preheader_crit_edge, label %xgbe_alloc_node.exit164.do.body30_crit_edge

xgbe_alloc_node.exit164.do.body30_crit_edge:      ; preds = %xgbe_alloc_node.exit164
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

xgbe_alloc_node.exit164.for.body.i.preheader_crit_edge: ; preds = %xgbe_alloc_node.exit164
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

do.body30:                                        ; preds = %xgbe_alloc_node.exit164.do.body30_crit_edge, %if.then25.do.body30_crit_edge
  %mem.0.i163174 = phi ptr [ %call7.i.i.i161, %xgbe_alloc_node.exit164.do.body30_crit_edge ], [ %call.i.i.i.i159, %if.then25.do.body30_crit_edge ]
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %mem.0.i163174, ptr noundef nonnull @.str.63, ptr noundef nonnull @xgbe_alloc_channels.__key.64, i16 noundef signext 3) #11
  %node35 = getelementptr inbounds %struct.xgbe_ring, ptr %mem.0.i163174, i32 0, i32 8
  %30 = ptrtoint ptr %node35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %node35, align 32
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 12
  %31 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %mem.0.i163174, ptr %rx_ring, align 16
  br label %do.body37

do.body37:                                        ; preds = %do.body30, %if.end22.do.body37_crit_edge
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %do.body37.do.body55_crit_edge, label %do.body40

do.body37.do.body55_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

do.body40:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_alloc_channels.__UNIQUE_ID_ddebug580, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_alloc_channels, %if.then46)) #11
          to label %do.body55 [label %if.then46], !srcloc !309

if.then46:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_alloc_channels.__UNIQUE_ID_ddebug580, ptr noundef %35, ptr noundef nonnull @.str.66, ptr noundef nonnull %mem.0.i168, i32 noundef %call2, i32 noundef 0) #11
  br label %do.body55

do.body55:                                        ; preds = %if.then46, %do.body40, %do.body37.do.body55_crit_edge
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable, align 4
  %and57 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body55.for.inc_crit_edge, label %do.body60

do.body55.for.inc_crit_edge:                      ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_alloc_channels.__UNIQUE_ID_ddebug581, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_alloc_channels, %if.then72)) #11
          to label %for.inc [label %if.then72], !srcloc !309

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 8
  %40 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_regs, align 8
  %dma_irq77 = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 4
  %42 = ptrtoint ptr %dma_irq77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_irq77, align 4
  %tx_ring78 = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 11
  %44 = ptrtoint ptr %tx_ring78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_ring78, align 4
  %rx_ring79 = getelementptr inbounds %struct.xgbe_channel, ptr %mem.0.i168, i32 0, i32 12
  %46 = ptrtoint ptr %rx_ring79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_ring79, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_alloc_channels.__UNIQUE_ID_ddebug581, ptr noundef %39, ptr noundef nonnull @.str.67, ptr noundef nonnull %mem.0.i168, ptr noundef %41, i32 noundef %43, ptr noundef %45, ptr noundef %47) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then72, %do.body60, %do.body55.for.inc_crit_edge
  %inc = add nuw i32 %i.0178, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.020.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i165 = icmp eq ptr %49, null
  br i1 %tobool.not.i165, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_ring.i, align 16
  tail call void @kfree(ptr noundef %51) #11
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_ring.i, align 4
  tail call void @kfree(ptr noundef %55) #11
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %57) #11
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %4, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ], [ %4, %for.inc.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %for.inc.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  %channel_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %59 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink, ptr %channel_count.i, align 8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_service_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_workqueue = getelementptr i8, ptr %t, i32 -48
  %0 = ptrtoint ptr %dev_workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_workqueue, align 8
  %service_work = getelementptr i8, ptr %t, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %service_work) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 100
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_tx_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -316
  %pdata1 = getelementptr i8, ptr %t, i32 -300
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %per_channel_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %napi2 = getelementptr i8, ptr %t, i32 -236
  %napi3 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 105
  %cond = select i1 %tobool.not, ptr %napi3, ptr %napi2
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %cond) #11
  br i1 %call, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.then
  %channel_irq_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %channel_irq_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_irq_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then6
  %tx_ring.i = getelementptr i8, ptr %t, i32 48
  %8 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %rx_ring7.i = getelementptr i8, ptr %t, i32 52
  %10 = ptrtoint ptr %rx_ring7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ring7.i, align 16
  %tobool8.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else6.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 6
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.then8
  br i1 %tobool8.not.i, label %if.else6.i.if.end10_crit_edge, label %if.else6.i.if.end12.i_crit_edge

if.else6.i.if.end12.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.else6.i.if.end10_crit_edge:                    ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end12.i:                                       ; preds = %if.else6.i.if.end12.i_crit_edge, %land.lhs.true.i
  %int_id.0.i = phi i32 [ 3, %if.else6.i.if.end12.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %disable_int.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 29
  %12 = ptrtoint ptr %disable_int.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable_int.i, align 4
  %call.i = tail call i32 %13(ptr noundef %add.ptr, i32 noundef %int_id.0.i) #11
  br label %if.end10

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %dma_irq = getelementptr i8, ptr %t, i32 -288
  %14 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %15) #11
  br label %if.end10

if.else9:                                         ; preds = %if.then
  %channel_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 65
  %16 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.not.i = icmp eq i32 %17, 0
  br i1 %cmp5.not.i, label %if.else9.if.end10_crit_edge, label %for.body.lr.ph.i

if.else9.if.end10_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %if.else9
  %disable_int.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 29
  br label %for.body.i

for.body.i:                                       ; preds = %xgbe_disable_rx_tx_int.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %xgbe_disable_rx_tx_int.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %1, i32 0, i32 62, i32 %i.06.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  %rx_ring7.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %19, i32 0, i32 12
  %22 = ptrtoint ptr %rx_ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring7.i.i, align 16
  %tobool8.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.else6.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i.i = select i1 %tobool8.not.i.i, i32 0, i32 6
  br label %if.end12.i.i

if.else6.i.i:                                     ; preds = %for.body.i
  br i1 %tobool8.not.i.i, label %if.else6.i.i.xgbe_disable_rx_tx_int.exit.i_crit_edge, label %if.else6.i.i.if.end12.i.i_crit_edge

if.else6.i.i.if.end12.i.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.else6.i.i.xgbe_disable_rx_tx_int.exit.i_crit_edge: ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_disable_rx_tx_int.exit.i

if.end12.i.i:                                     ; preds = %if.else6.i.i.if.end12.i.i_crit_edge, %land.lhs.true.i.i
  %int_id.0.i.i = phi i32 [ 3, %if.else6.i.i.if.end12.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %24 = ptrtoint ptr %disable_int.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disable_int.i.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %19, i32 noundef %int_id.0.i.i) #11
  br label %xgbe_disable_rx_tx_int.exit.i

xgbe_disable_rx_tx_int.exit.i:                    ; preds = %if.end12.i.i, %if.else6.i.i.xgbe_disable_rx_tx_int.exit.i_crit_edge
  %inc.i = add nuw i32 %i.06.i, 1
  %26 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %xgbe_disable_rx_tx_int.exit.i.for.body.i_crit_edge, label %xgbe_disable_rx_tx_int.exit.i.if.end10_crit_edge

xgbe_disable_rx_tx_int.exit.i.if.end10_crit_edge: ; preds = %xgbe_disable_rx_tx_int.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

xgbe_disable_rx_tx_int.exit.i.for.body.i_crit_edge: ; preds = %xgbe_disable_rx_tx_int.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end10:                                         ; preds = %xgbe_disable_rx_tx_int.exit.i.if.end10_crit_edge, %if.else9.if.end10_crit_edge, %if.else, %if.end12.i, %if.else6.i.if.end10_crit_edge
  tail call void @__napi_schedule(ptr noundef %cond) #11
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry.if.end11_crit_edge
  %tx_timer_active = getelementptr i8, ptr %t, i32 -4
  %28 = ptrtoint ptr %tx_timer_active to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tx_timer_active, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_isr_task(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5556
  %xgmac_regs = getelementptr i8, ptr %t, i32 -5520
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 12296
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !307
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.isr_done_crit_edge, label %do.body

entry.isr_done_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %isr_done

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %t, i32 -744
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end15_crit_edge, label %do.body5

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_isr_task.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_isr_task, %if.then11)) #11
          to label %do.end15 [label %if.then11], !srcloc !309

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_isr_task.__UNIQUE_ID_ddebug587, ptr noundef %7, ptr noundef nonnull @.str.78, i32 noundef %3) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body5, %do.body.do.end15_crit_edge
  %channel_count = getelementptr i8, ptr %t, i32 -4436
  %8 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp322.not = icmp eq i32 %9, 0
  br i1 %cmp322.not, label %do.end15.for.end_crit_edge, label %for.body.lr.ph

do.end15.for.end_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end15
  %channel20 = getelementptr i8, ptr %t, i32 -4508
  %per_channel_irq = getelementptr i8, ptr %t, i32 -5144
  %napi = getelementptr i8, ptr %t, i32 -3092
  %disable_int.i.i = getelementptr i8, ptr %t, i32 -4964
  %rx_buffer_unavailable = getelementptr i8, ptr %t, i32 -2524
  %restart_work = getelementptr i8, ptr %t, i32 -836
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0323 = phi i32 [ 0, %for.body.lr.ph ], [ %inc82, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0323
  %and16 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %arrayidx = getelementptr [16 x ptr], ptr %channel20, i32 0, i32 %i.0323
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs, align 8
  %add.ptr21 = getelementptr i8, ptr %13, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #11, !srcloc !307
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and25 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end19.do.end47_crit_edge, label %do.body28

if.end19.do.end47_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.body28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_isr_task.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_isr_task, %if.then40)) #11
          to label %do.end47 [label %if.then40], !srcloc !309

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_isr_task.__UNIQUE_ID_ddebug588, ptr noundef %19, ptr noundef nonnull @.str.79, i32 noundef %i.0323, i32 noundef %15) #11
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %do.body28, %if.end19.do.end47_crit_edge
  %20 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool48.not = icmp ne i32 %21, 0
  %22 = and i32 %15, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  %or.cond = select i1 %tobool48.not, i1 true, i1 %23
  br i1 %or.cond, label %do.body59, label %if.then54

if.then54:                                        ; preds = %do.end47
  %call55 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #11
  br i1 %call55, label %if.then56, label %if.then54.if.end68_crit_edge

if.then54.if.end68_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then56:                                        ; preds = %if.then54
  %24 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp5.not.i = icmp eq i32 %25, 0
  br i1 %cmp5.not.i, label %if.then56.xgbe_disable_rx_tx_ints.exit_crit_edge, label %if.then56.for.body.i_crit_edge

if.then56.for.body.i_crit_edge:                   ; preds = %if.then56
  br label %for.body.i

if.then56.xgbe_disable_rx_tx_ints.exit_crit_edge: ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_disable_rx_tx_ints.exit

for.body.i:                                       ; preds = %xgbe_disable_rx_tx_int.exit.i.for.body.i_crit_edge, %if.then56.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %xgbe_disable_rx_tx_int.exit.i.for.body.i_crit_edge ], [ 0, %if.then56.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %add.ptr, i32 0, i32 62, i32 %i.06.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  %rx_ring7.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %27, i32 0, i32 12
  %30 = ptrtoint ptr %rx_ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ring7.i.i, align 16
  %tobool8.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.else6.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i.i = select i1 %tobool8.not.i.i, i32 0, i32 6
  br label %if.end12.i.i

if.else6.i.i:                                     ; preds = %for.body.i
  br i1 %tobool8.not.i.i, label %if.else6.i.i.xgbe_disable_rx_tx_int.exit.i_crit_edge, label %if.else6.i.i.if.end12.i.i_crit_edge

if.else6.i.i.if.end12.i.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.else6.i.i.xgbe_disable_rx_tx_int.exit.i_crit_edge: ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_disable_rx_tx_int.exit.i

if.end12.i.i:                                     ; preds = %if.else6.i.i.if.end12.i.i_crit_edge, %land.lhs.true.i.i
  %int_id.0.i.i = phi i32 [ 3, %if.else6.i.i.if.end12.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %32 = ptrtoint ptr %disable_int.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disable_int.i.i, align 4
  %call.i.i = tail call i32 %33(ptr noundef %27, i32 noundef %int_id.0.i.i) #11
  br label %xgbe_disable_rx_tx_int.exit.i

xgbe_disable_rx_tx_int.exit.i:                    ; preds = %if.end12.i.i, %if.else6.i.i.xgbe_disable_rx_tx_int.exit.i_crit_edge
  %inc.i = add nuw i32 %i.06.i, 1
  %34 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel_count, align 8
  %cmp.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.i, label %xgbe_disable_rx_tx_int.exit.i.for.body.i_crit_edge, label %xgbe_disable_rx_tx_int.exit.i.xgbe_disable_rx_tx_ints.exit_crit_edge

xgbe_disable_rx_tx_int.exit.i.xgbe_disable_rx_tx_ints.exit_crit_edge: ; preds = %xgbe_disable_rx_tx_int.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_disable_rx_tx_ints.exit

xgbe_disable_rx_tx_int.exit.i.for.body.i_crit_edge: ; preds = %xgbe_disable_rx_tx_int.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_disable_rx_tx_ints.exit:                     ; preds = %xgbe_disable_rx_tx_int.exit.i.xgbe_disable_rx_tx_ints.exit_crit_edge, %if.then56.xgbe_disable_rx_tx_ints.exit_crit_edge
  tail call void @__napi_schedule(ptr noundef %napi) #11
  br label %if.end68

do.body59:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  %and64 = and i32 %15, -66
  br label %if.end68

if.end68:                                         ; preds = %do.body59, %xgbe_disable_rx_tx_ints.exit, %if.then54.if.end68_crit_edge
  %dma_ch_isr.0 = phi i32 [ %and64, %do.body59 ], [ %15, %xgbe_disable_rx_tx_ints.exit ], [ %15, %if.then54.if.end68_crit_edge ]
  %36 = and i32 %dma_ch_isr.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool71.not = icmp eq i32 %36, 0
  br i1 %tobool71.not, label %if.end68.if.end73_crit_edge, label %if.then72

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %rx_buffer_unavailable to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rx_buffer_unavailable, align 8
  %inc = add i64 %38, 1
  store i64 %inc, ptr %rx_buffer_unavailable, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end68.if.end73_crit_edge
  %39 = and i32 %dma_ch_isr.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool76.not = icmp eq i32 %39, 0
  br i1 %tobool76.not, label %if.end73.if.end79_crit_edge, label %if.then77

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i315 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %restart_work) #11
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end73.if.end79_crit_edge
  %41 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_regs, align 8
  %add.ptr81 = getelementptr i8, ptr %42, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %dma_ch_isr.0) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %43) #11, !srcloc !316
  br label %for.inc

for.inc:                                          ; preds = %if.end79, %for.body.for.inc_crit_edge
  %inc82 = add nuw i32 %i.0323, 1
  %44 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc82, %45
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end15.for.end_crit_edge
  %46 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool85.not = icmp eq i32 %46, 0
  br i1 %tobool85.not, label %for.end.isr_done_crit_edge, label %if.then86

for.end.isr_done_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %isr_done

if.then86:                                        ; preds = %for.end
  %47 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr88 = getelementptr i8, ptr %48, i32 176
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #11, !srcloc !307
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %51 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable, align 4
  %and92 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then86.do.end114_crit_edge, label %do.body95

if.then86.do.end114_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end114

do.body95:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_isr_task.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_isr_task, %if.then107)) #11
          to label %do.end114 [label %if.then107], !srcloc !309

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_isr_task.__UNIQUE_ID_ddebug589, ptr noundef %54, ptr noundef nonnull @.str.80, i32 noundef %50) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then107, %do.body95, %if.then86.do.end114_crit_edge
  %55 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool117.not = icmp eq i32 %55, 0
  br i1 %tobool117.not, label %do.end114.if.end119_crit_edge, label %if.then118

do.end114.if.end119_crit_edge:                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then118:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  %tx_mmc_int = getelementptr i8, ptr %t, i32 -4876
  %56 = ptrtoint ptr %tx_mmc_int to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_mmc_int, align 4
  tail call void %57(ptr noundef %add.ptr) #11
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %do.end114.if.end119_crit_edge
  %58 = and i32 %50, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool122.not = icmp eq i32 %58, 0
  br i1 %tobool122.not, label %if.end119.if.end124_crit_edge, label %if.then123

if.end119.if.end124_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  %rx_mmc_int = getelementptr i8, ptr %t, i32 -4880
  %59 = ptrtoint ptr %rx_mmc_int to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_mmc_int, align 4
  tail call void %60(ptr noundef %add.ptr) #11
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end119.if.end124_crit_edge
  %61 = and i32 %50, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool127.not = icmp eq i32 %61, 0
  br i1 %tobool127.not, label %if.end124.if.end164_crit_edge, label %if.then128

if.end124.if.end164_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then128:                                       ; preds = %if.end124
  %62 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr130 = getelementptr i8, ptr %63, i32 3360
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #11, !srcloc !307
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %66 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_enable, align 4
  %and134 = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.then128.do.end156_crit_edge, label %do.body137

if.then128.do.end156_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156

do.body137:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_isr_task.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_isr_task, %if.then149)) #11
          to label %do.end156 [label %if.then149], !srcloc !309

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_isr_task.__UNIQUE_ID_ddebug590, ptr noundef %69, ptr noundef nonnull @.str.81, i32 noundef %65) #11
  br label %do.end156

do.end156:                                        ; preds = %if.then149, %do.body137, %if.then128.do.end156_crit_edge
  %70 = and i32 %65, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool159.not = icmp eq i32 %70, 0
  br i1 %tobool159.not, label %do.end156.if.end164_crit_edge, label %if.then160

do.end156.if.end164_crit_edge:                    ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then160:                                       ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #13
  %get_tx_tstamp = getelementptr i8, ptr %t, i32 -4852
  %71 = ptrtoint ptr %get_tx_tstamp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_tx_tstamp, align 4
  %call161 = tail call i64 %72(ptr noundef %add.ptr) #11
  %tx_tstamp = getelementptr i8, ptr %t, i32 -1156
  %73 = ptrtoint ptr %tx_tstamp to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %call161, ptr %tx_tstamp, align 8
  %dev_workqueue = getelementptr i8, ptr %t, i32 -4604
  %74 = ptrtoint ptr %dev_workqueue to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_workqueue, align 8
  %tx_tstamp_work = getelementptr i8, ptr %t, i32 -1208
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %tx_tstamp_work) #11
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %do.end156.if.end164_crit_edge, %if.end124.if.end164_crit_edge
  %76 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool167.not = icmp eq i32 %76, 0
  br i1 %tobool167.not, label %if.end164.isr_done_crit_edge, label %if.then168

if.end164.isr_done_crit_edge:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %isr_done

if.then168:                                       ; preds = %if.end164
  %77 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr170 = getelementptr i8, ptr %78, i32 532
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr170) #11, !srcloc !307
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %81 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable, align 4
  %and174 = and i32 %82, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.then168.do.end196_crit_edge, label %do.body177

if.then168.do.end196_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end196

do.body177:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_isr_task.__UNIQUE_ID_ddebug591, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_isr_task, %if.then189)) #11
          to label %do.end196 [label %if.then189], !srcloc !309

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_isr_task.__UNIQUE_ID_ddebug591, ptr noundef %84, ptr noundef nonnull @.str.82, i32 noundef %80) #11
  br label %do.end196

do.end196:                                        ; preds = %if.then189, %do.body177, %if.then168.do.end196_crit_edge
  %85 = and i32 %80, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool199.not = icmp eq i32 %85, 0
  br i1 %tobool199.not, label %do.end196.isr_done_crit_edge, label %if.then200

do.end196.isr_done_crit_edge:                     ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %isr_done

if.then200:                                       ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  %mdio_complete = getelementptr i8, ptr %t, i32 -592
  tail call void @complete(ptr noundef %mdio_complete) #11
  br label %isr_done

isr_done:                                         ; preds = %if.then200, %do.end196.isr_done_crit_edge, %if.end164.isr_done_crit_edge, %for.end.isr_done_crit_edge, %entry.isr_done_crit_edge
  %dev_irq = getelementptr i8, ptr %t, i32 -5220
  %86 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dev_irq, align 8
  %an_irq = getelementptr i8, ptr %t, i32 -480
  %88 = ptrtoint ptr %an_irq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %an_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp204 = icmp eq i32 %87, %89
  br i1 %cmp204, label %if.then205, label %isr_done.if.end207_crit_edge

isr_done.if.end207_crit_edge:                     ; preds = %isr_done
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

if.then205:                                       ; preds = %isr_done
  call void @__sanitizer_cov_trace_pc() #13
  %an_isr = getelementptr i8, ptr %t, i32 -4768
  %90 = ptrtoint ptr %an_isr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %an_isr, align 4
  %call206 = tail call i32 %91(ptr noundef %add.ptr) #11
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %isr_done.if.end207_crit_edge
  %vdata = getelementptr i8, ptr %t, i32 -5528
  %92 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vdata, align 4
  %ecc_support = getelementptr inbounds %struct.xgbe_version_data, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %ecc_support to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ecc_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool208.not = icmp eq i32 %95, 0
  br i1 %tobool208.not, label %if.end207.if.end213_crit_edge, label %land.lhs.true209

if.end207.if.end213_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end213

land.lhs.true209:                                 ; preds = %if.end207
  %96 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dev_irq, align 8
  %ecc_irq = getelementptr i8, ptr %t, i32 -5216
  %98 = ptrtoint ptr %ecc_irq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ecc_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp211 = icmp eq i32 %97, %99
  br i1 %cmp211, label %if.then212, label %land.lhs.true209.if.end213_crit_edge

land.lhs.true209.if.end213_crit_edge:             ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end213

if.then212:                                       ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet_ecc = getelementptr i8, ptr %t, i32 24
  tail call void @xgbe_ecc_isr_task(ptr noundef %tasklet_ecc)
  br label %if.end213

if.end213:                                        ; preds = %if.then212, %land.lhs.true209.if.end213_crit_edge, %if.end207.if.end213_crit_edge
  %100 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vdata, align 4
  %i2c_support = getelementptr inbounds %struct.xgbe_version_data, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %i2c_support to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i2c_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool215.not = icmp eq i32 %103, 0
  br i1 %tobool215.not, label %if.end213.if.end221_crit_edge, label %land.lhs.true216

if.end213.if.end221_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end221

land.lhs.true216:                                 ; preds = %if.end213
  %104 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dev_irq, align 8
  %i2c_irq = getelementptr i8, ptr %t, i32 -5212
  %106 = ptrtoint ptr %i2c_irq to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i2c_irq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp218 = icmp eq i32 %105, %107
  br i1 %cmp218, label %if.then219, label %land.lhs.true216.if.end221_crit_edge

land.lhs.true216.if.end221_crit_edge:             ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end221

if.then219:                                       ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_isr = getelementptr i8, ptr %t, i32 -4624
  %108 = ptrtoint ptr %i2c_isr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c_isr, align 4
  %call220 = tail call i32 %109(ptr noundef %add.ptr) #11
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %land.lhs.true216.if.end221_crit_edge, %if.end213.if.end221_crit_edge
  %110 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vdata, align 4
  %irq_reissue_support = getelementptr inbounds %struct.xgbe_version_data, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %irq_reissue_support to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %irq_reissue_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool223.not = icmp eq i32 %113, 0
  br i1 %tobool223.not, label %if.end221.if.end231_crit_edge, label %if.then224

if.end221.if.end231_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then224:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  %per_channel_irq225 = getelementptr i8, ptr %t, i32 -5144
  %114 = ptrtoint ptr %per_channel_irq225 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %per_channel_irq225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool226.not = icmp eq i32 %115, 0
  %spec.select = select i1 %tobool226.not, i32 1048561, i32 1
  %xprop_regs = getelementptr i8, ptr %t, i32 -5500
  %116 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xprop_regs, align 8
  %add.ptr230 = getelementptr i8, ptr %117, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %118 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230, i32 %118) #11, !srcloc !316
  br label %if.end231

if.end231:                                        ; preds = %if.then224, %if.end221.if.end231_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_ecc_isr_task(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5580
  %xprop_regs = getelementptr i8, ptr %t, i32 -5524
  %0 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprop_regs, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #11, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %3 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xprop_regs, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 52
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #11, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %msg_enable = getelementptr i8, ptr %t, i32 -768
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and5 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body6

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_ecc_isr_task.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_ecc_isr_task, %if.then12)) #11
          to label %do.end15 [label %if.then12], !srcloc !309

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_ecc_isr_task.__UNIQUE_ID_ddebug586, ptr noundef %11, ptr noundef nonnull @.str.84, i32 noundef %7) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body6, %entry.do.end15_crit_edge
  %12 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  br i1 %tobool17.not, label %do.end15.if.end24_crit_edge, label %if.then18

do.end15.if.end24_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then18:                                        ; preds = %do.end15
  %tx_ded_period = getelementptr i8, ptr %t, i32 -5288
  %tx_ded_count = getelementptr i8, ptr %t, i32 -5264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %tx_ded_period to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_ded_period, align 4
  %sub.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %16, 60000
  %17 = ptrtoint ptr %tx_ded_period to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %tx_ded_period, align 4
  %18 = ptrtoint ptr %tx_ded_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %tx_ded_count, align 4
  br label %if.end24

if.end.i:                                         ; preds = %if.then18
  %19 = ptrtoint ptr %tx_ded_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_ded_count, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %tx_ded_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp1.i = icmp ugt i32 %inc.i, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end24_crit_edge

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %22, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.85) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then2.i, %if.end.i.if.end24_crit_edge, %if.end.thread.i, %do.end15.if.end24_crit_edge
  %stop.0.off0 = phi i1 [ false, %do.end15.if.end24_crit_edge ], [ false, %if.end.thread.i ], [ false, %if.end.i.if.end24_crit_edge ], [ true, %if.then2.i ]
  %23 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool27.not = icmp eq i32 %23, 0
  br i1 %tobool27.not, label %if.end24.if.end36_crit_edge, label %if.then28

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then28:                                        ; preds = %if.end24
  %rx_ded_period = getelementptr i8, ptr %t, i32 -5280
  %rx_ded_count = getelementptr i8, ptr %t, i32 -5256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %rx_ded_period to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_ded_period, align 4
  %sub.i139 = sub i32 %24, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i139)
  %cmp.i140 = icmp slt i32 %sub.i139, 0
  br i1 %cmp.i140, label %if.end.i145, label %if.end.thread.i142

if.end.thread.i142:                               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i141 = add i32 %27, 60000
  %28 = ptrtoint ptr %rx_ded_period to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i141, ptr %rx_ded_period, align 4
  %29 = ptrtoint ptr %rx_ded_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %rx_ded_count, align 4
  br label %xgbe_ecc_ded.exit148

if.end.i145:                                      ; preds = %if.then28
  %30 = ptrtoint ptr %rx_ded_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_ded_count, align 4
  %inc.i143 = add i32 %31, 1
  store i32 %inc.i143, ptr %rx_ded_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i143)
  %cmp1.i144 = icmp ugt i32 %inc.i143, 2
  br i1 %cmp1.i144, label %if.then2.i146, label %if.end.i145.xgbe_ecc_ded.exit148_crit_edge

if.end.i145.xgbe_ecc_ded.exit148_crit_edge:       ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_ecc_ded.exit148

if.then2.i146:                                    ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %33, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86) #14
  br label %xgbe_ecc_ded.exit148

xgbe_ecc_ded.exit148:                             ; preds = %if.then2.i146, %if.end.i145.xgbe_ecc_ded.exit148_crit_edge, %if.end.thread.i142
  %cmp19.i147 = phi i1 [ false, %if.end.thread.i142 ], [ false, %if.end.i145.xgbe_ecc_ded.exit148_crit_edge ], [ true, %if.then2.i146 ]
  %or33138 = or i1 %stop.0.off0, %cmp19.i147
  br label %if.end36

if.end36:                                         ; preds = %xgbe_ecc_ded.exit148, %if.end24.if.end36_crit_edge
  %stop.1.off0 = phi i1 [ %or33138, %xgbe_ecc_ded.exit148 ], [ %stop.0.off0, %if.end24.if.end36_crit_edge ]
  %34 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool39.not = icmp eq i32 %34, 0
  br i1 %tobool39.not, label %if.end48, label %if.then40

if.then40:                                        ; preds = %if.end36
  %desc_ded_period = getelementptr i8, ptr %t, i32 -5272
  %desc_ded_count = getelementptr i8, ptr %t, i32 -5252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = ptrtoint ptr %desc_ded_period to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc_ded_period, align 4
  %sub.i149 = sub i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i149)
  %cmp.i150 = icmp slt i32 %sub.i149, 0
  br i1 %cmp.i150, label %if.end.i155, label %if.end.thread.i152

if.end.thread.i152:                               ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add.i151 = add i32 %38, 60000
  %39 = ptrtoint ptr %desc_ded_period to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i151, ptr %desc_ded_period, align 4
  %40 = ptrtoint ptr %desc_ded_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %desc_ded_count, align 4
  br label %xgbe_ecc_ded.exit158

if.end.i155:                                      ; preds = %if.then40
  %41 = ptrtoint ptr %desc_ded_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %desc_ded_count, align 4
  %inc.i153 = add i32 %42, 1
  store i32 %inc.i153, ptr %desc_ded_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i153)
  %cmp1.i154 = icmp ugt i32 %inc.i153, 2
  br i1 %cmp1.i154, label %xgbe_ecc_ded.exit158.thread, label %if.end.i155.xgbe_ecc_ded.exit158_crit_edge

if.end.i155.xgbe_ecc_ded.exit158_crit_edge:       ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_ecc_ded.exit158

xgbe_ecc_ded.exit158.thread:                      ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %44, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.87) #14
  br label %if.then50

xgbe_ecc_ded.exit158:                             ; preds = %if.end.i155.xgbe_ecc_ded.exit158_crit_edge, %if.end.thread.i152
  br i1 %stop.1.off0, label %xgbe_ecc_ded.exit158.if.then50_crit_edge, label %xgbe_ecc_ded.exit158.if.end52_crit_edge

xgbe_ecc_ded.exit158.if.end52_crit_edge:          ; preds = %xgbe_ecc_ded.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

xgbe_ecc_ded.exit158.if.then50_crit_edge:         ; preds = %xgbe_ecc_ded.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

if.end48:                                         ; preds = %if.end36
  br i1 %stop.1.off0, label %if.end48.if.then50_crit_edge, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end48.if.then50_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

if.then50:                                        ; preds = %if.end48.if.then50_crit_edge, %xgbe_ecc_ded.exit158.if.then50_crit_edge, %xgbe_ecc_ded.exit158.thread
  %disable_ecc_ded = getelementptr i8, ptr %t, i32 -4844
  %45 = ptrtoint ptr %disable_ecc_ded to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %disable_ecc_ded, align 4
  tail call void %46(ptr noundef %add.ptr) #11
  %stopdev_work = getelementptr i8, ptr %t, i32 -816
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %stopdev_work) #11
  br label %out

if.end52:                                         ; preds = %if.end48.if.end52_crit_edge, %xgbe_ecc_ded.exit158.if.end52_crit_edge
  %and54 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end61_crit_edge, label %if.then56

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then56:                                        ; preds = %if.end52
  %tx_sec_period = getelementptr i8, ptr %t, i32 -5292
  %tx_sec_count = getelementptr i8, ptr %t, i32 -5268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %49 = ptrtoint ptr %tx_sec_period to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_sec_period, align 4
  %sub.i159 = sub i32 %48, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i159)
  %cmp.i160 = icmp slt i32 %sub.i159, 0
  br i1 %cmp.i160, label %if.end.i165, label %if.end.thread.i162

if.end.thread.i162:                               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %add.i161 = add i32 %51, 60000
  %52 = ptrtoint ptr %tx_sec_period to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i161, ptr %tx_sec_period, align 4
  %53 = ptrtoint ptr %tx_sec_count to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %tx_sec_count, align 4
  br label %if.end61

if.end.i165:                                      ; preds = %if.then56
  %54 = ptrtoint ptr %tx_sec_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_sec_count, align 4
  %inc.i163 = add i32 %55, 1
  store i32 %inc.i163, ptr %tx_sec_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i163)
  %cmp1.i164 = icmp ugt i32 %inc.i163, 10
  br i1 %cmp1.i164, label %do.body.i, label %if.end.i165.if.end61_crit_edge

if.end.i165.if.end61_crit_edge:                   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.body.i:                                        ; preds = %if.end.i165
  %.b27.i = load i1, ptr @xgbe_ecc_sec.__print_once, align 1
  br i1 %.b27.i, label %do.body.i.if.end7.i_crit_edge, label %if.then3.i

do.body.i.if.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xgbe_ecc_sec.__print_once, align 1
  %dev.i = getelementptr i8, ptr %t, i32 -5564
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.85) #14
  %58 = ptrtoint ptr %tx_sec_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr.i = load i32, ptr %tx_sec_count, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %do.body.i.if.end7.i_crit_edge
  %59 = phi i32 [ %.pr.i, %if.then3.i ], [ %inc.i163, %do.body.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %59)
  %cmp8.i = icmp ugt i32 %59, 10000
  br i1 %cmp8.i, label %do.body10.i, label %if.end7.i.if.end61_crit_edge

if.end7.i.if.end61_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.body10.i:                                      ; preds = %if.end7.i
  %.b2526.i = load i1, ptr @xgbe_ecc_sec.__print_once.93, align 1
  br i1 %.b2526.i, label %do.body10.i.if.then58_crit_edge, label %if.then12.i

do.body10.i.if.then58_crit_edge:                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

if.then12.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xgbe_ecc_sec.__print_once.93, align 1
  %dev15.i = getelementptr i8, ptr %t, i32 -5564
  %60 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev15.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.85) #14
  br label %if.then58

if.then58:                                        ; preds = %if.then12.i, %do.body10.i.if.then58_crit_edge
  %disable_ecc_sec = getelementptr i8, ptr %t, i32 -4840
  %62 = ptrtoint ptr %disable_ecc_sec to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %disable_ecc_sec, align 4
  tail call void %63(ptr noundef %add.ptr, i32 noundef 0) #11
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end7.i.if.end61_crit_edge, %if.end.i165.if.end61_crit_edge, %if.end.thread.i162, %if.end52.if.end61_crit_edge
  %64 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool64.not = icmp eq i32 %64, 0
  br i1 %tobool64.not, label %if.end61.if.end71_crit_edge, label %if.then65

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then65:                                        ; preds = %if.end61
  %rx_sec_period = getelementptr i8, ptr %t, i32 -5284
  %rx_sec_count = getelementptr i8, ptr %t, i32 -5260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %66 = ptrtoint ptr %rx_sec_period to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_sec_period, align 4
  %sub.i166 = sub i32 %65, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i166)
  %cmp.i167 = icmp slt i32 %sub.i166, 0
  br i1 %cmp.i167, label %if.end.i172, label %if.end.thread.i169

if.end.thread.i169:                               ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %add.i168 = add i32 %68, 60000
  %69 = ptrtoint ptr %rx_sec_period to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.i168, ptr %rx_sec_period, align 4
  %70 = ptrtoint ptr %rx_sec_count to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %rx_sec_count, align 4
  br label %if.end71

if.end.i172:                                      ; preds = %if.then65
  %71 = ptrtoint ptr %rx_sec_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_sec_count, align 4
  %inc.i170 = add i32 %72, 1
  store i32 %inc.i170, ptr %rx_sec_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i170)
  %cmp1.i171 = icmp ugt i32 %inc.i170, 10
  br i1 %cmp1.i171, label %do.body.i174, label %if.end.i172.if.end71_crit_edge

if.end.i172.if.end71_crit_edge:                   ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

do.body.i174:                                     ; preds = %if.end.i172
  %.b27.i173 = load i1, ptr @xgbe_ecc_sec.__print_once, align 1
  br i1 %.b27.i173, label %do.body.i174.if.end7.i179_crit_edge, label %if.then3.i177

do.body.i174.if.end7.i179_crit_edge:              ; preds = %do.body.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i179

if.then3.i177:                                    ; preds = %do.body.i174
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xgbe_ecc_sec.__print_once, align 1
  %dev.i175 = getelementptr i8, ptr %t, i32 -5564
  %73 = ptrtoint ptr %dev.i175 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i175, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.86) #14
  %75 = ptrtoint ptr %rx_sec_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr.i176 = load i32, ptr %rx_sec_count, align 4
  br label %if.end7.i179

if.end7.i179:                                     ; preds = %if.then3.i177, %do.body.i174.if.end7.i179_crit_edge
  %76 = phi i32 [ %.pr.i176, %if.then3.i177 ], [ %inc.i170, %do.body.i174.if.end7.i179_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %76)
  %cmp8.i178 = icmp ugt i32 %76, 10000
  br i1 %cmp8.i178, label %do.body10.i181, label %if.end7.i179.if.end71_crit_edge

if.end7.i179.if.end71_crit_edge:                  ; preds = %if.end7.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

do.body10.i181:                                   ; preds = %if.end7.i179
  %.b2526.i180 = load i1, ptr @xgbe_ecc_sec.__print_once.93, align 1
  br i1 %.b2526.i180, label %do.body10.i181.if.then67_crit_edge, label %if.then12.i183

do.body10.i181.if.then67_crit_edge:               ; preds = %do.body10.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

if.then12.i183:                                   ; preds = %do.body10.i181
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xgbe_ecc_sec.__print_once.93, align 1
  %dev15.i182 = getelementptr i8, ptr %t, i32 -5564
  %77 = ptrtoint ptr %dev15.i182 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev15.i182, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.86) #14
  br label %if.then67

if.then67:                                        ; preds = %if.then12.i183, %do.body10.i181.if.then67_crit_edge
  %disable_ecc_sec69 = getelementptr i8, ptr %t, i32 -4840
  %79 = ptrtoint ptr %disable_ecc_sec69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %disable_ecc_sec69, align 4
  tail call void %80(ptr noundef %add.ptr, i32 noundef 1) #11
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end7.i179.if.end71_crit_edge, %if.end.i172.if.end71_crit_edge, %if.end.thread.i169, %if.end61.if.end71_crit_edge
  %81 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool74.not = icmp eq i32 %81, 0
  br i1 %tobool74.not, label %if.end71.out_crit_edge, label %if.then75

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then75:                                        ; preds = %if.end71
  %desc_sec_period = getelementptr i8, ptr %t, i32 -5276
  %desc_sec_count = getelementptr i8, ptr %t, i32 -5248
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %83 = ptrtoint ptr %desc_sec_period to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %desc_sec_period, align 4
  %sub.i186 = sub i32 %82, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i186)
  %cmp.i187 = icmp slt i32 %sub.i186, 0
  br i1 %cmp.i187, label %if.end.i192, label %if.end.thread.i189

if.end.thread.i189:                               ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %add.i188 = add i32 %85, 60000
  %86 = ptrtoint ptr %desc_sec_period to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add.i188, ptr %desc_sec_period, align 4
  %87 = ptrtoint ptr %desc_sec_count to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %desc_sec_count, align 4
  br label %out

if.end.i192:                                      ; preds = %if.then75
  %88 = ptrtoint ptr %desc_sec_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %desc_sec_count, align 4
  %inc.i190 = add i32 %89, 1
  store i32 %inc.i190, ptr %desc_sec_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i190)
  %cmp1.i191 = icmp ugt i32 %inc.i190, 10
  br i1 %cmp1.i191, label %do.body.i194, label %if.end.i192.out_crit_edge

if.end.i192.out_crit_edge:                        ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body.i194:                                     ; preds = %if.end.i192
  %.b27.i193 = load i1, ptr @xgbe_ecc_sec.__print_once, align 1
  br i1 %.b27.i193, label %do.body.i194.if.end7.i199_crit_edge, label %if.then3.i197

do.body.i194.if.end7.i199_crit_edge:              ; preds = %do.body.i194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i199

if.then3.i197:                                    ; preds = %do.body.i194
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xgbe_ecc_sec.__print_once, align 1
  %dev.i195 = getelementptr i8, ptr %t, i32 -5564
  %90 = ptrtoint ptr %dev.i195 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i195, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87) #14
  %92 = ptrtoint ptr %desc_sec_count to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr.i196 = load i32, ptr %desc_sec_count, align 4
  br label %if.end7.i199

if.end7.i199:                                     ; preds = %if.then3.i197, %do.body.i194.if.end7.i199_crit_edge
  %93 = phi i32 [ %.pr.i196, %if.then3.i197 ], [ %inc.i190, %do.body.i194.if.end7.i199_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %93)
  %cmp8.i198 = icmp ugt i32 %93, 10000
  br i1 %cmp8.i198, label %do.body10.i201, label %if.end7.i199.out_crit_edge

if.end7.i199.out_crit_edge:                       ; preds = %if.end7.i199
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body10.i201:                                   ; preds = %if.end7.i199
  %.b2526.i200 = load i1, ptr @xgbe_ecc_sec.__print_once.93, align 1
  br i1 %.b2526.i200, label %do.body10.i201.if.then77_crit_edge, label %if.then12.i203

do.body10.i201.if.then77_crit_edge:               ; preds = %do.body10.i201
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77

if.then12.i203:                                   ; preds = %do.body10.i201
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xgbe_ecc_sec.__print_once.93, align 1
  %dev15.i202 = getelementptr i8, ptr %t, i32 -5564
  %94 = ptrtoint ptr %dev15.i202 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev15.i202, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.87) #14
  br label %if.then77

if.then77:                                        ; preds = %if.then12.i203, %do.body10.i201.if.then77_crit_edge
  %disable_ecc_sec79 = getelementptr i8, ptr %t, i32 -4840
  %96 = ptrtoint ptr %disable_ecc_sec79 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %disable_ecc_sec79, align 4
  tail call void %97(ptr noundef %add.ptr, i32 noundef 2) #11
  br label %out

out:                                              ; preds = %if.then77, %if.end7.i199.out_crit_edge, %if.end.i192.out_crit_edge, %if.end.thread.i189, %if.end71.out_crit_edge, %if.then50
  %98 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %xprop_regs, align 8
  %add.ptr83 = getelementptr i8, ptr %99, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %6) #11, !srcloc !316
  %vdata = getelementptr i8, ptr %t, i32 -5552
  %100 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vdata, align 4
  %irq_reissue_support = getelementptr inbounds %struct.xgbe_version_data, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %irq_reissue_support to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq_reissue_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool84.not = icmp eq i32 %103, 0
  br i1 %tobool84.not, label %out.if.end88_crit_edge, label %if.then85

out.if.end88_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then85:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %xprop_regs, align 8
  %add.ptr87 = getelementptr i8, ptr %105, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 33554432) #11, !srcloc !316
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %out.if.end88_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_as_tasklet = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 168
  %0 = ptrtoint ptr %isr_as_tasklet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isr_as_tasklet, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 169, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet_dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 169
  tail call void @__tasklet_schedule(ptr noundef %tasklet_dev) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet_dev1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 169
  tail call void @xgbe_isr_task(ptr noundef %tasklet_dev1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_ecc_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_as_tasklet = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 168
  %0 = ptrtoint ptr %isr_as_tasklet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isr_as_tasklet, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 170, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet_ecc = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 170
  tail call void @__tasklet_schedule(ptr noundef %tasklet_ecc) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet_ecc1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 170
  tail call void @xgbe_ecc_isr_task(ptr noundef %tasklet_ecc1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_dma_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xgbe_channel, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %napi = getelementptr inbounds %struct.xgbe_channel, ptr %data, i32 0, i32 6
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #11
  br i1 %call, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %channel_irq_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %channel_irq_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_irq_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %rx_ring7.i = getelementptr inbounds %struct.xgbe_channel, ptr %data, i32 0, i32 12
  %6 = ptrtoint ptr %rx_ring7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring7.i, align 16
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else6.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 6
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.then2
  br i1 %tobool8.not.i, label %if.else6.i.if.end_crit_edge, label %if.else6.i.if.end12.i_crit_edge

if.else6.i.if.end12.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.else6.i.if.end_crit_edge:                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end12.i:                                       ; preds = %if.else6.i.if.end12.i_crit_edge, %land.lhs.true.i
  %int_id.0.i = phi i32 [ 3, %if.else6.i.if.end12.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %disable_int.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 29
  %8 = ptrtoint ptr %disable_int.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_int.i, align 4
  %call.i = tail call i32 %9(ptr noundef %data, i32 noundef %int_id.0.i) #11
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dma_irq = getelementptr inbounds %struct.xgbe_channel, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end12.i, %if.else6.i.if.end_crit_edge
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #11
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1090519040) #11, !srcloc !316
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %an_name = getelementptr i8, ptr %netdev, i32 7328
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.netdev_name.exit_crit_edge, label %lor.lhs.false.i

entry.netdev_name.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #11
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %netdev, ptr @.str.97
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %entry.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.97, %entry.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %an_name, i32 noundef 47, ptr noundef nonnull @.str.98, ptr noundef %retval.0.i)
  %ecc_name = getelementptr i8, ptr %netdev, i32 2732
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i139 = icmp eq i8 %3, 0
  br i1 %tobool.not.i139, label %netdev_name.exit.netdev_name.exit145_crit_edge, label %lor.lhs.false.i143

netdev_name.exit.netdev_name.exit145_crit_edge:   ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_name.exit145

lor.lhs.false.i143:                               ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i140 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #11
  %tobool2.not.i141 = icmp eq ptr %call.i140, null
  %spec.select.i142 = select i1 %tobool2.not.i141, ptr %netdev, ptr @.str.97
  br label %netdev_name.exit145

netdev_name.exit145:                              ; preds = %lor.lhs.false.i143, %netdev_name.exit.netdev_name.exit145_crit_edge
  %retval.0.i144 = phi ptr [ @.str.97, %netdev_name.exit.netdev_name.exit145_crit_edge ], [ %spec.select.i142, %lor.lhs.false.i143 ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ecc_name, i32 noundef 47, ptr noundef nonnull @.str.99, ptr noundef %retval.0.i144)
  %i2c_name = getelementptr i8, ptr %netdev, i32 7804
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i146 = icmp eq i8 %5, 0
  br i1 %tobool.not.i146, label %netdev_name.exit145.netdev_name.exit152_crit_edge, label %lor.lhs.false.i150

netdev_name.exit145.netdev_name.exit152_crit_edge: ; preds = %netdev_name.exit145
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_name.exit152

lor.lhs.false.i150:                               ; preds = %netdev_name.exit145
  call void @__sanitizer_cov_trace_pc() #13
  %call.i147 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #11
  %tobool2.not.i148 = icmp eq ptr %call.i147, null
  %spec.select.i149 = select i1 %tobool2.not.i148, ptr %netdev, ptr @.str.97
  br label %netdev_name.exit152

netdev_name.exit152:                              ; preds = %lor.lhs.false.i150, %netdev_name.exit145.netdev_name.exit152_crit_edge
  %retval.0.i151 = phi ptr [ @.str.97, %netdev_name.exit145.netdev_name.exit152_crit_edge ], [ %spec.select.i149, %lor.lhs.false.i150 ]
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %i2c_name, i32 noundef 47, ptr noundef nonnull @.str.100, ptr noundef %retval.0.i151)
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i153 = icmp eq i8 %7, 0
  br i1 %tobool.not.i153, label %netdev_name.exit152.netdev_name.exit159_crit_edge, label %lor.lhs.false.i157

netdev_name.exit152.netdev_name.exit159_crit_edge: ; preds = %netdev_name.exit152
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_name.exit159

lor.lhs.false.i157:                               ; preds = %netdev_name.exit152
  call void @__sanitizer_cov_trace_pc() #13
  %call.i154 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #11
  %tobool2.not.i155 = icmp eq ptr %call.i154, null
  %spec.select.i156 = select i1 %tobool2.not.i155, ptr %netdev, ptr @.str.97
  br label %netdev_name.exit159

netdev_name.exit159:                              ; preds = %lor.lhs.false.i157, %netdev_name.exit152.netdev_name.exit159_crit_edge
  %retval.0.i158 = phi ptr [ @.str.97, %netdev_name.exit152.netdev_name.exit159_crit_edge ], [ %spec.select.i156, %lor.lhs.false.i157 ]
  %call10 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.101, i32 noundef 917514, i32 noundef 1, ptr noundef %retval.0.i158) #11
  %dev_workqueue = getelementptr i8, ptr %netdev, i32 3256
  %8 = ptrtoint ptr %dev_workqueue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %dev_workqueue, align 8
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %netdev_name.exit159
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.102) #14
  br label %cleanup

if.end:                                           ; preds = %netdev_name.exit159
  %call14 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.101, i32 noundef 917514, i32 noundef 1, ptr noundef %an_name) #11
  %an_workqueue = getelementptr i8, ptr %netdev, i32 7376
  %9 = ptrtoint ptr %an_workqueue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %an_workqueue, align 8
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.103) #14
  br label %err_dev_wq

if.end18:                                         ; preds = %if.end
  %phy_link.i = getelementptr i8, ptr %netdev, i32 7124
  %10 = ptrtoint ptr %phy_link.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %phy_link.i, align 4
  %phy_speed.i = getelementptr i8, ptr %netdev, i32 7128
  %11 = ptrtoint ptr %phy_speed.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %phy_speed.i, align 8
  %phy_reset.i = getelementptr i8, ptr %netdev, i32 3068
  %12 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_reset.i, align 4
  %call.i160 = tail call i32 %13(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool20.not = icmp eq i32 %call.i160, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_an_wq_crit_edge

if.end18.err_an_wq_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_an_wq

if.end22:                                         ; preds = %if.end18
  %sysclk = getelementptr i8, ptr %netdev, i32 6400
  %14 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sysclk, align 8
  %call.i161 = tail call i32 @clk_prepare(ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i162, label %if.end.i, label %if.end22.if.then25_crit_edge

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i163 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i163, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %15) #11
  br label %if.then25

if.then25:                                        ; preds = %if.then3.i, %if.end22.if.then25_crit_edge
  %retval.0.i164.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i161, %if.end22.if.then25_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %netdev, ptr noundef nonnull @.str.104) #14
  br label %err_an_wq

if.end26:                                         ; preds = %if.end.i
  %ptpclk = getelementptr i8, ptr %netdev, i32 6408
  %16 = ptrtoint ptr %ptpclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptpclk, align 8
  %call.i165 = tail call i32 @clk_prepare(ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i166 = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i166, label %if.end.i169, label %if.end26.if.then29_crit_edge

if.end26.if.then29_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end.i169:                                      ; preds = %if.end26
  %call1.i167 = tail call i32 @clk_enable(ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167)
  %tobool2.not.i168 = icmp eq i32 %call1.i167, 0
  br i1 %tobool2.not.i168, label %do.body, label %if.then3.i170

if.then3.i170:                                    ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %17) #11
  br label %if.then29

if.then29:                                        ; preds = %if.then3.i170, %if.end26.if.then29_crit_edge
  %retval.0.i171.ph = phi i32 [ %call1.i167, %if.then3.i170 ], [ %call.i165, %if.end26.if.then29_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %netdev, ptr noundef nonnull @.str.105) #14
  br label %err_sysclk

do.body:                                          ; preds = %if.end.i169
  %service_work = getelementptr i8, ptr %netdev, i32 3260
  tail call void @__init_work(ptr noundef %service_work, i32 noundef 0) #11
  %18 = ptrtoint ptr %service_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %service_work, align 4
  %lockdep_map = getelementptr i8, ptr %netdev, i32 3276
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.106, ptr noundef nonnull @xgbe_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry34 = getelementptr i8, ptr %netdev, i32 3264
  %19 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr i8, ptr %netdev, i32 3268
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %netdev, i32 3272
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xgbe_service, ptr %func, align 4
  %restart_work = getelementptr i8, ptr %netdev, i32 7024
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #11
  %22 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %restart_work, align 8
  %lockdep_map42 = getelementptr i8, ptr %netdev, i32 7040
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map42, ptr noundef nonnull @.str.108, ptr noundef nonnull @xgbe_open.__key.107, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry44 = getelementptr i8, ptr %netdev, i32 7028
  %23 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i173 = getelementptr i8, ptr %netdev, i32 7032
  %24 = ptrtoint ptr %prev.i173 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry44, ptr %prev.i173, align 4
  %func46 = getelementptr i8, ptr %netdev, i32 7036
  %25 = ptrtoint ptr %func46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @xgbe_restart, ptr %func46, align 4
  %stopdev_work = getelementptr i8, ptr %netdev, i32 7068
  tail call void @__init_work(ptr noundef %stopdev_work, i32 noundef 0) #11
  %26 = ptrtoint ptr %stopdev_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %stopdev_work, align 4
  %lockdep_map55 = getelementptr i8, ptr %netdev, i32 7084
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map55, ptr noundef nonnull @.str.110, ptr noundef nonnull @xgbe_open.__key.109, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry57 = getelementptr i8, ptr %netdev, i32 7072
  %27 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i174 = getelementptr i8, ptr %netdev, i32 7076
  %28 = ptrtoint ptr %prev.i174 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry57, ptr %prev.i174, align 4
  %func59 = getelementptr i8, ptr %netdev, i32 7080
  %29 = ptrtoint ptr %func59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @xgbe_stopdev, ptr %func59, align 4
  %tx_tstamp_work = getelementptr i8, ptr %netdev, i32 6652
  tail call void @__init_work(ptr noundef %tx_tstamp_work, i32 noundef 0) #11
  %30 = ptrtoint ptr %tx_tstamp_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %tx_tstamp_work, align 4
  %lockdep_map68 = getelementptr i8, ptr %netdev, i32 6668
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map68, ptr noundef nonnull @.str.112, ptr noundef nonnull @xgbe_open.__key.111, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry70 = getelementptr i8, ptr %netdev, i32 6656
  %31 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i175 = getelementptr i8, ptr %netdev, i32 6660
  %32 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry70, ptr %prev.i175, align 4
  %func72 = getelementptr i8, ptr %netdev, i32 6664
  %33 = ptrtoint ptr %func72 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @xgbe_tx_tstamp, ptr %func72, align 4
  %call75 = tail call fastcc i32 @xgbe_alloc_memory(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %do.body.err_ptpclk_crit_edge

do.body.err_ptpclk_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ptpclk

if.end78:                                         ; preds = %do.body
  %call79 = tail call fastcc i32 @xgbe_start(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %err_mem

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %dev_state = getelementptr i8, ptr %netdev, i32 2588
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %dev_state) #11
  br label %cleanup

err_mem:                                          ; preds = %if.end78
  %free_ring_resources.i = getelementptr i8, ptr %netdev, i32 3196
  %34 = ptrtoint ptr %free_ring_resources.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %free_ring_resources.i, align 4
  tail call void %35(ptr noundef %add.ptr.i) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %err_mem
  %i.020.i.i = phi i32 [ 0, %err_mem ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 62, i32 %i.020.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_ring.i.i, align 16
  tail call void @kfree(ptr noundef %39) #11
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %tx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_ring.i.i, align 4
  tail call void @kfree(ptr noundef %43) #11
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %45) #11
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %xgbe_free_memory.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

xgbe_free_memory.exit:                            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %channel_count.i.i = getelementptr i8, ptr %netdev, i32 3424
  %47 = ptrtoint ptr %channel_count.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %channel_count.i.i, align 8
  br label %err_ptpclk

err_ptpclk:                                       ; preds = %xgbe_free_memory.exit, %do.body.err_ptpclk_crit_edge
  %ret.0 = phi i32 [ %call75, %do.body.err_ptpclk_crit_edge ], [ %call79, %xgbe_free_memory.exit ]
  %48 = ptrtoint ptr %ptpclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptpclk, align 8
  tail call void @clk_disable(ptr noundef %49) #11
  tail call void @clk_unprepare(ptr noundef %49) #11
  br label %err_sysclk

err_sysclk:                                       ; preds = %err_ptpclk, %if.then29
  %ret.1 = phi i32 [ %retval.0.i171.ph, %if.then29 ], [ %ret.0, %err_ptpclk ]
  %50 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sysclk, align 8
  tail call void @clk_disable(ptr noundef %51) #11
  tail call void @clk_unprepare(ptr noundef %51) #11
  br label %err_an_wq

err_an_wq:                                        ; preds = %err_sysclk, %if.then25, %if.end18.err_an_wq_crit_edge
  %ret.2 = phi i32 [ %call.i160, %if.end18.err_an_wq_crit_edge ], [ %retval.0.i164.ph, %if.then25 ], [ %ret.1, %err_sysclk ]
  %52 = ptrtoint ptr %an_workqueue to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %an_workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %53) #11
  br label %err_dev_wq

err_dev_wq:                                       ; preds = %err_an_wq, %if.then17
  %ret.3 = phi i32 [ %ret.2, %err_an_wq ], [ -12, %if.then17 ]
  %54 = ptrtoint ptr %dev_workqueue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %55) #11
  br label %cleanup

cleanup:                                          ; preds = %err_dev_wq, %if.end82, %if.then
  %retval.0 = phi i32 [ %ret.3, %err_dev_wq ], [ 0, %if.end82 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @xgbe_stop(ptr noundef %add.ptr.i)
  %free_ring_resources.i = getelementptr i8, ptr %netdev, i32 3196
  %0 = ptrtoint ptr %free_ring_resources.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_ring_resources.i, align 4
  tail call void %1(ptr noundef %add.ptr.i) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.020.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 62, i32 %i.020.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring.i.i, align 16
  tail call void @kfree(ptr noundef %5) #11
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring.i.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %11) #11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %xgbe_free_memory.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

xgbe_free_memory.exit:                            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %channel_count.i.i = getelementptr i8, ptr %netdev, i32 3424
  %13 = ptrtoint ptr %channel_count.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %channel_count.i.i, align 8
  %ptpclk = getelementptr i8, ptr %netdev, i32 6408
  %14 = ptrtoint ptr %ptpclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptpclk, align 8
  tail call void @clk_disable(ptr noundef %15) #11
  tail call void @clk_unprepare(ptr noundef %15) #11
  %sysclk = getelementptr i8, ptr %netdev, i32 6400
  %16 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sysclk, align 8
  tail call void @clk_disable(ptr noundef %17) #11
  tail call void @clk_unprepare(ptr noundef %17) #11
  %an_workqueue = getelementptr i8, ptr %netdev, i32 7376
  %18 = ptrtoint ptr %an_workqueue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %an_workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %19) #11
  %dev_workqueue = getelementptr i8, ptr %netdev, i32 3256
  %20 = ptrtoint ptr %dev_workqueue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %21) #11
  %dev_state = getelementptr i8, ptr %netdev, i32 2588
  tail call void @_set_bit(i32 noundef 0, ptr noundef %dev_state) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_xmit(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping, align 8
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 62, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %queue_index = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_index, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i, align 128
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %do.body5, label %if.end9

do.body5:                                         ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 7116
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5.do.end8_crit_edge, label %if.then6

do.body5.do.end8_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then6:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.114) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then6, %do.body5.do.end8_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %tx_netdev_return

if.end9:                                          ; preds = %entry
  %packet_data = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1
  %14 = call ptr @memset(ptr %packet_data, i32 0, i32 64)
  %15 = ptrtoint ptr %packet_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %skb, ptr %packet_data, align 8
  %rdesc_count.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 3
  %tx_packets.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 13
  %16 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %tx_packets.i, align 8
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %tx_bytes.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 14
  %19 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_bytes.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %21 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %21)
  %cmp.not.i.i = icmp eq i16 %21, 1536
  br i1 %cmp.not.i.i, label %xgbe_is_tso.exit.i, label %if.end9.if.end30.i_crit_edge

if.end9.if.end30.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

xgbe_is_tso.exit.i:                               ; preds = %if.end9
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %22 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.i.not.i.not.i = icmp eq i16 %25, 0
  br i1 %tobool.i.not.i.not.i, label %xgbe_is_tso.exit.i.if.end30.sink.split.i_crit_edge, label %if.then.i

xgbe_is_tso.exit.i.if.end30.sink.split.i_crit_edge: ; preds = %xgbe_is_tso.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.sink.split.i

if.then.i:                                        ; preds = %xgbe_is_tso.exit.i
  %cur_mss.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 12, i32 0, i32 2
  %26 = ptrtoint ptr %cur_mss.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cur_mss.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp.not.i = icmp eq i16 %25, %27
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then6.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %rdesc_count.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %context_desc.0.i = phi i32 [ 1, %if.then6.i ], [ 0, %if.then.i.if.end.i_crit_edge ]
  %29 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rdesc_count.i, align 4
  %inc9.i = add i32 %30, 1
  store i32 %inc9.i, ptr %rdesc_count.i, align 4
  br label %if.end30.sink.split.i

if.end30.sink.split.i:                            ; preds = %if.end.i, %xgbe_is_tso.exit.i.if.end30.sink.split.i_crit_edge
  %.sink170.i = phi i32 [ 3, %if.end.i ], [ 1, %xgbe_is_tso.exit.i.if.end30.sink.split.i_crit_edge ]
  %context_desc.1.ph.i = phi i32 [ %context_desc.0.i, %if.end.i ], [ 0, %xgbe_is_tso.exit.i.if.end30.sink.split.i_crit_edge ]
  %attributes.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %attributes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %attributes.i, align 4
  %or26.i = or i32 %32, %.sink170.i
  store i32 %or26.i, ptr %attributes.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30.sink.split.i, %if.end9.if.end30.i_crit_edge
  %context_desc.1.i = phi i32 [ 0, %if.end9.if.end30.i_crit_edge ], [ %context_desc.1.ph.i, %if.end30.sink.split.i ]
  %33 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i153.i = load i16, ptr %ip_summed.i.i, align 8
  %34 = and i16 %bf.load.i153.i, 1540
  call void @__sanitizer_cov_trace_const_cmp2(i16 1540, i16 %34)
  %35 = icmp eq i16 %34, 1540
  br i1 %35, label %if.end7.i.i, label %if.end30.i.if.end40.i_crit_edge

if.end30.i.if.end40.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.end7.i.i:                                      ; preds = %if.end30.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %protocol.i.i, align 8
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %37, label %if.end7.i.i.if.end40.i_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb15.i.i
  ]

if.end7.i.i.if.end40.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

sw.bb.i.i:                                        ; preds = %if.end7.i.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %39 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %41 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %42 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %40, i32 %conv.i.i.i.i
  %protocol9.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %protocol9.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %protocol9.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %44)
  %cmp11.not.i.i = icmp eq i8 %44, 17
  br i1 %cmp11.not.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %sw.bb.i.i.if.end40.i_crit_edge

sw.bb.i.i.if.end40.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %if.end7.i.i
  %head.i.i47.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %45 = ptrtoint ptr %head.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i47.i.i, align 8
  %network_header.i.i48.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %47 = ptrtoint ptr %network_header.i.i48.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i.i48.i.i, align 4
  %conv.i.i49.i.i = zext i16 %48 to i32
  %add.ptr.i.i50.i.i = getelementptr i8, ptr %46, i32 %conv.i.i49.i.i
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i50.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nexthdr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %50)
  %cmp18.not.i.i = icmp eq i8 %50, 17
  br i1 %cmp18.not.i.i, label %sw.bb15.i.i.sw.epilog.i.i_crit_edge, label %sw.bb15.i.i.if.end40.i_crit_edge

sw.bb15.i.i.if.end40.i_crit_edge:                 ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

sw.bb15.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb15.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %inner_protocol_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %inner_protocol_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load22.i.i = load i32, ptr %inner_protocol_type.i.i, align 2
  %52 = and i32 %bf.load22.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp27.not.i.i = icmp eq i32 %52, 0
  br i1 %cmp27.not.i.i, label %lor.lhs.false.i.i, label %sw.epilog.i.i.if.end40.i_crit_edge

sw.epilog.i.i.if.end40.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

lor.lhs.false.i.i:                                ; preds = %sw.epilog.i.i
  %53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %55)
  %cmp30.not.i.i = icmp eq i16 %55, 25944
  br i1 %cmp30.not.i.i, label %xgbe_is_vxlan.exit.i, label %lor.lhs.false.i.i.if.end40.i_crit_edge

lor.lhs.false.i.i.if.end40.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

xgbe_is_vxlan.exit.i:                             ; preds = %lor.lhs.false.i.i
  %inner_mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %56 = ptrtoint ptr %inner_mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %inner_mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %57 to i32
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %58 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i52.i.i = zext i16 %59 to i32
  %gepdiff.i.i = sub nsw i32 %conv.i.i.i, %conv.i52.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %gepdiff.i.i)
  %cmp35.not.i.i = icmp eq i32 %gepdiff.i.i, 16
  br i1 %cmp35.not.i.i, label %do.body33.i, label %xgbe_is_vxlan.exit.i.if.end40.i_crit_edge

xgbe_is_vxlan.exit.i.if.end40.i_crit_edge:        ; preds = %xgbe_is_vxlan.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

do.body33.i:                                      ; preds = %xgbe_is_vxlan.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %attributes34.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %attributes34.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %attributes34.i, align 4
  %or37.i = or i32 %61, 16
  store i32 %or37.i, ptr %attributes34.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.body33.i, %xgbe_is_vxlan.exit.i.if.end40.i_crit_edge, %lor.lhs.false.i.i.if.end40.i_crit_edge, %sw.epilog.i.i.if.end40.i_crit_edge, %sw.bb15.i.i.if.end40.i_crit_edge, %sw.bb.i.i.if.end40.i_crit_edge, %if.end7.i.i.if.end40.i_crit_edge, %if.end30.i.if.end40.i_crit_edge
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %62 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %bf.load41.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load41.i)
  %tobool44.not.i = icmp sgt i32 %bf.load41.i, -1
  br i1 %tobool44.not.i, label %if.end40.i.if.end64.i_crit_edge, label %if.then45.i

if.end40.i.if.end64.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

if.then45.i:                                      ; preds = %if.end40.i
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %63 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vlan_tci.i, align 2
  %cur_vlan_ctag.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 12, i32 0, i32 3
  %65 = ptrtoint ptr %cur_vlan_ctag.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %cur_vlan_ctag.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %66)
  %cmp48.not.i = icmp ne i16 %64, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context_desc.1.i)
  %tobool51.not.i = icmp eq i32 %context_desc.1.i, 0
  %or.cond.i = and i1 %tobool51.not.i, %cmp48.not.i
  br i1 %or.cond.i, label %if.then52.i, label %if.then45.i.do.body57.i_crit_edge

if.then45.i.do.body57.i_crit_edge:                ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body57.i

if.then52.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rdesc_count.i, align 4
  %inc54.i = add i32 %68, 1
  store i32 %inc54.i, ptr %rdesc_count.i, align 4
  br label %do.body57.i

do.body57.i:                                      ; preds = %if.then52.i, %if.then45.i.do.body57.i_crit_edge
  %attributes58.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %attributes58.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %attributes58.i, align 4
  %or61.i = or i32 %70, 4
  store i32 %or61.i, ptr %attributes58.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.body57.i, %if.end40.i.if.end64.i_crit_edge
  %end.i155.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %71 = ptrtoint ptr %end.i155.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i155.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tx_flags.i, align 1
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool68.not.i = icmp eq i8 %75, 0
  br i1 %tobool68.not.i, label %if.end64.i.if.end79.i_crit_edge, label %land.lhs.true.i

if.end64.i.if.end79.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

land.lhs.true.i:                                  ; preds = %if.end64.i
  %tx_type.i = getelementptr i8, ptr %netdev, i32 6576
  %76 = ptrtoint ptr %tx_type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp69.i = icmp eq i32 %77, 1
  br i1 %cmp69.i, label %do.body72.i, label %land.lhs.true.i.if.end79.i_crit_edge

land.lhs.true.i.if.end79.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

do.body72.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %attributes73.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %attributes73.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %attributes73.i, align 4
  %or76.i = or i32 %79, 8
  store i32 %or76.i, ptr %attributes73.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.body72.i, %land.lhs.true.i.if.end79.i_crit_edge, %if.end64.i.if.end79.i_crit_edge
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %82 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %81, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool81.not161.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool81.not161.i, label %if.end79.i.for.cond86.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end79.i.for.cond86.preheader.i_crit_edge:      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond86.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end79.i
  %84 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %rdesc_count.promoted.i = load i32, ptr %rdesc_count.i, align 4
  br label %for.body.i

for.cond.for.cond86.preheader_crit_edge.i:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %inc83.i, ptr %rdesc_count.i, align 4
  br label %for.cond86.preheader.i

for.cond86.preheader.i:                           ; preds = %for.cond.for.cond86.preheader_crit_edge.i, %if.end79.i.for.cond86.preheader.i_crit_edge
  %86 = ptrtoint ptr %end.i155.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %end.i155.i, align 4
  %nr_frags166.i = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %nr_frags166.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %nr_frags166.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp89168.not.i = icmp eq i8 %89, 0
  br i1 %cmp89168.not.i, label %for.cond86.preheader.i.xgbe_packet_info.exit_crit_edge, label %for.cond86.preheader.i.for.body91.i_crit_edge

for.cond86.preheader.i.for.body91.i_crit_edge:    ; preds = %for.cond86.preheader.i
  br label %for.body91.i

for.cond86.preheader.i.xgbe_packet_info.exit_crit_edge: ; preds = %for.cond86.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_packet_info.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %90 = phi i32 [ %rdesc_count.promoted.i, %for.body.lr.ph.i ], [ %inc83.i, %for.body.i.for.body.i_crit_edge ]
  %len.0162.i = phi i32 [ %sub.i.i, %for.body.lr.ph.i ], [ %91, %for.body.i.for.body.i_crit_edge ]
  %inc83.i = add i32 %90, 1
  %91 = tail call i32 @llvm.usub.sat.i32(i32 %len.0162.i, i32 16320) #11
  %tobool81.not.i = icmp ult i32 %len.0162.i, 16321
  br i1 %tobool81.not.i, label %for.cond.for.cond86.preheader_crit_edge.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body91.i:                                     ; preds = %for.inc.i.for.body91.i_crit_edge, %for.cond86.preheader.i.for.body91.i_crit_edge
  %92 = phi ptr [ %100, %for.inc.i.for.body91.i_crit_edge ], [ %87, %for.cond86.preheader.i.for.body91.i_crit_edge ]
  %i.0169.i = phi i32 [ %inc108.i, %for.inc.i.for.body91.i_crit_edge ], [ 0, %for.cond86.preheader.i.for.body91.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %92, i32 0, i32 12, i32 %i.0169.i, i32 1
  %93 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool95.not163.i = icmp eq i32 %94, 0
  br i1 %tobool95.not163.i, label %for.body91.i.for.inc.i_crit_edge, label %for.body96.lr.ph.i

for.body91.i.for.inc.i_crit_edge:                 ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body96.lr.ph.i:                               ; preds = %for.body91.i
  %95 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %rdesc_count.promoted165.i = load i32, ptr %rdesc_count.i, align 4
  br label %for.body96.i

for.body96.i:                                     ; preds = %for.body96.i.for.body96.i_crit_edge, %for.body96.lr.ph.i
  %96 = phi i32 [ %rdesc_count.promoted165.i, %for.body96.lr.ph.i ], [ %inc98.i, %for.body96.i.for.body96.i_crit_edge ]
  %len.1164.i = phi i32 [ %94, %for.body96.lr.ph.i ], [ %97, %for.body96.i.for.body96.i_crit_edge ]
  %inc98.i = add i32 %96, 1
  %97 = tail call i32 @llvm.usub.sat.i32(i32 %len.1164.i, i32 16320) #11
  %tobool95.not.i = icmp ult i32 %len.1164.i, 16321
  br i1 %tobool95.not.i, label %for.cond94.for.inc_crit_edge.i, label %for.body96.i.for.body96.i_crit_edge

for.body96.i.for.body96.i_crit_edge:              ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body96.i

for.cond94.for.inc_crit_edge.i:                   ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %inc98.i, ptr %rdesc_count.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.cond94.for.inc_crit_edge.i, %for.body91.i.for.inc.i_crit_edge
  %inc108.i = add nuw nsw i32 %i.0169.i, 1
  %99 = ptrtoint ptr %end.i155.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i155.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %nr_frags.i, align 2
  %conv88.i = zext i8 %102 to i32
  %cmp89.i = icmp ult i32 %inc108.i, %conv88.i
  br i1 %cmp89.i, label %for.inc.i.for.body91.i_crit_edge, label %for.inc.i.xgbe_packet_info.exit_crit_edge

for.inc.i.xgbe_packet_info.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_packet_info.exit

for.inc.i.for.body91.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body91.i

xgbe_packet_info.exit:                            ; preds = %for.inc.i.xgbe_packet_info.exit_crit_edge, %for.cond86.preheader.i.xgbe_packet_info.exit_crit_edge
  %103 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rdesc_count.i, align 4
  %pdata1.i = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 1
  %105 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdata1.i, align 16
  %rdesc_count.i.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 4
  %107 = ptrtoint ptr %rdesc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rdesc_count.i.i, align 8
  %cur.i.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 9
  %109 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cur.i.i, align 4
  %dirty.i.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 10
  %111 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dirty.i.i, align 8
  %sub.neg.i.i = sub i32 %108, %110
  %sub1.i.i = add i32 %sub.neg.i.i, %112
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %104)
  %cmp.i = icmp ult i32 %sub1.i.i, %104
  br i1 %cmp.i, label %do.body.i, label %if.end13

do.body.i:                                        ; preds = %xgbe_packet_info.exit
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %106, i32 0, i32 134
  %113 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then2.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %106, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %116, ptr noundef nonnull @.str.116) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then2.i, %do.body.i.do.end.i_crit_edge
  %117 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %106, align 8
  %119 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %queue_index, align 4
  %conv.i.i = and i32 %120, 65535
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 103
  %121 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %122, i32 %conv.i.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  %123 = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 12
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %123, align 16
  %xmit_more.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 12, i32 0, i32 1
  %125 = ptrtoint ptr %xmit_more.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %xmit_more.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool4.not.i = icmp eq i32 %126, 0
  br i1 %tobool4.not.i, label %do.end.i.tx_netdev_return_crit_edge, label %if.then5.i

do.end.i.tx_netdev_return_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_netdev_return

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_start_xmit.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %106, i32 0, i32 51, i32 38
  %127 = ptrtoint ptr %tx_start_xmit.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tx_start_xmit.i, align 4
  tail call void %128(ptr noundef %3, ptr noundef %9) #11
  br label %tx_netdev_return

if.end13:                                         ; preds = %xgbe_packet_info.exit
  %attributes.i73 = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 1
  %129 = ptrtoint ptr %attributes.i73 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %attributes.i73, align 4
  %131 = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i74 = icmp eq i32 %131, 0
  br i1 %tobool.not.i74, label %if.end13.if.end25_crit_edge, label %if.end.i75

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.i75:                                       ; preds = %if.end13
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %132 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end.i75.if.end3.i_crit_edge, label %skb_header_cloned.exit.i.i

if.end.i75.if.end3.i_crit_edge:                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i75
  %133 = ptrtoint ptr %end.i155.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i155.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %134, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #11
  %135 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %136, 65535
  %shr.i.i.i = ashr i32 %136, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.if.end3.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end3.i_crit_edge:   ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool1.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool1.not.i, label %skb_cow_head.exit.i.if.end3.i_crit_edge, label %do.body17

skb_cow_head.exit.i.if.end3.i_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.end3.i:                                        ; preds = %skb_cow_head.exit.i.if.end3.i_crit_edge, %skb_header_cloned.exit.i.i.if.end3.i_crit_edge, %if.end.i75.if.end3.i_crit_edge
  %137 = ptrtoint ptr %attributes.i73 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %attributes.i73, align 4
  %139 = and i32 %138, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool7.not.i = icmp eq i32 %139, 0
  %head.i.i61.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %140 = ptrtoint ptr %head.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %head.i.i61.i, align 8
  %transport_header.i.i.i77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %transport_header.i.i.sink85.i = select i1 %tobool7.not.i, ptr %transport_header.i.i.i77, ptr %inner_transport_header.i.i.i
  %142 = ptrtoint ptr %transport_header.i.i.sink85.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %transport_header.i.i.sink85.i, align 2
  %conv.i.i62.i = zext i16 %143 to i32
  %add.ptr.i.i63.i = getelementptr i8, ptr %141, i32 %conv.i.i62.i
  %data.i64.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %144 = ptrtoint ptr %data.i64.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i64.i, align 4
  %sub.ptr.lhs.cast.i65.i = ptrtoint ptr %add.ptr.i.i63.i to i32
  %sub.ptr.rhs.cast.i66.i = ptrtoint ptr %145 to i32
  %sub.ptr.sub.i67.i = sub i32 %sub.ptr.lhs.cast.i65.i, %sub.ptr.rhs.cast.i66.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i63.i, i32 0, i32 4
  %146 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %bf.load.i.i71.i = load i16, ptr %doff.i.i.i, align 4
  %147 = lshr i16 %bf.load.i.i71.i, 10
  %148 = and i16 %147, 60
  %mul.i.i.i = zext i16 %148 to i32
  %add14.i = add i32 %sub.ptr.sub.i67.i, %mul.i.i.i
  %header_len15.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 5
  %149 = ptrtoint ptr %header_len15.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add14.i, ptr %header_len15.i, align 4
  %150 = load ptr, ptr %head.i.i61.i, align 8
  %151 = load i16, ptr %transport_header.i.i.sink85.i, align 2
  %conv.i.i.i74.i = zext i16 %151 to i32
  %add.ptr.i.i.i75.i = getelementptr i8, ptr %150, i32 %conv.i.i.i74.i
  %mul.i60.sink.in.in.in.in.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i75.i, i32 0, i32 4
  %152 = ptrtoint ptr %mul.i60.sink.in.in.in.in.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %mul.i60.sink.in.in.in.i = load i16, ptr %mul.i60.sink.in.in.in.in.i, align 4
  %mul.i60.sink.in.in.i = lshr i16 %mul.i60.sink.in.in.in.i, 10
  %mul.i60.sink.in.i = and i16 %mul.i60.sink.in.in.i, 60
  %mul.i60.sink.i = zext i16 %mul.i60.sink.in.i to i32
  %153 = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 6
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %mul.i60.sink.i, ptr %153, align 8
  %155 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %len, align 4
  %sub.i = sub i32 %156, %add14.i
  %tcp_payload_len.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 7
  %157 = ptrtoint ptr %tcp_payload_len.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %sub.i, ptr %tcp_payload_len.i, align 4
  %158 = ptrtoint ptr %end.i155.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i155.i, align 4
  %gso_size.i78 = getelementptr inbounds %struct.skb_shared_info, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %gso_size.i78 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %gso_size.i78, align 4
  %mss.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 8
  %162 = ptrtoint ptr %mss.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %mss.i, align 8
  %163 = load ptr, ptr %end.i155.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %163, i32 0, i32 5
  %164 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %gso_segs.i, align 2
  %conv.i = zext i16 %165 to i32
  %166 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %conv.i, ptr %tx_packets.i, align 8
  %sub29.i = add nsw i32 %conv.i, -1
  %mul.i = mul i32 %sub29.i, %add14.i
  %167 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tx_bytes.i, align 4
  %add31.i = add i32 %mul.i, %168
  store i32 %add31.i, ptr %tx_bytes.i, align 4
  br label %if.end25

do.body17:                                        ; preds = %skb_cow_head.exit.i
  %msg_enable18 = getelementptr i8, ptr %netdev, i32 7116
  %169 = ptrtoint ptr %msg_enable18 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %msg_enable18, align 4
  %and19 = and i32 %170, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.do.end24_crit_edge, label %if.then21

do.body17.do.end24_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.115) #14
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body17.do.end24_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %tx_netdev_return

if.end25:                                         ; preds = %if.end3.i, %if.end13.if.end25_crit_edge
  %171 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i83 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i83, label %if.end25.xgbe_prep_vlan.exit_crit_edge, label %if.then.i85

if.end25.xgbe_prep_vlan.exit_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_prep_vlan.exit

if.then.i85:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_tci.i84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %172 = ptrtoint ptr %vlan_tci.i84 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %vlan_tci.i84, align 2
  %vlan_ctag.i = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 1, i32 9
  %174 = ptrtoint ptr %vlan_ctag.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %vlan_ctag.i, align 2
  br label %xgbe_prep_vlan.exit

xgbe_prep_vlan.exit:                              ; preds = %if.then.i85, %if.end25.xgbe_prep_vlan.exit_crit_edge
  %map_tx_skb = getelementptr i8, ptr %netdev, i32 3200
  %175 = ptrtoint ptr %map_tx_skb to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %map_tx_skb, align 4
  %call26 = tail call i32 %176(ptr noundef %3, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %xgbe_prep_vlan.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %tx_netdev_return

if.end29:                                         ; preds = %xgbe_prep_vlan.exit
  %177 = ptrtoint ptr %attributes.i73 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %attributes.i73, align 4
  %179 = and i32 %178, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i88 = icmp eq i32 %179, 0
  br i1 %tobool.not.i88, label %if.end29.if.end20.i_crit_edge, label %do.body1.i

if.end29.if.end20.i_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

do.body1.i:                                       ; preds = %if.end29
  %tstamp_lock.i = getelementptr i8, ptr %netdev, i32 6416
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tstamp_lock.i) #11
  %tx_tstamp_skb.i = getelementptr i8, ptr %netdev, i32 6696
  %180 = ptrtoint ptr %tx_tstamp_skb.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tx_tstamp_skb.i, align 8
  %tobool5.not.i = icmp eq ptr %181, null
  br i1 %tobool5.not.i, label %if.else.i, label %do.body7.i

do.body7.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %182 = ptrtoint ptr %attributes.i73 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %attributes.i73, align 4
  %and9.i = and i32 %183, -9
  store i32 %and9.i, ptr %attributes.i73, align 4
  br label %if.end.i91

if.else.i:                                        ; preds = %do.body1.i
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #11
  %184 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #11, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !312

if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %185 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %185)
  %.not.i.i.i.i.i = icmp sgt i32 %185, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !317

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %186 = ptrtoint ptr %tx_tstamp_skb.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %skb, ptr %tx_tstamp_skb.i, align 8
  %187 = ptrtoint ptr %end.i155.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %end.i155.i, align 4
  %tx_flags.i90 = getelementptr inbounds %struct.skb_shared_info, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %tx_flags.i90 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %tx_flags.i90, align 1
  %191 = or i8 %190, 4
  store i8 %191, ptr %tx_flags.i90, align 1
  br label %if.end.i91

if.end.i91:                                       ; preds = %skb_get.exit.i, %do.body7.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tstamp_lock.i, i32 noundef %call2.i) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end.i91, %if.end29.if.end20.i_crit_edge
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #11
  %192 = ptrtoint ptr %end.i155.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %end.i155.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %193, i32 0, i32 3
  %194 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %tx_flags.i.i, align 1
  %196 = and i8 %195, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i.i = icmp eq i8 %196, 0
  br i1 %tobool.not.i.i, label %if.end20.i.xgbe_prep_tx_tstamp.exit_crit_edge, label %if.then.i.i

if.end20.i.xgbe_prep_tx_tstamp.exit_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_prep_tx_tstamp.exit

if.then.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #11
  br label %xgbe_prep_tx_tstamp.exit

xgbe_prep_tx_tstamp.exit:                         ; preds = %if.then.i.i, %if.end20.i.xgbe_prep_tx_tstamp.exit_crit_edge
  %197 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tx_bytes.i, align 4
  %dql.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %198)
  %cmp.i.i = icmp ugt i32 %198, 268435455
  br i1 %cmp.i.i, label %do.body2.i.i, label %dql_queued.exit.i, !prof !312

do.body2.i.i:                                     ; preds = %xgbe_prep_tx_tstamp.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !319
  unreachable

dql_queued.exit.i:                                ; preds = %xgbe_prep_tx_tstamp.exit
  %last_obj_cnt.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15, i32 2
  %199 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !320
  %200 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dql.i, align 128
  %add.i.i = add i32 %201, %198
  store i32 %add.i.i, ptr %dql.i, align 128
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15, i32 1
  %202 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %adj_limit.i.i, align 4
  %204 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i92 = sub i32 %203, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i92)
  %cmp.i93 = icmp sgt i32 %sub.i.i92, -1
  br i1 %cmp.i93, label %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge, label %if.end.i94, !prof !317

dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_sent_queue.exit

if.end.i94:                                       ; preds = %dql_queued.exit.i
  %state.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !321
  %205 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %adj_limit.i.i, align 4
  %207 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %dql.i, align 128
  %sub.i22.i = sub i32 %206, %208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i)
  %cmp7.i = icmp sgt i32 %sub.i22.i, -1
  br i1 %cmp7.i, label %if.then14.i, label %if.end.i94.netdev_tx_sent_queue.exit_crit_edge, !prof !312

if.end.i94.netdev_tx_sent_queue.exit_crit_edge:   ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_tx_sent_queue.exit

if.then14.i:                                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #11
  br label %netdev_tx_sent_queue.exit

netdev_tx_sent_queue.exit:                        ; preds = %if.then14.i, %if.end.i94.netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge
  %dev_xmit = getelementptr i8, ptr %netdev, i32 2900
  %209 = ptrtoint ptr %dev_xmit to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev_xmit, align 4
  tail call void %210(ptr noundef %3) #11
  %msg_enable30 = getelementptr i8, ptr %netdev, i32 7116
  %211 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %msg_enable30, align 4
  %and31 = and i32 %212, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %netdev_tx_sent_queue.exit.if.end34_crit_edge, label %if.then33

netdev_tx_sent_queue.exit.if.end34_crit_edge:     ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then33:                                        ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xgbe_print_pkt(ptr noundef %netdev, ptr noundef %skb, i1 noundef zeroext true)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %netdev_tx_sent_queue.exit.if.end34_crit_edge
  %213 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pdata1.i, align 16
  %215 = ptrtoint ptr %rdesc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %rdesc_count.i.i, align 8
  %217 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %cur.i.i, align 4
  %219 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %dirty.i.i, align 8
  %sub.neg.i.i99 = sub i32 %216, %218
  %sub1.i.i100 = add i32 %sub.neg.i.i99, %220
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub1.i.i100)
  %cmp.i101 = icmp ult i32 %sub1.i.i100, 24
  br i1 %cmp.i101, label %do.body.i105, label %if.end34.tx_netdev_return_crit_edge

if.end34.tx_netdev_return_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_netdev_return

do.body.i105:                                     ; preds = %if.end34
  %msg_enable.i102 = getelementptr inbounds %struct.xgbe_prv_data, ptr %214, i32 0, i32 134
  %221 = ptrtoint ptr %msg_enable.i102 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %msg_enable.i102, align 4
  %and.i103 = and i32 %222, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %do.body.i105.do.end.i113_crit_edge, label %if.then2.i106

do.body.i105.do.end.i113_crit_edge:               ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i113

if.then2.i106:                                    ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #13
  %223 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %214, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %224, ptr noundef nonnull @.str.116) #14
  br label %do.end.i113

do.end.i113:                                      ; preds = %if.then2.i106, %do.body.i105.do.end.i113_crit_edge
  %225 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %214, align 8
  %227 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %queue_index, align 4
  %conv.i.i108 = and i32 %228, 65535
  %_tx.i.i.i109 = getelementptr inbounds %struct.net_device, ptr %226, i32 0, i32 103
  %229 = ptrtoint ptr %_tx.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %_tx.i.i.i109, align 128
  %state.i.i.i110 = getelementptr %struct.netdev_queue, ptr %230, i32 %conv.i.i108, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i110) #11
  %231 = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 12
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 1, ptr %231, align 16
  %xmit_more.i111 = getelementptr inbounds %struct.xgbe_ring, ptr %9, i32 0, i32 12, i32 0, i32 1
  %233 = ptrtoint ptr %xmit_more.i111 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %xmit_more.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool4.not.i112 = icmp eq i32 %234, 0
  br i1 %tobool4.not.i112, label %do.end.i113.tx_netdev_return_crit_edge, label %if.then5.i115

do.end.i113.tx_netdev_return_crit_edge:           ; preds = %do.end.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_netdev_return

if.then5.i115:                                    ; preds = %do.end.i113
  call void @__sanitizer_cov_trace_pc() #13
  %tx_start_xmit.i114 = getelementptr inbounds %struct.xgbe_prv_data, ptr %214, i32 0, i32 51, i32 38
  %235 = ptrtoint ptr %tx_start_xmit.i114 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %tx_start_xmit.i114, align 4
  tail call void %236(ptr noundef %3, ptr noundef %9) #11
  br label %tx_netdev_return

tx_netdev_return:                                 ; preds = %if.then5.i115, %do.end.i113.tx_netdev_return_crit_edge, %if.end34.tx_netdev_return_crit_edge, %if.then28, %do.end24, %if.then5.i, %do.end.i.tx_netdev_return_crit_edge, %do.end8
  %ret.0 = phi i32 [ 0, %do.end8 ], [ %call4.i.i.i, %do.end24 ], [ 0, %if.then28 ], [ 0, %if.end34.tx_netdev_return_crit_edge ], [ 0, %do.end.i113.tx_netdev_return_crit_edge ], [ 0, %if.then5.i115 ], [ 16, %if.then5.i ], [ 16, %do.end.i.tx_netdev_return_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xgbe_features_check(ptr noundef %skb, ptr nocapture noundef readnone %netdev, i64 noundef %features) #0 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol1.i.i, align 8
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.skb_vlan_tagged_multi.exit.i_crit_edge

entry.skb_vlan_tagged_multi.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_vlan_tagged_multi.exit.i

if.then.i.i:                                      ; preds = %entry
  %3 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.127)
  switch i16 %1, label %if.then.i.i.vlan_features_check.exit_crit_edge [
    i16 -30552, label %if.then.i.i.if.end.i.i_crit_edge
    i16 -32512, label %if.then.i.i.if.end.i.i_crit_edge11
  ]

if.then.i.i.if.end.i.i_crit_edge11:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i.vlan_features_check.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_features_check.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge11
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i.i, 17
  br i1 %cmp.i.i, label %if.end.i.i.cleanup.i.i_crit_edge, label %if.end.i2.i, !prof !317

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

if.end.i2.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %5)
  %cmp3.i.i = icmp ult i32 %5, 18
  br i1 %cmp3.i.i, label %if.end.i2.i.vlan_features_check.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !312

if.end.i2.i.vlan_features_check.exit_crit_edge:   ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_features_check.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i2.i
  %sub.i.i = sub nuw nsw i32 18, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #11
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge, label %pskb_may_pull.exit.i.cleanup.i.i_crit_edge, !prof !312

pskb_may_pull.exit.i.cleanup.i.i_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_features_check.exit

cleanup.i.i:                                      ; preds = %pskb_may_pull.exit.i.cleanup.i.i_crit_edge, %if.end.i.i.cleanup.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  br label %skb_vlan_tagged_multi.exit.i

skb_vlan_tagged_multi.exit.i:                     ; preds = %cleanup.i.i, %entry.skb_vlan_tagged_multi.exit.i_crit_edge
  %protocol.1.i.i = phi i16 [ %1, %entry.skb_vlan_tagged_multi.exit.i_crit_edge ], [ %11, %cleanup.i.i ]
  %12 = zext i16 %protocol.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.128)
  switch i16 %protocol.1.i.i, label %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge [
    i16 -30552, label %skb_vlan_tagged_multi.exit.i._crit_edge
    i16 -32512, label %skb_vlan_tagged_multi.exit.i._crit_edge12
  ]

skb_vlan_tagged_multi.exit.i._crit_edge12:        ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %13

skb_vlan_tagged_multi.exit.i._crit_edge:          ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %13

skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge: ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_features_check.exit

13:                                               ; preds = %skb_vlan_tagged_multi.exit.i._crit_edge, %skb_vlan_tagged_multi.exit.i._crit_edge12
  %and.i = and i64 %features, 35184372089065
  br label %vlan_features_check.exit

vlan_features_check.exit:                         ; preds = %13, %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge, %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge, %if.end.i2.i.vlan_features_check.exit_crit_edge, %if.then.i.i.vlan_features_check.exit_crit_edge
  %14 = phi i64 [ %and.i, %13 ], [ %features, %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge ], [ %features, %if.then.i.i.vlan_features_check.exit_crit_edge ], [ %features, %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge ], [ %features, %if.end.i2.i.vlan_features_check.exit_crit_edge ]
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %16 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %vlan_features_check.exit.vxlan_features_check.exit_crit_edge, label %if.end.i

vlan_features_check.exit.vxlan_features_check.exit_crit_edge: ; preds = %vlan_features_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vxlan_features_check.exit

if.end.i:                                         ; preds = %vlan_features_check.exit
  %17 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol1.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %19 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %20 to i32
  %21 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.129)
  switch i16 %18, label %if.end.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end.i.if.then.i.i.i_crit_edge
    i16 -32512, label %if.end.i.if.then.i.i.i_crit_edge13
  ]

if.end.i.if.then.i.i.i_crit_edge13:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end.i.vlan_get_protocol.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %20)
  %cmp.i.i.i = icmp ult i16 %20, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !312

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.117, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %vxlan_features_check.exit

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i5 = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i5, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %22 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %23 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !322
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %22, align 2, !annotation !322
  %25 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %29 = add i32 %vlan_depth.1.i.i.i, %28
  %sub.i1.i.i.i.i = sub i32 %26, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !317

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %31, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !312
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %32 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !312
  br i1 %32, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !312

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  br label %vxlan_features_check.exit

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.130)
  switch i16 %34, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge14
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge14: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge14
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %if.end.i.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ %18, %if.end.i.vlan_get_protocol.exit.i_crit_edge ], [ %34, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  %36 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.131)
  switch i16 %retval.2.i.i.i, label %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge: ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vxlan_features_check.exit

sw.bb.i:                                          ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %39 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i47.i = zext i16 %40 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i47.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i48.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i48.i, align 8
  %network_header.i.i49.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i.i49.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i49.i, align 4
  %conv.i.i50.i = zext i16 %44 to i32
  %add.ptr.i.i51.i = getelementptr i8, ptr %42, i32 %conv.i.i50.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i51.i, i32 0, i32 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %l4_hdr.0.in.i = phi ptr [ %nexthdr.i, %sw.bb2.i ], [ %protocol.i, %sw.bb.i ]
  %45 = ptrtoint ptr %l4_hdr.0.in.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %l4_hdr.0.i = load i8, ptr %l4_hdr.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4_hdr.0.i)
  %cmp.i = icmp eq i8 %l4_hdr.0.i, 17
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.i.vxlan_features_check.exit_crit_edge

sw.epilog.i.vxlan_features_check.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vxlan_features_check.exit

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %46 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load6.i = load i32, ptr %vlan_present.i.i, align 2
  %47 = and i32 %bf.load6.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp11.not.i = icmp eq i32 %47, 0
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then32.i_crit_edge

land.lhs.true.i.if.then32.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %50)
  %cmp14.not.i = icmp eq i16 %50, 25944
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false.i.if.then32.i_crit_edge

lor.lhs.false.i.if.then32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i, align 8
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %53 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %inner_mac_header.i.i, align 2
  %conv.i.i = zext i16 %54 to i32
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %55 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %transport_header.i.i, align 2
  %conv.i53.i = zext i16 %56 to i32
  %add.ptr.i54.i = getelementptr i8, ptr %52, i32 %conv.i53.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i54.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i)
  %cmp19.not.i = icmp eq i32 %sub.ptr.sub.i, 16
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false16.i.if.then32.i_crit_edge

lor.lhs.false16.i.if.then32.i_crit_edge:          ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false16.i
  %57 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load22.i = load i16, ptr %encapsulation.i, align 8
  %58 = and i16 %bf.load22.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp27.not.i = icmp eq i16 %58, 0
  br i1 %cmp27.not.i, label %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge, label %land.lhs.true29.i

lor.lhs.false21.i.vxlan_features_check.exit_crit_edge: ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vxlan_features_check.exit

land.lhs.true29.i:                                ; preds = %lor.lhs.false21.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %60)
  %cmp.i.i6 = icmp eq i16 %60, -30458
  br i1 %cmp.i.i6, label %if.then.i.i7, label %if.end.i.i8

if.then.i.i7:                                     ; preds = %land.lhs.true29.i
  %and.i.i = and i64 %14, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i.i7.if.then32.i_crit_edge, label %if.then.i.i7.vxlan_features_check.exit_crit_edge

if.then.i.i7.vxlan_features_check.exit_crit_edge: ; preds = %if.then.i.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %vxlan_features_check.exit

if.then.i.i7.if.then32.i_crit_edge:               ; preds = %if.then.i.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

if.end.i.i8:                                      ; preds = %land.lhs.true29.i
  %and3.i.i = and i64 %14, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i.i)
  %tobool4.not.i.i = icmp eq i64 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i8.vxlan_features_check.exit_crit_edge

if.end.i.i8.vxlan_features_check.exit_crit_edge:  ; preds = %if.end.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %vxlan_features_check.exit

if.end6.i.i:                                      ; preds = %if.end.i.i8
  %61 = zext i16 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %60, label %if.end6.i.i.if.then32.i_crit_edge [
    i16 2048, label %can_checksum_protocol.exit.i
    i16 -31011, label %sw.bb12.i.i
  ]

if.end6.i.i.if.then32.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

sw.bb12.i.i:                                      ; preds = %if.end6.i.i
  %and13.i.i = and i64 %14, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i.i)
  %tobool14.i.not.i = icmp eq i64 %and13.i.i, 0
  br i1 %tobool14.i.not.i, label %sw.bb12.i.i.if.then32.i_crit_edge, label %sw.bb12.i.i.vxlan_features_check.exit_crit_edge

sw.bb12.i.i.vxlan_features_check.exit_crit_edge:  ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vxlan_features_check.exit

sw.bb12.i.i.if.then32.i_crit_edge:                ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

can_checksum_protocol.exit.i:                     ; preds = %if.end6.i.i
  %and8.i.i = and i64 %14, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i)
  %tobool9.i.not.i = icmp eq i64 %and8.i.i, 0
  br i1 %tobool9.i.not.i, label %can_checksum_protocol.exit.i.if.then32.i_crit_edge, label %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge

can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge: ; preds = %can_checksum_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vxlan_features_check.exit

can_checksum_protocol.exit.i.if.then32.i_crit_edge: ; preds = %can_checksum_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

if.then32.i:                                      ; preds = %can_checksum_protocol.exit.i.if.then32.i_crit_edge, %sw.bb12.i.i.if.then32.i_crit_edge, %if.end6.i.i.if.then32.i_crit_edge, %if.then.i.i7.if.then32.i_crit_edge, %lor.lhs.false16.i.if.then32.i_crit_edge, %lor.lhs.false.i.if.then32.i_crit_edge, %land.lhs.true.i.if.then32.i_crit_edge
  %and.i9 = and i64 %14, -34359672859
  br label %vxlan_features_check.exit

vxlan_features_check.exit:                        ; preds = %if.then32.i, %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge, %sw.bb12.i.i.vxlan_features_check.exit_crit_edge, %if.end.i.i8.vxlan_features_check.exit_crit_edge, %if.then.i.i7.vxlan_features_check.exit_crit_edge, %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge, %sw.epilog.i.vxlan_features_check.exit_crit_edge, %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %vlan_features_check.exit.vxlan_features_check.exit_crit_edge
  %retval.0.i = phi i64 [ %and.i9, %if.then32.i ], [ %14, %vlan_features_check.exit.vxlan_features_check.exit_crit_edge ], [ %14, %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge ], [ %14, %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge ], [ %14, %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge ], [ %14, %sw.epilog.i.vxlan_features_check.exit_crit_edge ], [ %14, %if.then.i.i7.vxlan_features_check.exit_crit_edge ], [ %14, %sw.bb12.i.i.vxlan_features_check.exit_crit_edge ], [ %14, %do.end.i.i.i ], [ %14, %cleanup.thread.i.i.i ], [ %14, %if.end.i.i8.vxlan_features_check.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_set_rx_mode(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %config_rx_mode = getelementptr i8, ptr %netdev, i32 2788
  %0 = ptrtoint ptr %config_rx_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_rx_mode, align 4
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_mac_address(ptr noundef %netdev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #11
  %set_mac_address = getelementptr i8, ptr %netdev, i32 2784
  %5 = ptrtoint ptr %set_mac_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_mac_address, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %call5 = tail call i32 %6(ptr noundef %add.ptr.i, ptr noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_ioctl(ptr noundef %netdev, ptr nocapture noundef readonly %ifreq, i32 noundef %cmd) #0 align 64 {
entry:
  %config.i = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 35249, label %sw.bb
    i32 35248, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifreq, i32 0, i32 1
  %1 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ifr_ifru.i, align 4
  %tstamp_config.i = getelementptr i8, ptr %netdev, i32 6572
  tail call void @__might_fault(ptr noundef nonnull @.str.120, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %sw.bb
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #16, !srcloc !323
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.sw.epilog_crit_edge

if.end.i.i.i.sw.epilog_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config.i, i32 noundef 12) #11
  %call.i1.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %tstamp_config.i, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i) #11
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %config.i, align 4, !annotation !322
  %5 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !322
  %7 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !322
  %ifr_ifru.i6 = getelementptr inbounds %struct.ifreq, ptr %ifreq, i32 0, i32 1
  %9 = ptrtoint ptr %ifr_ifru.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ifr_ifru.i6, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.120, i32 noundef 156) #11
  %call.i.i.i7 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i7, label %sw.bb2.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb2.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb2
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 12, i32 -1226833920) #16, !srcloc !324
  %asmresult.i.i.i8 = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i8)
  %cmp.i.i.i9 = icmp eq i32 %asmresult.i.i.i8, 0
  br i1 %cmp.i.i.i9, label %if.end.i.i.i11, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !317

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i11:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i10 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config.i, i32 noundef 12) #11
  %12 = call i32 @llvm.read_register.i32(metadata !297) #11
  %and.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !325
  %and.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config.i, ptr noundef %10, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i11.if.then11.i.i.i_crit_edge, !prof !317

if.end.i.i.i11.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i11.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb2.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i11.if.then11.i.i.i_crit_edge ], [ 12, %sw.bb2.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %config.i, i32 %sub.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %xgbe_set_hwtstamp_settings.exit

if.end.i:                                         ; preds = %if.end.i.i.i11
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch.i = icmp ult i32 %17, 2
  br i1 %switch.i, label %sw.epilog.i, label %if.end.i.xgbe_set_hwtstamp_settings.exit_crit_edge

if.end.i.xgbe_set_hwtstamp_settings.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_set_hwtstamp_settings.exit

sw.epilog.i:                                      ; preds = %if.end.i
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %7, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %19, label %sw.epilog.i.xgbe_set_hwtstamp_settings.exit_crit_edge [
    i32 0, label %sw.epilog.i.sw.epilog250.i_crit_edge
    i32 15, label %sw.epilog.i.do.body2.i_crit_edge
    i32 1, label %sw.epilog.i.do.body2.i_crit_edge13
    i32 6, label %do.body13.i
    i32 3, label %sw.epilog.i.do.body19.i_crit_edge
    i32 7, label %do.body40.i
    i32 4, label %sw.epilog.i.do.body46.i_crit_edge
    i32 8, label %do.body67.i
    i32 5, label %sw.epilog.i.do.body73.i_crit_edge
    i32 9, label %do.body99.i
    i32 10, label %do.body115.i
    i32 11, label %do.body131.i
    i32 12, label %do.body152.i
    i32 13, label %do.body183.i
    i32 14, label %do.body214.i
  ]

sw.epilog.i.do.body73.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body73.i

sw.epilog.i.do.body46.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46.i

sw.epilog.i.do.body19.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19.i

sw.epilog.i.do.body2.i_crit_edge13:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

sw.epilog.i.do.body2.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

sw.epilog.i.sw.epilog250.i_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog250.i

sw.epilog.i.xgbe_set_hwtstamp_settings.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_set_hwtstamp_settings.exit

do.body2.i:                                       ; preds = %sw.epilog.i.do.body2.i_crit_edge, %sw.epilog.i.do.body2.i_crit_edge13
  %or9.i = or i32 %17, 257
  br label %sw.epilog250.i

do.body13.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or15.i = or i32 %17, 1024
  br label %do.body19.i

do.body19.i:                                      ; preds = %do.body13.i, %sw.epilog.i.do.body19.i_crit_edge
  %mac_tscr.1.i = phi i32 [ %17, %sw.epilog.i.do.body19.i_crit_edge ], [ %or15.i, %do.body13.i ]
  %or26.i = and i32 %mac_tscr.1.i, -208898
  %or36.i = or i32 %or26.i, 77825
  br label %sw.epilog250.i

do.body40.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or42.i = or i32 %17, 1024
  br label %do.body46.i

do.body46.i:                                      ; preds = %do.body40.i, %sw.epilog.i.do.body46.i_crit_edge
  %mac_tscr.2.i = phi i32 [ %17, %sw.epilog.i.do.body46.i_crit_edge ], [ %or42.i, %do.body40.i ]
  %or63.i = or i32 %mac_tscr.2.i, 28673
  br label %sw.epilog250.i

do.body67.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or69.i = or i32 %17, 1024
  br label %do.body73.i

do.body73.i:                                      ; preds = %do.body67.i, %sw.epilog.i.do.body73.i_crit_edge
  %mac_tscr.3.i = phi i32 [ %17, %sw.epilog.i.do.body73.i_crit_edge ], [ %or69.i, %do.body67.i ]
  %or95.i = or i32 %mac_tscr.3.i, 61441
  br label %sw.epilog250.i

do.body99.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or101.i = and i32 %17, -268632066
  %or111.i = or i32 %or101.i, 268500993
  br label %sw.epilog250.i

do.body115.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or127.i = or i32 %17, 268451841
  br label %sw.epilog250.i

do.body131.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or148.i = or i32 %17, 268484609
  br label %sw.epilog250.i

do.body152.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or169.i = and i32 %17, -211970
  %or179.i = or i32 %or169.i, 80897
  br label %sw.epilog250.i

do.body183.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or210.i = or i32 %17, 31745
  br label %sw.epilog250.i

do.body214.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or246.i = or i32 %17, 64513
  br label %sw.epilog250.i

sw.epilog250.i:                                   ; preds = %do.body214.i, %do.body183.i, %do.body152.i, %do.body131.i, %do.body115.i, %do.body99.i, %do.body73.i, %do.body46.i, %do.body19.i, %do.body2.i, %sw.epilog.i.sw.epilog250.i_crit_edge
  %mac_tscr.4.i = phi i32 [ %or246.i, %do.body214.i ], [ %or210.i, %do.body183.i ], [ %or179.i, %do.body152.i ], [ %or148.i, %do.body131.i ], [ %or127.i, %do.body115.i ], [ %or111.i, %do.body99.i ], [ %or95.i, %do.body73.i ], [ %or63.i, %do.body46.i ], [ %or36.i, %do.body19.i ], [ %or9.i, %do.body2.i ], [ %17, %sw.epilog.i.sw.epilog250.i_crit_edge ]
  %config_tstamp.i = getelementptr i8, ptr %netdev, i32 2992
  %21 = ptrtoint ptr %config_tstamp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config_tstamp.i, align 4
  %call251.i = call i32 %22(ptr noundef %add.ptr.i, i32 noundef %mac_tscr.4.i) #11
  %tstamp_config.i12 = getelementptr i8, ptr %netdev, i32 6572
  %23 = call ptr @memcpy(ptr %tstamp_config.i12, ptr %config.i, i32 12)
  br label %xgbe_set_hwtstamp_settings.exit

xgbe_set_hwtstamp_settings.exit:                  ; preds = %sw.epilog250.i, %sw.epilog.i.xgbe_set_hwtstamp_settings.exit_crit_edge, %if.end.i.xgbe_set_hwtstamp_settings.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ 0, %sw.epilog250.i ], [ -34, %if.end.i.xgbe_set_hwtstamp_settings.exit_crit_edge ], [ -34, %sw.epilog.i.xgbe_set_hwtstamp_settings.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %xgbe_set_hwtstamp_settings.exit, %copy_to_user.exit.i, %if.end.i.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %xgbe_set_hwtstamp_settings.exit ], [ -95, %entry.sw.epilog_crit_edge ], [ -14, %sw.bb.sw.epilog_crit_edge ], [ -14, %if.end.i.i.i.sw.epilog_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_change_mtu(ptr noundef %netdev, i32 noundef %mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %add2.i = add i32 %mtu, 22
  %0 = tail call i32 @llvm.umax.i32(i32 %add2.i, i32 1522) #11
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 4096) #11
  %sub.i = add nuw nsw i32 %1, 63
  %and.i = and i32 %sub.i, 16320
  %rx_buf_size = getelementptr i8, ptr %netdev, i32 3536
  %2 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.i, ptr %rx_buf_size, align 8
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mtu, ptr %mtu2, align 4
  tail call void @xgbe_restart_dev(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.121) #14
  %restart_work = getelementptr i8, ptr %netdev, i32 7024
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %restart_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_get_stats64(ptr noundef %netdev, ptr nocapture noundef writeonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mmc_stats = getelementptr i8, ptr %netdev, i32 4992
  %read_mmc_stats = getelementptr i8, ptr %netdev, i32 2988
  %0 = ptrtoint ptr %read_mmc_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmc_stats, align 4
  tail call void %1(ptr noundef %add.ptr.i) #11
  %rxframecount_gb = getelementptr i8, ptr %netdev, i32 5136
  %2 = ptrtoint ptr %rxframecount_gb to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rxframecount_gb, align 8
  %4 = ptrtoint ptr %s to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %s, align 8
  %rxoctetcount_gb = getelementptr i8, ptr %netdev, i32 5144
  %5 = ptrtoint ptr %rxoctetcount_gb to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rxoctetcount_gb, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 2
  %7 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %rx_bytes, align 8
  %8 = load i64, ptr %rxframecount_gb, align 8
  %rxbroadcastframes_g = getelementptr i8, ptr %netdev, i32 5160
  %9 = ptrtoint ptr %rxbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rxbroadcastframes_g, align 8
  %rxmulticastframes_g = getelementptr i8, ptr %netdev, i32 5168
  %11 = ptrtoint ptr %rxmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rxmulticastframes_g, align 8
  %rxunicastframes_g = getelementptr i8, ptr %netdev, i32 5264
  %13 = ptrtoint ptr %rxunicastframes_g to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rxunicastframes_g, align 8
  %15 = add i64 %10, %12
  %16 = add i64 %15, %14
  %sub3 = sub i64 %8, %16
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 4
  %17 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub3, ptr %rx_errors, align 8
  %18 = load i64, ptr %rxmulticastframes_g, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 8
  %19 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %multicast, align 8
  %rxlengtherror = getelementptr i8, ptr %netdev, i32 5272
  %20 = ptrtoint ptr %rxlengtherror to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rxlengtherror, align 8
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 10
  %22 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rx_length_errors, align 8
  %rxcrcerror = getelementptr i8, ptr %netdev, i32 5176
  %23 = ptrtoint ptr %rxcrcerror to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rxcrcerror, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 12
  %25 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %rx_crc_errors, align 8
  %rxfifooverflow = getelementptr i8, ptr %netdev, i32 5296
  %26 = ptrtoint ptr %rxfifooverflow to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rxfifooverflow, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 14
  %28 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %rx_fifo_errors, align 8
  %txframecount_gb = getelementptr i8, ptr %netdev, i32 5000
  %29 = ptrtoint ptr %txframecount_gb to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %txframecount_gb, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 1
  %31 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tx_packets, align 8
  %32 = ptrtoint ptr %mmc_stats to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %mmc_stats, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 3
  %34 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %tx_bytes, align 8
  %35 = load i64, ptr %txframecount_gb, align 8
  %txframecount_g = getelementptr i8, ptr %netdev, i32 5112
  %36 = ptrtoint ptr %txframecount_g to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %txframecount_g, align 8
  %sub6 = sub i64 %35, %37
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 5
  %38 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %sub6, ptr %tx_errors, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %39 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_dropped, align 4
  %conv = zext i32 %40 to i64
  %tx_dropped7 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 7
  %41 = ptrtoint ptr %tx_dropped7 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv, ptr %tx_dropped7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_vlan_rx_add_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %netdev, i32 5888
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %active_vlans) #11
  %update_vlan_hash_table = getelementptr i8, ptr %netdev, i32 2816
  %0 = ptrtoint ptr %update_vlan_hash_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %update_vlan_hash_table, align 4
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_vlan_rx_kill_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %netdev, i32 5888
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %active_vlans) #11
  %update_vlan_hash_table = getelementptr i8, ptr %netdev, i32 2816
  %0 = ptrtoint ptr %update_vlan_hash_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %update_vlan_hash_table, align 4
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_poll_controller(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %per_channel_irq = getelementptr i8, ptr %netdev, i32 2716
  %0 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %channel_count = getelementptr i8, ptr %netdev, i32 3424
  %2 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %for.cond.preheader.do.end8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

for.body:                                         ; preds = %xgbe_dma_isr.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %xgbe_dma_isr.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 62, i32 %i.026
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %dma_irq = getelementptr inbounds %struct.xgbe_channel, ptr %5, i32 0, i32 4
  %pdata1.i = getelementptr inbounds %struct.xgbe_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata1.i, align 16
  %napi.i = getelementptr inbounds %struct.xgbe_channel, ptr %5, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #11
  br i1 %call.i, label %if.then.i, label %for.body.xgbe_dma_isr.exit_crit_edge

for.body.xgbe_dma_isr.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_dma_isr.exit

if.then.i:                                        ; preds = %for.body
  %channel_irq_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %7, i32 0, i32 49
  %8 = ptrtoint ptr %channel_irq_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_irq_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %tx_ring.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %rx_ring7.i.i = getelementptr inbounds %struct.xgbe_channel, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %rx_ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring7.i.i, align 16
  %tobool8.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.else6.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i.i = select i1 %tobool8.not.i.i, i32 0, i32 6
  br label %if.end12.i.i

if.else6.i.i:                                     ; preds = %if.then2.i
  br i1 %tobool8.not.i.i, label %if.else6.i.i.if.end.i_crit_edge, label %if.else6.i.i.if.end12.i.i_crit_edge

if.else6.i.i.if.end12.i.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.else6.i.i.if.end.i_crit_edge:                  ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end12.i.i:                                     ; preds = %if.else6.i.i.if.end12.i.i_crit_edge, %land.lhs.true.i.i
  %int_id.0.i.i = phi i32 [ 3, %if.else6.i.i.if.end12.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %disable_int.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %7, i32 0, i32 51, i32 29
  %14 = ptrtoint ptr %disable_int.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable_int.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %5, i32 noundef %int_id.0.i.i) #11
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %17) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end12.i.i, %if.else6.i.i.if.end.i_crit_edge
  tail call void @__napi_schedule_irqoff(ptr noundef %napi.i) #11
  br label %xgbe_dma_isr.exit

xgbe_dma_isr.exit:                                ; preds = %if.end.i, %for.body.xgbe_dma_isr.exit_crit_edge
  %dma_regs.i = getelementptr inbounds %struct.xgbe_channel, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %19, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 1090519040) #11, !srcloc !316
  %inc = add nuw i32 %i.026, 1
  %20 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %xgbe_dma_isr.exit.for.body_crit_edge, label %xgbe_dma_isr.exit.do.end8_crit_edge

xgbe_dma_isr.exit.do.end8_crit_edge:              ; preds = %xgbe_dma_isr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

xgbe_dma_isr.exit.for.body_crit_edge:             ; preds = %xgbe_dma_isr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %entry
  %dev_irq = getelementptr i8, ptr %netdev, i32 2640
  %22 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_irq, align 8
  tail call void @disable_irq(i32 noundef %23) #11
  %isr_as_tasklet.i = getelementptr i8, ptr %netdev, i32 7856
  %24 = ptrtoint ptr %isr_as_tasklet.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %isr_as_tasklet.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i19 = icmp eq i32 %25, 0
  br i1 %tobool.not.i19, label %if.else.i23, label %if.then.i22

if.then.i22:                                      ; preds = %if.else
  %state.i.i = getelementptr i8, ptr %netdev, i32 7864
  %call.i.i20 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %tobool.not.i.i21 = icmp eq i32 %call.i.i20, 0
  br i1 %tobool.not.i.i21, label %if.then.i.i, label %if.then.i22.xgbe_isr.exit_crit_edge

if.then.i22.xgbe_isr.exit_crit_edge:              ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_isr.exit

if.then.i.i:                                      ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet_dev.i = getelementptr i8, ptr %netdev, i32 7860
  tail call void @__tasklet_schedule(ptr noundef %tasklet_dev.i) #11
  br label %xgbe_isr.exit

if.else.i23:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet_dev1.i = getelementptr i8, ptr %netdev, i32 7860
  tail call void @xgbe_isr_task(ptr noundef %tasklet_dev1.i) #11
  br label %xgbe_isr.exit

xgbe_isr.exit:                                    ; preds = %if.else.i23, %if.then.i.i, %if.then.i22.xgbe_isr.exit_crit_edge
  %26 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_irq, align 8
  tail call void @enable_irq(i32 noundef %27) #11
  br label %do.end8

do.end8:                                          ; preds = %xgbe_isr.exit, %xgbe_dma_isr.exit.do.end8_crit_edge, %for.cond.preheader.do.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_setup_tc(ptr noundef %netdev, i32 noundef %type, ptr nocapture noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hw, align 1
  %1 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type_data, align 2
  %conv = zext i8 %2 to i32
  %tc_cnt = getelementptr i8, ptr %netdev, i32 6988
  %3 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tc_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp1 = icmp ult i32 %4, %conv
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %num_tcs = getelementptr i8, ptr %netdev, i32 6884
  %5 = ptrtoint ptr %num_tcs to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %num_tcs, align 4
  %config_tc = getelementptr i8, ptr %netdev, i32 3012
  %6 = ptrtoint ptr %config_tc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_tc, align 4
  tail call void %7(ptr noundef %add.ptr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xgbe_fix_features(ptr noundef %netdev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vxn = getelementptr i8, ptr %netdev, i32 6948
  %0 = ptrtoint ptr %vxn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vxn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i64 %features, 201326592
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217728, i64 %2)
  %3 = icmp eq i64 %2, 134217728
  br i1 %3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %netdev, ptr noundef nonnull @.str.122) #14
  %or = or i64 %features, 67108864
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %features.addr.0 = phi i64 [ %or, %if.then4 ], [ %features, %if.end.if.end5_crit_edge ]
  %and6 = and i64 %features.addr.0, 4503599694479360
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599694479360, i64 %and6)
  %cmp.not = icmp eq i64 %and6, 4503599694479360
  br i1 %cmp.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %netdev, ptr noundef nonnull @.str.123) #14
  %or8 = or i64 %features.addr.0, 4503599694479360
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %features.addr.1 = phi i64 [ %or8, %if.then7 ], [ %features.addr.0, %if.end5.if.end9_crit_edge ]
  %and10 = and i64 %features.addr.1, 18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  %and18 = and i64 %features.addr.1, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  br i1 %tobool19.not, label %if.then15, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %netdev, ptr noundef nonnull @.str.124) #14
  %or16 = or i64 %features.addr.1, 134217728
  br label %cleanup

if.else:                                          ; preds = %if.end9
  br i1 %tobool19.not, label %if.else.cleanup_crit_edge, label %if.then20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %netdev, ptr noundef nonnull @.str.125) #14
  %and21 = and i64 %features.addr.1, -134217729
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.else.cleanup_crit_edge, %if.then15, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %features, %entry.cleanup_crit_edge ], [ %features.addr.1, %if.then12.cleanup_crit_edge ], [ %or16, %if.then15 ], [ %and21, %if.then20 ], [ %features.addr.1, %if.else.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_features(ptr noundef %netdev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %netdev_features = getelementptr i8, ptr %netdev, i32 4760
  %0 = ptrtoint ptr %netdev_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %netdev_features, align 8
  %and = and i64 %1, 549755813888
  %and3 = and i64 %1, 1099511627776
  %and5 = and i64 %1, 256
  %and7 = and i64 %1, 512
  %and8 = and i64 %features, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool.not = icmp ne i64 %and8, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool9.not = icmp eq i64 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %entry.if.end17_crit_edge, label %if.else

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else:                                          ; preds = %entry
  %or.cond107 = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond107, label %if.else.if.end20_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %entry.if.end17_crit_edge
  %.sink = phi i32 [ 3024, %entry.if.end17_crit_edge ], [ 3028, %if.else.if.end17_crit_edge ]
  %disable_rss = getelementptr i8, ptr %netdev, i32 %.sink
  %2 = ptrtoint ptr %disable_rss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_rss, align 4
  %call16 = tail call i32 %3(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %if.end17.if.end20_crit_edge, %if.else.if.end20_crit_edge
  %and21 = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp ne i64 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool24.not = icmp eq i64 %and3, 0
  %or.cond108 = select i1 %tobool22.not, i1 %tobool24.not, i1 false
  br i1 %or.cond108, label %if.end20.if.end35.sink.split_crit_edge, label %if.else27

if.end20.if.end35.sink.split_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.sink.split

if.else27:                                        ; preds = %if.end20
  %or.cond110 = select i1 %tobool22.not, i1 true, i1 %tobool24.not
  br i1 %or.cond110, label %if.else27.if.end35_crit_edge, label %if.else27.if.end35.sink.split_crit_edge

if.else27.if.end35.sink.split_crit_edge:          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.sink.split

if.else27.if.end35_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end35.sink.split:                              ; preds = %if.else27.if.end35.sink.split_crit_edge, %if.end20.if.end35.sink.split_crit_edge
  %.sink120 = phi i32 [ 2792, %if.end20.if.end35.sink.split_crit_edge ], [ 2796, %if.else27.if.end35.sink.split_crit_edge ]
  %disable_rx_csum = getelementptr i8, ptr %netdev, i32 %.sink120
  %4 = ptrtoint ptr %disable_rx_csum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_rx_csum, align 4
  %call33 = tail call i32 %5(ptr noundef %add.ptr.i) #11
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else27.if.end35_crit_edge
  %and36 = and i64 %features, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp ne i64 %and36, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool39.not = icmp eq i64 %and5, 0
  %or.cond111 = select i1 %tobool37.not, i1 %tobool39.not, i1 false
  br i1 %or.cond111, label %if.end35.if.end50.sink.split_crit_edge, label %if.else42

if.end35.if.end50.sink.split_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.sink.split

if.else42:                                        ; preds = %if.end35
  %or.cond113 = select i1 %tobool37.not, i1 true, i1 %tobool39.not
  br i1 %or.cond113, label %if.else42.if.end50_crit_edge, label %if.else42.if.end50.sink.split_crit_edge

if.else42.if.end50.sink.split_crit_edge:          ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.sink.split

if.else42.if.end50_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50.sink.split:                              ; preds = %if.else42.if.end50.sink.split_crit_edge, %if.end35.if.end50.sink.split_crit_edge
  %.sink122 = phi i32 [ 2800, %if.end35.if.end50.sink.split_crit_edge ], [ 2804, %if.else42.if.end50.sink.split_crit_edge ]
  %disable_rx_vlan_stripping = getelementptr i8, ptr %netdev, i32 %.sink122
  %6 = ptrtoint ptr %disable_rx_vlan_stripping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_rx_vlan_stripping, align 4
  %call48 = tail call i32 %7(ptr noundef %add.ptr.i) #11
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.else42.if.end50_crit_edge
  %and51 = and i64 %features, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and51)
  %tobool52.not = icmp ne i64 %and51, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool54.not = icmp eq i64 %and7, 0
  %or.cond114 = select i1 %tobool52.not, i1 %tobool54.not, i1 false
  br i1 %or.cond114, label %if.end50.if.end65.sink.split_crit_edge, label %if.else57

if.end50.if.end65.sink.split_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.sink.split

if.else57:                                        ; preds = %if.end50
  %or.cond116 = select i1 %tobool52.not, i1 true, i1 %tobool54.not
  br i1 %or.cond116, label %if.else57.if.end65_crit_edge, label %if.else57.if.end65.sink.split_crit_edge

if.else57.if.end65.sink.split_crit_edge:          ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.sink.split

if.else57.if.end65_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.end65.sink.split:                              ; preds = %if.else57.if.end65.sink.split_crit_edge, %if.end50.if.end65.sink.split_crit_edge
  %.sink124 = phi i32 [ 2808, %if.end50.if.end65.sink.split_crit_edge ], [ 2812, %if.else57.if.end65.sink.split_crit_edge ]
  %disable_rx_vlan_filtering = getelementptr i8, ptr %netdev, i32 %.sink124
  %8 = ptrtoint ptr %disable_rx_vlan_filtering to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_rx_vlan_filtering, align 4
  %call63 = tail call i32 %9(ptr noundef %add.ptr.i) #11
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.else57.if.end65_crit_edge
  %10 = ptrtoint ptr %netdev_features to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %features, ptr %netdev_features, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ %call16, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_service(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -956
  %phy_status = getelementptr i8, ptr %work, i32 -180
  %0 = ptrtoint ptr %phy_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_status, align 4
  tail call void %1(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_restart(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4720
  tail call void @rtnl_lock() #11
  tail call void @xgbe_restart_dev(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_stopdev(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4764
  tail call void @rtnl_lock() #11
  tail call fastcc void @xgbe_stop(ptr noundef %add.ptr)
  %channel_count.i = getelementptr i8, ptr %work, i32 -3644
  %0 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26.not.i = icmp eq i32 %1, 0
  br i1 %cmp26.not.i, label %entry.xgbe_free_rx_data.exit_crit_edge, label %for.body.lr.ph.i

entry.xgbe_free_rx_data.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_rx_data.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %unmap_rdata.i = getelementptr i8, ptr %work, i32 -3860
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc7.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc8.i, %for.inc7.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %add.ptr, i32 0, i32 62, i32 %i.027.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %xgbe_free_tx_data.exitthread-pre-split, label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i
  %rdesc_count.i = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdesc_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp324.not.i = icmp eq i32 %7, 0
  br i1 %cmp324.not.i, label %for.cond2.preheader.i.for.inc7.i_crit_edge, label %for.body4.lr.ph.i

for.cond2.preheader.i.for.inc7.i_crit_edge:       ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc7.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %rdata5.i = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 5
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %8 = phi i32 [ %7, %for.body4.lr.ph.i ], [ %14, %for.body4.i.for.body4.i_crit_edge ]
  %j.025.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %9 = ptrtoint ptr %rdata5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdata5.i, align 4
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub.i, %j.025.i
  %add.ptr.i = getelementptr %struct.xgbe_ring_data, ptr %10, i32 %and.i
  %11 = ptrtoint ptr %unmap_rdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unmap_rdata.i, align 4
  tail call void %12(ptr noundef %add.ptr, ptr noundef %add.ptr.i) #11
  %inc.i = add nuw i32 %j.025.i, 1
  %13 = ptrtoint ptr %rdesc_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rdesc_count.i, align 8
  %cmp3.i = icmp ult i32 %inc.i, %14
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc7.i_crit_edge

for.body4.i.for.inc7.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc7.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i

for.inc7.i:                                       ; preds = %for.body4.i.for.inc7.i_crit_edge, %for.cond2.preheader.i.for.inc7.i_crit_edge
  %inc8.i = add nuw i32 %i.027.i, 1
  %15 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel_count.i, align 8
  %cmp.i = icmp ult i32 %inc8.i, %16
  br i1 %cmp.i, label %for.inc7.i.for.body.i_crit_edge, label %for.inc7.i.xgbe_free_tx_data.exit_crit_edge

for.inc7.i.xgbe_free_tx_data.exit_crit_edge:      ; preds = %for.inc7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_tx_data.exit

for.inc7.i.for.body.i_crit_edge:                  ; preds = %for.inc7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_free_tx_data.exitthread-pre-split:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %channel_count.i, align 8
  br label %xgbe_free_tx_data.exit

xgbe_free_tx_data.exit:                           ; preds = %xgbe_free_tx_data.exitthread-pre-split, %for.inc7.i.xgbe_free_tx_data.exit_crit_edge
  %18 = phi i32 [ %.pr, %xgbe_free_tx_data.exitthread-pre-split ], [ %16, %for.inc7.i.xgbe_free_tx_data.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp26.not.i5 = icmp eq i32 %18, 0
  br i1 %cmp26.not.i5, label %xgbe_free_tx_data.exit.xgbe_free_rx_data.exit_crit_edge, label %xgbe_free_tx_data.exit.for.body.i11_crit_edge

xgbe_free_tx_data.exit.for.body.i11_crit_edge:    ; preds = %xgbe_free_tx_data.exit
  br label %for.body.i11

xgbe_free_tx_data.exit.xgbe_free_rx_data.exit_crit_edge: ; preds = %xgbe_free_tx_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_rx_data.exit

for.body.i11:                                     ; preds = %for.inc7.i26.for.body.i11_crit_edge, %xgbe_free_tx_data.exit.for.body.i11_crit_edge
  %i.027.i8 = phi i32 [ %inc8.i24, %for.inc7.i26.for.body.i11_crit_edge ], [ 0, %xgbe_free_tx_data.exit.for.body.i11_crit_edge ]
  %arrayidx.i9 = getelementptr %struct.xgbe_prv_data, ptr %add.ptr, i32 0, i32 62, i32 %i.027.i8
  %19 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i9, align 4
  %rx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_ring.i, align 16
  %tobool.not.i10 = icmp eq ptr %22, null
  br i1 %tobool.not.i10, label %for.body.i11.xgbe_free_rx_data.exit_crit_edge, label %for.cond2.preheader.i14

for.body.i11.xgbe_free_rx_data.exit_crit_edge:    ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_rx_data.exit

for.cond2.preheader.i14:                          ; preds = %for.body.i11
  %rdesc_count.i12 = getelementptr inbounds %struct.xgbe_ring, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %rdesc_count.i12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rdesc_count.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp324.not.i13 = icmp eq i32 %24, 0
  br i1 %cmp324.not.i13, label %for.cond2.preheader.i14.for.inc7.i26_crit_edge, label %for.body4.lr.ph.i16

for.cond2.preheader.i14.for.inc7.i26_crit_edge:   ; preds = %for.cond2.preheader.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc7.i26

for.body4.lr.ph.i16:                              ; preds = %for.cond2.preheader.i14
  %rdata5.i15 = getelementptr inbounds %struct.xgbe_ring, ptr %22, i32 0, i32 5
  br label %for.body4.i23

for.body4.i23:                                    ; preds = %for.body4.i23.for.body4.i23_crit_edge, %for.body4.lr.ph.i16
  %25 = phi i32 [ %24, %for.body4.lr.ph.i16 ], [ %31, %for.body4.i23.for.body4.i23_crit_edge ]
  %j.025.i17 = phi i32 [ 0, %for.body4.lr.ph.i16 ], [ %inc.i21, %for.body4.i23.for.body4.i23_crit_edge ]
  %26 = ptrtoint ptr %rdata5.i15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rdata5.i15, align 4
  %sub.i18 = add i32 %25, -1
  %and.i19 = and i32 %sub.i18, %j.025.i17
  %add.ptr.i20 = getelementptr %struct.xgbe_ring_data, ptr %27, i32 %and.i19
  %28 = ptrtoint ptr %unmap_rdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unmap_rdata.i, align 4
  tail call void %29(ptr noundef %add.ptr, ptr noundef %add.ptr.i20) #11
  %inc.i21 = add nuw i32 %j.025.i17, 1
  %30 = ptrtoint ptr %rdesc_count.i12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rdesc_count.i12, align 8
  %cmp3.i22 = icmp ult i32 %inc.i21, %31
  br i1 %cmp3.i22, label %for.body4.i23.for.body4.i23_crit_edge, label %for.body4.i23.for.inc7.i26_crit_edge

for.body4.i23.for.inc7.i26_crit_edge:             ; preds = %for.body4.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc7.i26

for.body4.i23.for.body4.i23_crit_edge:            ; preds = %for.body4.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i23

for.inc7.i26:                                     ; preds = %for.body4.i23.for.inc7.i26_crit_edge, %for.cond2.preheader.i14.for.inc7.i26_crit_edge
  %inc8.i24 = add nuw i32 %i.027.i8, 1
  %32 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel_count.i, align 8
  %cmp.i25 = icmp ult i32 %inc8.i24, %33
  br i1 %cmp.i25, label %for.inc7.i26.for.body.i11_crit_edge, label %for.inc7.i26.xgbe_free_rx_data.exit_crit_edge

for.inc7.i26.xgbe_free_rx_data.exit_crit_edge:    ; preds = %for.inc7.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_free_rx_data.exit

for.inc7.i26.for.body.i11_crit_edge:              ; preds = %for.inc7.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i11

xgbe_free_rx_data.exit:                           ; preds = %for.inc7.i26.xgbe_free_rx_data.exit_crit_edge, %for.body.i11.xgbe_free_rx_data.exit_crit_edge, %xgbe_free_tx_data.exit.xgbe_free_rx_data.exit_crit_edge, %entry.xgbe_free_rx_data.exit_crit_edge
  tail call void @rtnl_unlock() #11
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %35, ptr noundef nonnull @.str.113) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_tx_tstamp(ptr noundef %work) #0 align 64 {
entry:
  %hwtstamps = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwtstamps) #11
  %0 = ptrtoint ptr %hwtstamps to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %hwtstamps, align 8, !annotation !322
  %tstamp_lock = getelementptr i8, ptr %work, i32 -236
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tstamp_lock) #11
  %tx_tstamp_skb = getelementptr i8, ptr %work, i32 44
  %1 = ptrtoint ptr %tx_tstamp_skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_tstamp_skb, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  %tx_tstamp = getelementptr i8, ptr %work, i32 52
  %3 = ptrtoint ptr %tx_tstamp to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tx_tstamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool6.not = icmp eq i64 %4, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tstamp_tc = getelementptr i8, ptr %work, i32 -44
  %call9 = tail call i64 @timecounter_cyc2time(ptr noundef %tstamp_tc, i64 noundef %4) #11
  %5 = ptrtoint ptr %hwtstamps to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call9, ptr %hwtstamps, align 8
  %6 = ptrtoint ptr %tx_tstamp_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_tstamp_skb, align 8
  call void @skb_tstamp_tx(ptr noundef %7, ptr noundef nonnull %hwtstamps) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %8 = ptrtoint ptr %tx_tstamp_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_tstamp_skb, align 8
  call void @__dev_kfree_skb_any(ptr noundef %9, i32 noundef 1) #11
  %10 = ptrtoint ptr %tx_tstamp_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tx_tstamp_skb, align 8
  br label %unlock

unlock:                                           ; preds = %if.end12, %entry.unlock_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tstamp_lock, i32 noundef %call3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwtstamps) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !115, !117, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !150, !152, !154, !156, !158, !159, !161, !163, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !181, !183, !185, !187, !189, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !207, !209, !211, !213, !215, !217, !219, !221, !222, !223, !224, !225, !226, !227, !229, !230, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !274, !276, !278, !280, !282, !283, !285, !287, !289, !291, !293, !295}
!llvm.named.register.sp = !{!297}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.ident = !{!306}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 831, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug592, !1, !"__UNIQUE_ID_ddebug592", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 834, i32 3}
!8 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug593, !7, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 836, i32 3}
!13 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug594, !12, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 838, i32 3}
!16 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug595, !15, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 840, i32 3}
!19 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug596, !18, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 842, i32 3}
!22 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug597, !21, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 844, i32 3}
!25 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug598, !24, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 846, i32 3}
!28 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug599, !27, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 848, i32 3}
!31 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug600, !30, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 850, i32 3}
!34 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug601, !33, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 852, i32 3}
!37 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug602, !36, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 854, i32 3}
!40 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug603, !39, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 856, i32 3}
!43 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug604, !42, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 858, i32 3}
!46 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug605, !45, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!47 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 862, i32 3}
!53 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug606, !52, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 864, i32 3}
!56 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug607, !55, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 868, i32 3}
!59 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug608, !58, !"__UNIQUE_ID_ddebug608", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 870, i32 3}
!62 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug609, !61, !"__UNIQUE_ID_ddebug609", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 872, i32 3}
!65 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug610, !64, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 874, i32 3}
!68 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug611, !67, !"__UNIQUE_ID_ddebug611", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 876, i32 3}
!71 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug612, !70, !"__UNIQUE_ID_ddebug612", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 878, i32 3}
!74 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug613, !73, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 880, i32 3}
!77 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug614, !76, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 882, i32 3}
!80 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug615, !79, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 884, i32 3}
!83 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug616, !82, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 886, i32 3}
!86 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug617, !85, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 888, i32 3}
!89 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug618, !88, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 890, i32 3}
!92 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug619, !91, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 894, i32 3}
!95 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug620, !94, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 896, i32 3}
!98 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug621, !97, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 898, i32 3}
!101 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug622, !100, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 900, i32 3}
!104 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug623, !103, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 902, i32 3}
!107 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug624, !106, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 904, i32 3}
!110 = !{ptr @xgbe_get_all_hw_features.__UNIQUE_ID_ddebug625, !109, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1174, i32 24}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1213, i32 24}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2749, i32 3}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @xgbe_dump_tx_desc.__UNIQUE_ID_ddebug632, !116, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!119 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2768, i32 2}
!123 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @xgbe_dump_rx_desc.__UNIQUE_ID_ddebug633, !122, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2780, i32 2}
!127 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug634, !126, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2782, i32 2}
!131 = !{ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug635, !130, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!132 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2785, i32 2}
!136 = !{ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug636, !135, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2786, i32 2}
!139 = !{ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug637, !138, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2787, i32 2}
!142 = !{ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug638, !141, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2794, i32 3}
!145 = !{ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug641, !144, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!146 = !{ptr @xgbe_print_pkt.__UNIQUE_ID_ddebug642, !147, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2797, i32 2}
!148 = !{ptr @xgbe_udp_tunnels, !149, !"xgbe_udp_tunnels", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 931, i32 41}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2542, i32 5}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2604, i32 4}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 211, i32 50}
!156 = !{ptr @xgbe_alloc_channels.__key, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 227, i32 4}
!158 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @xgbe_alloc_channels.__key.64, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 238, i32 4}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 244, i32 3}
!163 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @xgbe_alloc_channels.__UNIQUE_ID_ddebug580, !162, !"__UNIQUE_ID_ddebug580", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 247, i32 3}
!167 = !{ptr @xgbe_alloc_channels.__UNIQUE_ID_ddebug581, !166, !"__UNIQUE_ID_ddebug581", i1 false, i1 false}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!170 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @xgbe_init_timers.__key, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 696, i32 2}
!173 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @xgbe_init_timers.__key.70, !175, !"__key", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 703, i32 3}
!176 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1304, i32 22}
!179 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1310, i32 22}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1002, i32 24}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1011, i32 25}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1024, i32 5}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 493, i32 2}
!189 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @xgbe_isr_task.__UNIQUE_ID_ddebug587, !188, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 502, i32 3}
!193 = !{ptr @xgbe_isr_task.__UNIQUE_ID_ddebug588, !192, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!194 = !{ptr @.str.80, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 542, i32 3}
!196 = !{ptr @xgbe_isr_task.__UNIQUE_ID_ddebug589, !195, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 554, i32 4}
!199 = !{ptr @xgbe_isr_task.__UNIQUE_ID_ddebug590, !198, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!200 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 569, i32 4}
!202 = !{ptr @xgbe_isr_task.__UNIQUE_ID_ddebug591, !201, !"__UNIQUE_ID_ddebug591", i1 false, i1 false}
!203 = !{ptr @.str.83, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 415, i32 2}
!205 = !{ptr @.str.84, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @xgbe_ecc_isr_task.__UNIQUE_ID_ddebug586, !204, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!207 = !{ptr @.str.85, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 419, i32 32}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 424, i32 32}
!211 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 430, i32 10}
!213 = !{ptr @.str.88, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 398, i32 9}
!215 = distinct !{null, !216, !"ecc_ded_period", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 135, i32 21}
!217 = distinct !{null, !218, !"ecc_ded_threshold", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 134, i32 21}
!219 = distinct !{null, !220, !"__print_once", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 372, i32 3}
!221 = !{ptr @.str.89, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.90, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.91, !220, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @xgbe_ecc_sec._entry, !220, !"_entry", i1 false, i1 false}
!226 = !{ptr @xgbe_ecc_sec._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!227 = distinct !{null, !228, !"__print_once", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 377, i32 3}
!229 = !{ptr @.str.95, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @xgbe_ecc_sec._entry.94, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @xgbe_ecc_sec._entry_ptr.96, !228, !"_entry_ptr", i1 false, i1 false}
!232 = distinct !{null, !233, !"ecc_sec_period", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 133, i32 21}
!234 = distinct !{null, !235, !"ecc_sec_info_threshold", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 131, i32 21}
!236 = distinct !{null, !237, !"ecc_sec_warn_threshold", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 132, i32 21}
!238 = !{ptr @.str.97, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!240 = !{ptr @xgbe_netdev_ops, !241, !"xgbe_netdev_ops", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2277, i32 36}
!242 = !{ptr @.str.98, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1823, i32 55}
!244 = !{ptr @.str.99, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1826, i32 57}
!246 = !{ptr @.str.100, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1829, i32 57}
!248 = !{ptr @.str.101, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1834, i32 3}
!250 = !{ptr @.str.102, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1836, i32 22}
!252 = !{ptr @.str.103, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1843, i32 22}
!254 = !{ptr @.str.104, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1856, i32 24}
!256 = !{ptr @.str.105, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1862, i32 24}
!258 = !{ptr @xgbe_open.__key, !259, !"__key", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1866, i32 2}
!260 = !{ptr @.str.106, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @xgbe_open.__key.107, !262, !"__key", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1867, i32 2}
!263 = !{ptr @.str.108, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @xgbe_open.__key.109, !265, !"__key", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1868, i32 2}
!266 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @xgbe_open.__key.111, !268, !"__key", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1869, i32 2}
!269 = !{ptr @.str.112, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.113, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1420, i32 30}
!272 = !{ptr @.str.114, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1944, i32 3}
!274 = !{ptr @.str.115, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 1961, i32 3}
!276 = !{ptr @.str.116, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 279, i32 3}
!278 = !{ptr @.str.117, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!280 = distinct !{null, !281, !"__already_done", i1 false, i1 false}
!281 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!282 = distinct !{null, !281, !"<string literal>", i1 false, i1 false}
!283 = distinct !{null, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!285 = !{ptr @.str.120, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!287 = !{ptr @.str.121, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2071, i32 22}
!289 = !{ptr @.str.122, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2197, i32 10}
!291 = !{ptr @.str.123, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2204, i32 10}
!293 = !{ptr @.str.124, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2211, i32 11}
!295 = !{ptr @.str.125, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-drv.c", i32 2217, i32 11}
!297 = !{!"sp"}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 1, !"min_enum_size", i32 4}
!300 = !{i32 8, !"branch-target-enforcement", i32 0}
!301 = !{i32 8, !"sign-return-address", i32 0}
!302 = !{i32 8, !"sign-return-address-all", i32 0}
!303 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!304 = !{i32 7, !"uwtable", i32 1}
!305 = !{i32 7, !"frame-pointer", i32 2}
!306 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!307 = !{i64 6322422}
!308 = !{i64 2153862771}
!309 = !{i64 2149028240, i64 2149028245, i64 2149028258, i64 2149028302, i64 2149028336, i64 2149028357}
!310 = !{i64 2158944986}
!311 = !{i64 2158945195}
!312 = !{!"branch_weights", i32 1, i32 2000}
!313 = !{i64 2155934185}
!314 = !{i64 2158941478}
!315 = !{i64 2153864126}
!316 = !{i64 6322004}
!317 = !{!"branch_weights", i32 2000, i32 1}
!318 = !{i64 2148416393, i64 2148416425, i64 2148416454, i64 2148416488, i64 2148416519, i64 2148416542}
!319 = !{i64 2155003797, i64 2155004297, i64 2155003834, i64 2155003890, i64 2155003924, i64 2155003948, i64 2155003989, i64 2155004010, i64 2155004038, i64 2155004072}
!320 = !{i64 2155005141}
!321 = !{i64 2155933114}
!322 = !{!"auto-init"}
!323 = !{i64 2152654787, i64 2152654812}
!324 = !{i64 2152654106, i64 2152654131}
!325 = !{i64 5149661}
!326 = !{i64 5149858}
!327 = !{i64 2152635091}
