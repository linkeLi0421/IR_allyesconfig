; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/ipsec.c_pt.bc'
source_filename = "../drivers/net/netdevsim/ipsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrmdev_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.123, [48 x i8], %union.anon.124, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.126, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.123 = type { i64 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, ptr }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.128, i32, i32, i32, i16, i16, %union.anon.130, i32, %union.anon.131, %union.anon.132, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.128 = type { i32 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.netdevsim = type { ptr, ptr, ptr, i64, i64, %struct.u64_stats_sync, ptr, ptr, i32, %struct.xdp_attachment_info, %struct.xdp_attachment_info, i8, i8, i8, i8, i8, %struct.nsim_ipsec, %struct.anon.160, %struct.nsim_ethtool }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nsim_ipsec = type { [33 x %struct.nsim_sa], ptr, i32, i32, i32 }
%struct.nsim_sa = type { ptr, [4 x i32], [4 x i32], i32, i8, i8, i8 }
%struct.anon.160 = type { i32, i32, [2 x [4 x i32]], ptr, [2 x %struct.debugfs_u32_array] }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.nsim_ethtool = type { i32, i32, i32, %struct.nsim_ethtool_pauseparam, %struct.ethtool_coalesce, %struct.ethtool_ringparam, %struct.ethtool_fecparam }
%struct.nsim_ethtool_pauseparam = type { i8, i8, i8, i8 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.166, i32, i32, i8, i8 }
%struct.anon.166 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.52, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.53, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.52 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.53 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.158 = type { ptr }
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
%struct.nsim_dev_port = type { %struct.list_head, %struct.devlink_port, i32, i32, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.147 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.147 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no xfrm state len = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no xfrm_input_state() xs = %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad sa_idx=%d max=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unused sa_idx=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unexpected proto=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@nsim_xfrmdev_ops = internal constant { %struct.xfrmdev_ops, [44 x i8] } { %struct.xfrmdev_ops { ptr @nsim_ipsec_add_sa, ptr @nsim_ipsec_del_sa, ptr null, ptr @nsim_ipsec_offload_ok, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipsec\00", [26 x i8] zeroinitializer }, align 32
@ipsec_dbg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @nsim_dbg_netdev_ops_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tearing down IPsec offload with %d SAs left\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported protocol 0x%04x for ipsec offload\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Compression offload not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No space for SA in Rx table!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get key data for SA table\0A\00", [59 x i8] zeroinitializer }, align 32
@__const.nsim_ipsec_parse_proto_keys.aes_gcm_name = private unnamed_addr constant [18 x i8] c"rfc4106(gcm(aes))\00", align 1
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported IPsec algorithm\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IPsec offload requires %d bit authentication\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unsupported IPsec algorithm - please use %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"IPsec hw offload only supports 128 bit keys with optional 32 bit salt\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid SA for delete sa_idx=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SA count=%u tx=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sa[%i] %cx ipaddr=0x%08x %08x %08x %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sa[%i]    spi=0x%08x proto=0x%x salt=0x%08x crypt=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sa[%i]    key=0x%08x %08x %08x %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 241, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 248, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 254, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 261, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 266, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"nsim_xfrmdev_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 222, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 286, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"ipsec_dbg_fops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 62, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 296, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 142, i32 19 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 148, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 155, i32 19 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 170, i32 19 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 94, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 99, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 109, i32 19 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 120, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 203, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 33, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 43, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 47, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [33 x i8] c"../drivers/net/netdevsim/ipsec.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 51, i32 11 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nsim_xfrmdev_ops, ptr @.str.5, ptr @ipsec_dbg_fops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_xfrmdev_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipsec_dbg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nsim_ipsec_tx(ptr nocapture noundef %ns, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.cleanup_crit_edge, label %skb_sec_path.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_sec_path.exit:                                ; preds = %entry
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  %ipsec1 = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 16
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_sec_path.exit.cleanup_crit_edge, label %if.end

skb_sec_path.exit.cleanup_crit_edge:              ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %skb_sec_path.exit
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.then6, label %xfrm_input_state.exit, !prof !53

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef 0) #10
  br label %cleanup

xfrm_input_state.exit:                            ; preds = %if.end
  %11 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %14 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %shl.i.i.i
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i, align 4
  %sub.i = add i32 %16, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %if.then19, label %if.end21, !prof !53

if.then19:                                        ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ns, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef null) #10
  br label %cleanup

if.end21:                                         ; preds = %xfrm_input_state.exit
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 41, i32 3
  %21 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offload_handle, align 4
  %and = and i32 %22, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp = icmp ugt i32 %and, 32
  br i1 %cmp, label %if.then28, label %if.end30, !prof !53

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ns, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef %and, i32 noundef 33) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %used = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %and, i32 4
  %25 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %used, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  br i1 %tobool31.not, label %if.then40, label %if.end42, !prof !53

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ns, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.3, i32 noundef %and) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end30
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %proto, align 4
  %31 = and i8 %30, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %31)
  %switch = icmp eq i8 %31, 50
  br i1 %switch, label %if.end55, label %if.then50

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %30 to i32
  %32 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ns, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.4, i32 noundef %conv) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %tx = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 16, i32 3
  %34 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then50, %if.then40, %if.then28, %if.then19, %if.then6, %skb_sec_path.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ false, %if.then19 ], [ false, %if.then28 ], [ false, %if.then40 ], [ false, %if.then50 ], [ true, %if.end55 ], [ true, %skb_sec_path.exit.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_ipsec_init(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  %xfrmdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %xfrmdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nsim_xfrmdev_ops, ptr %xfrmdev_ops, align 4
  %3 = load ptr, ptr %ns, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features, align 16
  %or = or i64 %5, 3377701868011520
  store i64 %or, ptr %features, align 16
  %6 = load ptr, ptr %ns, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hw_enc_features, align 16
  %or3 = or i64 %8, 3377701868011520
  store i64 %or3, ptr %hw_enc_features, align 16
  %nsim_dev_port = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 2
  %9 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsim_dev_port, align 8
  %ddir = getelementptr inbounds %struct.nsim_dev_port, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddir, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %12, ptr noundef %ns, ptr noundef nonnull @ipsec_dbg_fops) #7
  %pfile = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %pfile to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %pfile, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_ipsec_teardown(ptr nocapture noundef readonly %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 16, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pfile = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %pfile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfile, align 4
  tail call void @debugfs_remove(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_ipsec_add_sa(ptr noundef %xs) #0 align 64 {
entry:
  %aes_gcm_name.i = alloca [18 x i8], align 1
  %sa.sroa.6 = alloca [3 x i32], align 4
  %sa.sroa.8 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sa.sroa.6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.sroa.8)
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %ipsec1 = getelementptr i8, ptr %1, i32 2404
  %id = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto, align 4
  %4 = and i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %4)
  %switch = icmp eq i8 %4, 50
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %calg = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 18
  %5 = ptrtoint ptr %calg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %calg, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %count.i = getelementptr i8, ptr %1, i32 3860
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %8)
  %cmp.i = icmp eq i32 %8, 33
  br i1 %cmp.i, label %if.end12.if.then16_crit_edge, label %if.end12.for.body.i_crit_edge

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

if.end12.if.then16_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end12.for.body.i_crit_edge ]
  %used.i = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.08.i, i32 4
  %9 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %used.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end17, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %for.inc.i.if.then16_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then16_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %for.inc.i.if.then16_crit_edge, %if.end12.if.then16_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end17:                                         ; preds = %for.body.i
  %11 = call ptr @memset(ptr %sa.sroa.6, i32 0, i32 12)
  %12 = and i8 %3, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool24.not = icmp eq i8 %12, 0
  br i1 %tobool24.not, label %if.end17.if.end28_crit_edge, label %if.then25

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %if.end17
  %ealg = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 17
  %13 = ptrtoint ptr %ealg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ealg, align 4
  %tobool26.not = icmp eq ptr %14, null
  br i1 %tobool26.not, label %lor.rhs, label %if.then25.lor.end_crit_edge

if.then25.lor.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %15 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aead, align 4
  %tobool27 = icmp ne ptr %16, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then25.lor.end_crit_edge
  %17 = phi i1 [ true, %if.then25.lor.end_crit_edge ], [ %tobool27, %lor.rhs ]
  %frombool = zext i1 %17 to i8
  br label %if.end28

if.end28:                                         ; preds = %lor.end, %if.end17.if.end28_crit_edge
  %sa.sroa.11.0 = phi i8 [ 0, %if.end17.if.end28_crit_edge ], [ %frombool, %lor.end ]
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %aes_gcm_name.i) #7
  %18 = call ptr @memcpy(ptr %aes_gcm_name.i, ptr @__const.nsim_ipsec_parse_proto_keys.aes_gcm_name, i32 18)
  %aead.i = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %19 = ptrtoint ptr %aead.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aead.i, align 4
  %tobool.not.i82 = icmp eq ptr %20, null
  br i1 %tobool.not.i82, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #10
  br label %if.then31

if.end.i:                                         ; preds = %if.end28
  %alg_icv_len.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %alg_icv_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alg_icv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 128
  br i1 %cmp.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 128) #10
  br label %if.then31

if.end3.i:                                        ; preds = %if.end.i
  %alg_key.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %20, i32 0, i32 3
  %alg_key_len.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alg_key_len.i, align 4
  %call.i = call i32 @strcmp(ptr noundef nonnull %20, ptr noundef nonnull %aes_gcm_name.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %aes_gcm_name.i) #10
  br label %if.then31

if.end12.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %24)
  %cmp13.i = icmp sgt i32 %24, 128
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i = getelementptr %struct.xfrm_algo_aead, ptr %20, i32 1, i32 0, i32 16
  %25 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15.i, align 4
  br label %if.end32

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %24)
  %cmp16.i = icmp eq i32 %24, 128
  br i1 %cmp16.i, label %if.else.i.if.end32_crit_edge, label %if.else18.i

if.else.i.if.end32_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #10
  br label %if.then31

if.then31:                                        ; preds = %if.else18.i, %if.then10.i, %if.then2.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %aes_gcm_name.i) #7
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end32:                                         ; preds = %if.else.i.if.end32_crit_edge, %if.then14.i
  %storemerge.i = phi i32 [ %26, %if.then14.i ], [ 0, %if.else.i.if.end32_crit_edge ]
  %27 = call ptr @memcpy(ptr %sa.sroa.8, ptr %alg_key.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %aes_gcm_name.i) #7
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 5
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags, align 4
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool36.not = icmp eq i8 %30, 0
  br i1 %tobool36.not, label %if.end32.if.end48_crit_edge, label %if.then37

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then37:                                        ; preds = %if.end32
  %family = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 14, i32 7
  %31 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %32)
  %cmp39 = icmp eq i16 %32, 10
  br i1 %cmp39, label %if.then41, label %if.then37.if.end48.sink.split_crit_edge

if.then37.if.end48.sink.split_crit_edge:          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.sink.split

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %33 = call ptr @memcpy(ptr %sa.sroa.6, ptr %id, i32 12)
  %sa.sroa.7.4.id.sroa_idx = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 0, i32 0, i32 3
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.then41, %if.then37.if.end48.sink.split_crit_edge
  %sa.sroa.7.4.id.sroa_idx.sink = phi ptr [ %sa.sroa.7.4.id.sroa_idx, %if.then41 ], [ %id, %if.then37.if.end48.sink.split_crit_edge ]
  %34 = ptrtoint ptr %sa.sroa.7.4.id.sroa_idx.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %sa.sroa.7.4.copyload = load i32, ptr %sa.sroa.7.4.id.sroa_idx.sink, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.end32.if.end48_crit_edge
  %sa.sroa.7.0 = phi i32 [ 0, %if.end32.if.end48_crit_edge ], [ %sa.sroa.7.4.copyload, %if.end48.sink.split ]
  %sa.sroa.12.0 = phi i8 [ 0, %if.end32.if.end48_crit_edge ], [ 1, %if.end48.sink.split ]
  %idxprom = and i32 %i.08.i, 65535
  %arrayidx50 = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %idxprom
  %35 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %xs, ptr %arrayidx50, align 4
  %sa.sroa.6.0.arrayidx50.sroa_idx = getelementptr inbounds i8, ptr %arrayidx50, i32 4
  %36 = call ptr @memcpy(ptr %sa.sroa.6.0.arrayidx50.sroa_idx, ptr %sa.sroa.6, i32 12)
  %sa.sroa.7.0.arrayidx50.sroa_idx = getelementptr inbounds i8, ptr %arrayidx50, i32 16
  %37 = ptrtoint ptr %sa.sroa.7.0.arrayidx50.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sa.sroa.7.0, ptr %sa.sroa.7.0.arrayidx50.sroa_idx, align 4
  %sa.sroa.8.0.arrayidx50.sroa_idx = getelementptr inbounds i8, ptr %arrayidx50, i32 20
  %38 = call ptr @memcpy(ptr %sa.sroa.8.0.arrayidx50.sroa_idx, ptr %sa.sroa.8, i32 16)
  %sa.sroa.9.0.arrayidx50.sroa_idx = getelementptr inbounds i8, ptr %arrayidx50, i32 36
  %39 = ptrtoint ptr %sa.sroa.9.0.arrayidx50.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge.i, ptr %sa.sroa.9.0.arrayidx50.sroa_idx, align 4
  %sa.sroa.10.0.arrayidx50.sroa_idx = getelementptr inbounds i8, ptr %arrayidx50, i32 40
  %40 = ptrtoint ptr %sa.sroa.10.0.arrayidx50.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %sa.sroa.10.0.arrayidx50.sroa_idx, align 4
  %sa.sroa.11.0.arrayidx50.sroa_idx = getelementptr inbounds i8, ptr %arrayidx50, i32 41
  %41 = ptrtoint ptr %sa.sroa.11.0.arrayidx50.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %sa.sroa.11.0, ptr %sa.sroa.11.0.arrayidx50.sroa_idx, align 1
  %sa.sroa.12.0.arrayidx50.sroa_idx = getelementptr inbounds i8, ptr %arrayidx50, i32 42
  %42 = ptrtoint ptr %sa.sroa.12.0.arrayidx50.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %sa.sroa.12.0, ptr %sa.sroa.12.0.arrayidx50.sroa_idx, align 2
  %sa.sroa.13.0.arrayidx50.sroa_idx = getelementptr inbounds i8, ptr %arrayidx50, i32 43
  %43 = ptrtoint ptr %sa.sroa.13.0.arrayidx50.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %sa.sroa.13.0.arrayidx50.sroa_idx, align 1
  %or = or i32 %idxprom, -2147483648
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 3
  %44 = ptrtoint ptr %offload_handle to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %offload_handle, align 4
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count.i, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %count.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then31, %if.then16, %if.then11, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then11 ], [ -28, %if.then16 ], [ -22, %if.then31 ], [ 0, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sa.sroa.6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.sroa.8)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_ipsec_del_sa(ptr nocapture noundef readonly %xs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %ipsec1 = getelementptr i8, ptr %1, i32 2404
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 3
  %2 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offload_handle, align 4
  %idxprom = and i32 %3, 65535
  %used = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %idxprom, i32 4
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %used, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %idxprom) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %idxprom
  %8 = call ptr @memset(ptr %arrayidx, i32 0, i32 44)
  %count = getelementptr i8, ptr %1, i32 3860
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nsim_ipsec_offload_ok(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %xs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %ok = getelementptr i8, ptr %1, i32 3868
  %2 = ptrtoint ptr %ok to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ok, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %ok, align 4
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dbg_netdev_ops_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ipsec1 = getelementptr inbounds %struct.netdevsim, ptr %1, i32 0, i32 16
  %count2 = getelementptr inbounds %struct.netdevsim, ptr %1, i32 0, i32 16, i32 2
  %2 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count2, align 4
  %mul3 = mul i32 %3, 240
  %add = add i32 %mul3, 60
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup50_crit_edge, label %if.end

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %call9.i.i to i32
  %4 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count2, align 4
  %tx = getelementptr inbounds %struct.netdevsim, ptr %1, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %7) #7
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %call5
  %sub.ptr.sub11.neg = add i32 %add, %sub.ptr.lhs.cast
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %i.0103 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.for.body_crit_edge ]
  %p.0102 = phi ptr [ %add.ptr, %if.end ], [ %p.1, %cleanup.for.body_crit_edge ]
  %used = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 4
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %used, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103
  %sub.ptr.lhs.cast9 = ptrtoint ptr %p.0102 to i32
  %sub12 = sub i32 %sub.ptr.sub11.neg, %sub.ptr.lhs.cast9
  %rx = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 6
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx, align 2, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool13.not, i32 116, i32 114
  %ipaddr = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 1
  %12 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ipaddr, align 4
  %arrayidx16 = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx20, align 4
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0102, i32 noundef %sub12, ptr noundef nonnull @.str.17, i32 noundef %i.0103, i32 noundef %cond, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #7
  %add.ptr22 = getelementptr i8, ptr %p.0102, i32 %call21
  %sub.ptr.lhs.cast23 = ptrtoint ptr %add.ptr22 to i32
  %sub26 = sub i32 %sub.ptr.sub11.neg, %sub.ptr.lhs.cast23
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spi, align 4
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %proto, align 4
  %conv = zext i8 %25 to i32
  %salt = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 3
  %26 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %salt, align 4
  %crypt = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 5
  %28 = ptrtoint ptr %crypt to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %crypt, align 1, !range !54
  %30 = zext i8 %29 to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub26, ptr noundef nonnull @.str.18, i32 noundef %i.0103, i32 noundef %23, i32 noundef %conv, i32 noundef %27, i32 noundef %30) #7
  %add.ptr32 = getelementptr i8, ptr %add.ptr22, i32 %call31
  %sub.ptr.lhs.cast33 = ptrtoint ptr %add.ptr32 to i32
  %sub36 = sub i32 %sub.ptr.sub11.neg, %sub.ptr.lhs.cast33
  %key = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 2
  %31 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %key, align 4
  %arrayidx39 = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx39, align 4
  %arrayidx41 = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx41, align 4
  %arrayidx43 = getelementptr [33 x %struct.nsim_sa], ptr %ipsec1, i32 0, i32 %i.0103, i32 2, i32 3
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx43, align 4
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub36, ptr noundef nonnull @.str.19, i32 noundef %i.0103, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #7
  %add.ptr45 = getelementptr i8, ptr %add.ptr32, i32 %call44
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.body.cleanup_crit_edge
  %p.1 = phi ptr [ %add.ptr45, %if.end8 ], [ %p.0102, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast46 = ptrtoint ptr %p.1 to i32
  %sub.ptr.sub48 = sub i32 %sub.ptr.lhs.cast46, %sub.ptr.lhs.cast
  %call49 = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i.i, i32 noundef %sub.ptr.sub48) #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup50

cleanup50:                                        ; preds = %for.end, %entry.cleanup50_crit_edge
  %retval.0 = phi i32 [ %call49, %for.end ], [ -12, %entry.cleanup50_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/ipsec.c", i32 241, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/netdevsim/ipsec.c", i32 248, i32 26}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/netdevsim/ipsec.c", i32 254, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/netdevsim/ipsec.c", i32 261, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/netdevsim/ipsec.c", i32 266, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/netdevsim/ipsec.c", i32 286, i32 40}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/netdevsim/ipsec.c", i32 296, i32 26}
!14 = !{ptr @nsim_xfrmdev_ops, !15, !"nsim_xfrmdev_ops", i1 false, i1 false}
!15 = !{!"../drivers/net/netdevsim/ipsec.c", i32 222, i32 33}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/netdevsim/ipsec.c", i32 142, i32 19}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/netdevsim/ipsec.c", i32 148, i32 19}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/netdevsim/ipsec.c", i32 155, i32 19}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/netdevsim/ipsec.c", i32 170, i32 19}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/netdevsim/ipsec.c", i32 94, i32 19}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/netdevsim/ipsec.c", i32 99, i32 19}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/netdevsim/ipsec.c", i32 109, i32 19}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/netdevsim/ipsec.c", i32 120, i32 19}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/netdevsim/ipsec.c", i32 203, i32 26}
!34 = !{ptr @ipsec_dbg_fops, !35, !"ipsec_dbg_fops", i1 false, i1 false}
!35 = !{!"../drivers/net/netdevsim/ipsec.c", i32 62, i32 37}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/netdevsim/ipsec.c", i32 33, i32 10}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/netdevsim/ipsec.c", i32 43, i32 11}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/netdevsim/ipsec.c", i32 47, i32 11}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/netdevsim/ipsec.c", i32 51, i32 11}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i8 0, i8 2}
