; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/bpf.c_pt.bc'
source_filename = "../drivers/net/netdevsim/bpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_prog_offload_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_map_dev_ops = type { ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_cls_bpf_offload = type { %struct.flow_cls_common_offload, i32, ptr, ptr, ptr, ptr, i8 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.194, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.214, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.194 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.214 = type { ptr }
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
%struct.netdevsim = type { ptr, ptr, ptr, i64, i64, %struct.u64_stats_sync, ptr, ptr, i32, %struct.xdp_attachment_info, %struct.xdp_attachment_info, i8, i8, i8, i8, i8, %struct.nsim_ipsec, %struct.anon.222, %struct.nsim_ethtool }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nsim_ipsec = type { [33 x %struct.nsim_sa], ptr, i32, i32, i32 }
%struct.nsim_sa = type { ptr, [4 x i32], [4 x i32], i32, i8, i8, i8 }
%struct.anon.222 = type { i32, i32, [2 x [4 x i32]], ptr, [2 x %struct.debugfs_u32_array] }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.nsim_ethtool = type { i32, i32, i32, %struct.nsim_ethtool_pauseparam, %struct.ethtool_coalesce, %struct.ethtool_ringparam, %struct.ethtool_fecparam }
%struct.nsim_ethtool_pauseparam = type { i8, i8, i8, i8 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { %struct.anon.132, [0 x %struct.sock_filter] }
%struct.anon.132 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.129 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.129 = type { %struct.work_struct }
%struct.bpf_prog_offload = type { ptr, ptr, ptr, ptr, %struct.list_head, i8, i8, ptr, i32 }
%struct.nsim_bpf_bound_prog = type { ptr, ptr, ptr, ptr, i8, %struct.list_head }
%struct.netdev_bpf = type { i32, %union.anon.199 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i32, ptr, ptr }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.bpf_offloaded_map = type { %struct.bpf_map, ptr, ptr, ptr, %struct.list_head, [108 x i8] }
%struct.nsim_bpf_bound_map = type { ptr, ptr, %struct.mutex, [2 x %struct.nsim_map_entry], %struct.list_head }
%struct.nsim_map_entry = type { ptr, ptr }
%struct.nsim_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.netdev_phys_item_id, %struct.list_head, %struct.mutex, i8, i32, i32, i8, i8, i8, ptr, %struct.nsim_dev_health, ptr, %struct.spinlock, i8, i8, i8, i8, %struct.anon.221, ptr, i16 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.nsim_dev_health = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.221 = type { %struct.udp_tunnel_nic_shared, [2 x [4 x i32]], i8, i8, i8, i8, i8, i32 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.nsim_dev_port = type { %struct.list_head, %struct.devlink_port, i32, i32, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.203 }
%union.anon.203 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.bpf_verifier_env = type { i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, ptr, [64 x ptr], [64 x %struct.btf_mod_pair], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.bpf_verifier_log, [257 x %struct.bpf_subprog_info], [75 x %struct.bpf_id_pair], %struct.anon.127, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.sockptr_t, i32, i64, i32, i32, [64 x i8] }
%struct.btf_mod_pair = type { ptr, ptr }
%struct.bpf_verifier_log = type { i32, [1024 x i8], ptr, i32, i32 }
%struct.bpf_subprog_info = type { i32, i32, i16, i8, i8, i8, i8 }
%struct.bpf_id_pair = type { i32, i32 }
%struct.anon.127 = type { ptr, ptr, i32 }
%struct.sockptr_t = type { %union.anon.128, i8 }
%union.anon.128 = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.217, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.218, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.219, ptr, %struct.address_space, %struct.list_head, %union.anon.220, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.217 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.218 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.219 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.220 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@nsim_bpf_setup_tc_block_cb.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"netdevsim: only offload of BPF classifiers supported\00", [43 x i8] zeroinitializer }, align 32
@nsim_bpf_setup_tc_block_cb.__msg.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"netdevsim: only ETH_P_ALL supported as filter protocol\00", [41 x i8] zeroinitializer }, align 32
@nsim_bpf_setup_tc_block_cb.__msg.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"netdevsim: netdevsim configured to reject BPF TC offload\00", [39 x i8] zeroinitializer }, align 32
@nsim_bpf_setup_tc_block_cb.__msg.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"netdevsim: netdevsim configured to reject unbound programs\00", [37 x i8] zeroinitializer }, align 32
@nsim_bpf_setup_tc_block_cb.__msg.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"netdevsim: driver and netdev offload states mismatch\00", [43 x i8] zeroinitializer }, align 32
@nsim_bpf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/netdevsim/bpf.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpf_bound_progs\00", [16 x i8] zeroinitializer }, align 32
@nsim_bpf_dev_ops = internal constant { %struct.bpf_prog_offload_ops, [36 x i8] } { %struct.bpf_prog_offload_ops { ptr @nsim_bpf_verify_insn, ptr @nsim_bpf_finalize, ptr null, ptr null, ptr @nsim_bpf_verifier_prep, ptr @nsim_bpf_translate, ptr @nsim_bpf_destroy_prog }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpf_bind_accept\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bpf_bind_verifier_delay\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bpf_bind_verifier_accept\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpf_offloaded_id\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bpf_tc_accept\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bpf_tc_non_bound_accept\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bpf_xdpdrv_accept\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bpf_xdpoffload_accept\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpf_map_accept\00", [17 x i8] zeroinitializer }, align 32
@tc_cls_can_offload_and_chain0.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver supports only offload of chain 0\00", [56 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bad offload state, expected offload %sto be active\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@nsim_setup_prog_checks.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"netdevsim: attempt to load offloaded prog to drv\00", [47 x i8] zeroinitializer }, align 32
@nsim_setup_prog_checks.__msg.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"netdevsim: MTU too large w/ XDP enabled\00", [56 x i8] zeroinitializer }, align 32
@nsim_xdp_set_prog.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"netdevsim: driver XDP disabled in DebugFS\00", [54 x i8] zeroinitializer }, align 32
@nsim_xdp_set_prog.__msg.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"netdevsim: XDP offload disabled in DebugFS\00", [53 x i8] zeroinitializer }, align 32
@nsim_xdp_offload_prog.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"netdevsim: TC program is already loaded\00", [56 x i8] zeroinitializer }, align 32
@nsim_setup_prog_hw_checks.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"netdevsim: xdpoffload of non-bound program\00", [53 x i8] zeroinitializer }, align 32
@nsim_setup_prog_hw_checks.__msg.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"netdevsim: program bound to different dev\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlated\00", [25 x i8] zeroinitializer }, align 32
@nsim_setup_prog_hw_checks.__msg.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"netdevsim: offloading program in bad state\00", [53 x i8] zeroinitializer }, align 32
@nsim_bpf_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&nmap->mutex\00", [19 x i8] zeroinitializer }, align 32
@nsim_bpf_map_ops = internal constant { %struct.bpf_map_dev_ops, [16 x i8] } { %struct.bpf_map_dev_ops { ptr @nsim_map_get_next_key, ptr @nsim_map_lookup_elem, ptr @nsim_map_update_elem, ptr @nsim_map_delete_elem }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[netdevsim] Hello from netdevsim!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verify\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@nsim_bpf_string_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nsim_bpf_string_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loaded\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"offload state destroyed while program still bound\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 127, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 136, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 142, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 148, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 164, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 554, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 589, i32 54 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"nsim_bpf_dev_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 285, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 600, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 602, i32 21 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 605, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 627, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 631, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 633, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 636, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 639, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 643, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 676, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 664, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 108, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 296, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 300, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 199, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 203, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 185, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 315, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 319, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 324, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 325, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 506, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"nsim_bpf_map_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 478, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 73, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 231, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 234, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 242, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 243, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"nsim_bpf_string_fops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 60, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 245, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 56, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [31 x i8] c"../drivers/net/netdevsim/bpf.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 278, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @nsim_bpf_setup_tc_block_cb.__msg, ptr @nsim_bpf_setup_tc_block_cb.__msg.1, ptr @nsim_bpf_setup_tc_block_cb.__msg.2, ptr @nsim_bpf_setup_tc_block_cb.__msg.3, ptr @nsim_bpf_setup_tc_block_cb.__msg.4, ptr @.str, ptr @.str.5, ptr @.str.6, ptr @nsim_bpf_dev_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @tc_cls_can_offload_and_chain0.__msg, ptr @tc_can_offload_extack.__msg, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @nsim_setup_prog_checks.__msg, ptr @nsim_setup_prog_checks.__msg.19, ptr @nsim_xdp_set_prog.__msg, ptr @nsim_xdp_set_prog.__msg.20, ptr @nsim_xdp_offload_prog.__msg, ptr @nsim_setup_prog_hw_checks.__msg, ptr @nsim_setup_prog_hw_checks.__msg.21, ptr @.str.22, ptr @nsim_setup_prog_hw_checks.__msg.23, ptr @nsim_bpf_map_alloc.__key, ptr @.str.24, ptr @nsim_bpf_map_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @nsim_bpf_string_fops, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_setup_tc_block_cb.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_setup_tc_block_cb.__msg.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_setup_tc_block_cb.__msg.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_setup_tc_block_cb.__msg.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_setup_tc_block_cb.__msg.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_dev_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_cls_can_offload_and_chain0.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_setup_prog_checks.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_setup_prog_checks.__msg.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_xdp_set_prog.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_xdp_set_prog.__msg.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_xdp_offload_prog.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_setup_prog_hw_checks.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_setup_prog_hw_checks.__msg.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_setup_prog_hw_checks.__msg.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_map_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_bpf_string_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_bpf_setup_tc_block_cb(i32 noundef %type, ptr nocapture noundef readonly %type_data, ptr nocapture noundef %cb_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %prog1 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %type_data, i32 0, i32 3
  %0 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  br i1 %cmp.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_bpf_setup_tc_block_cb.__msg) #11
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nsim_bpf_setup_tc_block_cb.__msg, ptr %3, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %5 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb_priv, align 8
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %7 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extack.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %9 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features.i.i.i, align 16
  %and.i.i.i = and i64 %10, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #11
  %tobool1.not.i.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tc_can_offload_extack.__msg, ptr %8, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %12 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end6, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #11
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tc_cls_can_offload_and_chain0.__msg, ptr %8, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %protocol = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 1
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp8.not = icmp eq i16 %16, 3
  br i1 %cmp8.not, label %if.end21, label %do.body11

do.body11:                                        ; preds = %if.end6
  %17 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_bpf_setup_tc_block_cb.__msg.1) #11
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %do.body11.cleanup_crit_edge, label %if.then16

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nsim_bpf_setup_tc_block_cb.__msg.1, ptr %18, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end6
  %bpf_tc_accept = getelementptr inbounds %struct.netdevsim, ptr %cb_priv, i32 0, i32 11
  %20 = ptrtoint ptr %bpf_tc_accept to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bpf_tc_accept, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not = icmp eq i8 %21, 0
  br i1 %tobool22.not, label %do.body24, label %if.end34

do.body24:                                        ; preds = %if.end21
  %22 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_bpf_setup_tc_block_cb.__msg.2) #11
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %do.body24.cleanup_crit_edge, label %if.then29

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @nsim_bpf_setup_tc_block_cb.__msg.2, ptr %23, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end21
  %tobool35.not = icmp eq ptr %1, null
  br i1 %tobool35.not, label %if.end34.if.end50_crit_edge, label %land.lhs.true

if.end34.if.end50_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end34
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %26, i32 0, i32 48
  %27 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %offload, align 8
  %tobool36.not = icmp eq ptr %28, null
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true37:                                  ; preds = %land.lhs.true
  %bpf_tc_non_bound_accept = getelementptr inbounds %struct.netdevsim, ptr %cb_priv, i32 0, i32 12
  %29 = ptrtoint ptr %bpf_tc_non_bound_accept to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bpf_tc_non_bound_accept, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool38.not = icmp eq i8 %30, 0
  br i1 %tobool38.not, label %do.body40, label %land.lhs.true37.if.end50_crit_edge

land.lhs.true37.if.end50_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.body40:                                        ; preds = %land.lhs.true37
  %31 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_bpf_setup_tc_block_cb.__msg.3) #11
  %tobool44.not = icmp eq ptr %32, null
  br i1 %tobool44.not, label %do.body40.cleanup_crit_edge, label %if.then45

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nsim_bpf_setup_tc_block_cb.__msg.3, ptr %32, align 4
  br label %cleanup

if.end50:                                         ; preds = %land.lhs.true37.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %if.end34.if.end50_crit_edge
  %command = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %type_data, i32 0, i32 1
  %34 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp51.not = icmp eq i32 %35, 0
  br i1 %cmp51.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %oldprog55 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %type_data, i32 0, i32 4
  %36 = ptrtoint ptr %oldprog55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %oldprog55, align 4
  %bpf_offloaded = getelementptr inbounds %struct.netdevsim, ptr %cb_priv, i32 0, i32 7
  %38 = ptrtoint ptr %bpf_offloaded to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bpf_offloaded, align 4
  %cmp56.not = icmp eq ptr %39, %37
  br i1 %cmp56.not, label %if.end54.if.end77_crit_edge, label %if.then58

if.end54.if.end77_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then58:                                        ; preds = %if.end54
  %40 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prog1, align 4
  %tobool60.not = icmp eq ptr %41, null
  br i1 %tobool60.not, label %if.then58.cleanup_crit_edge, label %if.end62

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end62:                                         ; preds = %if.then58
  %tobool64.not = icmp eq ptr %39, null
  br i1 %tobool64.not, label %if.end62.if.end77_crit_edge, label %do.body66

if.end62.if.end77_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.body66:                                        ; preds = %if.end62
  %42 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_bpf_setup_tc_block_cb.__msg.4) #11
  %tobool70.not = icmp eq ptr %43, null
  br i1 %tobool70.not, label %do.body66.cleanup_crit_edge, label %if.then71

do.body66.cleanup_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then71:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @nsim_bpf_setup_tc_block_cb.__msg.4, ptr %43, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.end62.if.end77_crit_edge, %if.end54.if.end77_crit_edge
  %oldprog.0 = phi ptr [ null, %if.end62.if.end77_crit_edge ], [ %37, %if.end54.if.end77_crit_edge ]
  %45 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prog1, align 4
  %tobool79 = icmp ne ptr %oldprog.0, null
  tail call fastcc void @nsim_bpf_offload(ptr noundef %cb_priv, ptr noundef %46, i1 noundef zeroext %tobool79)
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then71, %do.body66.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then45, %do.body40.cleanup_crit_edge, %if.then29, %do.body24.cleanup_crit_edge, %if.then16, %do.body11.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77 ], [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then16 ], [ -95, %do.body11.cleanup_crit_edge ], [ -95, %if.then29 ], [ -95, %do.body24.cleanup_crit_edge ], [ -95, %if.then45 ], [ -95, %do.body40.cleanup_crit_edge ], [ -95, %if.end50.cleanup_crit_edge ], [ 0, %if.then58.cleanup_crit_edge ], [ -16, %if.then71 ], [ -16, %do.body66.cleanup_crit_edge ], [ -95, %if.then4.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then2.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsim_bpf_offload(ptr nocapture noundef %ns, ptr noundef %prog, i1 noundef zeroext %oldprog) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_offloaded = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 7
  %0 = ptrtoint ptr %bpf_offloaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_offloaded, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.nsim_prog_set_loaded.exit_crit_edge, label %lor.lhs.false.i

entry.nsim_prog_set_loaded.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_prog_set_loaded.exit

lor.lhs.false.i:                                  ; preds = %entry
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux.i, align 4
  %offload.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.nsim_prog_set_loaded.exit_crit_edge, label %if.end.i

lor.lhs.false.i.nsim_prog_set_loaded.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_prog_set_loaded.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  %is_loaded.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %is_loaded.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %is_loaded.i, align 4
  br label %nsim_prog_set_loaded.exit

nsim_prog_set_loaded.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.nsim_prog_set_loaded.exit_crit_edge, %entry.nsim_prog_set_loaded.exit_crit_edge
  %9 = ptrtoint ptr %bpf_offloaded to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bpf_offloaded, align 4
  %tobool = icmp eq ptr %10, null
  %cmp.not = xor i1 %tobool, %oldprog
  br i1 %cmp.not, label %nsim_prog_set_loaded.exit.if.end_crit_edge, label %do.end, !prof !95

nsim_prog_set_loaded.exit.if.end_crit_edge:       ; preds = %nsim_prog_set_loaded.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %nsim_prog_set_loaded.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %oldprog, ptr @.str.17, ptr @.str.18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %nsim_prog_set_loaded.exit.if.end_crit_edge
  %11 = ptrtoint ptr %bpf_offloaded to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %prog, ptr %bpf_offloaded, align 4
  %tobool30.not = icmp eq ptr %prog, null
  br i1 %tobool30.not, label %cond.end.thread, label %lor.lhs.false.i5

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bpf_offloaded_id11 = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 8
  %12 = ptrtoint ptr %bpf_offloaded_id11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bpf_offloaded_id11, align 8
  br label %nsim_prog_set_loaded.exit9

lor.lhs.false.i5:                                 ; preds = %if.end
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %13 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  %bpf_offloaded_id = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 8
  %17 = ptrtoint ptr %bpf_offloaded_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bpf_offloaded_id, align 8
  %18 = load ptr, ptr %aux, align 4
  %offload.i3 = getelementptr inbounds %struct.bpf_prog_aux, ptr %18, i32 0, i32 48
  %19 = ptrtoint ptr %offload.i3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %offload.i3, align 8
  %tobool1.not.i4 = icmp eq ptr %20, null
  br i1 %tobool1.not.i4, label %lor.lhs.false.i5.nsim_prog_set_loaded.exit9_crit_edge, label %if.end.i8

lor.lhs.false.i5.nsim_prog_set_loaded.exit9_crit_edge: ; preds = %lor.lhs.false.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_prog_set_loaded.exit9

if.end.i8:                                        ; preds = %lor.lhs.false.i5
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i6 = getelementptr inbounds %struct.bpf_prog_offload, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev_priv.i6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i6, align 4
  %is_loaded.i7 = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %is_loaded.i7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_loaded.i7, align 4
  br label %nsim_prog_set_loaded.exit9

nsim_prog_set_loaded.exit9:                       ; preds = %if.end.i8, %lor.lhs.false.i5.nsim_prog_set_loaded.exit9_crit_edge, %cond.end.thread
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nsim_bpf_disable_tc(ptr nocapture noundef readonly %ns) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_offloaded = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 7
  %0 = ptrtoint ptr %bpf_offloaded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_offloaded, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %xdp_hw.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 10
  %2 = ptrtoint ptr %xdp_hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_hw.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_bpf(ptr noundef %dev, ptr noundef %bpf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b75 = load i1, ptr @nsim_bpf.__already_done, align 1
  br i1 %.b75, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !95

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nsim_bpf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 554) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %0 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpf, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end30.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb43
    i32 2, label %sw.bb49
    i32 3, label %sw.bb54
  ]

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end30
  %prog.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prog.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %sw.bb.if.end5.i_crit_edge, label %land.lhs.true.i

sw.bb.if.end5.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aux.i, align 4
  %offload.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %6, i32 0, i32 48
  %7 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %offload.i, align 8
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %do.body.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %extack.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_setup_prog_checks.__msg) #11
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nsim_setup_prog_checks.__msg, ptr %10, align 4
  br label %cleanup

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %sw.bb.if.end5.i_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %15)
  %cmp.i = icmp ugt i32 %15, 4000
  br i1 %cmp.i, label %do.body7.i, label %if.end41

do.body7.i:                                       ; preds = %if.end5.i
  %extack9.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %extack9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extack9.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_setup_prog_checks.__msg.19) #11
  %tobool10.not.i = icmp eq ptr %17, null
  br i1 %tobool10.not.i, label %do.body7.i.cleanup_crit_edge, label %if.then11.i

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nsim_setup_prog_checks.__msg.19, ptr %17, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %xdp = getelementptr i8, ptr %dev, i32 2380
  %call42 = tail call fastcc i32 @nsim_xdp_set_prog(ptr noundef %add.ptr.i, ptr noundef %bpf, ptr noundef %xdp)
  br label %cleanup

sw.bb43:                                          ; preds = %if.end30
  %prog.i76 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %prog.i76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prog.i76, align 4
  %tobool.not.i77 = icmp eq ptr %20, null
  br i1 %tobool.not.i77, label %sw.bb43.if.end47_crit_edge, label %if.end.i

sw.bb43.if.end47_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end.i:                                         ; preds = %sw.bb43
  %aux.i78 = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %aux.i78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aux.i78, align 4
  %offload.i79 = getelementptr inbounds %struct.bpf_prog_aux, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %offload.i79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %offload.i79, align 8
  %tobool2.not.i80 = icmp eq ptr %24, null
  br i1 %tobool2.not.i80, label %do.body.i82, label %if.end7.i

do.body.i82:                                      ; preds = %if.end.i
  %extack.i81 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %extack.i81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extack.i81, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_setup_prog_hw_checks.__msg) #11
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %do.body.i82.cleanup_crit_edge, label %if.then5.i

do.body.i82.cleanup_crit_edge:                    ; preds = %do.body.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.i:                                       ; preds = %do.body.i82
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nsim_setup_prog_hw_checks.__msg, ptr %26, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call zeroext i1 @bpf_offload_dev_match(ptr noundef nonnull %20, ptr noundef %29) #11
  br i1 %call.i, label %if.end19.i, label %do.body10.i

do.body10.i:                                      ; preds = %if.end7.i
  %extack12.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %extack12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %extack12.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_setup_prog_hw_checks.__msg.21) #11
  %tobool13.not.i = icmp eq ptr %31, null
  br i1 %tobool13.not.i, label %do.body10.i.cleanup_crit_edge, label %if.then14.i

do.body10.i.cleanup_crit_edge:                    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nsim_setup_prog_hw_checks.__msg.21, ptr %31, align 4
  br label %cleanup

if.end19.i:                                       ; preds = %if.end7.i
  %33 = ptrtoint ptr %prog.i76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prog.i76, align 4
  %aux21.i = getelementptr inbounds %struct.bpf_prog, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %aux21.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aux21.i, align 4
  %offload22.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %36, i32 0, i32 48
  %37 = ptrtoint ptr %offload22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %offload22.i, align 8
  %dev_priv.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i, align 4
  %state23.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %state23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state23.i, align 4
  %call24.i = tail call i32 @strcmp(ptr noundef %42, ptr noundef nonnull dereferenceable(7) @.str.22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end19.i.if.end47_crit_edge, label %do.end37.i, !prof !95

if.end19.i.if.end47_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.end37.i:                                       ; preds = %if.end19.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  %extack54.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 2
  %43 = ptrtoint ptr %extack54.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %extack54.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_setup_prog_hw_checks.__msg.23) #11
  %tobool55.not.i = icmp eq ptr %44, null
  br i1 %tobool55.not.i, label %do.end37.i.cleanup_crit_edge, label %if.then56.i

do.end37.i.cleanup_crit_edge:                     ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then56.i:                                      ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @nsim_setup_prog_hw_checks.__msg.23, ptr %44, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end19.i.if.end47_crit_edge, %sw.bb43.if.end47_crit_edge
  %xdp_hw = getelementptr i8, ptr %dev, i32 2388
  %call48 = tail call fastcc i32 @nsim_xdp_set_prog(ptr noundef %add.ptr.i, ptr noundef %bpf, ptr noundef %xdp_hw)
  br label %cleanup

sw.bb49:                                          ; preds = %if.end30
  %bpf_map_accept = getelementptr i8, ptr %dev, i32 2400
  %46 = ptrtoint ptr %bpf_map_accept to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bpf_map_accept, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool50.not = icmp eq i8 %47, 0
  br i1 %tobool50.not, label %sw.bb49.cleanup_crit_edge, label %if.end52

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %sw.bb49
  %48 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %map_type.i, align 4
  %53 = add i32 %52, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %53)
  %54 = icmp ult i32 %53, -2
  br i1 %54, label %do.end.i, label %if.end24.i, !prof !96

do.end.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 492, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24.i:                                       ; preds = %if.end52
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %50, i32 0, i32 6
  %55 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp26.i = icmp ugt i32 %56, 2
  br i1 %cmp26.i, label %if.end24.i.cleanup_crit_edge, label %if.end28.i

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28.i:                                       ; preds = %if.end24.i
  %map_flags.i = getelementptr inbounds %struct.bpf_map, ptr %50, i32 0, i32 8
  %57 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %map_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool30.not.i = icmp eq i32 %58, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end28.i.cleanup_crit_edge

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32.i:                                       ; preds = %if.end28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 1052096, i32 noundef 124) #15
  %tobool33.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool33.not.i, label %if.end32.i.cleanup_crit_edge, label %if.end35.i

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35.i:                                       ; preds = %if.end32.i
  %dev_priv.i84 = getelementptr inbounds %struct.bpf_offloaded_map, ptr %50, i32 0, i32 3
  %60 = ptrtoint ptr %dev_priv.i84 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i, ptr %dev_priv.i84, align 8
  %61 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i, ptr %call7.i.i.i, align 8
  %map37.i = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %map37.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %50, ptr %map37.i, align 4
  %mutex.i = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @nsim_bpf_map_alloc.__key) #11
  %63 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %map_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp43.i = icmp eq i32 %64, 2
  br i1 %cmp43.i, label %for.cond.preheader.i, label %if.end35.i.if.end55.i_crit_edge

if.end35.i.if.end55.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

for.cond.preheader.i:                             ; preds = %if.end35.i
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %50, i32 0, i32 4
  %value_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %50, i32 0, i32 5
  %65 = ptrtoint ptr %dev_priv.i84 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_priv.i84, align 8
  %67 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %key_size.i.i, align 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %68, i32 noundef 1051840) #16
  %arrayidx.i.i = getelementptr %struct.nsim_bpf_bound_map, ptr %66, i32 0, i32 3, i32 0
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call9.i.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.cleanup.i_crit_edge, label %if.end8.i59.i.i

for.cond.preheader.i.cleanup.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end8.i59.i.i:                                  ; preds = %for.cond.preheader.i
  %70 = ptrtoint ptr %value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %value_size.i.i, align 4
  %call9.i58.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %71, i32 noundef 1051840) #16
  %value.i.i = getelementptr %struct.nsim_bpf_bound_map, ptr %66, i32 0, i32 3, i32 0, i32 1
  %72 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call9.i58.i.i, ptr %value.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %call9.i58.i.i, null
  br i1 %tobool12.not.i.i, label %if.end8.i59.i.i.if.then13.i.i_crit_edge, label %for.inc.i

if.end8.i59.i.i.if.then13.i.i_crit_edge:          ; preds = %if.end8.i59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end8.i59.i.i.1.if.then13.i.i_crit_edge, %if.end8.i59.i.i.if.then13.i.i_crit_edge
  %arrayidx.i.i.lcssa114 = phi ptr [ %arrayidx.i.i, %if.end8.i59.i.i.if.then13.i.i_crit_edge ], [ %arrayidx.i.i.1, %if.end8.i59.i.i.1.if.then13.i.i_crit_edge ]
  %73 = ptrtoint ptr %arrayidx.i.i.lcssa114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i.lcssa114, align 4
  tail call void @kfree(ptr noundef %74) #11
  %75 = ptrtoint ptr %arrayidx.i.i.lcssa114 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx.i.i.lcssa114, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.inc.i.cleanup.i_crit_edge, %if.then13.i.i, %for.cond.preheader.i.cleanup.i_crit_edge
  %cmp45.i118 = phi i1 [ %tobool12.not.i.i, %if.then13.i.i ], [ %tobool.not.i.i, %for.inc.i.cleanup.i_crit_edge ], [ %tobool.not.i.i, %for.cond.preheader.i.cleanup.i_crit_edge ]
  br i1 %cmp45.i118, label %cleanup.i.while.end.i_crit_edge, label %while.body.lr.ph.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  %entry57.i = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 3
  %value62.i = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %76 = ptrtoint ptr %entry57.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %entry57.i, align 4
  tail call void @kfree(ptr noundef %77) #11
  %78 = ptrtoint ptr %value62.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %value62.i, align 8
  tail call void @kfree(ptr noundef %79) #11
  br label %while.end.i

for.inc.i:                                        ; preds = %if.end8.i59.i.i
  %arrayidx.i = getelementptr %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 3, i32 0
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %81, align 4
  %value.i = getelementptr %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %83 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %value.i, align 8
  %85 = ptrtoint ptr %value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %value_size.i.i, align 4
  %87 = call ptr @memset(ptr %84, i32 0, i32 %86)
  %88 = ptrtoint ptr %dev_priv.i84 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_priv.i84, align 8
  %90 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %key_size.i.i, align 16
  %call9.i.i.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %91, i32 noundef 1051840) #16
  %arrayidx.i.i.1 = getelementptr %struct.nsim_bpf_bound_map, ptr %89, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call9.i.i.i.1, ptr %arrayidx.i.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %call9.i.i.i.1, null
  br i1 %tobool.not.i.i.1, label %for.inc.i.cleanup.i_crit_edge, label %if.end8.i59.i.i.1

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end8.i59.i.i.1:                                ; preds = %for.inc.i
  %93 = ptrtoint ptr %value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %value_size.i.i, align 4
  %call9.i58.i.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %94, i32 noundef 1051840) #16
  %value.i.i.1 = getelementptr %struct.nsim_bpf_bound_map, ptr %89, i32 0, i32 3, i32 1, i32 1
  %95 = ptrtoint ptr %value.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call9.i58.i.i.1, ptr %value.i.i.1, align 4
  %tobool12.not.i.i.1 = icmp eq ptr %call9.i58.i.i.1, null
  br i1 %tobool12.not.i.i.1, label %if.end8.i59.i.i.1.if.then13.i.i_crit_edge, label %for.inc.i.1

if.end8.i59.i.i.1.if.then13.i.i_crit_edge:        ; preds = %if.end8.i59.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.i

for.inc.i.1:                                      ; preds = %if.end8.i59.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.1 = getelementptr %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.1, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %97, align 4
  %value.i.1 = getelementptr %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 1
  %99 = ptrtoint ptr %value.i.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %value.i.1, align 8
  %101 = ptrtoint ptr %value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %value_size.i.i, align 4
  %103 = call ptr @memset(ptr %100, i32 0, i32 %102)
  br label %if.end55.i

if.end55.i:                                       ; preds = %for.inc.i.1, %if.end35.i.if.end55.i_crit_edge
  %dev_ops.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %50, i32 0, i32 2
  %104 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @nsim_bpf_map_ops, ptr %dev_ops.i, align 4
  %l.i = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 4
  %nsim_dev.i = getelementptr i8, ptr %dev, i32 2308
  %105 = ptrtoint ptr %nsim_dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %nsim_dev.i, align 4
  %bpf_bound_maps.i = getelementptr inbounds %struct.nsim_dev, ptr %106, i32 0, i32 16
  %prev.i.i = getelementptr inbounds %struct.nsim_dev, ptr %106, i32 0, i32 16, i32 1
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i, ptr noundef %108, ptr noundef %bpf_bound_maps.i) #11
  br i1 %call.i.i.i, label %if.end.i.i97.i, label %if.end55.i.cleanup_crit_edge

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i97.i:                                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %l.i, ptr %prev.i.i, align 4
  %110 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %bpf_bound_maps.i, ptr %l.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i.i, align 8
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %l.i, ptr %108, align 4
  br label %cleanup

while.end.i:                                      ; preds = %while.body.lr.ph.i, %cleanup.i.while.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

sw.bb54:                                          ; preds = %if.end30
  %113 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %dev_priv.i86 = getelementptr inbounds %struct.bpf_offloaded_map, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %dev_priv.i86 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev_priv.i86, align 8
  %arrayidx.i87 = getelementptr %struct.nsim_bpf_bound_map, ptr %117, i32 0, i32 3, i32 0
  %118 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i87, align 4
  tail call void @kfree(ptr noundef %119) #11
  %value.i88 = getelementptr %struct.nsim_bpf_bound_map, ptr %117, i32 0, i32 3, i32 0, i32 1
  %120 = ptrtoint ptr %value.i88 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %value.i88, align 4
  tail call void @kfree(ptr noundef %121) #11
  %arrayidx.1.i = getelementptr %struct.nsim_bpf_bound_map, ptr %117, i32 0, i32 3, i32 1
  %122 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %123) #11
  %value.1.i = getelementptr %struct.nsim_bpf_bound_map, ptr %117, i32 0, i32 3, i32 1, i32 1
  %124 = ptrtoint ptr %value.1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %value.1.i, align 4
  tail call void @kfree(ptr noundef %125) #11
  %l.i89 = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %117, i32 0, i32 4
  %call.i.i.i90 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.i89) #11
  br i1 %call.i.i.i90, label %if.end.i.i.i91, label %sw.bb54.nsim_bpf_map_free.exit_crit_edge

sw.bb54.nsim_bpf_map_free.exit_crit_edge:         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_bpf_map_free.exit

if.end.i.i.i91:                                   ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %117, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i.i, align 4
  %128 = ptrtoint ptr %l.i89 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %l.i89, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev1.i.i.i.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %127, align 4
  br label %nsim_bpf_map_free.exit

nsim_bpf_map_free.exit:                           ; preds = %if.end.i.i.i91, %sw.bb54.nsim_bpf_map_free.exit_crit_edge
  %132 = ptrtoint ptr %l.i89 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %l.i89, ptr %l.i89, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %117, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %l.i89, ptr %prev.i3.i.i, align 4
  %mutex.i92 = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %117, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mutex.i92) #11
  tail call void @kfree(ptr noundef %117) #11
  br label %cleanup

cleanup:                                          ; preds = %nsim_bpf_map_free.exit, %while.end.i, %if.end.i.i97.i, %if.end55.i.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %do.end.i, %sw.bb49.cleanup_crit_edge, %if.end47, %if.then56.i, %do.end37.i.cleanup_crit_edge, %if.then14.i, %do.body10.i.cleanup_crit_edge, %if.then5.i, %do.body.i82.cleanup_crit_edge, %if.end41, %if.then11.i, %do.body7.i.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nsim_bpf_map_free.exit ], [ %call48, %if.end47 ], [ %call42, %if.end41 ], [ -95, %sw.bb49.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ -22, %do.end.i ], [ -12, %while.end.i ], [ -12, %if.end24.i.cleanup_crit_edge ], [ -22, %if.end28.i.cleanup_crit_edge ], [ -12, %if.end32.i.cleanup_crit_edge ], [ 0, %if.end55.i.cleanup_crit_edge ], [ 0, %if.end.i.i97.i ], [ -22, %if.then4.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.then11.i ], [ -22, %do.body7.i.cleanup_crit_edge ], [ -22, %if.then5.i ], [ -22, %do.body.i82.cleanup_crit_edge ], [ -22, %if.then14.i ], [ -22, %do.body10.i.cleanup_crit_edge ], [ -22, %if.then56.i ], [ -22, %do.end37.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsim_xdp_set_prog(ptr nocapture noundef %ns, ptr noundef %bpf, ptr noundef %xdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpf, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.if.end25_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true6
  ]

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %entry
  %bpf_xdpdrv_accept = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 13
  %3 = ptrtoint ptr %bpf_xdpdrv_accept to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bpf_xdpdrv_accept, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.body:                                          ; preds = %land.lhs.true
  %extack = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_xdp_set_prog.__msg) #11
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nsim_xdp_set_prog.__msg, ptr %6, align 4
  br label %cleanup

land.lhs.true6:                                   ; preds = %entry
  %bpf_xdpoffload_accept = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 14
  %8 = ptrtoint ptr %bpf_xdpoffload_accept to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bpf_xdpoffload_accept, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %do.body9, label %if.then21

do.body9:                                         ; preds = %land.lhs.true6
  %extack11 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %extack11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack11, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_xdp_set_prog.__msg.20) #11
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %do.body9.cleanup_crit_edge, label %if.then13

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nsim_xdp_set_prog.__msg.20, ptr %11, align 4
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true6
  %xdp_hw.i.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 10
  %13 = ptrtoint ptr %xdp_hw.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdp_hw.i.i, align 4
  %tobool.i.i = icmp ne ptr %14, null
  br i1 %tobool.i.i, label %if.then21.if.end11.i_crit_edge, label %land.lhs.true.i

if.then21.if.end11.i_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then21
  %prog.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prog.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end25_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end25_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %bpf_offloaded.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 7
  %17 = ptrtoint ptr %bpf_offloaded.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bpf_offloaded.i, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.if.end11.i_crit_edge, label %do.body.i

land.lhs.true5.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

do.body.i:                                        ; preds = %land.lhs.true5.i
  %extack.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_xdp_offload_prog.__msg) #11
  %tobool8.not.i = icmp eq ptr %20, null
  br i1 %tobool8.not.i, label %do.body.i.cleanup_crit_edge, label %if.then9.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nsim_xdp_offload_prog.__msg, ptr %20, align 4
  br label %cleanup

if.end11.i:                                       ; preds = %land.lhs.true5.i.if.end11.i_crit_edge, %if.then21.if.end11.i_crit_edge
  %prog12.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %prog12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prog12.i, align 4
  %bpf_offloaded.i.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 7
  %24 = ptrtoint ptr %bpf_offloaded.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bpf_offloaded.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.end11.i.nsim_prog_set_loaded.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end11.i.nsim_prog_set_loaded.exit.i.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_prog_set_loaded.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end11.i
  %aux.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %aux.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aux.i.i.i, align 4
  %offload.i.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %27, i32 0, i32 48
  %28 = ptrtoint ptr %offload.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %offload.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.nsim_prog_set_loaded.exit.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.nsim_prog_set_loaded.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_prog_set_loaded.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i.i.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i.i, align 4
  %is_loaded.i.i.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %is_loaded.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %is_loaded.i.i.i, align 4
  br label %nsim_prog_set_loaded.exit.i.i

nsim_prog_set_loaded.exit.i.i:                    ; preds = %if.end.i.i.i, %lor.lhs.false.i.i.i.nsim_prog_set_loaded.exit.i.i_crit_edge, %if.end11.i.nsim_prog_set_loaded.exit.i.i_crit_edge
  %33 = ptrtoint ptr %bpf_offloaded.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bpf_offloaded.i.i, align 4
  %tobool.i27.i = icmp eq ptr %34, null
  %cmp.not.i.i = xor i1 %tobool.i.i, %tobool.i27.i
  br i1 %cmp.not.i.i, label %nsim_prog_set_loaded.exit.i.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !95

nsim_prog_set_loaded.exit.i.i.if.end.i.i_crit_edge: ; preds = %nsim_prog_set_loaded.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %nsim_prog_set_loaded.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond.i.i = select i1 %tobool.i.i, ptr @.str.17, ptr @.str.18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond.i.i) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %nsim_prog_set_loaded.exit.i.i.if.end.i.i_crit_edge
  %35 = ptrtoint ptr %bpf_offloaded.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %23, ptr %bpf_offloaded.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %23, null
  br i1 %tobool30.not.i.i, label %cond.end.thread.i.i, label %lor.lhs.false.i5.i.i

cond.end.thread.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bpf_offloaded_id11.i.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 8
  %36 = ptrtoint ptr %bpf_offloaded_id11.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %bpf_offloaded_id11.i.i, align 8
  br label %if.end25

lor.lhs.false.i5.i.i:                             ; preds = %if.end.i.i
  %aux.i.i = getelementptr inbounds %struct.bpf_prog, ptr %23, i32 0, i32 10
  %37 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aux.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id.i.i, align 8
  %bpf_offloaded_id.i.i = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 8
  %41 = ptrtoint ptr %bpf_offloaded_id.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %bpf_offloaded_id.i.i, align 8
  %42 = load ptr, ptr %aux.i.i, align 4
  %offload.i3.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %42, i32 0, i32 48
  %43 = ptrtoint ptr %offload.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %offload.i3.i.i, align 8
  %tobool1.not.i4.i.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i4.i.i, label %lor.lhs.false.i5.i.i.if.end25_crit_edge, label %if.end.i8.i.i

lor.lhs.false.i5.i.i.if.end25_crit_edge:          ; preds = %lor.lhs.false.i5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.i8.i.i:                                    ; preds = %lor.lhs.false.i5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev_priv.i6.i.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %dev_priv.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_priv.i6.i.i, align 4
  %is_loaded.i7.i.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %is_loaded.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %is_loaded.i7.i.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end.i8.i.i, %lor.lhs.false.i5.i.i.if.end25_crit_edge, %cond.end.thread.i.i, %land.lhs.true.i.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %entry.if.end25_crit_edge
  tail call void @xdp_attachment_setup(ptr noundef %xdp, ptr noundef %bpf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then9.i, %do.body.i.cleanup_crit_edge, %if.then13, %do.body9.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then13 ], [ -95, %do.body9.cleanup_crit_edge ], [ -16, %if.then9.i ], [ -16, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_bpf_dev_init(ptr noundef %nsim_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_bound_progs = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 15
  %0 = ptrtoint ptr %bpf_bound_progs to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %bpf_bound_progs, ptr %bpf_bound_progs, align 4
  %prev.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 15, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bpf_bound_progs, ptr %prev.i, align 4
  %bpf_bound_maps = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 16
  %2 = ptrtoint ptr %bpf_bound_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %bpf_bound_maps, ptr %bpf_bound_maps, align 4
  %prev.i32 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bpf_bound_maps, ptr %prev.i32, align 4
  %ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 3
  %4 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef %5) #11
  %ddir_bpf_bound_progs = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 13
  %6 = ptrtoint ptr %ddir_bpf_bound_progs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %ddir_bpf_bound_progs, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @bpf_offload_dev_create(ptr noundef nonnull @nsim_bpf_dev_ops, ptr noundef %nsim_dev) #11
  %bpf_dev = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 9
  %8 = ptrtoint ptr %bpf_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %bpf_dev, align 4
  %cmp.i.i.not = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call5 to i32
  br i1 %cmp.i.i.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bpf_bind_accept = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 10
  %10 = ptrtoint ptr %bpf_bind_accept to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bpf_bind_accept, align 4
  %11 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddir, align 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef %12, ptr noundef %bpf_bind_accept) #11
  %13 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddir, align 4
  %bpf_bind_verifier_delay = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 12
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %14, ptr noundef %bpf_bind_verifier_delay) #11
  %bpf_bind_verifier_accept = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 11
  %15 = ptrtoint ptr %bpf_bind_verifier_accept to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bpf_bind_verifier_accept, align 1
  %16 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddir, align 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %17, ptr noundef %bpf_bind_verifier_accept) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %if.end9 ], [ %9, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_offload_dev_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_bpf_dev_exit(ptr noundef %nsim_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_bound_progs = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 15
  %0 = ptrtoint ptr %bpf_bound_progs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bpf_bound_progs, align 4
  %cmp.i.not = icmp eq ptr %1, %bpf_bound_progs
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !95

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 612, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bpf_bound_maps = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 16
  %2 = ptrtoint ptr %bpf_bound_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bpf_bound_maps, align 4
  %cmp.i59.not = icmp eq ptr %3, %bpf_bound_maps
  br i1 %cmp.i59.not, label %if.end.if.end47_crit_edge, label %do.end41, !prof !95

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 613, i32 noundef 9, ptr noundef null) #11
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %bpf_dev = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 9
  %4 = ptrtoint ptr %bpf_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf_dev, align 4
  tail call void @bpf_offload_dev_destroy(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_offload_dev_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_bpf_init(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev_port = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev_port, align 8
  %ddir1 = getelementptr inbounds %struct.nsim_dev_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ddir1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddir1, align 4
  %nsim_dev = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 1
  %4 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsim_dev, align 4
  %bpf_dev = getelementptr inbounds %struct.nsim_dev, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %bpf_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bpf_dev, align 4
  %8 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns, align 8
  %call = tail call i32 @bpf_offload_dev_netdev_register(ptr noundef %7, ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bpf_offloaded_id = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 8
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %3, ptr noundef %bpf_offloaded_id) #11
  %bpf_tc_accept = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 11
  %10 = ptrtoint ptr %bpf_tc_accept to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bpf_tc_accept, align 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %bpf_tc_accept) #11
  %bpf_tc_non_bound_accept = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 12
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %bpf_tc_non_bound_accept) #11
  %bpf_xdpdrv_accept = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 13
  %11 = ptrtoint ptr %bpf_xdpdrv_accept to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bpf_xdpdrv_accept, align 2
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %bpf_xdpdrv_accept) #11
  %bpf_xdpoffload_accept = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 14
  %12 = ptrtoint ptr %bpf_xdpoffload_accept to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bpf_xdpoffload_accept, align 1
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %bpf_xdpoffload_accept) #11
  %bpf_map_accept = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 15
  %13 = ptrtoint ptr %bpf_map_accept to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %bpf_map_accept, align 8
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.15, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %bpf_map_accept) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_offload_dev_netdev_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_bpf_uninit(ptr nocapture noundef readonly %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 9
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !95

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 651, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %xdp_hw = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 10
  %2 = ptrtoint ptr %xdp_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_hw, align 4
  %tobool22.not = icmp eq ptr %3, null
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !95

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 652, i32 noundef 9, ptr noundef null) #11
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %bpf_offloaded = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 7
  %4 = ptrtoint ptr %bpf_offloaded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf_offloaded, align 4
  %tobool53.not = icmp eq ptr %5, null
  br i1 %tobool53.not, label %if.end44.if.end75_crit_edge, label %do.end69, !prof !95

if.end44.if.end75_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.end69:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 653, i32 noundef 9, ptr noundef null) #11
  br label %if.end75

if.end75:                                         ; preds = %do.end69, %if.end44.if.end75_crit_edge
  %nsim_dev = getelementptr inbounds %struct.netdevsim, ptr %ns, i32 0, i32 1
  %6 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsim_dev, align 4
  %bpf_dev = getelementptr inbounds %struct.nsim_dev, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %bpf_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bpf_dev, align 4
  %10 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns, align 8
  tail call void @bpf_offload_dev_netdev_unregister(ptr noundef %9, ptr noundef %11) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_offload_dev_netdev_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_attachment_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_offload_dev_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_map_get_next_key(ptr nocapture noundef readonly %offmap, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 3
  %0 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv, align 8
  %mutex = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv, align 8
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.nsim_bpf_bound_map, ptr %3, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.for.inc.i_crit_edge, label %nsim_map_key_match.exit.i

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nsim_map_key_match.exit.i:                        ; preds = %if.then
  %6 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size.i.i, align 16
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %key, ptr nonnull %5, i32 %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool3.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool3.not.i.i, label %nsim_map_key_match.exit.i.for.body.preheader_crit_edge, label %nsim_map_key_match.exit.i.for.inc.i_crit_edge

nsim_map_key_match.exit.i.for.inc.i_crit_edge:    ; preds = %nsim_map_key_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nsim_map_key_match.exit.i.for.body.preheader_crit_edge: ; preds = %nsim_map_key_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.inc.i:                                        ; preds = %nsim_map_key_match.exit.i.for.inc.i_crit_edge, %if.then.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.nsim_bpf_bound_map, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.1.i, label %for.inc.i.for.body.preheader_crit_edge, label %nsim_map_key_match.exit.1.i

for.inc.i.for.body.preheader_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

nsim_map_key_match.exit.1.i:                      ; preds = %for.inc.i
  %10 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_size.i.i, align 16
  %bcmp.i.1.i = tail call i32 @bcmp(ptr nonnull %key, ptr nonnull %9, i32 %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.1.i)
  %tobool3.not.i.1.i = icmp eq i32 %bcmp.i.1.i, 0
  br i1 %tobool3.not.i.1.i, label %nsim_map_key_match.exit.1.i..loopexit_crit_edge, label %nsim_map_key_match.exit.1.i.for.body.preheader_crit_edge

nsim_map_key_match.exit.1.i.for.body.preheader_crit_edge: ; preds = %nsim_map_key_match.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

nsim_map_key_match.exit.1.i..loopexit_crit_edge:  ; preds = %nsim_map_key_match.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.loopexit

for.body.preheader:                               ; preds = %nsim_map_key_match.exit.1.i.for.body.preheader_crit_edge, %for.inc.i.for.body.preheader_crit_edge, %nsim_map_key_match.exit.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  %cmp3.ph = phi i1 [ true, %for.inc.i.for.body.preheader_crit_edge ], [ true, %nsim_map_key_match.exit.1.i.for.body.preheader_crit_edge ], [ true, %entry.for.body.preheader_crit_edge ], [ false, %nsim_map_key_match.exit.i.for.body.preheader_crit_edge ]
  %idx.236.ph = phi i32 [ 0, %for.inc.i.for.body.preheader_crit_edge ], [ 0, %nsim_map_key_match.exit.1.i.for.body.preheader_crit_edge ], [ 0, %entry.for.body.preheader_crit_edge ], [ 1, %nsim_map_key_match.exit.i.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %cmp3 = phi i1 [ false, %for.inc.for.body_crit_edge ], [ %cmp3.ph, %for.body.preheader ]
  %idx.236 = phi i32 [ 1, %for.inc.for.body_crit_edge ], [ %idx.236.ph, %for.body.preheader ]
  %arrayidx = getelementptr %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 3, i32 %idx.236
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc..loopexit_crit_edge

for.inc..loopexit_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 4
  %14 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_size, align 16
  %16 = call ptr @memcpy(ptr %next_key, ptr %13, i32 %15)
  br label %.loopexit

.loopexit:                                        ; preds = %for.end, %for.inc..loopexit_crit_edge, %nsim_map_key_match.exit.1.i..loopexit_crit_edge
  %17 = phi i32 [ 0, %for.end ], [ -2, %nsim_map_key_match.exit.1.i..loopexit_crit_edge ], [ -2, %for.inc..loopexit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_map_lookup_elem(ptr nocapture noundef readonly %offmap, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 3
  %0 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv, align 8
  %mutex = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %2 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv, align 8
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.nsim_bpf_bound_map, ptr %3, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.for.inc.i_crit_edge, label %nsim_map_key_match.exit.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nsim_map_key_match.exit.i:                        ; preds = %entry
  %6 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size.i.i, align 16
  %bcmp.i.i = tail call i32 @bcmp(ptr %key, ptr nonnull %5, i32 %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool3.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool3.not.i.i, label %nsim_map_key_match.exit.i.if.end_crit_edge, label %nsim_map_key_match.exit.i.for.inc.i_crit_edge

nsim_map_key_match.exit.i.for.inc.i_crit_edge:    ; preds = %nsim_map_key_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nsim_map_key_match.exit.i.if.end_crit_edge:       ; preds = %nsim_map_key_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %nsim_map_key_match.exit.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.nsim_bpf_bound_map, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.1.i, label %for.inc.i._crit_edge, label %nsim_map_key_match.exit.1.i

for.inc.i._crit_edge:                             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %17

nsim_map_key_match.exit.1.i:                      ; preds = %for.inc.i
  %10 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_size.i.i, align 16
  %bcmp.i.1.i = tail call i32 @bcmp(ptr %key, ptr nonnull %9, i32 %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.1.i)
  %tobool3.not.i.1.i = icmp eq i32 %bcmp.i.1.i, 0
  br i1 %tobool3.not.i.1.i, label %nsim_map_key_match.exit.1.i.if.end_crit_edge, label %nsim_map_key_match.exit.1.i._crit_edge

nsim_map_key_match.exit.1.i._crit_edge:           ; preds = %nsim_map_key_match.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %17

nsim_map_key_match.exit.1.i.if.end_crit_edge:     ; preds = %nsim_map_key_match.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %nsim_map_key_match.exit.1.i.if.end_crit_edge, %nsim_map_key_match.exit.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %nsim_map_key_match.exit.1.i.if.end_crit_edge ], [ 0, %nsim_map_key_match.exit.i.if.end_crit_edge ]
  %value2 = getelementptr %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 3, i32 %retval.0.i.ph, i32 1
  %12 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %value2, align 4
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 5
  %14 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value_size, align 4
  %16 = call ptr @memcpy(ptr %value, ptr %13, i32 %15)
  br label %17

17:                                               ; preds = %if.end, %nsim_map_key_match.exit.1.i._crit_edge, %for.inc.i._crit_edge
  %18 = phi i32 [ 0, %if.end ], [ -2, %for.inc.i._crit_edge ], [ -2, %nsim_map_key_match.exit.1.i._crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_map_update_elem(ptr nocapture noundef readonly %offmap, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 3
  %0 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv, align 8
  %mutex = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %2 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv, align 8
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.nsim_bpf_bound_map, ptr %3, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.for.inc.i_crit_edge, label %nsim_map_key_match.exit.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nsim_map_key_match.exit.i:                        ; preds = %entry
  %6 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size.i.i, align 16
  %bcmp.i.i = tail call i32 @bcmp(ptr %key, ptr nonnull %5, i32 %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool3.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool3.not.i.i, label %nsim_map_key_match.exit.i.if.end_crit_edge, label %nsim_map_key_match.exit.i.for.inc.i_crit_edge

nsim_map_key_match.exit.i.for.inc.i_crit_edge:    ; preds = %nsim_map_key_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nsim_map_key_match.exit.i.if.end_crit_edge:       ; preds = %nsim_map_key_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %nsim_map_key_match.exit.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.nsim_bpf_bound_map, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.1.i, label %for.inc.i.nsim_map_key_find.exit_crit_edge, label %nsim_map_key_match.exit.1.i

for.inc.i.nsim_map_key_find.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_map_key_find.exit

nsim_map_key_match.exit.1.i:                      ; preds = %for.inc.i
  %10 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_size.i.i, align 16
  %bcmp.i.1.i = tail call i32 @bcmp(ptr %key, ptr nonnull %9, i32 %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.1.i)
  %tobool3.not.i.1.i = icmp eq i32 %bcmp.i.1.i, 0
  br i1 %tobool3.not.i.1.i, label %nsim_map_key_match.exit.1.i.if.end_crit_edge, label %nsim_map_key_match.exit.1.i.nsim_map_key_find.exit_crit_edge

nsim_map_key_match.exit.1.i.nsim_map_key_find.exit_crit_edge: ; preds = %nsim_map_key_match.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_map_key_find.exit

nsim_map_key_match.exit.1.i.if.end_crit_edge:     ; preds = %nsim_map_key_match.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

nsim_map_key_find.exit:                           ; preds = %nsim_map_key_match.exit.1.i.nsim_map_key_find.exit_crit_edge, %for.inc.i.nsim_map_key_find.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %cmp1 = icmp eq i64 %flags, 2
  br i1 %cmp1, label %nsim_map_key_find.exit.exit_unlock_crit_edge, label %for.body.preheader

nsim_map_key_find.exit.exit_unlock_crit_edge:     ; preds = %nsim_map_key_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

for.body.preheader:                               ; preds = %nsim_map_key_find.exit
  %arrayidx = getelementptr %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 3, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.preheader.if.end8.i.i_crit_edge, label %for.inc

for.body.preheader.if.end8.i.i_crit_edge:         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end:                                           ; preds = %nsim_map_key_match.exit.1.i.if.end_crit_edge, %nsim_map_key_match.exit.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %nsim_map_key_match.exit.1.i.if.end_crit_edge ], [ 0, %nsim_map_key_match.exit.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %cmp4 = icmp eq i64 %flags, 1
  br i1 %cmp4, label %if.end.exit_unlock_crit_edge, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %15, null
  br i1 %tobool.not.1, label %for.inc.if.end8.i.i_crit_edge, label %for.inc.exit_unlock_crit_edge

for.inc.exit_unlock_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

for.inc.if.end8.i.i_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.inc.if.end8.i.i_crit_edge, %for.body.preheader.if.end8.i.i_crit_edge
  %idx.076.lcssa = phi i32 [ 0, %for.body.preheader.if.end8.i.i_crit_edge ], [ 1, %for.inc.if.end8.i.i_crit_edge ]
  %16 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_size.i.i, align 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 1051840) #16
  %arrayidx.i53 = getelementptr %struct.nsim_bpf_bound_map, ptr %3, i32 0, i32 3, i32 %idx.076.lcssa
  %18 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %arrayidx.i53, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.exit_unlock_crit_edge, label %if.end8.i59.i

if.end8.i.i.exit_unlock_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

if.end8.i59.i:                                    ; preds = %if.end8.i.i
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 5
  %19 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value_size.i, align 4
  %call9.i58.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 1051840) #16
  %value.i = getelementptr %struct.nsim_bpf_bound_map, ptr %3, i32 0, i32 3, i32 %idx.076.lcssa, i32 1
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i58.i, ptr %value.i, align 4
  %tobool12.not.i = icmp eq ptr %call9.i58.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end8.i59.i.if.end21_crit_edge

if.end8.i59.i.if.end21_crit_edge:                 ; preds = %if.end8.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then13.i:                                      ; preds = %if.end8.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i53, align 4
  tail call void @kfree(ptr noundef %23) #11
  %24 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx.i53, align 4
  br label %exit_unlock

if.end21:                                         ; preds = %if.end8.i59.i.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %idx.1 = phi i32 [ %retval.0.i.ph, %if.end.if.end21_crit_edge ], [ %idx.076.lcssa, %if.end8.i59.i.if.end21_crit_edge ]
  %arrayidx23 = getelementptr %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 3, i32 %idx.1
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx23, align 4
  %27 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key_size.i.i, align 16
  %29 = call ptr @memcpy(ptr %26, ptr %key, i32 %28)
  %value27 = getelementptr %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 3, i32 %idx.1, i32 1
  %30 = ptrtoint ptr %value27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value27, align 4
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 5
  %32 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value_size, align 4
  %34 = call ptr @memcpy(ptr %31, ptr %value, i32 %33)
  br label %exit_unlock

exit_unlock:                                      ; preds = %if.end21, %if.then13.i, %if.end8.i.i.exit_unlock_crit_edge, %for.inc.exit_unlock_crit_edge, %if.end.exit_unlock_crit_edge, %nsim_map_key_find.exit.exit_unlock_crit_edge
  %err.1 = phi i32 [ 0, %if.end21 ], [ -2, %nsim_map_key_find.exit.exit_unlock_crit_edge ], [ -17, %if.end.exit_unlock_crit_edge ], [ -12, %if.then13.i ], [ -12, %if.end8.i.i.exit_unlock_crit_edge ], [ -7, %for.inc.exit_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_map_delete_elem(ptr nocapture noundef readonly %offmap, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 3
  %0 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv, align 8
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 3
  %2 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %4 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv, align 8
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.nsim_bpf_bound_map, ptr %5, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.for.inc.i_crit_edge, label %nsim_map_key_match.exit.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nsim_map_key_match.exit.i:                        ; preds = %if.end
  %8 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_size.i.i, align 16
  %bcmp.i.i = tail call i32 @bcmp(ptr %key, ptr nonnull %7, i32 %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool3.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool3.not.i.i, label %nsim_map_key_match.exit.i.if.end9_crit_edge, label %nsim_map_key_match.exit.i.for.inc.i_crit_edge

nsim_map_key_match.exit.i.for.inc.i_crit_edge:    ; preds = %nsim_map_key_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nsim_map_key_match.exit.i.if.end9_crit_edge:      ; preds = %nsim_map_key_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.inc.i:                                        ; preds = %nsim_map_key_match.exit.i.for.inc.i_crit_edge, %if.end.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.nsim_bpf_bound_map, ptr %5, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.1.i, label %for.inc.i.cleanup.sink.split_crit_edge, label %nsim_map_key_match.exit.1.i

for.inc.i.cleanup.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

nsim_map_key_match.exit.1.i:                      ; preds = %for.inc.i
  %12 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_size.i.i, align 16
  %bcmp.i.1.i = tail call i32 @bcmp(ptr %key, ptr nonnull %11, i32 %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.1.i)
  %tobool3.not.i.1.i = icmp eq i32 %bcmp.i.1.i, 0
  br i1 %tobool3.not.i.1.i, label %nsim_map_key_match.exit.1.i.if.end9_crit_edge, label %nsim_map_key_match.exit.1.i.cleanup.sink.split_crit_edge

nsim_map_key_match.exit.1.i.cleanup.sink.split_crit_edge: ; preds = %nsim_map_key_match.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

nsim_map_key_match.exit.1.i.if.end9_crit_edge:    ; preds = %nsim_map_key_match.exit.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %nsim_map_key_match.exit.1.i.if.end9_crit_edge, %nsim_map_key_match.exit.i.if.end9_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %nsim_map_key_match.exit.1.i.if.end9_crit_edge ], [ 0, %nsim_map_key_match.exit.i.if.end9_crit_edge ]
  %arrayidx = getelementptr %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 3, i32 %retval.0.i.ph
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %15) #11
  %value = getelementptr %struct.nsim_bpf_bound_map, ptr %1, i32 0, i32 3, i32 %retval.0.i.ph, i32 1
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value, align 4
  tail call void @kfree(ptr noundef %17) #11
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 0, ptr %arrayidx, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %nsim_map_key_match.exit.1.i.cleanup.sink.split_crit_edge, %for.inc.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end9 ], [ -2, %for.inc.i.cleanup.sink.split_crit_edge ], [ -2, %nsim_map_key_match.exit.1.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bpf_verify_insn(ptr noundef %env, i32 noundef %insn_idx, i32 noundef %prev_insn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %bpf_bind_verifier_delay = getelementptr inbounds %struct.nsim_dev, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %bpf_bind_verifier_delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bpf_bind_verifier_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %insn_idx)
  %tobool1.not = icmp eq i32 %insn_idx, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prog, align 8
  %len = getelementptr inbounds %struct.bpf_prog, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %sub = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %insn_idx)
  %cmp = icmp eq i32 %sub, %insn_idx
  br i1 %cmp, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.25) #11
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %bpf_bind_verifier_accept = getelementptr inbounds %struct.nsim_dev, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %bpf_bind_verifier_accept to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bpf_bind_verifier_accept, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool7.not, i32 -95, i32 0
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end10_crit_edge ], [ %spec.select, %if.then5 ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_bpf_finalize(ptr nocapture noundef readnone %env) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bpf_verifier_prep(ptr noundef %prog) #0 align 64 {
entry:
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offload, align 8
  %offdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offdev, align 4
  %call = tail call ptr @bpf_offload_dev_priv(ptr noundef %5) #11
  %bpf_bind_accept = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %bpf_bind_accept to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bpf_bind_accept, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #11
  %8 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.nsim_bpf_create_prog.exit_crit_edge, label %if.end.i

if.end.nsim_bpf_create_prog.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nsim_bpf_create_prog.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %call7.i.i.i, align 8
  %prog2.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prog2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %prog, ptr %prog2.i, align 4
  %state3.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %state3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.26, ptr %state3.i, align 4
  %prog_id_gen.i = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %prog_id_gen.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prog_id_gen.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %prog_id_gen.i, align 4
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.27, i32 noundef %14) #11
  %ddir_bpf_bound_progs.i = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 13
  %15 = ptrtoint ptr %ddir_bpf_bound_progs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddir_bpf_bound_progs.i, align 4
  %call6.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef %16) #11
  %ddir.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ddir.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6.i, ptr %ddir.i, align 8
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %call6.i to i32
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %nsim_bpf_create_prog.exit

if.end12.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aux, align 4
  %id.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %20, i32 0, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef %call6.i, ptr noundef %id.i) #11
  %21 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddir.i, align 8
  %call16.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef %22, ptr noundef %state3.i, ptr noundef nonnull @nsim_bpf_string_fops) #11
  %23 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddir.i, align 8
  %is_loaded.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %call7.i.i.i, i32 0, i32 4
  call void @debugfs_create_bool(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef %24, ptr noundef %is_loaded.i) #11
  %l.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %call7.i.i.i, i32 0, i32 5
  %bpf_bound_progs.i = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 15
  %prev.i.i = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %l.i, ptr noundef %26, ptr noundef %bpf_bound_progs.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.i.list_add_tail.exit.i_crit_edge

if.end12.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %l.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bpf_bound_progs.i, ptr %l.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i, align 8
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %l.i, ptr %26, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end12.i.list_add_tail.exit.i_crit_edge
  %31 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aux, align 4
  %offload.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %32, i32 0, i32 48
  %33 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %offload.i, align 8
  %dev_priv.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i, ptr %dev_priv.i, align 4
  br label %nsim_bpf_create_prog.exit

nsim_bpf_create_prog.exit:                        ; preds = %list_add_tail.exit.i, %if.then9.i, %if.end.nsim_bpf_create_prog.exit_crit_edge
  %retval.0.i = phi i32 [ %18, %if.then9.i ], [ 0, %list_add_tail.exit.i ], [ -12, %if.end.nsim_bpf_create_prog.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #11
  br label %cleanup

cleanup:                                          ; preds = %nsim_bpf_create_prog.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nsim_bpf_create_prog.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_bpf_translate(ptr nocapture noundef readonly %prog) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv, align 4
  %state1 = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.22, ptr %state1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_bpf_destroy_prog(ptr nocapture noundef readonly %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv, align 4
  %is_loaded = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %is_loaded to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_loaded, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !95

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.32) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ddir = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddir, align 4
  tail call void @debugfs_remove(ptr noundef %9) #11
  %l = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %5, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %5, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %l, align 4
  %prev.i = getelementptr inbounds %struct.nsim_bpf_bound_prog, ptr %5, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_verifier_log_write(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_offload_dev_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bpf_string_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nsim_bpf_string_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bpf_string_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @nsim_bpf_setup_tc_block_cb.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/bpf.c", i32 127, i32 3}
!2 = !{ptr @nsim_bpf_setup_tc_block_cb.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/netdevsim/bpf.c", i32 136, i32 3}
!4 = !{ptr @nsim_bpf_setup_tc_block_cb.__msg.2, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/netdevsim/bpf.c", i32 142, i32 3}
!6 = !{ptr @nsim_bpf_setup_tc_block_cb.__msg.3, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/netdevsim/bpf.c", i32 148, i32 3}
!8 = !{ptr @nsim_bpf_setup_tc_block_cb.__msg.4, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/netdevsim/bpf.c", i32 164, i32 4}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/netdevsim/bpf.c", i32 554, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/netdevsim/bpf.c", i32 589, i32 54}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/netdevsim/bpf.c", i32 600, i32 22}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/netdevsim/bpf.c", i32 602, i32 21}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/netdevsim/bpf.c", i32 605, i32 22}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/netdevsim/bpf.c", i32 627, i32 21}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/netdevsim/bpf.c", i32 631, i32 22}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/netdevsim/bpf.c", i32 633, i32 22}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/netdevsim/bpf.c", i32 636, i32 22}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/netdevsim/bpf.c", i32 639, i32 22}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/netdevsim/bpf.c", i32 643, i32 22}
!34 = !{ptr @tc_cls_can_offload_and_chain0.__msg, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../include/net/pkt_cls.h", i32 676, i32 3}
!36 = !{ptr @tc_can_offload_extack.__msg, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/netdevsim/bpf.c", i32 108, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nsim_setup_prog_checks.__msg, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../drivers/net/netdevsim/bpf.c", i32 296, i32 3}
!44 = !{ptr @nsim_setup_prog_checks.__msg.19, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../drivers/net/netdevsim/bpf.c", i32 300, i32 3}
!46 = !{ptr @nsim_xdp_set_prog.__msg, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../drivers/net/netdevsim/bpf.c", i32 199, i32 3}
!48 = !{ptr @nsim_xdp_set_prog.__msg.20, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../drivers/net/netdevsim/bpf.c", i32 203, i32 3}
!50 = !{ptr @nsim_xdp_offload_prog.__msg, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../drivers/net/netdevsim/bpf.c", i32 185, i32 3}
!52 = !{ptr @nsim_setup_prog_hw_checks.__msg, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../drivers/net/netdevsim/bpf.c", i32 315, i32 3}
!54 = !{ptr @nsim_setup_prog_hw_checks.__msg.21, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../drivers/net/netdevsim/bpf.c", i32 319, i32 3}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/netdevsim/bpf.c", i32 324, i32 6}
!58 = !{ptr @nsim_setup_prog_hw_checks.__msg.23, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../drivers/net/netdevsim/bpf.c", i32 325, i32 3}
!60 = !{ptr @nsim_bpf_map_alloc.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/net/netdevsim/bpf.c", i32 506, i32 2}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nsim_bpf_map_ops, !64, !"nsim_bpf_map_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/netdevsim/bpf.c", i32 478, i32 37}
!65 = !{ptr @nsim_bpf_dev_ops, !66, !"nsim_bpf_dev_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/netdevsim/bpf.c", i32 285, i32 42}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/netdevsim/bpf.c", i32 73, i32 3}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/netdevsim/bpf.c", i32 231, i32 17}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/netdevsim/bpf.c", i32 234, i32 16}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/netdevsim/bpf.c", i32 242, i32 21}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/netdevsim/bpf.c", i32 243, i32 22}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/netdevsim/bpf.c", i32 245, i32 22}
!79 = !{ptr @nsim_bpf_string_fops, !80, !"nsim_bpf_string_fops", i1 false, i1 false}
!80 = !{!"../drivers/net/netdevsim/bpf.c", i32 60, i32 1}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/netdevsim/bpf.c", i32 56, i32 20}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/netdevsim/bpf.c", i32 278, i32 2}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{!"branch_weights", i32 1, i32 2000}
