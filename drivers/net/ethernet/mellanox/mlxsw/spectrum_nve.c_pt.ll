; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_nve_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlxsw_sp_nve_mc_record_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_nve_mc_list_key = type { i16 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_nve = type { %struct.mlxsw_sp_nve_config, %struct.rhashtable, %struct.rhashtable, %struct.list_head, ptr, ptr, i32, [2 x i32], i32, i16 }
%struct.mlxsw_sp_nve_config = type { i32, i8, i8, i16, i32, i32, i32, %union.mlxsw_sp_l3addr }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.mlxsw_sp_nve_mc_list = type { %struct.list_head, %struct.rhash_head, %struct.mlxsw_sp_nve_mc_list_key }
%struct.rhash_head = type { ptr }
%struct.mlxsw_sp_nve_mc_record = type { %struct.list_head, i32, i32, ptr, ptr, ptr, i32, [0 x %struct.mlxsw_sp_nve_mc_entry] }
%struct.mlxsw_sp_nve_mc_entry = type { %union.anon.178, i8 }
%union.anon.178 = type { %struct.mlxsw_sp_nve_mc_ipv6_entry }
%struct.mlxsw_sp_nve_mc_ipv6_entry = type { %struct.in6_addr, i32 }
%struct.mlxsw_sp_nve_ipv6_ht_key = type { [6 x i8], i16 }
%struct.mlxsw_sp_nve_ipv6_ht_node = type { %struct.rhash_head, %struct.list_head, %struct.mlxsw_sp_nve_ipv6_ht_key, %struct.in6_addr }
%struct.mlxsw_sp_nve_params = type { i32, i32, ptr, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.161, %struct.anon.162, %struct.mlxsw_sp_port_mapping, %struct.anon.163, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.165, i32, i32, ptr, i64 }
%struct.anon.161 = type { i8 }
%struct.anon.162 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.163 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.anon.165 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@mlxsw_sp1_nve_vxlan_ops = external dso_local constant %struct.mlxsw_sp_nve_ops, align 4
@mlxsw_sp1_nve_ops_arr = dso_local global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mlxsw_sp1_nve_vxlan_ops], [28 x i8] zeroinitializer }, align 32
@mlxsw_sp2_nve_vxlan_ops = external dso_local constant %struct.mlxsw_sp_nve_ops, align 4
@mlxsw_sp2_nve_ops_arr = dso_local global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mlxsw_sp2_nve_vxlan_ops], [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_ipv6_addr_map_replace.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_ipv6_addr_map_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_nve_fid_enable.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mlxsw_spectrum: Conflicting NVE tunnels configuration\00", [42 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_fid_enable.__msg.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mlxsw_spectrum: Failed to initialize NVE tunnel\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_fid_enable.__msg.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mlxsw_spectrum: Failed to set VNI on FID\00", [55 x i8] zeroinitializer }, align 32
@mlxsw_reg_tnqdr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -24559, i16 8, ptr @.str.51 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_mc_list_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 2, i16 12, i16 8, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_ipv6_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 8, i16 12, i16 0, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mlxsw_sp_nve_mc_record_ops_arr = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlxsw_sp_nve_mc_record_ipv4_ops, ptr @mlxsw_sp_nve_mc_record_ipv6_ops], [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_mc_record_ipv4_ops = internal constant { %struct.mlxsw_sp_nve_mc_record_ops, [44 x i8] } { %struct.mlxsw_sp_nve_mc_record_ops { i32 0, ptr @mlxsw_sp_nve_mc_record_ipv4_entry_add, ptr @mlxsw_sp_nve_mc_record_ipv4_entry_del, ptr @mlxsw_sp_nve_mc_record_ipv4_entry_set, ptr @mlxsw_sp_nve_mc_record_ipv4_entry_compare }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_mc_record_ipv6_ops = internal constant { %struct.mlxsw_sp_nve_mc_record_ops, [44 x i8] } { %struct.mlxsw_sp_nve_mc_record_ops { i32 1, ptr @mlxsw_sp_nve_mc_record_ipv6_entry_add, ptr @mlxsw_sp_nve_mc_record_ipv6_entry_del, ptr @mlxsw_sp_nve_mc_record_ipv6_entry_set, ptr @mlxsw_sp_nve_mc_record_ipv6_entry_compare }, [44 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 35, ptr null, ptr null }, align 1
@.str.12 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_tnumt_udip\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_tnumt_udip_ptr\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_reg_tnumt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -24573, i16 32, ptr @.str.31 }, [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_tnumt_record_type\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_tnumt_tunnel_port\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_tnumt_underlay_mc_ptr\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_tnumt_vnext\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_tnumt_next_underlay_mc_ptr\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_tnumt_record_size\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tnumt\00", [26 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlxsw_reg_sfdf = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8211, i16 20, ptr @.str.44 }, [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sfdf_flush_type\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_sfdf_flush_static\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sfdf_fid\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sfdf\00", [27 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_tnqdr_local_port\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_tnqdr_lp_msb\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_tnqdr_dscp\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tnqdr\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_tnqcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -24560, i16 12, ptr @.str.54 }, [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_tnqcr_enc_set_dscp\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tnqcr\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_tneem = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -24558, i16 12, ptr @.str.59 }, [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_tneem_overlay_ecn\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_tneem_underlay_ecn\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tneem\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_tndem = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -24557, i16 12, ptr @.str.70 }, [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_tndem_underlay_ecn\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_tndem_overlay_ecn\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_tndem_eip_ecn\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_tndem_trap_en\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_tndem_trap_id\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tndem\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"mlxsw_sp1_nve_ops_arr\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 18, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"mlxsw_sp2_nve_ops_arr\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 22, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 196, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 892, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 954, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 960, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 967, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_tnqdr\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_nve_mc_list_ht_params\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 79, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"mlxsw_sp_nve_ipv6_ht_params\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 812, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 715, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 755, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 695, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 723, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_nve_mc_record_ops_arr\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 182, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_nve_mc_record_ipv4_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 120, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_nve_mc_record_ipv6_ops\00", align 1
@___asan_gen_.126 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 173, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 33, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11745, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11752, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_tnumt\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11707, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11713, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11720, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11726, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11732, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11739, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11695, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sfdf\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1130, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1138, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1152, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1097, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11809, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11815, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11803, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_tnqcr\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11787, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11778, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_tneem\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11838, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11844, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11832, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_tndem\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11868, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11874, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11881, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11889, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11896, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 11862, i32 1 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp1_nve_ops_arr, ptr @mlxsw_sp2_nve_ops_arr, ptr @.str, ptr @.str.1, ptr @mlxsw_sp_nve_fid_enable.__msg, ptr @mlxsw_sp_nve_fid_enable.__msg.2, ptr @mlxsw_sp_nve_fid_enable.__msg.3, ptr @mlxsw_reg_tnqdr, ptr @mlxsw_sp_nve_mc_list_ht_params, ptr @mlxsw_sp_nve_ipv6_ht_params, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mlxsw_sp_nve_mc_record_ops_arr, ptr @mlxsw_sp_nve_mc_record_ipv4_ops, ptr @mlxsw_sp_nve_mc_record_ipv6_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @mlxsw_reg_tnumt, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @mlxsw_reg_sfdf, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @mlxsw_reg_tnqcr, ptr @.str.52, ptr @.str.54, ptr @mlxsw_reg_tneem, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @mlxsw_reg_tndem, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_nve_ops_arr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_nve_ops_arr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_fid_enable.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_fid_enable.__msg.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_fid_enable.__msg.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tnqdr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_mc_list_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_ipv6_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_mc_record_ops_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_mc_record_ipv4_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_mc_record_ipv6_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tnumt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sfdf to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tnqcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tneem to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tndem to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_nve_learned_ip_resolve(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %uip, i32 noundef %proto, ptr nocapture noundef writeonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %proto)
  %cond = icmp eq i32 %proto, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %uip, ptr %addr, align 4
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #13
  br label %return

return:                                           ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_nve_flood_ip_add(ptr noundef %mlxsw_sp, ptr noundef %fid, i32 noundef %proto, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.mlxsw_sp_nve_mc_list_key, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %key) #13
  %call = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %fid) #13
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call, ptr %key, align 2
  %nve1.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %1 = ptrtoint ptr %nve1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nve1.i.i, align 4
  %mc_list_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %2, i32 0, i32 1
  %call.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %mc_list_ht.i.i, ptr noundef nonnull %key, [7 x i32] [i32 2, i32 786440, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlxsw_sp_nve_mc_list_get.exit_crit_edge

entry.mlxsw_sp_nve_mc_list_get.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_list_get.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %nve1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nve1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 16) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then_crit_edge, label %if.end.i.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %key3.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %key, align 2
  %10 = ptrtoint ptr %key3.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %key3.i.i, align 4
  %mc_list_ht.i6.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %4, i32 0, i32 1
  %ht_node.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, ptr %call7.i.i.i, i32 0, i32 1
  %call4.i.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %mc_list_ht.i6.i, ptr noundef %ht_node.i.i, [7 x i32] [i32 2, i32 786440, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.mlxsw_sp_nve_mc_list_get.exit_crit_edge, label %err_rhashtable_insert.i.i

if.end.i.i.mlxsw_sp_nve_mc_list_get.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_list_get.exit

err_rhashtable_insert.i.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  %11 = inttoptr i32 %call4.i.i to ptr
  br label %mlxsw_sp_nve_mc_list_get.exit

mlxsw_sp_nve_mc_list_get.exit:                    ; preds = %err_rhashtable_insert.i.i, %if.end.i.i.mlxsw_sp_nve_mc_list_get.exit_crit_edge, %entry.mlxsw_sp_nve_mc_list_get.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %entry.mlxsw_sp_nve_mc_list_get.exit_crit_edge ], [ %11, %err_rhashtable_insert.i.i ], [ %call7.i.i.i, %if.end.i.i.mlxsw_sp_nve_mc_list_get.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlxsw_sp_nve_mc_list_get.exit.if.then_crit_edge, label %if.end

mlxsw_sp_nve_mc_list_get.exit.if.then_crit_edge:  ; preds = %mlxsw_sp_nve_mc_list_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %mlxsw_sp_nve_mc_list_get.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i39 = phi ptr [ %retval.0.i, %mlxsw_sp_nve_mc_list_get.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i39 to i32
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_nve_mc_list_get.exit
  %mc_record.0.in26.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %mc_record.0.in26.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %mc_record.027.i.i = load ptr, ptr %mc_record.0.in26.i.i, align 4
  %cmp.not28.i.i = icmp eq ptr %mc_record.027.i.i, %retval.0.i
  br i1 %cmp.not28.i.i, label %if.end.if.end8.i.i.i.i.i_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.if.end8.i.i.i.i.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i.i.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %mc_record.029.i.i = phi ptr [ %mc_record.0.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %mc_record.027.i.i, %if.end.for.body.i.i_crit_edge ]
  %proto4.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.029.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %proto4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %proto4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %proto)
  %cmp5.i.i = icmp eq i32 %15, %proto
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %for.body.i.i.cleanup.i.i_crit_edge

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %16 = ptrtoint ptr %nve1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nve1.i.i, align 4
  %num_entries2.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.029.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %num_entries2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_entries2.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_nve, ptr %17, i32 0, i32 7, i32 %proto
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp6.i.i = icmp ult i32 %19, %21
  br i1 %cmp6.i.i, label %land.lhs.true.i.i.mlxsw_sp_nve_mc_record_get.exit.i_crit_edge, label %land.lhs.true.i.i.cleanup.i.i_crit_edge

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

land.lhs.true.i.i.mlxsw_sp_nve_mc_record_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_record_get.exit.i

cleanup.i.i:                                      ; preds = %land.lhs.true.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %mc_record.0.in.i.i = getelementptr inbounds %struct.list_head, ptr %mc_record.029.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %mc_record.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %mc_record.0.i.i = load ptr, ptr %mc_record.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mc_record.0.i.i, %retval.0.i
  br i1 %cmp.not.i.i, label %cleanup.i.i.if.end8.i.i.i.i.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

cleanup.i.i.if.end8.i.i.i.i.i_crit_edge:          ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %cleanup.i.i.if.end8.i.i.i.i.i_crit_edge, %if.end.if.end8.i.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %nve1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nve1.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlxsw_sp_nve, ptr %24, i32 0, i32 7, i32 %proto
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  %27 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 24) #13
  %28 = extractvalue { i32, i1 } %27, 1
  %29 = extractvalue { i32, i1 } %27, 0
  %spec.select.i.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %29, i32 32) #13
  %retval.0.i.i.i.i = select i1 %28, i32 -1, i32 %spec.select.i.i.i.i
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i.i, i32 noundef 3520) #17
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.i.i.i.err_add_ip_crit_edge, label %if.end.i.i.i

if.end8.i.i.i.i.i.err_add_ip_crit_edge:           ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_add_ip

if.end.i.i.i:                                     ; preds = %if.end8.i.i.i.i.i
  %kvdl_index.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %call9.i.i.i.i.i, i32 0, i32 6
  %call3.i.i.i = call i32 @mlxsw_sp_kvdl_alloc(ptr noundef %mlxsw_sp, i32 noundef 5, i32 noundef 1, ptr noundef %kvdl_index.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %err_kvdl_alloc.i.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %arrayidx7.i.i.i = getelementptr [2 x ptr], ptr @mlxsw_sp_nve_mc_record_ops_arr, i32 0, i32 %proto
  %30 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx7.i.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %call9.i.i.i.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %ops.i.i.i, align 8
  %mlxsw_sp8.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %call9.i.i.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %mlxsw_sp8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mlxsw_sp, ptr %mlxsw_sp8.i.i.i, align 16
  %mc_list9.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %call9.i.i.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %mc_list9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i, ptr %mc_list9.i.i.i, align 4
  %proto10.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %proto10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %proto, ptr %proto10.i.i.i, align 8
  %36 = ptrtoint ptr %mc_record.0.in26.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mc_record.0.in26.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i, ptr noundef %37, ptr noundef %retval.0.i) #13
  br i1 %call.i.i.i.i.i, label %if.end.i.i28.i.i.i, label %if.end6.i.i.i.mlxsw_sp_nve_mc_record_get.exit.i_crit_edge

if.end6.i.i.i.mlxsw_sp_nve_mc_record_get.exit.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_record_get.exit.i

if.end.i.i28.i.i.i:                               ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %mc_record.0.in26.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i.i.i.i.i, ptr %mc_record.0.in26.i.i, align 4
  %39 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i, ptr %call9.i.i.i.i.i, align 128
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call9.i.i.i.i.i, ptr %37, align 4
  br label %mlxsw_sp_nve_mc_record_get.exit.i

err_kvdl_alloc.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #13
  %42 = inttoptr i32 %call3.i.i.i to ptr
  br label %mlxsw_sp_nve_mc_record_get.exit.i

mlxsw_sp_nve_mc_record_get.exit.i:                ; preds = %err_kvdl_alloc.i.i.i, %if.end.i.i28.i.i.i, %if.end6.i.i.i.mlxsw_sp_nve_mc_record_get.exit.i_crit_edge, %land.lhs.true.i.i.mlxsw_sp_nve_mc_record_get.exit.i_crit_edge
  %retval.2.i.i = phi ptr [ %42, %err_kvdl_alloc.i.i.i ], [ %call9.i.i.i.i.i, %if.end6.i.i.i.mlxsw_sp_nve_mc_record_get.exit.i_crit_edge ], [ %call9.i.i.i.i.i, %if.end.i.i28.i.i.i ], [ %mc_record.029.i.i, %land.lhs.true.i.i.mlxsw_sp_nve_mc_record_get.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %retval.2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlxsw_sp_nve_mc_list_ip_add.exit, label %if.end.i26

if.end.i26:                                       ; preds = %mlxsw_sp_nve_mc_record_get.exit.i
  %mlxsw_sp.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %mlxsw_sp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mlxsw_sp.i.i.i, align 4
  %nve1.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %nve1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nve1.i.i.i, align 4
  %proto.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %proto.i.i.i, align 4
  %arrayidx.i.i11.i = getelementptr %struct.mlxsw_sp_nve, ptr %46, i32 0, i32 7, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp14.not.i.i.i = icmp eq i32 %50, 0
  br i1 %cmp14.not.i.i.i, label %if.end.i26.do.end.i.i_crit_edge, label %if.end.i26.for.body.i.i.i_crit_edge

if.end.i26.for.body.i.i.i_crit_edge:              ; preds = %if.end.i26
  br label %for.body.i.i.i

if.end.i26.do.end.i.i_crit_edge:                  ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i26.for.body.i.i.i_crit_edge
  %i.015.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i26.for.body.i.i.i_crit_edge ]
  %valid.i.i.i = getelementptr %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 7, i32 %i.015.i.i.i, i32 1
  %51 = ptrtoint ptr %valid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i.i.i = load i8, ptr %valid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i12.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i12.i, label %mlxsw_sp_nve_mc_free_entry_find.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.015.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %50
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

mlxsw_sp_nve_mc_free_entry_find.exit.i.i:         ; preds = %for.body.i.i.i
  %arrayidx2.i.i.i = getelementptr %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 7, i32 %i.015.i.i.i
  %tobool.not.i.i27 = icmp eq ptr %arrayidx2.i.i.i, null
  br i1 %tobool.not.i.i27, label %mlxsw_sp_nve_mc_free_entry_find.exit.i.i.do.end.i.i_crit_edge, label %if.end23.i.i, !prof !164

mlxsw_sp_nve_mc_free_entry_find.exit.i.i.do.end.i.i_crit_edge: ; preds = %mlxsw_sp_nve_mc_free_entry_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %mlxsw_sp_nve_mc_free_entry_find.exit.i.i.do.end.i.i_crit_edge, %for.inc.i.i.i.do.end.i.i_crit_edge, %if.end.i26.do.end.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 443, i32 noundef 9, ptr noundef null) #13
  br label %err_ip_add.i

if.end23.i.i:                                     ; preds = %mlxsw_sp_nve_mc_free_entry_find.exit.i.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i, align 4
  %entry_add.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %entry_add.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entry_add.i.i, align 4
  %call24.i.i = call i32 %55(ptr noundef %retval.2.i.i, ptr noundef nonnull %arrayidx2.i.i.i, ptr noundef %addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %if.end23.i.i.err_ip_add.i_crit_edge

if.end23.i.i.err_ip_add.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_ip_add.i

if.end27.i.i:                                     ; preds = %if.end23.i.i
  %num_entries.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_entries.i.i, align 4
  %inc.i.i = add i32 %57, 1
  store i32 %inc.i.i, ptr %num_entries.i.i, align 4
  %58 = ptrtoint ptr %valid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i = load i8, ptr %valid.i.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %valid.i.i.i, align 4
  %call28.i.i = call fastcc i32 @mlxsw_sp_nve_mc_record_refresh(ptr noundef %retval.2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end31.i.i, label %if.end27.i.i.err_record_refresh.i.i_crit_edge

if.end27.i.i.err_record_refresh.i.i_crit_edge:    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_record_refresh.i.i

if.end31.i.i:                                     ; preds = %if.end27.i.i
  %59 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.not.i13.i = icmp eq i32 %60, 1
  br i1 %cmp.not.i13.i, label %lor.lhs.false.i.i, label %if.end31.i.i.if.end6_crit_edge

if.end31.i.i.if.end6_crit_edge:                   ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

lor.lhs.false.i.i:                                ; preds = %if.end31.i.i
  %mc_list1.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %mc_list1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mc_list1.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %cmp.i.i.i = icmp eq ptr %64, %retval.2.i.i
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.if.end6_crit_edge, label %if.end35.i.i

lor.lhs.false.i.i.if.end6_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end35.i.i:                                     ; preds = %lor.lhs.false.i.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.2.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i, align 4
  %call37.i.i = call fastcc i32 @mlxsw_sp_nve_mc_record_refresh(ptr noundef %66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %tobool38.not.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end35.i.i.if.end6_crit_edge, label %if.end35.i.i.err_record_refresh.i.i_crit_edge

if.end35.i.i.err_record_refresh.i.i_crit_edge:    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_record_refresh.i.i

if.end35.i.i.if.end6_crit_edge:                   ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

err_record_refresh.i.i:                           ; preds = %if.end35.i.i.err_record_refresh.i.i_crit_edge, %if.end27.i.i.err_record_refresh.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call28.i.i, %if.end27.i.i.err_record_refresh.i.i_crit_edge ], [ %call37.i.i, %if.end35.i.i.err_record_refresh.i.i_crit_edge ]
  %67 = ptrtoint ptr %valid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load42.i.i = load i8, ptr %valid.i.i.i, align 4
  %bf.clear43.i.i = and i8 %bf.load42.i.i, 127
  store i8 %bf.clear43.i.i, ptr %valid.i.i.i, align 4
  %68 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_entries.i.i, align 4
  %dec.i.i = add i32 %69, -1
  store i32 %dec.i.i, ptr %num_entries.i.i, align 4
  %70 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i.i, align 4
  %entry_del.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %entry_del.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %entry_del.i.i, align 4
  call void %73(ptr noundef %retval.2.i.i, ptr noundef nonnull %arrayidx2.i.i.i) #13
  br label %err_ip_add.i

err_ip_add.i:                                     ; preds = %err_record_refresh.i.i, %if.end23.i.i.err_ip_add.i_crit_edge, %do.end.i.i
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ %err.0.i.i, %err_record_refresh.i.i ], [ %call24.i.i, %if.end23.i.i.err_ip_add.i_crit_edge ]
  %num_entries.i15.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %num_entries.i15.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_entries.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.not.i16.i = icmp eq i32 %75, 0
  br i1 %cmp.not.i16.i, label %if.end.i.i28, label %err_ip_add.i.err_add_ip_crit_edge

err_ip_add.i.err_add_ip_crit_edge:                ; preds = %err_ip_add.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_add_ip

if.end.i.i28:                                     ; preds = %err_ip_add.i
  %76 = ptrtoint ptr %mlxsw_sp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mlxsw_sp.i.i.i, align 4
  %call.i.i.i.i17.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %retval.2.i.i) #13
  br i1 %call.i.i.i.i17.i, label %if.end.i.i.i.i18.i, label %if.end.i.i28.list_del.exit.i.i.i_crit_edge

if.end.i.i28.list_del.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i.i

if.end.i.i.i.i18.i:                               ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.2.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %80 = ptrtoint ptr %retval.2.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %retval.2.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i18.i, %if.end.i.i28.list_del.exit.i.i.i_crit_edge
  %84 = ptrtoint ptr %retval.2.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.2.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.2.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %kvdl_index.i.i19.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %retval.2.i.i, i32 0, i32 6
  %86 = ptrtoint ptr %kvdl_index.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %kvdl_index.i.i19.i, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %77, i32 noundef 5, i32 noundef 1, i32 noundef %87) #13
  %88 = ptrtoint ptr %num_entries.i15.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_entries.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i20.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i20.i, label %list_del.exit.i.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !165

list_del.exit.i.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i.i_crit_edge: ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_record_destroy.exit.i.i

do.end.i.i.i:                                     ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_nve_mc_record_destroy.exit.i.i

mlxsw_sp_nve_mc_record_destroy.exit.i.i:          ; preds = %do.end.i.i.i, %list_del.exit.i.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i.i_crit_edge
  call void @kfree(ptr noundef %retval.2.i.i) #13
  br label %err_add_ip

mlxsw_sp_nve_mc_list_ip_add.exit:                 ; preds = %mlxsw_sp_nve_mc_record_get.exit.i
  %90 = ptrtoint ptr %retval.2.i.i to i32
  %tobool.not = icmp eq ptr %retval.2.i.i, null
  br i1 %tobool.not, label %mlxsw_sp_nve_mc_list_ip_add.exit.if.end6_crit_edge, label %mlxsw_sp_nve_mc_list_ip_add.exit.err_add_ip_crit_edge

mlxsw_sp_nve_mc_list_ip_add.exit.err_add_ip_crit_edge: ; preds = %mlxsw_sp_nve_mc_list_ip_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_add_ip

mlxsw_sp_nve_mc_list_ip_add.exit.if.end6_crit_edge: ; preds = %mlxsw_sp_nve_mc_list_ip_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end6:                                          ; preds = %mlxsw_sp_nve_mc_list_ip_add.exit.if.end6_crit_edge, %if.end35.i.i.if.end6_crit_edge, %lor.lhs.false.i.i.if.end6_crit_edge, %if.end31.i.i.if.end6_crit_edge
  %call.i = call zeroext i1 @mlxsw_sp_fid_nve_flood_index_is_set(ptr noundef %fid) #13
  br i1 %call.i, label %if.end6.cleanup_crit_edge, label %mlxsw_sp_nve_fid_flood_index_set.exit

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mlxsw_sp_nve_fid_flood_index_set.exit:            ; preds = %if.end6
  %91 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %retval.0.i, align 4
  %kvdl_index.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %kvdl_index.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %kvdl_index.i, align 4
  %call1.i = call i32 @mlxsw_sp_fid_nve_flood_index_set(ptr noundef %fid, i32 noundef %94) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  br i1 %tobool8.not, label %mlxsw_sp_nve_fid_flood_index_set.exit.cleanup_crit_edge, label %err_fid_flood_index_set

mlxsw_sp_nve_fid_flood_index_set.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_nve_fid_flood_index_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_fid_flood_index_set:                          ; preds = %mlxsw_sp_nve_fid_flood_index_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @mlxsw_sp_nve_mc_list_ip_del(ptr noundef %retval.0.i, i32 noundef %proto, ptr noundef %addr)
  br label %err_add_ip

err_add_ip:                                       ; preds = %err_fid_flood_index_set, %mlxsw_sp_nve_mc_list_ip_add.exit.err_add_ip_crit_edge, %mlxsw_sp_nve_mc_record_destroy.exit.i.i, %err_ip_add.i.err_add_ip_crit_edge, %if.end8.i.i.i.i.i.err_add_ip_crit_edge
  %err.0 = phi i32 [ %90, %mlxsw_sp_nve_mc_list_ip_add.exit.err_add_ip_crit_edge ], [ %call1.i, %err_fid_flood_index_set ], [ %retval.0.i.i, %err_ip_add.i.err_add_ip_crit_edge ], [ %retval.0.i.i, %mlxsw_sp_nve_mc_record_destroy.exit.i.i ], [ -12, %if.end8.i.i.i.i.i.err_add_ip_crit_edge ]
  %95 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %retval.0.i, align 4
  %cmp.i.not.i = icmp eq ptr %96, %retval.0.i
  br i1 %cmp.i.not.i, label %if.end.i35, label %err_add_ip.cleanup_crit_edge

err_add_ip.cleanup_crit_edge:                     ; preds = %err_add_ip
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i35:                                       ; preds = %err_add_ip
  %97 = ptrtoint ptr %nve1.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nve1.i.i, align 4
  %mc_list_ht.i.i33 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %98, i32 0, i32 1
  %ht_node.i.i34 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, ptr %retval.0.i, i32 0, i32 1
  call fastcc void @rhashtable_remove_fast(ptr noundef %mc_list_ht.i.i33, ptr noundef %ht_node.i.i34, [7 x i32] [i32 2, i32 786440, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %99 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %retval.0.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %100, %retval.0.i
  br i1 %cmp.i.not.i.i, label %if.end.i35.mlxsw_sp_nve_mc_list_destroy.exit.i_crit_edge, label %do.end.i.i36, !prof !165

if.end.i35.mlxsw_sp_nve_mc_list_destroy.exit.i_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_list_destroy.exit.i

do.end.i.i36:                                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_nve_mc_list_destroy.exit.i

mlxsw_sp_nve_mc_list_destroy.exit.i:              ; preds = %do.end.i.i36, %if.end.i35.mlxsw_sp_nve_mc_list_destroy.exit.i_crit_edge
  call void @kfree(ptr noundef %retval.0.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_nve_mc_list_destroy.exit.i, %err_add_ip.cleanup_crit_edge, %mlxsw_sp_nve_fid_flood_index_set.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ 0, %mlxsw_sp_nve_fid_flood_index_set.exit.cleanup_crit_edge ], [ %err.0, %err_add_ip.cleanup_crit_edge ], [ %err.0, %mlxsw_sp_nve_mc_list_destroy.exit.i ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %key) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_fid_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_nve_mc_list_ip_del(ptr noundef readonly %mc_list, i32 noundef %proto, ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %mc_record.019.i = load ptr, ptr %mc_list, align 4
  %cmp.not20.i = icmp eq ptr %mc_record.019.i, %mc_list
  br i1 %cmp.not20.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %mc_record.021.i = phi ptr [ %mc_record.0.i, %for.inc.i.for.body.i_crit_edge ], [ %mc_record.019.i, %entry.for.body.i_crit_edge ]
  %proto2.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.021.i, i32 0, i32 1
  %1 = ptrtoint ptr %proto2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proto2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %proto)
  %cmp3.not.i = icmp eq i32 %2, %proto
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %mlxsw_sp.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.021.i, i32 0, i32 3
  %3 = ptrtoint ptr %mlxsw_sp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mlxsw_sp.i.i, align 4
  %nve1.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %nve1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nve1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_nve, ptr %6, i32 0, i32 7, i32 %proto
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp19.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp19.not.i.i, label %if.end.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.021.i, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %valid.i.i = getelementptr %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.021.i, i32 0, i32 7, i32 %i.020.i.i, i32 1
  %9 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %valid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %arrayidx2.i.i = getelementptr %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.021.i, i32 0, i32 7, i32 %i.020.i.i
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %entry_compare.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %entry_compare.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entry_compare.i.i, align 4
  %call.i.i = tail call zeroext i1 %13(ptr noundef %mc_record.021.i, ptr noundef %arrayidx2.i.i, ptr noundef %addr) #13
  br i1 %call.i.i, label %mlxsw_sp_nve_mc_entry_find.exit.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

mlxsw_sp_nve_mc_entry_find.exit.i:                ; preds = %if.end.i.i
  %tobool.not.i = icmp eq ptr %arrayidx2.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_nve_mc_entry_find.exit.i.for.inc.i_crit_edge, label %mlxsw_sp_nve_mc_record_find.exit

mlxsw_sp_nve_mc_entry_find.exit.i.for.inc.i_crit_edge: ; preds = %mlxsw_sp_nve_mc_entry_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %mlxsw_sp_nve_mc_entry_find.exit.i.for.inc.i_crit_edge, %for.inc.i.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %mc_record.021.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %mc_record.0.i = load ptr, ptr %mc_record.021.i, align 4
  %cmp.not.i = icmp eq ptr %mc_record.0.i, %mc_list
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mlxsw_sp_nve_mc_record_find.exit:                 ; preds = %mlxsw_sp_nve_mc_entry_find.exit.i
  %mlxsw_sp.i.i.le = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.021.i, i32 0, i32 3
  %tobool.not = icmp eq ptr %mc_record.021.i, null
  br i1 %tobool.not, label %mlxsw_sp_nve_mc_record_find.exit.cleanup_crit_edge, label %if.end

mlxsw_sp_nve_mc_record_find.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_nve_mc_record_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_nve_mc_record_find.exit
  tail call fastcc void @mlxsw_sp_nve_mc_record_entry_del(ptr noundef nonnull %mc_record.021.i, ptr noundef nonnull %arrayidx2.i.i)
  %num_entries.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.021.i, i32 0, i32 2
  %15 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i1 = icmp eq i32 %16, 0
  br i1 %cmp.not.i1, label %if.end.i2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i2:                                        ; preds = %if.end
  %17 = ptrtoint ptr %mlxsw_sp.i.i.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mlxsw_sp.i.i.le, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mc_record.021.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i2.list_del.exit.i.i_crit_edge

if.end.i2.list_del.exit.i.i_crit_edge:            ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mc_record.021.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %mc_record.021.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mc_record.021.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i2.list_del.exit.i.i_crit_edge
  %25 = ptrtoint ptr %mc_record.021.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_record.021.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mc_record.021.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %kvdl_index.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.021.i, i32 0, i32 6
  %27 = ptrtoint ptr %kvdl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %kvdl_index.i.i, align 4
  tail call void @mlxsw_sp_kvdl_free(ptr noundef %18, i32 noundef 5, i32 noundef 1, i32 noundef %28) #13
  %29 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i3 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i3, label %list_del.exit.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i_crit_edge, label %do.end.i.i, !prof !165

list_del.exit.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_record_destroy.exit.i

do.end.i.i:                                       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_nve_mc_record_destroy.exit.i

mlxsw_sp_nve_mc_record_destroy.exit.i:            ; preds = %do.end.i.i, %list_del.exit.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %mc_record.021.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_nve_mc_record_destroy.exit.i, %if.end.cleanup_crit_edge, %mlxsw_sp_nve_mc_record_find.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_nve_flood_ip_del(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %fid, i32 noundef %proto, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.mlxsw_sp_nve_mc_list_key, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %key) #13
  %call = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %fid) #13
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call, ptr %key, align 2
  %nve1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %1 = ptrtoint ptr %nve1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nve1.i, align 4
  %mc_list_ht.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %2, i32 0, i32 1
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %mc_list_ht.i, ptr noundef nonnull %key, [7 x i32] [i32 2, i32 786440, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %call.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %call.i
  br i1 %cmp.i.not.i.i, label %if.end.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge, label %list_is_singular.exit.i

if.end.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_fid_flood_index_clear.exit

list_is_singular.exit.i:                          ; preds = %if.end
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %6
  br i1 %cmp.i.not.i, label %if.end.i, label %list_is_singular.exit.i.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge

list_is_singular.exit.i.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge: ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_fid_flood_index_clear.exit

if.end.i:                                         ; preds = %list_is_singular.exit.i
  %num_entries.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 1
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge

if.end.i.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_fid_flood_index_clear.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mlxsw_sp_fid_nve_flood_index_clear(ptr noundef %fid) #13
  br label %mlxsw_sp_nve_fid_flood_index_clear.exit

mlxsw_sp_nve_fid_flood_index_clear.exit:          ; preds = %if.end3.i, %if.end.i.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge, %list_is_singular.exit.i.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge, %if.end.mlxsw_sp_nve_fid_flood_index_clear.exit_crit_edge
  call fastcc void @mlxsw_sp_nve_mc_list_ip_del(ptr noundef nonnull %call.i, i32 noundef %proto, ptr noundef %addr)
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %call.i, align 4
  %cmp.i.not.i9 = icmp eq ptr %10, %call.i
  br i1 %cmp.i.not.i9, label %if.end.i11, label %mlxsw_sp_nve_fid_flood_index_clear.exit.cleanup_crit_edge

mlxsw_sp_nve_fid_flood_index_clear.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_nve_fid_flood_index_clear.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i11:                                       ; preds = %mlxsw_sp_nve_fid_flood_index_clear.exit
  %11 = ptrtoint ptr %nve1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nve1.i, align 4
  %mc_list_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %12, i32 0, i32 1
  %ht_node.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, ptr %call.i, i32 0, i32 1
  call fastcc void @rhashtable_remove_fast(ptr noundef %mc_list_ht.i.i, ptr noundef %ht_node.i.i, [7 x i32] [i32 2, i32 786440, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %call.i, align 4
  %cmp.i.not.i.i10 = icmp eq ptr %14, %call.i
  br i1 %cmp.i.not.i.i10, label %if.end.i11.mlxsw_sp_nve_mc_list_destroy.exit.i_crit_edge, label %do.end.i.i, !prof !165

if.end.i11.mlxsw_sp_nve_mc_list_destroy.exit.i_crit_edge: ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_list_destroy.exit.i

do.end.i.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_nve_mc_list_destroy.exit.i

mlxsw_sp_nve_mc_list_destroy.exit.i:              ; preds = %do.end.i.i, %if.end.i11.mlxsw_sp_nve_mc_list_destroy.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_nve_mc_list_destroy.exit.i, %mlxsw_sp_nve_fid_flood_index_clear.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %key) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_nve_ipv6_addr_kvdl_set(ptr noundef %mlxsw_sp, ptr noundef %addr6, ptr noundef %p_kvdl_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_ipv6_addr_kvdl_index_get(ptr noundef %mlxsw_sp, ptr noundef %addr6, ptr noundef %p_kvdl_index) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_ipv6_addr_kvdl_index_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_nve_ipv6_addr_kvdl_unset(ptr noundef %mlxsw_sp, ptr noundef %addr6) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_ipv6_addr_put(ptr noundef %mlxsw_sp, ptr noundef %addr6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_ipv6_addr_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_nve_ipv6_addr_map_replace(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %mac, i16 noundef zeroext %fid_index, ptr nocapture noundef readonly %new_addr6) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.mlxsw_sp_nve_ipv6_ht_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @mlxsw_sp_nve_ipv6_addr_map_replace.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !165

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mlxsw_sp_nve_ipv6_addr_map_replace.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 892) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #13
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  %2 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %key.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds i8, ptr %key.i, i32 4
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %add.ptr1.i.i, align 4
  %fid_index2.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_key, ptr %key.i, i32 0, i32 1
  %6 = ptrtoint ptr %fid_index2.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %fid_index, ptr %fid_index2.i, align 2
  %nve.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %7 = ptrtoint ptr %nve.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nve.i, align 4
  %ipv6_ht.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %8, i32 0, i32 2
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ipv6_ht.i, ptr noundef nonnull %key.i, [7 x i32] [i32 8, i32 786432, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #13
  %tobool38.not = icmp eq ptr %call.i, null
  br i1 %tobool38.not, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end29
  %9 = ptrtoint ptr %nve.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nve.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then39.cleanup_crit_edge, label %if.end.i

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then39
  %key.i53 = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac, align 4
  %14 = ptrtoint ptr %key.i53 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %key.i53, align 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i55 = getelementptr %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 4
  %17 = ptrtoint ptr %add.ptr1.i.i55 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %add.ptr1.i.i55, align 8
  %fid_index4.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %fid_index4.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %fid_index, ptr %fid_index4.i, align 2
  %addr65.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call7.i.i.i, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %addr65.i, ptr %new_addr6, i32 16)
  %ipv6_ht.i56 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %10, i32 0, i32 2
  %call6.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %ipv6_ht.i56, ptr noundef nonnull %call7.i.i.i, [7 x i32] [i32 8, i32 786432, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %err_rhashtable_insert.i

if.end9.i:                                        ; preds = %if.end.i
  %list.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call7.i.i.i, i32 0, i32 1
  %ipv6_addr_list.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %10, i32 0, i32 3
  %20 = ptrtoint ptr %ipv6_addr_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipv6_addr_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %ipv6_addr_list.i, ptr noundef %21) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ipv6_addr_list.i, ptr %prev3.i.i.i, align 8
  %25 = ptrtoint ptr %ipv6_addr_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %list.i, ptr %ipv6_addr_list.i, align 4
  br label %cleanup

err_rhashtable_insert.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %addr6 = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call.i, i32 0, i32 3
  call void @mlxsw_sp_ipv6_addr_put(ptr noundef %mlxsw_sp, ptr noundef %addr6) #13
  %26 = call ptr @memcpy(ptr %addr6, ptr %new_addr6, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %err_rhashtable_insert.i, %if.end.i.i.i, %if.end9.i.cleanup_crit_edge, %if.then39.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call6.i, %err_rhashtable_insert.i ], [ -12, %if.then39.cleanup_crit_edge ], [ 0, %if.end9.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_nve_ipv6_addr_map_del(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %mac, i16 noundef zeroext %fid_index) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.mlxsw_sp_nve_ipv6_ht_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @mlxsw_sp_nve_ipv6_addr_map_del.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !165

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mlxsw_sp_nve_ipv6_addr_map_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 910, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 910) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #13
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  %2 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %key.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds i8, ptr %key.i, i32 4
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %add.ptr1.i.i, align 4
  %fid_index2.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_key, ptr %key.i, i32 0, i32 1
  %6 = ptrtoint ptr %fid_index2.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %fid_index, ptr %fid_index2.i, align 2
  %nve.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %7 = ptrtoint ptr %nve.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nve.i, align 4
  %ipv6_ht.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %8, i32 0, i32 2
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ipv6_ht.i, ptr noundef nonnull %key.i, [7 x i32] [i32 8, i32 786432, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #13
  %tobool39.not = icmp eq ptr %call.i, null
  br i1 %tobool39.not, label %do.end57, label %if.end73, !prof !164

do.end57:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 914, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end73:                                         ; preds = %if.end29
  %9 = ptrtoint ptr %nve.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nve.i, align 4
  %list.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call.i, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end73.mlxsw_sp_nve_ipv6_ht_remove.exit_crit_edge

if.end73.mlxsw_sp_nve_ipv6_ht_remove.exit_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_ipv6_ht_remove.exit

if.end.i.i.i:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %mlxsw_sp_nve_ipv6_ht_remove.exit

mlxsw_sp_nve_ipv6_ht_remove.exit:                 ; preds = %if.end.i.i.i, %if.end73.mlxsw_sp_nve_ipv6_ht_remove.exit_crit_edge
  %17 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_ipv6_ht_node, ptr %call.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %ipv6_ht.i80 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %10, i32 0, i32 2
  call fastcc void @rhashtable_remove_fast(ptr noundef %ipv6_ht.i80, ptr noundef nonnull %call.i, [7 x i32] [i32 8, i32 786432, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  call void @kfree(ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_nve_ipv6_ht_remove.exit, %do.end57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_nve_fid_enable(ptr noundef %mlxsw_sp, ptr noundef %fid, ptr noundef %params, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.mlxsw_sp_nve_config, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nve1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %0 = ptrtoint ptr %nve1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nve1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %config) #13
  %nve_ops_arr = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nve_ops_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nve_ops_arr, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %can_offload = getelementptr inbounds %struct.mlxsw_sp_nve_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %can_offload to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %can_offload, align 4
  %call = tail call zeroext i1 %9(ptr noundef %1, ptr noundef %params, ptr noundef %extack) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memset(ptr %config, i32 0, i32 36)
  %nve_config = getelementptr inbounds %struct.mlxsw_sp_nve_ops, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %nve_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nve_config, align 4
  call void %12(ptr noundef %1, ptr noundef %params, ptr noundef nonnull %config) #13
  %num_nve_tunnels = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %num_nve_tunnels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_nve_tunnels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(36) %config, ptr noundef dereferenceable(36) %1, i32 36) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %do.body

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_fid_enable.__msg) #13
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlxsw_sp_nve_fid_enable.__msg, ptr %extack, align 4
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %16 = ptrtoint ptr %nve1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nve1, align 4
  %num_nve_tunnels.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %num_nve_tunnels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_nve_tunnels.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %num_nve_tunnels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end.i:                                         ; preds = %if.end9
  %20 = call ptr @memcpy(ptr %17, ptr %config, i32 36)
  %tunnel_index.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %17, i32 0, i32 8
  %call.i = call i32 @mlxsw_sp_kvdl_alloc(ptr noundef %mlxsw_sp, i32 noundef 0, i32 noundef 1, ptr noundef %tunnel_index.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.do.body13_crit_edge

if.end.i.do.body13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13

if.end4.i:                                        ; preds = %if.end.i
  %nve_ops_arr.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %17, i32 0, i32 5
  %21 = ptrtoint ptr %nve_ops_arr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nve_ops_arr.i, align 4
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %config, align 4
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %init.i = getelementptr inbounds %struct.mlxsw_sp_nve_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init.i, align 4
  %call5.i = call i32 %28(ptr noundef %17, ptr noundef nonnull %config) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end21_crit_edge, label %err_ops_init.i

if.end4.i.if.end21_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

err_ops_init.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %tunnel_index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tunnel_index.i, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 0, i32 noundef 1, i32 noundef %30) #13
  br label %do.body13

do.body13:                                        ; preds = %err_ops_init.i, %if.end.i.do.body13_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.end.i.do.body13_crit_edge ], [ %call5.i, %err_ops_init.i ]
  %31 = call ptr @memset(ptr %17, i32 0, i32 36)
  %32 = ptrtoint ptr %num_nve_tunnels.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_nve_tunnels.i, align 4
  %dec.i = add i32 %33, -1
  store i32 %dec.i, ptr %num_nve_tunnels.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_fid_enable.__msg.2) #13
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %if.then16

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mlxsw_sp_nve_fid_enable.__msg.2, ptr %extack, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end4.i.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %35 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %params, align 4
  %vni = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 1
  %37 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vni, align 4
  %dev = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 2
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ifindex, align 4
  %call23 = call i32 @mlxsw_sp_fid_vni_set(ptr noundef %fid, i32 noundef %36, i32 noundef %38, i32 noundef %42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end34, label %do.body26

do.body26:                                        ; preds = %if.end21
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_fid_enable.__msg.3) #13
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body26.err_fid_vni_set_crit_edge, label %if.then29

do.body26.err_fid_vni_set_crit_edge:              ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_fid_vni_set

if.then29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @mlxsw_sp_nve_fid_enable.__msg.3, ptr %extack, align 4
  br label %err_fid_vni_set

if.end34:                                         ; preds = %if.end21
  %fdb_replay = getelementptr inbounds %struct.mlxsw_sp_nve_ops, ptr %7, i32 0, i32 5
  %44 = ptrtoint ptr %fdb_replay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fdb_replay, align 4
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vni, align 4
  %call37 = call i32 %45(ptr noundef %47, i32 noundef %49, ptr noundef %extack) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end34.cleanup_crit_edge, label %err_fdb_replay

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_fdb_replay:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  call void @mlxsw_sp_fid_vni_clear(ptr noundef %fid) #13
  br label %err_fid_vni_set

err_fid_vni_set:                                  ; preds = %err_fdb_replay, %if.then29, %do.body26.err_fid_vni_set_crit_edge
  %err.0 = phi i32 [ %call37, %err_fdb_replay ], [ %call23, %if.then29 ], [ %call23, %do.body26.err_fid_vni_set_crit_edge ]
  %50 = ptrtoint ptr %nve1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nve1, align 4
  %num_nve_tunnels.i72 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %num_nve_tunnels.i72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_nve_tunnels.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i = icmp eq i32 %53, 1
  br i1 %cmp.i, label %if.then.i, label %err_fid_vni_set.mlxsw_sp_nve_tunnel_fini.exit_crit_edge

err_fid_vni_set.mlxsw_sp_nve_tunnel_fini.exit_crit_edge: ; preds = %err_fid_vni_set
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_tunnel_fini.exit

if.then.i:                                        ; preds = %err_fid_vni_set
  call void @__sanitizer_cov_trace_pc() #15
  %nve_ops_arr.i73 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %51, i32 0, i32 5
  %54 = ptrtoint ptr %nve_ops_arr.i73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nve_ops_arr.i73, align 4
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %51, align 4
  %arrayidx.i74 = getelementptr ptr, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i74, align 4
  %fini.i = getelementptr inbounds %struct.mlxsw_sp_nve_ops, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fini.i, align 4
  call void %61(ptr noundef %51) #13
  %tunnel_index.i75 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %51, i32 0, i32 8
  %62 = ptrtoint ptr %tunnel_index.i75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tunnel_index.i75, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 0, i32 noundef 1, i32 noundef %63) #13
  %64 = call ptr @memset(ptr %51, i32 0, i32 36)
  br label %mlxsw_sp_nve_tunnel_fini.exit

mlxsw_sp_nve_tunnel_fini.exit:                    ; preds = %if.then.i, %err_fid_vni_set.mlxsw_sp_nve_tunnel_fini.exit_crit_edge
  %65 = ptrtoint ptr %num_nve_tunnels.i72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_nve_tunnels.i72, align 4
  %dec.i76 = add i32 %66, -1
  store i32 %dec.i76, ptr %num_nve_tunnels.i72, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_nve_tunnel_fini.exit, %if.end34.cleanup_crit_edge, %if.then16, %do.body13.cleanup_crit_edge, %if.then7, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %mlxsw_sp_nve_tunnel_fini.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then7 ], [ -22, %do.body.cleanup_crit_edge ], [ %err.0.i, %if.then16 ], [ %err.0.i, %do.body13.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %config) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_vni_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_fid_vni_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_nve_fid_disable(ptr noundef %mlxsw_sp, ptr noundef %fid) local_unnamed_addr #0 align 64 {
entry:
  %type.i = alloca i32, align 4
  %sfdf_pl.i = alloca [20 x i8], align 1
  %key.i = alloca %struct.mlxsw_sp_nve_mc_list_key, align 2
  %nve_ifindex = alloca i32, align 4
  %vni = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %fid) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nve_ifindex) #13
  %0 = ptrtoint ptr %nve_ifindex to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nve_ifindex, align 4, !annotation !166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vni) #13
  %1 = ptrtoint ptr %vni to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %vni, align 4, !annotation !166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %key.i) #13
  %call.i = tail call zeroext i1 @mlxsw_sp_fid_nve_flood_index_is_set(ptr noundef %fid) #13
  br i1 %call.i, label %if.end.i, label %entry.mlxsw_sp_nve_flood_ip_flush.exit_crit_edge

entry.mlxsw_sp_nve_flood_ip_flush.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_flood_ip_flush.exit

if.end.i:                                         ; preds = %entry
  tail call void @mlxsw_sp_fid_nve_flood_index_clear(ptr noundef %fid) #13
  %call1.i = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %fid) #13
  %2 = ptrtoint ptr %key.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call1.i, ptr %key.i, align 2
  %nve1.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %3 = ptrtoint ptr %nve1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nve1.i.i, align 4
  %mc_list_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %4, i32 0, i32 1
  %call.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %mc_list_ht.i.i, ptr noundef nonnull %key.i, [7 x i32] [i32 2, i32 786440, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end28.i, !prof !164

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 716, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_nve_flood_ip_flush.exit

if.end28.i:                                       ; preds = %if.end.i
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i.i, align 4
  %cmp.not95.i = icmp eq ptr %6, %call.i.i
  br i1 %cmp.not95.i, label %if.end28.i.for.end.i_crit_edge, label %if.end28.i.for.body.i_crit_edge

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  br label %for.body.i

if.end28.i.for.end.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %mlxsw_sp_nve_mc_record_delete.exit.i.for.body.i_crit_edge, %if.end28.i.for.body.i_crit_edge
  %mc_record.096.i = phi ptr [ %tmp.0.i, %mlxsw_sp_nve_mc_record_delete.exit.i.for.body.i_crit_edge ], [ %6, %if.end28.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %mc_record.096.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0.i = load ptr, ptr %mc_record.096.i, align 4
  %mlxsw_sp.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.096.i, i32 0, i32 3
  %8 = ptrtoint ptr %mlxsw_sp.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mlxsw_sp.i.i, align 4
  %nve1.i93.i = getelementptr inbounds %struct.mlxsw_sp, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %nve1.i93.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nve1.i93.i, align 4
  %proto.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.096.i, i32 0, i32 1
  %12 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %proto.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_nve, ptr %11, i32 0, i32 7, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp35.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp35.not.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %valid.i.i = getelementptr %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.096.i, i32 0, i32 7, i32 %i.036.i.i, i32 1
  %16 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i = load i8, ptr %valid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.i.i = getelementptr %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.096.i, i32 0, i32 7, i32 %i.036.i.i
  call fastcc void @mlxsw_sp_nve_mc_record_entry_del(ptr noundef %mc_record.096.i, ptr noundef %arrayidx2.i.i) #13
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %15
  br i1 %exitcond.not.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %num_entries.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.096.i, i32 0, i32 2
  %17 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool3.not.i.i, label %for.end.i.i.if.end.i.i.i_crit_edge, label %if.end18.i.i, !prof !165

for.end.i.i.if.end.i.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.end18.i.i:                                     ; preds = %for.end.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #13
  %19 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i.i = load i32, ptr %num_entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp.not.i.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end18.i.i.if.end.i.i.i_crit_edge, label %if.end18.i.i.mlxsw_sp_nve_mc_record_delete.exit.i_crit_edge

if.end18.i.i.mlxsw_sp_nve_mc_record_delete.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_record_delete.exit.i

if.end18.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end18.i.i.if.end.i.i.i_crit_edge, %for.end.i.i.if.end.i.i.i_crit_edge
  %20 = ptrtoint ptr %mlxsw_sp.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mlxsw_sp.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mc_record.096.i) #13
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.i.i.list_del.exit.i.i.i.i_crit_edge

if.end.i.i.i.list_del.exit.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mc_record.096.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %mc_record.096.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mc_record.096.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i.i.i.i

list_del.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i, %if.end.i.i.i.list_del.exit.i.i.i.i_crit_edge
  %28 = ptrtoint ptr %mc_record.096.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_record.096.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mc_record.096.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i.i, align 4
  %kvdl_index.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record.096.i, i32 0, i32 6
  %30 = ptrtoint ptr %kvdl_index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %kvdl_index.i.i.i.i, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %21, i32 noundef 5, i32 noundef 1, i32 noundef %31) #13
  %32 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i.i, label %list_del.exit.i.i.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i.i.i_crit_edge, label %do.end.i.i.i.i, !prof !165

list_del.exit.i.i.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i.i.i_crit_edge: ; preds = %list_del.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_record_destroy.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %list_del.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_nve_mc_record_destroy.exit.i.i.i

mlxsw_sp_nve_mc_record_destroy.exit.i.i.i:        ; preds = %do.end.i.i.i.i, %list_del.exit.i.i.i.i.mlxsw_sp_nve_mc_record_destroy.exit.i.i.i_crit_edge
  call void @kfree(ptr noundef %mc_record.096.i) #13
  br label %mlxsw_sp_nve_mc_record_delete.exit.i

mlxsw_sp_nve_mc_record_delete.exit.i:             ; preds = %mlxsw_sp_nve_mc_record_destroy.exit.i.i.i, %if.end18.i.i.mlxsw_sp_nve_mc_record_delete.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.0.i, %call.i.i
  br i1 %cmp.not.i, label %mlxsw_sp_nve_mc_record_delete.exit.i.for.end.i_crit_edge, label %mlxsw_sp_nve_mc_record_delete.exit.i.for.body.i_crit_edge

mlxsw_sp_nve_mc_record_delete.exit.i.for.body.i_crit_edge: ; preds = %mlxsw_sp_nve_mc_record_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

mlxsw_sp_nve_mc_record_delete.exit.i.for.end.i_crit_edge: ; preds = %mlxsw_sp_nve_mc_record_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %mlxsw_sp_nve_mc_record_delete.exit.i.for.end.i_crit_edge, %if.end28.i.for.end.i_crit_edge
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %call.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %35, %call.i.i
  br i1 %cmp.i.not.i, label %for.end.i.if.end70.i_crit_edge, label %do.end64.i, !prof !165

for.end.i.if.end70.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

do.end64.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 722, i32 noundef 9, ptr noundef null) #13
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end64.i, %for.end.i.if.end70.i_crit_edge
  %36 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %call.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %37, %call.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i94.i, label %if.end70.i.mlxsw_sp_nve_flood_ip_flush.exit_crit_edge

if.end70.i.mlxsw_sp_nve_flood_ip_flush.exit_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_flood_ip_flush.exit

if.end.i94.i:                                     ; preds = %if.end70.i
  %38 = ptrtoint ptr %nve1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nve1.i.i, align 4
  %mc_list_ht.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %39, i32 0, i32 1
  %ht_node.i.i.i = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, ptr %call.i.i, i32 0, i32 1
  call fastcc void @rhashtable_remove_fast(ptr noundef %mc_list_ht.i.i.i, ptr noundef %ht_node.i.i.i, [7 x i32] [i32 2, i32 786440, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %call.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %41, %call.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end.i94.i.mlxsw_sp_nve_mc_list_destroy.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !165

if.end.i94.i.mlxsw_sp_nve_mc_list_destroy.exit.i.i_crit_edge: ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_mc_list_destroy.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_nve_mc_list_destroy.exit.i.i

mlxsw_sp_nve_mc_list_destroy.exit.i.i:            ; preds = %do.end.i.i.i, %if.end.i94.i.mlxsw_sp_nve_mc_list_destroy.exit.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call.i.i) #13
  br label %mlxsw_sp_nve_flood_ip_flush.exit

mlxsw_sp_nve_flood_ip_flush.exit:                 ; preds = %mlxsw_sp_nve_mc_list_destroy.exit.i.i, %if.end70.i.mlxsw_sp_nve_flood_ip_flush.exit_crit_edge, %do.end.i, %entry.mlxsw_sp_nve_flood_ip_flush.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %key.i) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sfdf_pl.i) #13
  %42 = call ptr @memset(ptr %sfdf_pl.i, i32 0, i32 20)
  %arrayidx.i.i.i.i = getelementptr inbounds i32, ptr %sfdf_pl.i, i32 1
  %43 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and7.i.i.i.i = and i32 %44, 251658239
  %arrayidx.i.i25.i.i = getelementptr inbounds i32, ptr %sfdf_pl.i, i32 1
  %or.i.i28.i.i = or i32 %and7.i.i.i.i, 1895825408
  %45 = ptrtoint ptr %arrayidx.i.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i.i28.i.i, ptr %arrayidx.i.i25.i.i, align 4
  %conv.i = zext i16 %call to i32
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %sfdf_pl.i, i32 3
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %47, -65536
  %or.i.i.i = or i32 %and7.i.i.i, %conv.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %48 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core.i, align 4
  %call.i48 = call i32 @mlxsw_reg_write(ptr noundef %49, ptr noundef nonnull @mlxsw_reg_sfdf, ptr noundef nonnull %sfdf_pl.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sfdf_pl.i) #13
  %nve1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %50 = ptrtoint ptr %nve1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nve1.i, align 4
  %ipv6_addr_list.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %ipv6_addr_list.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ipv6_addr_list.i, align 4
  %cmp.not29.i = icmp eq ptr %53, %ipv6_addr_list.i
  br i1 %cmp.not29.i, label %mlxsw_sp_nve_flood_ip_flush.exit.mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit_crit_edge, label %mlxsw_sp_nve_flood_ip_flush.exit.for.body.i49_crit_edge

mlxsw_sp_nve_flood_ip_flush.exit.for.body.i49_crit_edge: ; preds = %mlxsw_sp_nve_flood_ip_flush.exit
  br label %for.body.i49

mlxsw_sp_nve_flood_ip_flush.exit.mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit_crit_edge: ; preds = %mlxsw_sp_nve_flood_ip_flush.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit

for.body.i49:                                     ; preds = %for.inc.i.for.body.i49_crit_edge, %mlxsw_sp_nve_flood_ip_flush.exit.for.body.i49_crit_edge
  %.pn.in30.i = phi ptr [ %.pn33.i, %for.inc.i.for.body.i49_crit_edge ], [ %53, %mlxsw_sp_nve_flood_ip_flush.exit.for.body.i49_crit_edge ]
  %ipv6_ht_node.032.i = getelementptr i8, ptr %.pn.in30.i, i32 -4
  %54 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn33.i = load ptr, ptr %.pn.in30.i, align 4
  %fid_index9.i = getelementptr i8, ptr %.pn.in30.i, i32 14
  %55 = ptrtoint ptr %fid_index9.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %fid_index9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %call)
  %cmp11.not.i = icmp eq i16 %56, %call
  br i1 %cmp11.not.i, label %if.end.i51, label %for.body.i49.for.inc.i_crit_edge

for.body.i49.for.inc.i_crit_edge:                 ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i51:                                       ; preds = %for.body.i49
  %addr6.i = getelementptr i8, ptr %.pn.in30.i, i32 16
  call void @mlxsw_sp_ipv6_addr_put(ptr noundef %mlxsw_sp, ptr noundef %addr6.i) #13
  %57 = ptrtoint ptr %nve1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nve1.i, align 4
  %call.i.i.i.i50 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30.i) #13
  br i1 %call.i.i.i.i50, label %if.end.i.i.i.i, label %if.end.i51.mlxsw_sp_nve_ipv6_ht_remove.exit.i_crit_edge

if.end.i51.mlxsw_sp_nve_ipv6_ht_remove.exit.i_crit_edge: ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_ipv6_ht_remove.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in30.i, i32 4
  %59 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i.i, align 4
  %61 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.pn.in30.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %mlxsw_sp_nve_ipv6_ht_remove.exit.i

mlxsw_sp_nve_ipv6_ht_remove.exit.i:               ; preds = %if.end.i.i.i.i, %if.end.i51.mlxsw_sp_nve_ipv6_ht_remove.exit.i_crit_edge
  %65 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in30.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in30.i, i32 4
  %66 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %ipv6_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %58, i32 0, i32 2
  call fastcc void @rhashtable_remove_fast(ptr noundef %ipv6_ht.i.i, ptr noundef %ipv6_ht_node.032.i, [7 x i32] [i32 8, i32 786432, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  call void @kfree(ptr noundef %ipv6_ht_node.032.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %mlxsw_sp_nve_ipv6_ht_remove.exit.i, %for.body.i49.for.inc.i_crit_edge
  %cmp.not.i52 = icmp eq ptr %.pn33.i, %ipv6_addr_list.i
  br i1 %cmp.not.i52, label %for.inc.i.mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit_crit_edge, label %for.inc.i.for.body.i49_crit_edge

for.inc.i.for.body.i49_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i49

for.inc.i.mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit

mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit:         ; preds = %for.inc.i.mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit_crit_edge, %mlxsw_sp_nve_flood_ip_flush.exit.mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit_crit_edge
  %call1 = call i32 @mlxsw_sp_fid_nve_ifindex(ptr noundef %fid, ptr noundef nonnull %nve_ifindex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.rhs, label %mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit.do.end_crit_edge

mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit.do.end_crit_edge: ; preds = %mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.rhs:                                          ; preds = %mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit
  %call2 = call i32 @mlxsw_sp_fid_vni(ptr noundef %fid, ptr noundef nonnull %vni) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end25.critedge, label %lor.rhs.do.end_crit_edge, !prof !165

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %mlxsw_sp_nve_ipv6_addr_flush_by_fid.exit.do.end_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 997, i32 noundef 9, ptr noundef null) #13
  br label %out

if.end25.critedge:                                ; preds = %lor.rhs
  %67 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %core.i, align 4
  %call.i.i55 = call ptr @priv_to_devlink(ptr noundef %68) #13
  %call1.i.i = call ptr @devlink_net(ptr noundef %call.i.i55) #13
  %69 = ptrtoint ptr %nve_ifindex to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nve_ifindex, align 4
  %call27 = call ptr @dev_get_by_index(ptr noundef %call1.i.i, i32 noundef %70) #13
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.critedge.out_crit_edge, label %if.end30

if.end25.critedge.out_crit_edge:                  ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end30:                                         ; preds = %if.end25.critedge
  %71 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vni, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #13
  %73 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %type.i, align 4, !annotation !166
  %call.i56 = call i32 @mlxsw_sp_fid_nve_type(ptr noundef %fid, ptr noundef nonnull %type.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end22.i, label %do.end.i58, !prof !165

do.end.i58:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 793, i32 noundef 9, ptr noundef null) #13
  br label %do.body1.i

if.end22.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %nve1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nve1.i, align 4
  %nve_ops_arr.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %nve_ops_arr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nve_ops_arr.i, align 4
  %78 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %77, i32 %79
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 4
  %fdb_clear_offload.i = getelementptr inbounds %struct.mlxsw_sp_nve_ops, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %fdb_clear_offload.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fdb_clear_offload.i, align 4
  call void %83(ptr noundef nonnull %call27, i32 noundef %72) #13
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end22.i, %do.end.i58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #13
  call void @mlxsw_sp_fid_fdb_clear_offload(ptr noundef %fid, ptr noundef nonnull %call27) #13
  %84 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !167
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 118
  %85 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pcpu_refcnt.i, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cpu.i, align 4
  %arrayidx.i60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i60, align 4
  %add.i = add i32 %93, %87
  %94 = inttoptr i32 %add.i to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %add13.i = add i32 %96, -1
  store i32 %add13.i, ptr %94, align 4
  %97 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !168
  %and.i.i.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !164

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %84) #13, !srcloc !169
  br label %out

out:                                              ; preds = %dev_put.exit, %if.end25.critedge.out_crit_edge, %do.end
  call void @mlxsw_sp_fid_vni_clear(ptr noundef %fid) #13
  %98 = ptrtoint ptr %nve1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %nve1.i, align 4
  %num_nve_tunnels.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %num_nve_tunnels.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_nve_tunnels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp.i = icmp eq i32 %101, 1
  br i1 %cmp.i, label %if.then.i, label %out.mlxsw_sp_nve_tunnel_fini.exit_crit_edge

out.mlxsw_sp_nve_tunnel_fini.exit_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_tunnel_fini.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %nve_ops_arr.i62 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %99, i32 0, i32 5
  %102 = ptrtoint ptr %nve_ops_arr.i62 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %nve_ops_arr.i62, align 4
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %99, align 4
  %arrayidx.i63 = getelementptr ptr, ptr %103, i32 %105
  %106 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i63, align 4
  %fini.i = getelementptr inbounds %struct.mlxsw_sp_nve_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fini.i, align 4
  call void %109(ptr noundef %99) #13
  %tunnel_index.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %99, i32 0, i32 8
  %110 = ptrtoint ptr %tunnel_index.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tunnel_index.i, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 0, i32 noundef 1, i32 noundef %111) #13
  %112 = call ptr @memset(ptr %99, i32 0, i32 36)
  br label %mlxsw_sp_nve_tunnel_fini.exit

mlxsw_sp_nve_tunnel_fini.exit:                    ; preds = %if.then.i, %out.mlxsw_sp_nve_tunnel_fini.exit_crit_edge
  %113 = ptrtoint ptr %num_nve_tunnels.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_nve_tunnels.i, align 4
  %dec.i = add i32 %114, -1
  store i32 %dec.i, ptr %num_nve_tunnels.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vni) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nve_ifindex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_nve_ifindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_vni(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_fid_fdb_clear_offload(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_port_nve_init(ptr nocapture noundef readonly %mlxsw_sp_port) local_unnamed_addr #0 align 64 {
entry:
  %tnqdr_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tnqdr_pl) #13
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port, align 4
  %4 = ptrtoint ptr %tnqdr_pl to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %tnqdr_pl, align 8
  %conv1.i = zext i16 %3 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %5 = shl nuw nsw i32 %conv1.i, 4
  %and6.i28.i.i = and i32 %5, 12288
  %or.i32.i.i = or i32 %and6.i28.i.i, %spec.select.i.i.i
  store i32 %or.i32.i.i, ptr %tnqdr_pl, align 8
  %arrayidx.i.i24.i = getelementptr inbounds i32, ptr %tnqdr_pl, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i24.i, align 4
  %and7.i.i26.i = and i32 %7, -64
  store i32 %and7.i.i26.i, ptr %arrayidx.i.i24.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_tnqdr, ptr noundef nonnull %tnqdr_pl) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tnqdr_pl) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlxsw_sp_port_nve_fini(ptr nocapture noundef %mlxsw_sp_port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_nve_init(ptr noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  %tndem_pl.i.i.i = alloca [12 x i8], align 1
  %tneem_pl.i.i = alloca [12 x i8], align 1
  %tnqcr_pl.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 528) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %nve1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %1 = ptrtoint ptr %nve1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %nve1, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mlxsw_sp, ptr %mlxsw_sp2, align 4
  %nve_ops_arr = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 33
  %3 = ptrtoint ptr %nve_ops_arr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nve_ops_arr, align 4
  %nve_ops_arr3 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %nve_ops_arr3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %nve_ops_arr3, align 8
  %mc_list_ht = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call i32 @rhashtable_init(ptr noundef %mc_list_ht, ptr noundef nonnull @mlxsw_sp_nve_mc_list_ht_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_mc_rhashtable_init_crit_edge

if.end.err_mc_rhashtable_init_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mc_rhashtable_init

if.end7:                                          ; preds = %if.end
  %ipv6_ht = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %call7.i.i, i32 0, i32 2
  %call8 = tail call i32 @rhashtable_init(ptr noundef %ipv6_ht, ptr noundef nonnull @mlxsw_sp_nve_ipv6_ht_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_ipv6_rhashtable_init_crit_edge

if.end7.err_ipv6_rhashtable_init_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_ipv6_rhashtable_init

if.end11:                                         ; preds = %if.end7
  %ipv6_addr_list = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ipv6_addr_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ipv6_addr_list, ptr %ipv6_addr_list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ipv6_addr_list, ptr %prev.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tnqcr_pl.i) #13
  %8 = call ptr @memset(ptr %tnqcr_pl.i, i32 0, i32 12)
  %arrayidx.i.i.i.i = getelementptr inbounds i32, ptr %tnqcr_pl.i, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and7.i.i.i.i = and i32 %10, -268435457
  store i32 %and7.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %11 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %12, ptr noundef nonnull @mlxsw_reg_tnqcr, ptr noundef nonnull %tnqcr_pl.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tnqcr_pl.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %for.body.i.i, label %if.end11.err_nve_qos_init_crit_edge

if.end11.err_nve_qos_init_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_nve_qos_init

for.body.i.i:                                     ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tneem_pl.i.i) #13
  %13 = call ptr @memset(ptr %tneem_pl.i.i, i32 0, i32 12)
  %arrayidx.i.i.i.i.i = getelementptr inbounds i32, ptr %tneem_pl.i.i, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %arrayidx.i.i29.i.i.i = getelementptr inbounds i32, ptr %tneem_pl.i.i, i32 1
  %and7.i.i31.i.i.i = and i32 %15, -50528257
  %16 = ptrtoint ptr %arrayidx.i.i29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and7.i.i31.i.i.i, ptr %arrayidx.i.i29.i.i.i, align 4
  %17 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core.i, align 4
  %call3.i.i = call i32 @mlxsw_reg_write(ptr noundef %18, ptr noundef nonnull @mlxsw_reg_tneem, ptr noundef nonnull %tneem_pl.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i.not = icmp eq i32 %call3.i.i, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tneem_pl.i.i) #13
  br i1 %tobool.not.i.i.not, label %for.body.i.i.1, label %for.body.i.i.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge

for.body.i.i.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_ecn_encap_init.exit.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tneem_pl.i.i) #13
  %19 = call ptr @memset(ptr %tneem_pl.i.i, i32 0, i32 12)
  %arrayidx.i.i.i.i.i.1 = getelementptr inbounds i32, ptr %tneem_pl.i.i, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i.i.i.1, align 4
  %arrayidx.i.i29.i.i.i.1 = getelementptr inbounds i32, ptr %tneem_pl.i.i, i32 1
  %or.i.i.i.i.i.1 = and i32 %21, -50528257
  %or.i.i32.i.i.i.1 = or i32 %or.i.i.i.i.i.1, 16842752
  %22 = ptrtoint ptr %arrayidx.i.i29.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i.i32.i.i.i.1, ptr %arrayidx.i.i29.i.i.i.1, align 4
  %23 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core.i, align 4
  %call3.i.i.1 = call i32 @mlxsw_reg_write(ptr noundef %24, ptr noundef nonnull @mlxsw_reg_tneem, ptr noundef nonnull %tneem_pl.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.1)
  %tobool.not.i.i.1.not = icmp eq i32 %call3.i.i.1, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tneem_pl.i.i) #13
  br i1 %tobool.not.i.i.1.not, label %for.body.i.i.2, label %for.body.i.i.1.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge

for.body.i.i.1.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_ecn_encap_init.exit.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tneem_pl.i.i) #13
  %25 = call ptr @memset(ptr %tneem_pl.i.i, i32 0, i32 12)
  %arrayidx.i.i.i.i.i.2 = getelementptr inbounds i32, ptr %tneem_pl.i.i, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i.i.i.2, align 4
  %arrayidx.i.i29.i.i.i.2 = getelementptr inbounds i32, ptr %tneem_pl.i.i, i32 1
  %or.i.i.i.i.i.2 = and i32 %27, -50528257
  %or.i.i32.i.i.i.2 = or i32 %or.i.i.i.i.i.2, 33685504
  %28 = ptrtoint ptr %arrayidx.i.i29.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i.i32.i.i.i.2, ptr %arrayidx.i.i29.i.i.i.2, align 4
  %29 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core.i, align 4
  %call3.i.i.2 = call i32 @mlxsw_reg_write(ptr noundef %30, ptr noundef nonnull @mlxsw_reg_tneem, ptr noundef nonnull %tneem_pl.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.2)
  %tobool.not.i.i.2.not = icmp eq i32 %call3.i.i.2, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tneem_pl.i.i) #13
  br i1 %tobool.not.i.i.2.not, label %for.body.i.i.3, label %for.body.i.i.2.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge

for.body.i.i.2.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_nve_ecn_encap_init.exit.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tneem_pl.i.i) #13
  %31 = call ptr @memset(ptr %tneem_pl.i.i, i32 0, i32 12)
  %arrayidx.i.i.i.i.i.3 = getelementptr inbounds i32, ptr %tneem_pl.i.i, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i.i.i.3, align 4
  %arrayidx.i.i29.i.i.i.3 = getelementptr inbounds i32, ptr %tneem_pl.i.i, i32 1
  %or.i.i.i.i.i.3 = and i32 %33, -50528257
  %or.i.i32.i.i.i.3 = or i32 %or.i.i.i.i.i.3, 50462720
  %34 = ptrtoint ptr %arrayidx.i.i29.i.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i32.i.i.i.3, ptr %arrayidx.i.i29.i.i.i.3, align 4
  %35 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core.i, align 4
  %call3.i.i.3 = call i32 @mlxsw_reg_write(ptr noundef %36, ptr noundef nonnull @mlxsw_reg_tneem, ptr noundef nonnull %tneem_pl.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tneem_pl.i.i) #13
  br label %mlxsw_sp_nve_ecn_encap_init.exit.i

mlxsw_sp_nve_ecn_encap_init.exit.i:               ; preds = %for.body.i.i.3, %for.body.i.i.2.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge, %for.body.i.i.1.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge, %for.body.i.i.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge
  %call3.i.i.lcssa = phi i32 [ %call3.i.i, %for.body.i.i.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge ], [ %call3.i.i.1, %for.body.i.i.1.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge ], [ %call3.i.i.2, %for.body.i.i.2.mlxsw_sp_nve_ecn_encap_init.exit.i_crit_edge ], [ %call3.i.i.3, %for.body.i.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.lcssa)
  %tobool.not.i = icmp eq i32 %call3.i.i.lcssa, 0
  br i1 %tobool.not.i, label %for.cond1.preheader.i.i.preheader, label %mlxsw_sp_nve_ecn_encap_init.exit.i.err_nve_qos_init_crit_edge

mlxsw_sp_nve_ecn_encap_init.exit.i.err_nve_qos_init_crit_edge: ; preds = %mlxsw_sp_nve_ecn_encap_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_nve_qos_init

for.cond1.preheader.i.i.preheader:                ; preds = %mlxsw_sp_nve_ecn_encap_init.exit.i
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i32, ptr %tndem_pl.i.i.i, i32 1
  %arrayidx.i.i63.i.i.i.i = getelementptr inbounds i32, ptr %tndem_pl.i.i.i, i32 1
  %arrayidx.i.i91.i.i.i.i = getelementptr inbounds i32, ptr %tndem_pl.i.i.i, i32 2
  %arrayidx.i.i119.i.i.i.i = getelementptr inbounds i32, ptr %tndem_pl.i.i.i, i32 2
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc8.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond1.preheader.i.i.preheader
  %i.041.i.i = phi i32 [ %inc9.i.i, %for.inc8.i.i.for.cond1.preheader.i.i_crit_edge ], [ 0, %for.cond1.preheader.i.i.preheader ]
  %conv.i4.i = trunc i32 %i.041.i.i to i8
  %37 = and i8 %conv.i4.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.i.not.i.i.i.i.i = icmp eq i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i4.i)
  %cmp5.i.i.i.i = icmp eq i8 %conv.i4.i, 2
  %spec.select.i.i29.i.i.i.i = shl i32 %i.041.i.i, 16
  %and6.i.i34.i.i.i.i = and i32 %spec.select.i.i29.i.i.i.i, 196608
  br label %for.body3.i.i

for.cond1.i.i:                                    ; preds = %mlxsw_sp_tunnel_ecn_decap.exit.i.i.i
  %inc.i5.i = add nuw nsw i32 %j.040.i.i, 1
  %exitcond.not.i6.i = icmp eq i32 %inc.i5.i, 4
  br i1 %exitcond.not.i6.i, label %for.inc8.i.i, label %for.cond1.i.i.for.body3.i.i_crit_edge

for.cond1.i.i.for.body3.i.i_crit_edge:            ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.cond1.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i
  %j.040.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %inc.i5.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %conv4.i.i = trunc i32 %j.040.i.i to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tndem_pl.i.i.i) #13
  %38 = and i8 %conv4.i.i, 3
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %__INET_ECN_decapsulate.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %switch.cast = trunc i8 %38 to i4
  %switch.downshift = lshr i4 -2, %switch.cast
  %39 = and i4 %switch.downshift, 1
  %40 = zext i4 %39 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv4.i.i)
  %cmp16.i.i.i.i = icmp eq i8 %conv4.i.i, 1
  %or.cond18.i.i.i.i = and i1 %cmp5.i.i.i.i, %cmp16.i.i.i.i
  %spec.select19.i.i.i.i = select i1 %or.cond18.i.i.i.i, i32 1, i32 %i.041.i.i
  br label %41

__INET_ECN_decapsulate.exit.i.i.i.i:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp.i6.i.not.i.i.i.i = icmp eq i8 %38, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv4.i.i)
  %cmp.i.i.i.i = icmp eq i8 %conv4.i.i, 1
  %or.cond.i.i.i.i = and i1 %cmp5.i.i.i.i, %cmp.i.i.i.i
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 1, i32 %i.041.i.i
  br i1 %cmp.i6.i.not.i.i.i.i, label %__INET_ECN_decapsulate.exit.i.i.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i.i.i_crit_edge, label %__INET_ECN_decapsulate.exit.i.i.i.i._crit_edge

__INET_ECN_decapsulate.exit.i.i.i.i._crit_edge:   ; preds = %__INET_ECN_decapsulate.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %41

__INET_ECN_decapsulate.exit.i.i.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i.i.i_crit_edge: ; preds = %__INET_ECN_decapsulate.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_tunnel_ecn_decap.exit.i.i.i

41:                                               ; preds = %__INET_ECN_decapsulate.exit.i.i.i.i._crit_edge, %if.then.i.i.i.i.i
  %trap_en.0.i.i.i = phi i8 [ %40, %if.then.i.i.i.i.i ], [ 0, %__INET_ECN_decapsulate.exit.i.i.i.i._crit_edge ]
  %spec.select20.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i, %__INET_ECN_decapsulate.exit.i.i.i.i._crit_edge ]
  br label %mlxsw_sp_tunnel_ecn_decap.exit.i.i.i

mlxsw_sp_tunnel_ecn_decap.exit.i.i.i:             ; preds = %41, %__INET_ECN_decapsulate.exit.i.i.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i.i.i_crit_edge
  %trap_en.1.i.i.i = phi i8 [ %trap_en.0.i.i.i, %41 ], [ 0, %__INET_ECN_decapsulate.exit.i.i.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i.i.i_crit_edge ]
  %42 = phi i32 [ %spec.select20.i.i.i.i, %41 ], [ 3, %__INET_ECN_decapsulate.exit.i.i.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %trap_en.1.i.i.i)
  %tobool.i.i.i.not = icmp eq i8 %trap_en.1.i.i.i, 0
  %43 = call ptr @memset(ptr %tndem_pl.i.i.i, i32 0, i32 12)
  %spec.select.i.i.i.i.i.i = shl i32 %j.040.i.i, 24
  %and6.i.i.i.i.i.i = and i32 %spec.select.i.i.i.i.i.i, 50331648
  %44 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %and7.i.i.i.i.i.i = and i32 %45, -50529025
  %or.i.i.i.i.i.i = or i32 %and6.i.i.i.i.i.i, %and7.i.i.i.i.i.i
  %or.i.i38.i.i.i.i = or i32 %and6.i.i34.i.i.i.i, %or.i.i.i.i.i.i
  %conv3.i.i.i.i = shl i32 %42, 8
  %and6.i.i62.i.i.i.i = and i32 %conv3.i.i.i.i, 768
  %or.i.i66.i.i.i.i = or i32 %and6.i.i62.i.i.i.i, %or.i.i38.i.i.i.i
  %46 = ptrtoint ptr %arrayidx.i.i63.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i66.i.i.i.i, ptr %arrayidx.i.i63.i.i.i.i, align 4
  %spec.select.i.i85.i.i.i.i = select i1 %tobool.i.i.i.not, i32 0, i32 268435456
  %47 = ptrtoint ptr %arrayidx.i.i91.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i91.i.i.i.i, align 4
  %and7.i.i93.i.i.i.i = and i32 %48, 268434944
  %or.i.i94.i.i.i.i = or i32 %spec.select.i.i85.i.i.i.i, %and7.i.i93.i.i.i.i
  %conv5.i.i.i.i = select i1 %tobool.i.i.i.not, i32 0, i32 64
  %or.i.i122.i.i.i.i = or i32 %conv5.i.i.i.i, %or.i.i94.i.i.i.i
  %49 = ptrtoint ptr %arrayidx.i.i119.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i122.i.i.i.i, ptr %arrayidx.i.i119.i.i.i.i, align 4
  %50 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core.i, align 4
  %call3.i.i.i = call i32 @mlxsw_reg_write(ptr noundef %51, ptr noundef nonnull @mlxsw_reg_tndem, ptr noundef nonnull %tndem_pl.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tndem_pl.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool.not.i7.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool.not.i7.i, label %for.cond1.i.i, label %mlxsw_sp_tunnel_ecn_decap.exit.i.i.i.err_nve_qos_init_crit_edge

mlxsw_sp_tunnel_ecn_decap.exit.i.i.i.err_nve_qos_init_crit_edge: ; preds = %mlxsw_sp_tunnel_ecn_decap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_nve_qos_init

for.inc8.i.i:                                     ; preds = %for.cond1.i.i
  %inc9.i.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond68.not.i.i = icmp eq i32 %inc9.i.i, 4
  br i1 %exitcond68.not.i.i, label %if.end19, label %for.inc8.i.i.for.cond1.preheader.i.i_crit_edge

for.inc8.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %for.inc8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i.i

if.end19:                                         ; preds = %for.inc8.i.i
  %call20 = call fastcc i32 @mlxsw_sp_nve_resources_query(ptr noundef %mlxsw_sp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end19.err_nve_qos_init_crit_edge

if.end19.err_nve_qos_init_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_nve_qos_init

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_nve_qos_init:                                 ; preds = %if.end19.err_nve_qos_init_crit_edge, %mlxsw_sp_tunnel_ecn_decap.exit.i.i.i.err_nve_qos_init_crit_edge, %mlxsw_sp_nve_ecn_encap_init.exit.i.err_nve_qos_init_crit_edge, %if.end11.err_nve_qos_init_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end11.err_nve_qos_init_crit_edge ], [ %call20, %if.end19.err_nve_qos_init_crit_edge ], [ %call3.i.i.lcssa, %mlxsw_sp_nve_ecn_encap_init.exit.i.err_nve_qos_init_crit_edge ], [ %call3.i.i.i, %mlxsw_sp_tunnel_ecn_decap.exit.i.i.i.err_nve_qos_init_crit_edge ]
  call void @rhashtable_destroy(ptr noundef %ipv6_ht) #13
  br label %err_ipv6_rhashtable_init

err_ipv6_rhashtable_init:                         ; preds = %err_nve_qos_init, %if.end7.err_ipv6_rhashtable_init_crit_edge
  %err.1 = phi i32 [ %call8, %if.end7.err_ipv6_rhashtable_init_crit_edge ], [ %err.0, %err_nve_qos_init ]
  call void @rhashtable_destroy(ptr noundef %mc_list_ht) #13
  br label %err_mc_rhashtable_init

err_mc_rhashtable_init:                           ; preds = %err_ipv6_rhashtable_init, %if.end.err_mc_rhashtable_init_crit_edge
  %err.2 = phi i32 [ %call4, %if.end.err_mc_rhashtable_init_crit_edge ], [ %err.1, %err_ipv6_rhashtable_init ]
  %52 = ptrtoint ptr %nve1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %nve1, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_mc_rhashtable_init, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_mc_rhashtable_init ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_nve_resources_query(ptr nocapture noundef readonly %mlxsw_sp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %1, i32 noundef 43) #13
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call2 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %3, i32 noundef 44) #13
  br i1 %call2, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call4 = tail call i64 @mlxsw_core_res_get(ptr noundef %5, i32 noundef 43) #13
  %conv = trunc i64 %call4 to i32
  %nve = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %6 = ptrtoint ptr %nve to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nve, align 4
  %num_max_mc_entries = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %num_max_mc_entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %num_max_mc_entries, align 4
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %call6 = tail call i64 @mlxsw_core_res_get(ptr noundef %10, i32 noundef 44) #13
  %conv7 = trunc i64 %call6 to i32
  %11 = ptrtoint ptr %nve to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nve, align 4
  %arrayidx10 = getelementptr %struct.mlxsw_sp_nve, ptr %12, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv7, ptr %arrayidx10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_nve_fini(ptr nocapture noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nve = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 17
  %0 = ptrtoint ptr %nve to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nve, align 4
  %num_nve_tunnels = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_nve_tunnels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_nve_tunnels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !165

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1167, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %nve to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nve, align 4
  %ipv6_addr_list = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ipv6_addr_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ipv6_addr_list, align 4
  %cmp.i.not = icmp eq ptr %7, %ipv6_addr_list
  br i1 %cmp.i.not, label %if.end.if.end46_crit_edge, label %do.end40, !prof !165

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1168, i32 noundef 9, ptr noundef null) #13
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end.if.end46_crit_edge
  %8 = ptrtoint ptr %nve to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nve, align 4
  %ipv6_ht = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %9, i32 0, i32 2
  tail call void @rhashtable_destroy(ptr noundef %ipv6_ht) #13
  %10 = ptrtoint ptr %nve to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nve, align 4
  %mc_list_ht = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %11, i32 0, i32 1
  tail call void @rhashtable_destroy(ptr noundef %mc_list_ht) #13
  %12 = ptrtoint ptr %nve to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nve, align 4
  tail call void @kfree(ptr noundef %13) #13
  %14 = ptrtoint ptr %nve to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %nve, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !170
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 715, ptr noundef nonnull @.str.5) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !164

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #13
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #13
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !165

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #13
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #13
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !165

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #13
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !171
  %25 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #13
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 377, ptr noundef nonnull @.str.7) #13
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.8, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 732, ptr noundef nonnull @.str.7) #13
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !165

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !164

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 377, ptr noundef nonnull @.str.7) #13
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #13
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #13, !srcloc !172
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #13
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #13
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !171
  %60 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #13
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !174

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !175
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !165

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !177
  %7 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !179
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !180
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #13
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !164

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #13, !srcloc !181
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !183
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !184
  %3 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !185
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !186
  %2 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_kvdl_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_nve_mc_record_ipv4_entry_add(ptr nocapture noundef readnone %mc_record, ptr nocapture noundef writeonly %mc_entry, ptr nocapture noundef readonly %addr) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = ptrtoint ptr %mc_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mc_entry, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_nve_mc_record_ipv4_entry_del(ptr nocapture noundef %mc_record, ptr nocapture noundef %mc_entry) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_nve_mc_record_ipv4_entry_set(ptr nocapture noundef readnone %mc_record, ptr nocapture noundef readonly %mc_entry, ptr nocapture noundef %tnumt_pl, i32 noundef %entry_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mc_entry, align 4
  %conv.i.i.i = shl i32 %entry_index, 2
  %mul.i.i.i = and i32 %conv.i.i.i, 262140
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 12
  %div1.i.i.i = lshr exact i32 %add.i.i.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %tnumt_pl, i32 %div1.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx.i.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_nve_mc_record_ipv4_entry_compare(ptr nocapture noundef readnone %mc_record, ptr nocapture noundef readonly %mc_entry, ptr nocapture noundef readonly %addr) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mc_entry, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_nve_mc_record_ipv6_entry_add(ptr nocapture noundef readonly %mc_record, ptr nocapture noundef writeonly %mc_entry, ptr noundef %addr) #0 align 64 {
entry:
  %kvdl_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kvdl_index) #13
  %0 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %kvdl_index, align 4, !annotation !166
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 3
  %1 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp, align 4
  %call = call i32 @mlxsw_sp_ipv6_addr_kvdl_index_get(ptr noundef %2, ptr noundef %addr, ptr noundef nonnull %kvdl_index) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = call ptr @memcpy(ptr %mc_entry, ptr %addr, i32 16)
  %4 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kvdl_index, align 4
  %addr6_kvdl_index = getelementptr inbounds %struct.mlxsw_sp_nve_mc_ipv6_entry, ptr %mc_entry, i32 0, i32 1
  %6 = ptrtoint ptr %addr6_kvdl_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %addr6_kvdl_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kvdl_index) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_nve_mc_record_ipv6_entry_del(ptr nocapture noundef readonly %mc_record, ptr noundef %mc_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 3
  %0 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp, align 4
  tail call void @mlxsw_sp_ipv6_addr_put(ptr noundef %1, ptr noundef %mc_entry) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_nve_mc_record_ipv6_entry_set(ptr nocapture noundef readnone %mc_record, ptr nocapture noundef readonly %mc_entry, ptr nocapture noundef %tnumt_pl, i32 noundef %entry_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %addr6_kvdl_index = getelementptr inbounds %struct.mlxsw_sp_nve_mc_ipv6_entry, ptr %mc_entry, i32 0, i32 1
  %0 = ptrtoint ptr %addr6_kvdl_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr6_kvdl_index, align 4
  %conv.i.i.i = shl i32 %entry_index, 2
  %mul.i.i.i = and i32 %conv.i.i.i, 262140
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 12
  %div1.i.i.i = lshr exact i32 %add.i.i.i, 2
  %and6.i.i = and i32 %1, 16777215
  %arrayidx.i.i = getelementptr i32, ptr %tnumt_pl, i32 %div1.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %3, -16777216
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_nve_mc_record_ipv6_entry_compare(ptr nocapture noundef readnone %mc_record, ptr nocapture noundef readonly %mc_entry, ptr nocapture noundef readonly %addr) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mc_entry, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %3, %1
  %arrayidx4.i = getelementptr [4 x i32], ptr %mc_entry, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %7, %5
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %mc_entry, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %11, %9
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %mc_entry, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %15, %13
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_nve_mc_record_refresh(ptr noundef %mc_record) unnamed_addr #0 align 64 {
entry:
  %tnumt_pl = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 5
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mc_list2 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 4
  %4 = ptrtoint ptr %mc_list2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_list2, align 4
  %mlxsw_sp3 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 3
  %6 = ptrtoint ptr %mlxsw_sp3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tnumt_pl) #13
  %8 = call ptr @memset(ptr %tnumt_pl, i32 255, i32 32)
  %9 = ptrtoint ptr %mc_record to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mc_record, align 4
  %cmp.i.not = icmp eq ptr %10, %5
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %kvdl_index = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %kvdl_index, align 4
  %phi.bo = and i32 %12, 16777215
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spec.select.i.i70.i = phi i32 [ -2147483648, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %next_kvdl_index.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %kvdl_index5 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 6
  %13 = ptrtoint ptr %kvdl_index5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %kvdl_index5, align 4
  %num_entries7 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 2
  %15 = ptrtoint ptr %num_entries7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_entries7, align 4
  %17 = call ptr @memset(ptr %tnumt_pl, i32 0, i32 32)
  %spec.select.i.i.i = shl i32 %3, 28
  %and6.i.i47.i = and i32 %14, 16777215
  %or.i.i51.i = or i32 %and6.i.i47.i, %spec.select.i.i.i
  %18 = ptrtoint ptr %tnumt_pl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i51.i, ptr %tnumt_pl, align 4
  %arrayidx.i.i76.i = getelementptr inbounds i32, ptr %tnumt_pl, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i76.i, align 4
  %and7.i.i78.i = and i32 %20, 2130706432
  %or.i.i79.i = or i32 %spec.select.i.i70.i, %and7.i.i78.i
  %arrayidx.i.i104.i = getelementptr inbounds i32, ptr %tnumt_pl, i32 1
  %or.i.i107.i = or i32 %next_kvdl_index.0, %or.i.i79.i
  %21 = ptrtoint ptr %arrayidx.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i107.i, ptr %arrayidx.i.i104.i, align 4
  %and6.i.i131.i = and i32 %16, 7
  %arrayidx.i.i132.i = getelementptr inbounds i32, ptr %tnumt_pl, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i132.i, align 4
  %and7.i.i134.i = and i32 %23, -8
  %or.i.i135.i = or i32 %and6.i.i131.i, %and7.i.i134.i
  store i32 %or.i.i135.i, ptr %arrayidx.i.i132.i, align 4
  %nve = getelementptr inbounds %struct.mlxsw_sp, ptr %7, i32 0, i32 17
  %24 = ptrtoint ptr %nve to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nve, align 4
  %proto = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 1
  %26 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %proto, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_nve, ptr %25, i32 0, i32 7, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp69.not = icmp eq i32 %29, 0
  br i1 %cmp69.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %num_entries.072 = phi i32 [ %num_entries.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.070 = phi i32 [ %inc15, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %valid = getelementptr %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 7, i32 %i.070, i32 1
  %30 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx9 = getelementptr %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 7, i32 %i.070
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %entry_set = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %entry_set to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entry_set, align 4
  %inc = add i32 %num_entries.072, 1
  call void %34(ptr noundef %mc_record, ptr noundef %arrayidx9, ptr noundef nonnull %tnumt_pl, i32 noundef %num_entries.072) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.body.cleanup_crit_edge
  %num_entries.1 = phi i32 [ %inc, %if.end12 ], [ %num_entries.072, %for.body.cleanup_crit_edge ]
  %inc15 = add nuw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc15, %29
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %num_entries.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %num_entries.1, %cleanup.for.end_crit_edge ]
  %35 = ptrtoint ptr %num_entries7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_entries7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_entries.0.lcssa, i32 %36)
  %cmp17.not = icmp eq i32 %num_entries.0.lcssa, %36
  br i1 %cmp17.not, label %for.end.if.end33_crit_edge, label %do.end, !prof !165

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef null) #13
  br label %if.end33

if.end33:                                         ; preds = %do.end, %for.end.if.end33_crit_edge
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %7, i32 0, i32 1
  %37 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core, align 4
  %call42 = call i32 @mlxsw_reg_write(ptr noundef %38, ptr noundef nonnull @mlxsw_reg_tnumt, ptr noundef nonnull %tnumt_pl) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tnumt_pl) #13
  ret i32 %call42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_kvdl_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_fid_nve_flood_index_is_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_nve_flood_index_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_nve_mc_record_entry_del(ptr noundef %mc_record, ptr noundef %mc_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_list1 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 4
  %0 = ptrtoint ptr %mc_list1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_list1, align 4
  %valid = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, ptr %mc_entry, i32 0, i32 1
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %valid, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %valid, align 4
  %num_entries = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 2
  %3 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_entries, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @mlxsw_sp_nve_mc_record_refresh(ptr noundef %mc_record)
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mc_list1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mc_list1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp.i = icmp eq ptr %8, %mc_record
  br i1 %cmp.i, label %land.lhs.true, label %if.then4

if.then4:                                         ; preds = %if.end
  %prev = getelementptr inbounds %struct.list_head, ptr %mc_record, i32 0, i32 1
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mc_record) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev, align 4
  %13 = ptrtoint ptr %mc_record to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mc_record, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %17 = ptrtoint ptr %mc_record to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_record, align 4
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev, align 4
  %call6 = tail call fastcc i32 @mlxsw_sp_nve_mc_record_refresh(ptr noundef %10)
  %prev.i54 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i54, align 4
  %call.i.i55 = tail call zeroext i1 @__list_add_valid(ptr noundef %mc_record, ptr noundef %20, ptr noundef %1) #13
  br i1 %call.i.i55, label %if.end.i.i56, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i56:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mc_record, ptr %prev.i54, align 4
  %22 = ptrtoint ptr %mc_record to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %mc_record, align 4
  %23 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %mc_record, ptr %20, align 4
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %26, %1
  br i1 %cmp.i.not.i, label %land.lhs.true.if.then14_crit_edge, label %list_is_singular.exit

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

list_is_singular.exit:                            ; preds = %land.lhs.true
  %prev.i59 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i59, align 4
  %cmp.i60.not = icmp eq ptr %26, %28
  br i1 %cmp.i60.not, label %list_is_singular.exit.cleanup_crit_edge, label %list_is_singular.exit.if.then14_crit_edge

list_is_singular.exit.if.then14_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

list_is_singular.exit.cleanup_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %list_is_singular.exit.if.then14_crit_edge, %land.lhs.true.if.then14_crit_edge
  %29 = ptrtoint ptr %mc_record to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mc_record, align 4
  %kvdl_index = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 6
  %31 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %kvdl_index, align 4
  %kvdl_index19 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %30, i32 0, i32 6
  %33 = ptrtoint ptr %kvdl_index19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %kvdl_index19, align 4
  store i32 %34, ptr %kvdl_index, align 4
  store i32 %32, ptr %kvdl_index19, align 4
  %call22 = tail call fastcc i32 @mlxsw_sp_nve_mc_record_refresh(ptr noundef %30)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %list_is_singular.exit.cleanup_crit_edge, %if.end.i.i56, %list_del.exit.cleanup_crit_edge, %if.then
  %ops26 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, ptr %mc_record, i32 0, i32 5
  %35 = ptrtoint ptr %ops26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops26, align 4
  %entry_del27 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %entry_del27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %entry_del27, align 4
  tail call void %38(ptr noundef %mc_record, ptr noundef %mc_entry) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !170
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1076, ptr noundef nonnull @.str.5) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !164

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #13
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #13
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !165

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 377, ptr noundef nonnull @.str.7) #13
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.34, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1032, ptr noundef nonnull @.str.7) #13
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !187
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #13
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.36, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1004, ptr noundef nonnull @.str.7) #13
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #13, !srcloc !188
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !164

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #13
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.32, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1085, ptr noundef nonnull @.str.5) #13
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !171
  %46 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !170
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #13
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 594, ptr noundef nonnull @.str.5) #13
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #13
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !165

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #13
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 369, ptr noundef nonnull @.str.5) #13
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !191
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.37, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned.37, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 614, ptr noundef nonnull @.str.5) #13
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !165

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #13
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #13
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !171
  %43 = call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_fid_nve_flood_index_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_nve_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !23, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !116, !117, !119, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @mlxsw_sp1_nve_ops_arr, !1, !"mlxsw_sp1_nve_ops_arr", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 18, i32 32}
!2 = !{ptr @mlxsw_sp2_nve_ops_arr, !3, !"mlxsw_sp2_nve_ops_arr", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 22, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 196, i32 3}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 892, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 910, i32 2}
!11 = !{ptr @mlxsw_sp_nve_fid_enable.__msg, !12, !"__msg", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 954, i32 3}
!13 = !{ptr @mlxsw_sp_nve_fid_enable.__msg.2, !14, !"__msg", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 960, i32 3}
!15 = !{ptr @mlxsw_sp_nve_fid_enable.__msg.3, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 967, i32 3}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!35 = !{ptr @mlxsw_sp_nve_mc_record_ops_arr, !36, !"mlxsw_sp_nve_mc_record_ops_arr", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 182, i32 1}
!37 = !{ptr @mlxsw_sp_nve_mc_record_ipv4_ops, !38, !"mlxsw_sp_nve_mc_record_ipv4_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 120, i32 1}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__mlxsw_item_offset._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @__mlxsw_item_offset._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11745, i32 1}
!47 = distinct !{null, !46, !"mlxsw_reg_tnumt_udip_item", i1 false, i1 false}
!48 = !{ptr @mlxsw_sp_nve_mc_record_ipv6_ops, !49, !"mlxsw_sp_nve_mc_record_ipv6_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 173, i32 1}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11752, i32 1}
!52 = distinct !{null, !51, !"mlxsw_reg_tnumt_udip_ptr_item", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11707, i32 1}
!55 = distinct !{null, !54, !"mlxsw_reg_tnumt_record_type_item", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11713, i32 1}
!58 = distinct !{null, !57, !"mlxsw_reg_tnumt_tunnel_port_item", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11720, i32 1}
!61 = distinct !{null, !60, !"mlxsw_reg_tnumt_underlay_mc_ptr_item", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11726, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_tnumt_vnext_item", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11732, i32 1}
!67 = distinct !{null, !66, !"mlxsw_reg_tnumt_next_underlay_mc_ptr_item", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11739, i32 1}
!70 = distinct !{null, !69, !"mlxsw_reg_tnumt_record_size_item", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11695, i32 1}
!73 = !{ptr @mlxsw_reg_tnumt, !72, !"mlxsw_reg_tnumt", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1130, i32 1}
!96 = distinct !{null, !95, !"mlxsw_reg_sfdf_flush_type_item", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1138, i32 1}
!99 = distinct !{null, !98, !"mlxsw_reg_sfdf_flush_static_item", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1152, i32 1}
!102 = distinct !{null, !101, !"mlxsw_reg_sfdf_fid_item", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1097, i32 1}
!105 = !{ptr @mlxsw_reg_sfdf, !104, !"mlxsw_reg_sfdf", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11809, i32 1}
!108 = distinct !{null, !107, !"mlxsw_reg_tnqdr_local_port_item", i1 false, i1 false}
!109 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !107, !"mlxsw_reg_tnqdr_lp_msb_item", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11815, i32 1}
!113 = distinct !{null, !112, !"mlxsw_reg_tnqdr_dscp_item", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11803, i32 1}
!116 = !{ptr @mlxsw_reg_tnqdr, !115, !"mlxsw_reg_tnqdr", i1 false, i1 false}
!117 = !{ptr @mlxsw_sp_nve_mc_list_ht_params, !118, !"mlxsw_sp_nve_mc_list_ht_params", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 79, i32 39}
!119 = !{ptr @mlxsw_sp_nve_ipv6_ht_params, !120, !"mlxsw_sp_nve_ipv6_ht_params", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve.c", i32 812, i32 39}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11787, i32 1}
!123 = distinct !{null, !122, !"mlxsw_reg_tnqcr_enc_set_dscp_item", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11778, i32 1}
!126 = !{ptr @mlxsw_reg_tnqcr, !125, !"mlxsw_reg_tnqcr", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11838, i32 1}
!129 = distinct !{null, !128, !"mlxsw_reg_tneem_overlay_ecn_item", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11844, i32 1}
!132 = distinct !{null, !131, !"mlxsw_reg_tneem_underlay_ecn_item", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11832, i32 1}
!135 = !{ptr @mlxsw_reg_tneem, !134, !"mlxsw_reg_tneem", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11868, i32 1}
!138 = distinct !{null, !137, !"mlxsw_reg_tndem_underlay_ecn_item", i1 false, i1 false}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11874, i32 1}
!141 = distinct !{null, !140, !"mlxsw_reg_tndem_overlay_ecn_item", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11881, i32 1}
!144 = distinct !{null, !143, !"mlxsw_reg_tndem_eip_ecn_item", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11889, i32 1}
!147 = distinct !{null, !146, !"mlxsw_reg_tndem_trap_en_item", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11896, i32 1}
!150 = distinct !{null, !149, !"mlxsw_reg_tndem_trap_id_item", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11862, i32 1}
!153 = !{ptr @mlxsw_reg_tndem, !152, !"mlxsw_reg_tndem", i1 false, i1 false}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{!"auto-init"}
!167 = !{i64 990698, i64 990759}
!168 = !{i64 993430}
!169 = !{i64 993715}
!170 = !{i64 2149922889}
!171 = !{i64 2149923155}
!172 = !{i64 2148586018, i64 2148586044, i64 2148586073, i64 2148586107, i64 2148586138, i64 2148586161}
!173 = !{i64 2151676138}
!174 = !{!"branch_weights", i32 2146410443, i32 1073205}
!175 = !{i64 2148594876, i64 2148594908, i64 2148594937, i64 2148594971, i64 2148595002, i64 2148595025}
!176 = !{i64 2148683981}
!177 = !{i64 2151676298}
!178 = !{i64 2151676575}
!179 = !{i64 2151676417}
!180 = !{i64 2151676780}
!181 = !{i64 2151677843, i64 2151678335, i64 2151677880, i64 2151677936, i64 2151677970, i64 2151677994, i64 2151678035, i64 2151678056, i64 2151678084, i64 2151678118}
!182 = !{i64 2148682868}
!183 = !{i64 2148593263, i64 2148593295, i64 2148593324, i64 2148593358, i64 2148593389, i64 2148593412}
!184 = !{i64 2151679238}
!185 = !{i64 2160224764}
!186 = !{i64 2160227063}
!187 = !{i64 2160299067}
!188 = !{i64 2148588483, i64 2148588509, i64 2148588538, i64 2148588572, i64 2148588603, i64 2148588626}
!189 = !{i8 0, i8 2}
!190 = !{i64 2160231691}
!191 = !{i64 2160235125}
