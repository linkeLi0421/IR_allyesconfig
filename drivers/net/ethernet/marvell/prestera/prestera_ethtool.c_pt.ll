; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.prestera_link_mode = type { i32, i32, i64, i8, i8 }
%struct.prestera_fec = type { i32, i32, i8 }
%struct.prestera_port_type = type { i32, i8 }
%struct.prestera_port = type { ptr, ptr, ptr, %struct.devlink_port, %struct.list_head, ptr, i32, i32, i32, i16, i16, i8, i64, i8, %struct.prestera_port_caps, %struct.list_head, %struct.list_head, %struct.anon.120, %struct.prestera_port_mac_config, %struct.prestera_port_phy_config, %struct.prestera_port_mac_state, %struct.prestera_port_phy_state }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.108 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.108 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.prestera_port_caps = type { i64, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.120 = type { %struct.prestera_port_stats, %struct.delayed_work }
%struct.prestera_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.prestera_port_mac_config = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_config = type { i32, i8, i8 }
%struct.prestera_port_mac_state = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_state = type { i64, %struct.anon.121, i8 }
%struct.anon.121 = type { i8, i8 }
%struct.prestera_port_event = type { i32, %union.anon.126 }
%union.anon.126 = type { %struct.anon.128 }
%struct.anon.128 = type { i64, %struct.anon.129, i8 }
%struct.anon.129 = type { i8, i8 }
%struct.anon.127 = type { i32, i32, i8, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.prestera_device = type { ptr, ptr, ptr, %struct.prestera_fw_rev, ptr, ptr, ptr, ptr }
%struct.prestera_fw_rev = type { i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.119 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.118, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.118 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }

@prestera_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @prestera_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prestera_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prestera_ethtool_get_strings, ptr null, ptr @prestera_ethtool_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @prestera_ethtool_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prestera_ethtool_get_link_ksettings, ptr @prestera_ethtool_set_link_ksettings, ptr null, ptr @prestera_ethtool_get_fecparam, ptr @prestera_ethtool_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@driver_kind = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prestera\00", [23 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@prestera_cnt_name = internal constant { [30 x [32 x i8]], [224 x i8] } { [30 x [32 x i8]] [[32 x i8] c"good_octets_received\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bad_octets_received\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"mac_trans_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"broadcast_frames_received\00\00\00\00\00\00\00", [32 x i8] c"multicast_frames_received\00\00\00\00\00\00\00", [32 x i8] c"frames_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_65_to_127_octets\00\00\00\00\00\00\00\00\00", [32 x i8] c"frames_128_to_255_octets\00\00\00\00\00\00\00\00", [32 x i8] c"frames_256_to_511_octets\00\00\00\00\00\00\00\00", [32 x i8] c"frames_512_to_1023_octets\00\00\00\00\00\00\00", [32 x i8] c"frames_1024_to_max_octets\00\00\00\00\00\00\00", [32 x i8] c"excessive_collision\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"multicast_frames_sent\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"broadcast_frames_sent\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"fc_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"fc_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"buffer_overrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_error_frame_received\00\00\00\00\00\00\00\00\00", [32 x i8] c"bad_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"late_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"unicast_frames_received\00\00\00\00\00\00\00\00\00", [32 x i8] c"unicast_frames_sent\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"sent_multiple\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"sent_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"good_octets_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [224 x i8] zeroinitializer }, align 32
@port_link_modes = internal constant { [25 x %struct.prestera_link_mode], [136 x i8] } { [25 x %struct.prestera_link_mode] [%struct.prestera_link_mode { i32 0, i32 10, i64 1, i8 0, i8 1 }, %struct.prestera_link_mode { i32 1, i32 10, i64 2, i8 1, i8 1 }, %struct.prestera_link_mode { i32 2, i32 100, i64 4, i8 0, i8 1 }, %struct.prestera_link_mode { i32 3, i32 100, i64 8, i8 1, i8 1 }, %struct.prestera_link_mode { i32 4, i32 1000, i64 16, i8 0, i8 1 }, %struct.prestera_link_mode { i32 5, i32 1000, i64 32, i8 1, i8 1 }, %struct.prestera_link_mode { i32 41, i32 1000, i64 64, i8 1, i8 4 }, %struct.prestera_link_mode { i32 17, i32 1000, i64 128, i8 1, i8 1 }, %struct.prestera_link_mode { i32 15, i32 2500, i64 256, i8 1, i8 0 }, %struct.prestera_link_mode { i32 19, i32 10000, i64 512, i8 1, i8 1 }, %struct.prestera_link_mode { i32 43, i32 10000, i64 1024, i8 1, i8 4 }, %struct.prestera_link_mode { i32 44, i32 10000, i64 2048, i8 1, i8 4 }, %struct.prestera_link_mode { i32 22, i32 20000, i64 4096, i8 1, i8 1 }, %struct.prestera_link_mode { i32 31, i32 25000, i64 8192, i8 1, i8 6 }, %struct.prestera_link_mode { i32 32, i32 25000, i64 16384, i8 1, i8 1 }, %struct.prestera_link_mode { i32 33, i32 25000, i64 32768, i8 1, i8 4 }, %struct.prestera_link_mode { i32 23, i32 40000, i64 65536, i8 1, i8 1 }, %struct.prestera_link_mode { i32 24, i32 40000, i64 131072, i8 1, i8 6 }, %struct.prestera_link_mode { i32 25, i32 40000, i64 262144, i8 1, i8 4 }, %struct.prestera_link_mode { i32 34, i32 50000, i64 524288, i8 1, i8 6 }, %struct.prestera_link_mode { i32 35, i32 50000, i64 1048576, i8 1, i8 1 }, %struct.prestera_link_mode { i32 40, i32 50000, i64 2097152, i8 1, i8 4 }, %struct.prestera_link_mode { i32 36, i32 100000, i64 4194304, i8 1, i8 1 }, %struct.prestera_link_mode { i32 37, i32 100000, i64 8388608, i8 1, i8 4 }, %struct.prestera_link_mode { i32 38, i32 100000, i64 16777216, i8 1, i8 6 }], [136 x i8] zeroinitializer }, align 32
@port_fec_caps = internal constant { [3 x %struct.prestera_fec], [60 x i8] } { [3 x %struct.prestera_fec] [%struct.prestera_fec { i32 4, i32 49, i8 1 }, %struct.prestera_fec { i32 16, i32 51, i8 2 }, %struct.prestera_fec { i32 8, i32 50, i8 4 }], [60 x i8] zeroinitializer }, align 32
@port_types = internal constant { [8 x %struct.prestera_port_type], [32 x i8] } { [8 x %struct.prestera_port_type] [%struct.prestera_port_type { i32 92, i8 -17 }, %struct.prestera_port_type { i32 7, i8 0 }, %struct.prestera_port_type { i32 8, i8 1 }, %struct.prestera_port_type { i32 9, i8 2 }, %struct.prestera_port_type { i32 10, i8 3 }, %struct.prestera_port_type { i32 11, i8 4 }, %struct.prestera_port_type { i32 7, i8 0 }, %struct.prestera_port_type { i32 92, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Remote link caps get failed %d\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MDIX params get failed\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FEC set is not allowed while autoneg is on\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FEC set is not allowed on non-SFP ports\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported FEC requested\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 239, i64 255]
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"prestera_ethtool_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 807, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"driver_kind\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 19, i32 19 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 307, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"prestera_cnt_name\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 264, i32 19 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"port_link_modes\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 27, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"port_fec_caps\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 208, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"port_types\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 229, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 441, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 504, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 710, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 715, i32 19 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [60 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 734, i32 19 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @prestera_ethtool_ops, ptr @driver_kind, ptr @.str, ptr @prestera_cnt_name, ptr @port_link_modes, ptr @port_fec_caps, ptr @port_types, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_kind to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_cnt_name to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_link_modes to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_fec_caps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_types to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @prestera_ethtool_port_state_changed(ptr nocapture noundef writeonly %port, ptr nocapture noundef readonly %evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state_mac = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20
  %oper = getelementptr inbounds %struct.prestera_port_event, ptr %evt, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %oper to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %oper, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %oper1 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20, i32 2
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %oper1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %oper1, align 4
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.prestera_port_event, ptr %evt, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 8
  %5 = ptrtoint ptr %state_mac to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %state_mac, align 4
  %speed = getelementptr inbounds %struct.anon.127, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  %speed7 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %speed7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %speed7, align 4
  %duplex = getelementptr inbounds %struct.prestera_port_event, ptr %evt, i32 0, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %duplex, align 1
  %duplex9 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20, i32 3
  %11 = ptrtoint ptr %duplex9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %duplex9, align 1
  %fc = getelementptr inbounds %struct.prestera_port_event, ptr %evt, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fc, align 2
  %fc11 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20, i32 4
  %14 = ptrtoint ptr %fc11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %fc11, align 2
  %fec = getelementptr inbounds %struct.anon.127, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %fec to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fec, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %state_mac to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12, ptr %state_mac, align 4
  %speed15 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %speed15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %speed15, align 4
  %duplex16 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20, i32 3
  %19 = ptrtoint ptr %duplex16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %duplex16, align 1
  %fc17 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20, i32 4
  %20 = ptrtoint ptr %fc17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fc17, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %16, %if.then ], [ 0, %if.else ]
  %21 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 20, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %21, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_ethtool_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %drvinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @driver_kind, i32 noundef 32) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call7 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #10
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %fw_rev = getelementptr inbounds %struct.prestera_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %fw_rev to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fw_rev, align 4
  %conv = zext i16 %13 to i32
  %min = getelementptr inbounds %struct.prestera_device, ptr %11, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %min, align 2
  %conv12 = zext i16 %15 to i32
  %sub = getelementptr inbounds %struct.prestera_device, ptr %11, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %sub to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sub, align 4
  %conv15 = zext i16 %17 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv15)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_ethtool_nway_reset(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %transceiver = getelementptr i8, ptr %dev, i32 2730
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %transceiver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true3:                                   ; preds = %land.lhs.true
  %type = getelementptr i8, ptr %dev, i32 2729
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp eq i8 %5, 1
  br i1 %cmp6, label %if.then, label %land.lhs.true3.cleanup_crit_edge

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @prestera_hw_port_autoneg_restart(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then ], [ -22, %land.lhs.true3.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @prestera_ethtool_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memcpy(ptr %data, ptr @prestera_cnt_name, i32 960)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @prestera_ethtool_get_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_hw_stats = getelementptr i8, ptr %dev, i32 2752
  %0 = call ptr @memcpy(ptr %data, ptr %cached_hw_stats, i32 240)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prestera_ethtool_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 30, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_ethtool_get_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #3 align 64 {
entry:
  %speed.i = alloca i32, align 4
  %duplex.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 2
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %0 = call ptr @memset(ptr %link_modes, i32 0, i32 36)
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %duplex, align 4
  %autoneg = getelementptr i8, ptr %dev, i32 2700
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %autoneg, align 4, !range !33
  %autoneg7 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %5 = ptrtoint ptr %autoneg7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %autoneg7, align 1
  %caps = getelementptr i8, ptr %dev, i32 2720
  %type = getelementptr i8, ptr %dev, i32 2729
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %9, 64
  store i32 %or.i, ptr %link_modes, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.if.end26thread-pre-split_crit_edge, label %land.lhs.true

if.then.if.end26thread-pre-split_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26thread-pre-split

land.lhs.true:                                    ; preds = %if.then
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoneg, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %land.lhs.true.if.then22_crit_edge

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

lor.lhs.false:                                    ; preds = %land.lhs.true
  %transceiver = getelementptr i8, ptr %dev, i32 2730
  %14 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %transceiver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp20 = icmp eq i8 %15, 0
  br i1 %cmp20, label %lor.lhs.false.if.then22_crit_edge, label %lor.lhs.false.if.end26thread-pre-split_crit_edge

lor.lhs.false.if.end26thread-pre-split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26thread-pre-split

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge
  %16 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %advertising, align 4
  %or.i111 = or i32 %17, 64
  store i32 %or.i111, ptr %advertising, align 4
  br label %if.end26thread-pre-split

if.end26thread-pre-split:                         ; preds = %if.then22, %lor.lhs.false.if.end26thread-pre-split_crit_edge, %if.then.if.end26thread-pre-split_crit_edge
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %type, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.end26thread-pre-split, %entry.if.end26_crit_edge
  %19 = phi i8 [ %.pr, %if.end26thread-pre-split ], [ %7, %entry.if.end26_crit_edge ]
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %caps, align 8
  %supp_fec = getelementptr i8, ptr %dev, i32 2728
  %22 = ptrtoint ptr %supp_fec to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %supp_fec, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp2.not.i = icmp eq i8 %19, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end26
  %mode.045.i = phi i32 [ 0, %if.end26 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.045.i
  %pr_mask.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.045.i, i32 2
  %24 = ptrtoint ptr %pr_mask.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pr_mask.i, align 8
  %and.i = and i64 %25, %21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp1.i = icmp eq i64 %and.i, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %cmp2.not.i, label %if.end.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %port_type.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.045.i, i32 4
  %26 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %19)
  %cmp7.not.i = icmp eq i8 %27, %19
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 8
  %rem.i.i = and i32 %29, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %29, 5
  %add.ptr.i.i = getelementptr i32, ptr %link_modes, i32 %div2.i.i
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %31
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %mode.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %for.body15.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body15.preheader.i:                           ; preds = %for.inc.i
  %and1939.i = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1939.i)
  %cmp20.i = icmp eq i8 %and1939.i, 0
  br i1 %cmp20.i, label %for.body15.preheader.i.for.inc26.i_crit_edge, label %if.end23.i

for.body15.preheader.i.for.inc26.i_crit_edge:     ; preds = %for.body15.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc26.i

if.end23.i:                                       ; preds = %for.body15.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.i = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %add.ptr.i43.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i43.i, align 4
  %or.i44.i = or i32 %33, 131072
  store i32 %or.i44.i, ptr %add.ptr.i43.i, align 4
  br label %for.inc26.i

for.inc26.i:                                      ; preds = %if.end23.i, %for.body15.preheader.i.for.inc26.i_crit_edge
  %and1939.1.i = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1939.1.i)
  %cmp20.1.i = icmp eq i8 %and1939.1.i, 0
  br i1 %cmp20.1.i, label %for.inc26.i.for.inc26.1.i_crit_edge, label %if.end23.1.i

for.inc26.i.for.inc26.1.i_crit_edge:              ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc26.1.i

if.end23.1.i:                                     ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.1.i = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %add.ptr.i43.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i43.1.i, align 4
  %or.i44.1.i = or i32 %35, 524288
  store i32 %or.i44.1.i, ptr %add.ptr.i43.1.i, align 4
  br label %for.inc26.1.i

for.inc26.1.i:                                    ; preds = %if.end23.1.i, %for.inc26.i.for.inc26.1.i_crit_edge
  %and1939.2.i = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1939.2.i)
  %cmp20.2.i = icmp eq i8 %and1939.2.i, 0
  br i1 %cmp20.2.i, label %for.inc26.1.i.for.body.i115.preheader_crit_edge, label %if.end23.2.i

for.inc26.1.i.for.body.i115.preheader_crit_edge:  ; preds = %for.inc26.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i115.preheader

if.end23.2.i:                                     ; preds = %for.inc26.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.2.i = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %add.ptr.i43.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i43.2.i, align 4
  %or.i44.2.i = or i32 %37, 262144
  store i32 %or.i44.2.i, ptr %add.ptr.i43.2.i, align 4
  br label %for.body.i115.preheader

for.body.i115.preheader:                          ; preds = %if.end23.2.i, %for.inc26.1.i.for.body.i115.preheader_crit_edge
  br label %for.body.i115

for.body.i115:                                    ; preds = %for.inc.i125.for.body.i115_crit_edge, %for.body.i115.preheader
  %mode.07.i = phi i32 [ %inc.i123, %for.inc.i125.for.body.i115_crit_edge ], [ 0, %for.body.i115.preheader ]
  %pr_mask.i112 = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.07.i, i32 2
  %38 = ptrtoint ptr %pr_mask.i112 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pr_mask.i112, align 8
  %40 = ptrtoint ptr %caps to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %caps, align 8
  %and.i113 = and i64 %41, %39
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i113)
  %cmp1.i114 = icmp eq i64 %and.i113, 0
  br i1 %cmp1.i114, label %for.body.i115.for.inc.i125_crit_edge, label %if.end.i122

for.body.i115.for.inc.i125_crit_edge:             ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i125

if.end.i122:                                      ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #12
  %port_type.i116 = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.07.i, i32 4
  %42 = ptrtoint ptr %port_type.i116 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port_type.i116, align 1
  %idxprom.i = zext i8 %43 to i32
  %arrayidx3.i = getelementptr [8 x %struct.prestera_port_type], ptr @port_types, i32 0, i32 %idxprom.i
  %44 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx3.i, align 4
  %rem.i.i117 = and i32 %45, 31
  %shl.i.i118 = shl nuw i32 1, %rem.i.i117
  %div2.i.i119 = lshr i32 %45, 5
  %add.ptr.i.i120 = getelementptr i32, ptr %link_modes, i32 %div2.i.i119
  %46 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i120, align 4
  %or.i.i121 = or i32 %shl.i.i118, %47
  store i32 %or.i.i121, ptr %add.ptr.i.i120, align 4
  br label %for.inc.i125

for.inc.i125:                                     ; preds = %if.end.i122, %for.body.i115.for.inc.i125_crit_edge
  %inc.i123 = add nuw nsw i32 %mode.07.i, 1
  %exitcond.not.i124 = icmp eq i32 %inc.i123, 25
  br i1 %exitcond.not.i124, label %prestera_port_supp_types_get.exit, label %for.inc.i125.for.body.i115_crit_edge

for.inc.i125.for.body.i115_crit_edge:             ; preds = %for.inc.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i115

prestera_port_supp_types_get.exit:                ; preds = %for.inc.i125
  %state.i126 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %48 = ptrtoint ptr %state.i126 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i126, align 4
  %50 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %if.then35, label %prestera_port_supp_types_get.exit.if.end36_crit_edge

prestera_port_supp_types_get.exit.if.end36_crit_edge: ; preds = %prestera_port_supp_types_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %prestera_port_supp_types_get.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #10
  %51 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %speed.i, align 4, !annotation !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %duplex.i) #10
  %52 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %duplex.i, align 1, !annotation !34
  %oper.i = getelementptr i8, ptr %dev, i32 3124
  %53 = ptrtoint ptr %oper.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %oper.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i127 = icmp eq i8 %54, 0
  br i1 %tobool.not.i127, label %if.then35.prestera_port_link_mode_get.exit_crit_edge, label %if.end.i128

if.then35.prestera_port_link_mode_get.exit_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_port_link_mode_get.exit

if.end.i128:                                      ; preds = %if.then35
  %speed2.i = getelementptr i8, ptr %dev, i32 3120
  %55 = ptrtoint ptr %speed2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %speed2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i = icmp eq i32 %56, -1
  br i1 %cmp.i, label %if.end.i128.if.then6.i_crit_edge, label %lor.lhs.false.i

if.end.i128.if.then6.i_crit_edge:                 ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i128
  %duplex3.i = getelementptr i8, ptr %dev, i32 3125
  %57 = ptrtoint ptr %duplex3.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %duplex3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %cmp4.i = icmp eq i8 %58, -1
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %lor.lhs.false.i.if.end18.i_crit_edge

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end.i128.if.then6.i_crit_edge
  %call.i = call i32 @prestera_hw_port_mac_mode_get(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %speed.i, ptr noundef nonnull %duplex.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %speed2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %speed2.i, align 4
  br label %if.end18.sink.split.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %speed.i, align 4
  %62 = ptrtoint ptr %speed2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %speed2.i, align 4
  %63 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp13.i = icmp eq i8 %64, 1
  %conv15.i = zext i1 %cmp13.i to i8
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.else.i, %if.then8.i
  %.sink.i = phi i8 [ -1, %if.then8.i ], [ %conv15.i, %if.else.i ]
  %duplex10.i = getelementptr i8, ptr %dev, i32 3125
  %65 = ptrtoint ptr %duplex10.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink.i, ptr %duplex10.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.sink.split.i, %lor.lhs.false.i.if.end18.i_crit_edge
  %66 = ptrtoint ptr %speed2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %speed2.i, align 4
  %68 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %speed, align 4
  %duplex23.i = getelementptr i8, ptr %dev, i32 3125
  %69 = ptrtoint ptr %duplex23.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %duplex23.i, align 1
  %71 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %duplex, align 4
  br label %prestera_port_link_mode_get.exit

prestera_port_link_mode_get.exit:                 ; preds = %if.end18.i, %if.then35.prestera_port_link_mode_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %duplex.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #10
  br label %if.end36

if.end36:                                         ; preds = %prestera_port_link_mode_get.exit, %prestera_port_supp_types_get.exit.if.end36_crit_edge
  %72 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %73)
  %cmp.i129 = icmp ult i8 %73, 8
  br i1 %cmp.i129, label %if.then.i, label %if.end36.prestera_port_type_get.exit_crit_edge

if.end36.prestera_port_type_get.exit_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_port_type_get.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %73 to i32
  %eth_type.i = getelementptr [8 x %struct.prestera_port_type], ptr @port_types, i32 0, i32 %conv.i, i32 1
  %74 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %eth_type.i, align 4
  br label %prestera_port_type_get.exit

prestera_port_type_get.exit:                      ; preds = %if.then.i, %if.end36.prestera_port_type_get.exit_crit_edge
  %retval.0.i = phi i8 [ %75, %if.then.i ], [ -1, %if.end36.prestera_port_type_get.exit_crit_edge ]
  %port39 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %76 = ptrtoint ptr %port39 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %retval.0.i, ptr %port39, align 1
  %77 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %autoneg, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool41.not = icmp eq i8 %78, 0
  br i1 %tobool41.not, label %prestera_port_type_get.exit.if.end61_crit_edge, label %if.then42

prestera_port_type_get.exit.if.end61_crit_edge:   ; preds = %prestera_port_type_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then42:                                        ; preds = %prestera_port_type_get.exit
  %79 = ptrtoint ptr %state.i126 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %state.i126, align 4
  %and1.i.i131 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i131)
  %tobool.i132.not = icmp eq i32 %and1.i.i131, 0
  br i1 %tobool.i132.not, label %if.then42.if.end50_crit_edge, label %if.then44

if.then42.if.end50_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then44:                                        ; preds = %if.then42
  %adver_link_modes = getelementptr i8, ptr %dev, i32 2704
  %81 = ptrtoint ptr %adver_link_modes to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %adver_link_modes, align 8
  %adver_fec = getelementptr i8, ptr %dev, i32 2712
  %83 = ptrtoint ptr %adver_fec to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %adver_fec, align 8
  %85 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp2.not.i133 = icmp eq i8 %86, 0
  br label %for.body.i139

for.body.i139:                                    ; preds = %for.inc.i152.for.body.i139_crit_edge, %if.then44
  %mode.045.i134 = phi i32 [ 0, %if.then44 ], [ %inc.i150, %for.inc.i152.for.body.i139_crit_edge ]
  %arrayidx.i135 = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.045.i134
  %pr_mask.i136 = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.045.i134, i32 2
  %87 = ptrtoint ptr %pr_mask.i136 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %pr_mask.i136, align 8
  %and.i137 = and i64 %88, %82
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i137)
  %cmp1.i138 = icmp eq i64 %and.i137, 0
  br i1 %cmp1.i138, label %for.body.i139.for.inc.i152_crit_edge, label %if.end.i140

for.body.i139.for.inc.i152_crit_edge:             ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i152

if.end.i140:                                      ; preds = %for.body.i139
  br i1 %cmp2.not.i133, label %if.end.i140.if.end10.i149_crit_edge, label %land.lhs.true.i143

if.end.i140.if.end10.i149_crit_edge:              ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i149

land.lhs.true.i143:                               ; preds = %if.end.i140
  %port_type.i141 = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.045.i134, i32 4
  %89 = ptrtoint ptr %port_type.i141 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %port_type.i141, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %86)
  %cmp7.not.i142 = icmp eq i8 %90, %86
  br i1 %cmp7.not.i142, label %land.lhs.true.i143.if.end10.i149_crit_edge, label %land.lhs.true.i143.for.inc.i152_crit_edge

land.lhs.true.i143.for.inc.i152_crit_edge:        ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i152

land.lhs.true.i143.if.end10.i149_crit_edge:       ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i149

if.end10.i149:                                    ; preds = %land.lhs.true.i143.if.end10.i149_crit_edge, %if.end.i140.if.end10.i149_crit_edge
  %91 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i135, align 8
  %rem.i.i144 = and i32 %92, 31
  %shl.i.i145 = shl nuw i32 1, %rem.i.i144
  %div2.i.i146 = lshr i32 %92, 5
  %add.ptr.i.i147 = getelementptr i32, ptr %advertising, i32 %div2.i.i146
  %93 = ptrtoint ptr %add.ptr.i.i147 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i147, align 4
  %or.i.i148 = or i32 %shl.i.i145, %94
  store i32 %or.i.i148, ptr %add.ptr.i.i147, align 4
  br label %for.inc.i152

for.inc.i152:                                     ; preds = %if.end10.i149, %land.lhs.true.i143.for.inc.i152_crit_edge, %for.body.i139.for.inc.i152_crit_edge
  %inc.i150 = add nuw nsw i32 %mode.045.i134, 1
  %exitcond.not.i151 = icmp eq i32 %inc.i150, 25
  br i1 %exitcond.not.i151, label %for.body15.preheader.i155, label %for.inc.i152.for.body.i139_crit_edge

for.inc.i152.for.body.i139_crit_edge:             ; preds = %for.inc.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i139

for.body15.preheader.i155:                        ; preds = %for.inc.i152
  %and1939.i153 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1939.i153)
  %cmp20.i154 = icmp eq i8 %and1939.i153, 0
  br i1 %cmp20.i154, label %for.body15.preheader.i155.for.inc26.i161_crit_edge, label %if.end23.i158

for.body15.preheader.i155.for.inc26.i161_crit_edge: ; preds = %for.body15.preheader.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc26.i161

if.end23.i158:                                    ; preds = %for.body15.preheader.i155
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.i156 = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1, i32 1
  %95 = ptrtoint ptr %add.ptr.i43.i156 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i43.i156, align 4
  %or.i44.i157 = or i32 %96, 131072
  store i32 %or.i44.i157, ptr %add.ptr.i43.i156, align 4
  br label %for.inc26.i161

for.inc26.i161:                                   ; preds = %if.end23.i158, %for.body15.preheader.i155.for.inc26.i161_crit_edge
  %and1939.1.i159 = and i8 %84, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1939.1.i159)
  %cmp20.1.i160 = icmp eq i8 %and1939.1.i159, 0
  br i1 %cmp20.1.i160, label %for.inc26.i161.for.inc26.1.i167_crit_edge, label %if.end23.1.i164

for.inc26.i161.for.inc26.1.i167_crit_edge:        ; preds = %for.inc26.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc26.1.i167

if.end23.1.i164:                                  ; preds = %for.inc26.i161
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.1.i162 = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1, i32 1
  %97 = ptrtoint ptr %add.ptr.i43.1.i162 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i43.1.i162, align 4
  %or.i44.1.i163 = or i32 %98, 524288
  store i32 %or.i44.1.i163, ptr %add.ptr.i43.1.i162, align 4
  br label %for.inc26.1.i167

for.inc26.1.i167:                                 ; preds = %if.end23.1.i164, %for.inc26.i161.for.inc26.1.i167_crit_edge
  %and1939.2.i165 = and i8 %84, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1939.2.i165)
  %cmp20.2.i166 = icmp eq i8 %and1939.2.i165, 0
  br i1 %cmp20.2.i166, label %for.inc26.1.i167.if.end50_crit_edge, label %if.end23.2.i170

for.inc26.1.i167.if.end50_crit_edge:              ; preds = %for.inc26.1.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end23.2.i170:                                  ; preds = %for.inc26.1.i167
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.2.i168 = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1, i32 1
  %99 = ptrtoint ptr %add.ptr.i43.2.i168 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i43.2.i168, align 4
  %or.i44.2.i169 = or i32 %100, 262144
  store i32 %or.i44.2.i169, ptr %add.ptr.i43.2.i168, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end23.2.i170, %for.inc26.1.i167.if.end50_crit_edge, %if.then42.if.end50_crit_edge
  %101 = ptrtoint ptr %state.i126 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %state.i126, align 4
  %103 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i173 = icmp eq i32 %103, 0
  br i1 %tobool.not.i173, label %land.lhs.true53, label %if.end50.if.end61_crit_edge

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true53:                                  ; preds = %if.end50
  %transceiver55 = getelementptr i8, ptr %dev, i32 2730
  %104 = ptrtoint ptr %transceiver55 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %transceiver55, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp57 = icmp eq i8 %105, 0
  br i1 %cmp57, label %if.then59, label %land.lhs.true53.if.end61_crit_edge

land.lhs.true53.if.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then59:                                        ; preds = %land.lhs.true53
  %state_phy.i = getelementptr i8, ptr %dev, i32 3128
  %remote_fc.i = getelementptr i8, ptr %dev, i32 3136
  %asym_pause3.i = getelementptr i8, ptr %dev, i32 3137
  %call.i174 = call i32 @prestera_hw_port_phy_mode_get(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %state_phy.i, ptr noundef %remote_fc.i, ptr noundef %asym_pause3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool.not.i175 = icmp eq i32 %call.i174, 0
  br i1 %tobool.not.i175, label %if.then59.if.end.i178_crit_edge, label %if.then.i177

if.then59.if.end.i178_crit_edge:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i178

if.then.i177:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 8
  %108 = ptrtoint ptr %transceiver55 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %transceiver55, align 2
  %conv.i176 = zext i8 %109 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %107, ptr noundef nonnull @.str.1, i32 noundef %conv.i176) #13
  br label %if.end.i178

if.end.i178:                                      ; preds = %if.then.i177, %if.then59.if.end.i178_crit_edge
  %110 = ptrtoint ptr %state_phy.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %state_phy.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i178
  %mode.045.i.i = phi i32 [ 0, %if.end.i178 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %pr_mask.i.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.045.i.i, i32 2
  %112 = ptrtoint ptr %pr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %pr_mask.i.i, align 8
  %and.i.i = and i64 %113, %111
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp1.i.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.045.i.i
  %114 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i.i, align 8
  %rem.i.i.i = and i32 %115, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %115, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %lp_advertising, i32 %div2.i.i.i
  %116 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %117
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %mode.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 25
  br i1 %exitcond.not.i.i, label %prestera_modes_to_eth.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

prestera_modes_to_eth.exit.i:                     ; preds = %for.inc.i.i
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef %lp_advertising, i32 noundef 92) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, 92
  br i1 %cmp4.i.i, label %prestera_modes_to_eth.exit.i.if.end13.i_crit_edge, label %if.then9.i

prestera_modes_to_eth.exit.i.if.end13.i_crit_edge: ; preds = %prestera_modes_to_eth.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then9.i:                                       ; preds = %prestera_modes_to_eth.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %lp_advertising, align 4
  %or.i.i179 = or i32 %119, 64
  store i32 %or.i.i179, ptr %lp_advertising, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %prestera_modes_to_eth.exit.i.if.end13.i_crit_edge
  %120 = ptrtoint ptr %remote_fc.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %remote_fc.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool16.not.i = icmp eq i8 %121, 0
  %122 = ptrtoint ptr %asym_pause3.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %asym_pause3.i, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool19.not.i = icmp eq i8 %123, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end26.i_crit_edge, label %if.then22.i

if.end13.i.if.end26.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %lp_advertising, align 4
  %or.i45.i = or i32 %125, 8192
  store i32 %or.i45.i, ptr %lp_advertising, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end13.i.if.end26.i_crit_edge
  br i1 %tobool19.not.i, label %if.end26.i.if.end61_crit_edge, label %if.then28.i

if.end26.i.if.end61_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %lp_advertising, align 4
  %or.i46.i = or i32 %127, 16384
  store i32 %or.i46.i, ptr %lp_advertising, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then28.i, %if.end26.i.if.end61_crit_edge, %land.lhs.true53.if.end61_crit_edge, %if.end50.if.end61_crit_edge, %prestera_port_type_get.exit.if.end61_crit_edge
  %128 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %129)
  %cmp65 = icmp eq i8 %129, 1
  br i1 %cmp65, label %land.lhs.true67, label %if.end61.if.end74_crit_edge

if.end61.if.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

land.lhs.true67:                                  ; preds = %if.end61
  %transceiver69 = getelementptr i8, ptr %dev, i32 2730
  %130 = ptrtoint ptr %transceiver69 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %transceiver69, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp71 = icmp eq i8 %131, 0
  br i1 %cmp71, label %if.then73, label %land.lhs.true67.if.end74_crit_edge

land.lhs.true67.if.end74_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then73:                                        ; preds = %land.lhs.true67
  %mdix.i = getelementptr i8, ptr %dev, i32 3138
  %call.i180 = call i32 @prestera_hw_port_phy_mode_get(ptr noundef %add.ptr.i, ptr noundef %mdix.i, ptr noundef null, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool.not.i181 = icmp eq i32 %call.i180, 0
  br i1 %tobool.not.i181, label %if.then73.prestera_port_mdix_get.exit_crit_edge, label %if.then.i182

if.then73.prestera_port_mdix_get.exit_crit_edge:  ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_port_mdix_get.exit

if.then.i182:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %133, ptr noundef nonnull @.str.2) #13
  %134 = ptrtoint ptr %mdix.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %mdix.i, align 2
  br label %prestera_port_mdix_get.exit

prestera_port_mdix_get.exit:                      ; preds = %if.then.i182, %if.then73.prestera_port_mdix_get.exit_crit_edge
  %135 = ptrtoint ptr %mdix.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %mdix.i, align 2
  %eth_tp_mdix.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 7
  %137 = ptrtoint ptr %eth_tp_mdix.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %eth_tp_mdix.i, align 1
  %mdix4.i = getelementptr i8, ptr %dev, i32 3113
  %138 = ptrtoint ptr %mdix4.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %mdix4.i, align 1
  %eth_tp_mdix_ctrl.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 8
  %140 = ptrtoint ptr %eth_tp_mdix_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %eth_tp_mdix_ctrl.i, align 2
  br label %if.end74

if.end74:                                         ; preds = %prestera_port_mdix_get.exit, %land.lhs.true67.if.end74_crit_edge, %if.end61.if.end74_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_ethtool_set_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port1.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %0 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port1.i, align 1
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.for.inc.7.i_crit_edge [
    i8 -17, label %land.lhs.true.i
    i8 0, label %land.lhs.true.1.i
    i8 1, label %land.lhs.true.2.i
    i8 2, label %land.lhs.true.3.i
    i8 3, label %land.lhs.true.4.i
    i8 4, label %land.lhs.true.5.i
    i8 -1, label %land.lhs.true.7.i
  ]

entry.for.inc.7.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i, align 4
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.7.i_crit_edge, label %land.lhs.true.i.for.end.i_crit_edge

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.i.for.inc.7.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.1.i:                                ; preds = %entry
  %6 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %link_modes.i, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i, label %land.lhs.true.6.i, label %land.lhs.true.1.i.for.end.i_crit_edge

land.lhs.true.1.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.2.i:                                ; preds = %entry
  %9 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %link_modes.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2.i = icmp eq i32 %11, 0
  br i1 %tobool.not.2.i, label %land.lhs.true.2.i.for.inc.7.i_crit_edge, label %land.lhs.true.2.i.for.end.i_crit_edge

land.lhs.true.2.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.2.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.3.i:                                ; preds = %entry
  %12 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %link_modes.i, align 4
  %14 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.3.i = icmp eq i32 %14, 0
  br i1 %tobool.not.3.i, label %land.lhs.true.3.i.for.inc.7.i_crit_edge, label %land.lhs.true.3.i.for.end.i_crit_edge

land.lhs.true.3.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.3.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.4.i:                                ; preds = %entry
  %15 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %link_modes.i, align 4
  %17 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.4.i = icmp eq i32 %17, 0
  br i1 %tobool.not.4.i, label %land.lhs.true.4.i.for.inc.7.i_crit_edge, label %land.lhs.true.4.i.for.end.i_crit_edge

land.lhs.true.4.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.4.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.5.i:                                ; preds = %entry
  %18 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %link_modes.i, align 4
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.5.i = icmp eq i32 %20, 0
  br i1 %tobool.not.5.i, label %land.lhs.true.5.i.for.inc.7.i_crit_edge, label %land.lhs.true.5.i.for.end.i_crit_edge

land.lhs.true.5.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.5.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.6.i:                                ; preds = %land.lhs.true.1.i
  %21 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %link_modes.i, align 4
  %23 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.6.i = icmp eq i32 %23, 0
  br i1 %tobool.not.6.i, label %land.lhs.true.6.i.for.inc.7.i_crit_edge, label %land.lhs.true.6.i.for.end.i_crit_edge

land.lhs.true.6.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.6.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.7.i:                                ; preds = %entry
  %arrayidx.i.7.i = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i.7.i, align 4
  %26 = and i32 %25, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.7.i = icmp eq i32 %26, 0
  br i1 %tobool.not.7.i, label %land.lhs.true.7.i.for.inc.7.i_crit_edge, label %land.lhs.true.7.i.for.end.i_crit_edge

land.lhs.true.7.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.7.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %land.lhs.true.7.i.for.inc.7.i_crit_edge, %land.lhs.true.6.i.for.inc.7.i_crit_edge, %land.lhs.true.5.i.for.inc.7.i_crit_edge, %land.lhs.true.4.i.for.inc.7.i_crit_edge, %land.lhs.true.3.i.for.inc.7.i_crit_edge, %land.lhs.true.2.i.for.inc.7.i_crit_edge, %land.lhs.true.i.for.inc.7.i_crit_edge, %entry.for.inc.7.i_crit_edge
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.7.i, %land.lhs.true.7.i.for.end.i_crit_edge, %land.lhs.true.6.i.for.end.i_crit_edge, %land.lhs.true.5.i.for.end.i_crit_edge, %land.lhs.true.4.i.for.end.i_crit_edge, %land.lhs.true.3.i.for.end.i_crit_edge, %land.lhs.true.2.i.for.end.i_crit_edge, %land.lhs.true.1.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge
  %cmp24.i = phi i1 [ true, %for.inc.7.i ], [ false, %land.lhs.true.7.i.for.end.i_crit_edge ], [ false, %land.lhs.true.6.i.for.end.i_crit_edge ], [ false, %land.lhs.true.5.i.for.end.i_crit_edge ], [ false, %land.lhs.true.4.i.for.end.i_crit_edge ], [ false, %land.lhs.true.3.i.for.end.i_crit_edge ], [ false, %land.lhs.true.2.i.for.end.i_crit_edge ], [ false, %land.lhs.true.1.i.for.end.i_crit_edge ], [ false, %land.lhs.true.i.for.end.i_crit_edge ]
  %type.0.lcssa.i = phi i32 [ 8, %for.inc.7.i ], [ 7, %land.lhs.true.7.i.for.end.i_crit_edge ], [ 6, %land.lhs.true.6.i.for.end.i_crit_edge ], [ 5, %land.lhs.true.5.i.for.end.i_crit_edge ], [ 4, %land.lhs.true.4.i.for.end.i_crit_edge ], [ 3, %land.lhs.true.3.i.for.end.i_crit_edge ], [ 2, %land.lhs.true.2.i.for.end.i_crit_edge ], [ 1, %land.lhs.true.1.i.for.end.i_crit_edge ], [ 0, %land.lhs.true.i.for.end.i_crit_edge ]
  %caps.i = getelementptr i8, ptr %dev, i32 2720
  %type6.i = getelementptr i8, ptr %dev, i32 2729
  %27 = ptrtoint ptr %type6.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type6.i, align 1
  %conv7.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %type.0.lcssa.i, i32 %conv7.i)
  %cmp8.i = icmp eq i32 %type.0.lcssa.i, %conv7.i
  br i1 %cmp8.i, label %for.end.i.if.end_crit_edge, label %land.lhs.true17.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true17.i:                                ; preds = %for.end.i
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %29 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %autoneg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp20.i = icmp eq i8 %30, 1
  %brmerge.i = or i1 %cmp24.i, %cmp20.i
  %.mux.i = select i1 %cmp20.i, i32 -22, i32 -95
  br i1 %brmerge.i, label %land.lhs.true17.i.cleanup_crit_edge, label %for.cond28.preheader.i

land.lhs.true17.i.cleanup_crit_edge:              ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond28.preheader.i:                           ; preds = %land.lhs.true17.i
  %31 = ptrtoint ptr %caps.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %caps.i, align 8
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc42.i.for.body31.i_crit_edge, %for.cond28.preheader.i
  %mode.076.i = phi i32 [ 0, %for.cond28.preheader.i ], [ %inc43.i, %for.inc42.i.for.body31.i_crit_edge ]
  %new_mode.075.i = phi i32 [ 25, %for.cond28.preheader.i ], [ %new_mode.1.i, %for.inc42.i.for.body31.i_crit_edge ]
  %pr_mask.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.076.i, i32 2
  %33 = ptrtoint ptr %pr_mask.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pr_mask.i, align 8
  %and.i = and i64 %34, %32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool34.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool34.not.i, label %for.body31.i.for.inc42.i_crit_edge, label %land.lhs.true35.i

for.body31.i.for.inc42.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc42.i

land.lhs.true35.i:                                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  %port_type.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.076.i, i32 4
  %35 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port_type.i, align 1
  %conv37.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %type.0.lcssa.i, i32 %conv37.i)
  %cmp38.i = icmp eq i32 %type.0.lcssa.i, %conv37.i
  %spec.select.i = select i1 %cmp38.i, i32 %mode.076.i, i32 %new_mode.075.i
  br label %for.inc42.i

for.inc42.i:                                      ; preds = %land.lhs.true35.i, %for.body31.i.for.inc42.i_crit_edge
  %new_mode.1.i = phi i32 [ %new_mode.075.i, %for.body31.i.for.inc42.i_crit_edge ], [ %spec.select.i, %land.lhs.true35.i ]
  %inc43.i = add nuw nsw i32 %mode.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc43.i, 25
  br i1 %exitcond.not.i, label %for.end44.i, label %for.inc42.i.for.body31.i_crit_edge

for.inc42.i.for.body31.i_crit_edge:               ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31.i

for.end44.i:                                      ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %new_mode.1.i)
  %cmp45.i = icmp ugt i32 %new_mode.1.i, 24
  br i1 %cmp45.i, label %for.end44.i.cleanup_crit_edge, label %if.end48.i

for.end44.i.cleanup_crit_edge:                    ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48.i:                                       ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv49.i = trunc i32 %type.0.lcssa.i to i8
  %37 = ptrtoint ptr %type6.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv49.i, ptr %type6.i, align 1
  %autoneg52.i = getelementptr i8, ptr %dev, i32 2700
  %38 = ptrtoint ptr %autoneg52.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %autoneg52.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end48.i, %for.end.i.if.end_crit_edge
  %transceiver = getelementptr i8, ptr %dev, i32 2730
  %39 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %transceiver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp = icmp eq i8 %40, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %eth_tp_mdix_ctrl.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 8
  %41 = ptrtoint ptr %eth_tp_mdix_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %eth_tp_mdix_ctrl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.not.i = icmp eq i8 %42, 0
  br i1 %cmp.not.i, label %if.then3.if.end8_crit_edge, label %land.lhs.true5.i

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true5.i:                                 ; preds = %if.then3
  %43 = ptrtoint ptr %type6.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp8.i34 = icmp eq i8 %44, 1
  br i1 %cmp8.i34, label %prestera_port_mdix_set.exit, label %land.lhs.true5.i.if.end8_crit_edge

land.lhs.true5.i.if.end8_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

prestera_port_mdix_set.exit:                      ; preds = %land.lhs.true5.i
  %cfg_phy.i = getelementptr i8, ptr %dev, i32 3108
  %mdix.i = getelementptr i8, ptr %dev, i32 3113
  %45 = ptrtoint ptr %mdix.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %42, ptr %mdix.i, align 1
  %admin.i = getelementptr i8, ptr %dev, i32 3112
  %46 = ptrtoint ptr %admin.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %admin.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.i = icmp ne i8 %47, 0
  %autoneg.i35 = getelementptr i8, ptr %dev, i32 2700
  %48 = ptrtoint ptr %autoneg.i35 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %autoneg.i35, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool13.i = icmp ne i8 %49, 0
  %50 = ptrtoint ptr %cfg_phy.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cfg_phy.i, align 4
  %adver_link_modes.i = getelementptr i8, ptr %dev, i32 2704
  %52 = ptrtoint ptr %adver_link_modes.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %adver_link_modes.i, align 8
  %call.i = tail call i32 @prestera_hw_port_phy_mode_set(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool13.i, i32 noundef %51, i64 noundef %53, i8 noundef zeroext %42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %prestera_port_mdix_set.exit.if.end8_crit_edge, label %prestera_port_mdix_set.exit.cleanup_crit_edge

prestera_port_mdix_set.exit.cleanup_crit_edge:    ; preds = %prestera_port_mdix_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

prestera_port_mdix_set.exit.if.end8_crit_edge:    ; preds = %prestera_port_mdix_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %prestera_port_mdix_set.exit.if.end8_crit_edge, %land.lhs.true5.i.if.end8_crit_edge, %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %type6.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type6.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8
  %mode.042.i = phi i32 [ 0, %if.end8 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %adver_modes.041.i = phi i64 [ 0, %if.end8 ], [ %adver_modes.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.042.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 8
  %div3.i.i = lshr i32 %57, 5
  %arrayidx.i.i37 = getelementptr i32, ptr %advertising, i32 %div3.i.i
  %58 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx.i.i37, align 4
  %and.i.i = and i32 %57, 31
  %60 = shl nuw i32 1, %and.i.i
  %61 = and i32 %60, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i38 = icmp eq i32 %61, 0
  br i1 %tobool.not.i38, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %port_type.i39 = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.042.i, i32 4
  %62 = ptrtoint ptr %port_type.i39 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %port_type.i39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %55)
  %cmp3.not.i = icmp eq i8 %63, %55
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pr_mask.i40 = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.042.i, i32 2
  %64 = ptrtoint ptr %pr_mask.i40 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %pr_mask.i40, align 8
  %or.i = or i64 %65, %adver_modes.041.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %adver_modes.1.i = phi i64 [ %adver_modes.041.i, %if.end.i.for.inc.i_crit_edge ], [ %or.i, %if.end6.i ], [ %adver_modes.041.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %mode.042.i, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i41, label %prestera_modes_from_eth.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

prestera_modes_from_eth.exit:                     ; preds = %for.inc.i
  %arrayidx.i37.i = getelementptr %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i37.i, align 4
  %68 = load volatile i32, ptr %arrayidx.i37.i, align 4
  %69 = load volatile i32, ptr %arrayidx.i37.i, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %70 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp11 = icmp eq i8 %71, 1
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %prestera_modes_from_eth.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @prestera_port_autoneg_set(ptr noundef %add.ptr.i, i64 noundef %adver_modes.1.i) #10
  br label %cleanup

if.else:                                          ; preds = %prestera_modes_from_eth.exit
  %duplex1.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %72 = ptrtoint ptr %duplex1.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %duplex1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %cmp.not.i42 = icmp eq i8 %73, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp6.i = icmp eq i8 %73, 1
  %conv8.i = zext i1 %cmp6.i to i8
  %duplex.0.i = select i1 %cmp.not.i42, i8 -1, i8 %conv8.i
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %74 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp1.not.i.i = icmp eq i32 %75, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else
  %mode.059.i.i = phi i32 [ 0, %if.else ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  br i1 %cmp1.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %speed2.i.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.059.i.i, i32 1
  %76 = ptrtoint ptr %speed2.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %speed2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %75)
  %cmp3.not.i.i = icmp eq i32 %77, %75
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  br i1 %cmp.not.i42, label %if.end.i.i.if.end14.i.i_crit_edge, label %land.lhs.true6.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

land.lhs.true6.i.i:                               ; preds = %if.end.i.i
  %duplex9.i.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.059.i.i, i32 3
  %78 = ptrtoint ptr %duplex9.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %duplex9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %duplex.0.i)
  %cmp11.not.i.i = icmp eq i8 %79, %duplex.0.i
  br i1 %cmp11.not.i.i, label %land.lhs.true6.i.i.if.end14.i.i_crit_edge, label %land.lhs.true6.i.i.for.inc.i.i_crit_edge

land.lhs.true6.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true6.i.i.if.end14.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %land.lhs.true6.i.i.if.end14.i.i_crit_edge, %if.end.i.i.if.end14.i.i_crit_edge
  %pr_mask.i.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.059.i.i, i32 2
  %80 = ptrtoint ptr %pr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %pr_mask.i.i, align 8
  %82 = ptrtoint ptr %caps.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %caps.i, align 8
  %and.i.i44 = and i64 %83, %81
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i44)
  %tobool.not.i.i = icmp eq i64 %and.i.i44, 0
  br i1 %tobool.not.i.i, label %if.end14.i.i.for.inc.i.i_crit_edge, label %if.end17.i.i

if.end14.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %port_type.i.i = getelementptr [25 x %struct.prestera_link_mode], ptr @port_link_modes, i32 0, i32 %mode.059.i.i, i32 4
  %84 = ptrtoint ptr %port_type.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %port_type.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %55)
  %cmp21.not.i.i = icmp eq i8 %85, %55
  br i1 %cmp21.not.i.i, label %if.end28.i.i, label %if.end17.i.i.for.inc.i.i_crit_edge

if.end17.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end17.i.i.for.inc.i.i_crit_edge, %if.end14.i.i.for.inc.i.i_crit_edge, %land.lhs.true6.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %mode.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 25
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28.i.i:                                     ; preds = %if.end17.i.i
  %admin.i.i = getelementptr i8, ptr %dev, i32 3112
  %86 = ptrtoint ptr %admin.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %admin.i.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool29.i.i = icmp ne i8 %87, 0
  %mdix.i.i = getelementptr i8, ptr %dev, i32 3113
  %88 = ptrtoint ptr %mdix.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mdix.i.i, align 1
  %call.i.i = tail call i32 @prestera_hw_port_phy_mode_set(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool29.i.i, i1 noundef zeroext false, i32 noundef %mode.059.i.i, i64 noundef 0, i8 noundef zeroext %89) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %if.end28.i.i.cleanup_crit_edge

if.end28.i.i.cleanup_crit_edge:                   ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cfg_phy.i.i = getelementptr i8, ptr %dev, i32 3108
  %adver_fec.i.i = getelementptr i8, ptr %dev, i32 2712
  %90 = ptrtoint ptr %adver_fec.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %adver_fec.i.i, align 8
  %adver_link_modes.i.i = getelementptr i8, ptr %dev, i32 2704
  %91 = ptrtoint ptr %adver_link_modes.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %adver_link_modes.i.i, align 8
  %92 = ptrtoint ptr %cfg_phy.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %mode.059.i.i, ptr %cfg_phy.i.i, align 4
  %autoneg.i.i = getelementptr i8, ptr %dev, i32 2700
  %93 = ptrtoint ptr %autoneg.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %autoneg.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33.i.i, %if.end28.i.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.then13, %prestera_port_mdix_set.exit.cleanup_crit_edge, %for.end44.i.cleanup_crit_edge, %land.lhs.true17.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %prestera_port_mdix_set.exit.cleanup_crit_edge ], [ %call14, %if.then13 ], [ %.mux.i, %land.lhs.true17.i.cleanup_crit_edge ], [ -22, %for.end44.i.cleanup_crit_edge ], [ 0, %if.end33.i.i ], [ %call.i.i, %if.end28.i.i.cleanup_crit_edge ], [ -95, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_ethtool_get_fecparam(ptr noundef %dev, ptr nocapture noundef %fecparam) #3 align 64 {
entry:
  %active = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %active) #10
  %0 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %active, align 1, !annotation !34
  %call1 = call i32 @prestera_hw_port_mac_mode_get(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %active) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %1 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fec, align 4
  %supp_fec = getelementptr i8, ptr %dev, i32 2728
  %2 = ptrtoint ptr %supp_fec to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supp_fec, align 8
  %and28 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and28)
  %cmp3 = icmp eq i8 %and28, 0
  br i1 %cmp3, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fec, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %fec, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.end.for.inc_crit_edge
  %6 = ptrtoint ptr %supp_fec to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %supp_fec, align 8
  %and28.1 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and28.1)
  %cmp3.1 = icmp eq i8 %and28.1, 0
  br i1 %cmp3.1, label %for.inc.for.inc.1_crit_edge, label %if.end6.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end6.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fec, align 4
  %or.1 = or i32 %9, 16
  store i32 %or.1, ptr %fec, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end6.1, %for.inc.for.inc.1_crit_edge
  %10 = ptrtoint ptr %supp_fec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %supp_fec, align 8
  %and28.2 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and28.2)
  %cmp3.2 = icmp eq i8 %and28.2, 0
  br i1 %cmp3.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end6.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end6.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fec, align 4
  %or.2 = or i32 %13, 8
  store i32 %or.2, ptr %fec, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end6.2, %for.inc.1.for.inc.2_crit_edge
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp10 = icmp ult i8 %15, 3
  br i1 %cmp10, label %if.then12, label %for.inc.2.cleanup.sink.split_crit_edge

for.inc.2.cleanup.sink.split_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then12:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %conv9 = zext i8 %15 to i32
  %arrayidx13 = getelementptr [3 x %struct.prestera_fec], ptr @port_fec_caps, i32 0, i32 %conv9
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %for.inc.2.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %17, %if.then12 ], [ 2, %for.inc.2.cleanup.sink.split_crit_edge ]
  %active_fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 1
  %18 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %active_fec, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %active) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_ethtool_set_fecparam(ptr noundef %dev, ptr nocapture noundef readonly %fecparam) #3 align 64 {
entry:
  %cfg_mac = alloca %struct.prestera_port_mac_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg_mac) #10
  %0 = getelementptr inbounds %struct.prestera_port_mac_config, ptr %cfg_mac, i32 0, i32 5
  %autoneg = getelementptr i8, ptr %dev, i32 2700
  %1 = call ptr @memset(ptr %cfg_mac, i32 255, i32 12)
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %transceiver = getelementptr i8, ptr %dev, i32 2730
  %4 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %transceiver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %fec6 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %6 = ptrtoint ptr %fec6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fec6, align 4
  %supp_fec = getelementptr i8, ptr %dev, i32 2728
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %supp_fec to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %supp_fec, align 8
  %and1248 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1248)
  %tobool13.not = icmp eq i8 %and1248, 0
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %and.1 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool7.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool7.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %10 = ptrtoint ptr %supp_fec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %supp_fec, align 8
  %and1248.1 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1248.1)
  %tobool13.not.1 = icmp eq i8 %and1248.1, 0
  br i1 %tobool13.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.for.end_crit_edge

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool7.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool7.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %12 = ptrtoint ptr %supp_fec to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %supp_fec, align 8
  %and1248.2 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1248.2)
  %tobool13.not.2 = icmp eq i8 %and1248.2, 0
  br i1 %tobool13.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.for.end_crit_edge

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %cmp26 = phi i1 [ false, %land.lhs.true.for.end_crit_edge ], [ false, %land.lhs.true.1.for.end_crit_edge ], [ false, %land.lhs.true.2.for.end_crit_edge ], [ true, %for.inc.2 ]
  %fec.0 = phi i8 [ 0, %land.lhs.true.for.end_crit_edge ], [ 1, %land.lhs.true.1.for.end_crit_edge ], [ 2, %land.lhs.true.2.for.end_crit_edge ], [ 3, %for.inc.2 ]
  %call17 = call i32 @prestera_port_cfg_mac_read(ptr noundef %add.ptr.i, ptr noundef nonnull %cfg_mac) #10
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %fec.0, i8 %15)
  %cmp21 = icmp eq i8 %fec.0, %15
  br i1 %cmp21, label %for.end.cleanup_crit_edge, label %if.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %for.end
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %fec.0, ptr %0, align 1
  %call31 = call i32 @prestera_port_cfg_mac_write(ptr noundef %add.ptr.i, ptr noundef nonnull %cfg_mac) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then28, %for.end.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %if.then28 ], [ %call31, %if.end29 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg_mac) #10
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_autoneg_restart(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_mac_mode_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_phy_mode_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_port_autoneg_set(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_phy_mode_set(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_port_cfg_mac_read(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_port_cfg_mac_write(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @prestera_ethtool_ops, !1, !"prestera_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 807, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 307, i32 4}
!4 = !{ptr @driver_kind, !5, !"driver_kind", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 19, i32 19}
!6 = !{ptr @prestera_cnt_name, !7, !"prestera_cnt_name", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 264, i32 19}
!8 = !{ptr @port_link_modes, !9, !"port_link_modes", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 27, i32 3}
!10 = !{ptr @port_fec_caps, !11, !"port_fec_caps", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 208, i32 3}
!12 = !{ptr @port_types, !13, !"port_types", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 229, i32 3}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 441, i32 26}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 504, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 710, i32 19}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 715, i32 19}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_ethtool.c", i32 734, i32 19}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{!"auto-init"}
