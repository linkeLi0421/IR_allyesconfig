; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_switchdev_ops = type { ptr }
%struct.mlxsw_sp_bridge_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_bridge = type { ptr, %struct.anon.170, i32, i8, %struct.list_head, [219 x i32], ptr, ptr, ptr }
%struct.anon.170 = type { %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlxsw_sp_port_vlan = type { %struct.list_head, ptr, ptr, i16, ptr, %struct.list_head }
%struct.mlxsw_sp_bridge_port = type { ptr, ptr, %struct.list_head, %struct.list_head, i32, i8, i32, i8, i8, %union.anon.164 }
%union.anon.164 = type { i16 }
%struct.mlxsw_sp_bridge_vlan = type { %struct.list_head, %struct.list_head, i16 }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.161, %struct.anon.162, %struct.mlxsw_sp_port_mapping, %struct.anon.163, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.166, i32, i32, ptr, i64 }
%struct.anon.161 = type { i8 }
%struct.anon.162 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.163 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.anon.166 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp_bridge_device = type { ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, ptr }
%struct.mlxsw_sp_mid = type { %struct.list_head, [6 x i8], i16, i16, i8, ptr }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_switchdev_event_work = type { %struct.work_struct, %union.anon.182, ptr, i32 }
%union.anon.182 = type { %struct.switchdev_notifier_vxlan_fdb_info }
%struct.switchdev_notifier_vxlan_fdb_info = type { %struct.switchdev_notifier_info, %union.vxlan_addr, i16, i32, i32, [6 x i8], i32, i8, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%union.vxlan_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.183 }
%union.anon.183 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.bridge_vlan_info = type { i16, i16 }
%struct.mlxsw_sp_nve_params = type { i32, i32, ptr, i16 }
%struct.switchdev_notifier_port_obj_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }

@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_notifier = dso_local global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mlxsw_sp_switchdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mlxsw_sp1_switchdev_ops = dso_local constant { %struct.mlxsw_sp_switchdev_ops, [28 x i8] } { %struct.mlxsw_sp_switchdev_ops { ptr @mlxsw_sp1_switchdev_init }, [28 x i8] zeroinitializer }, align 32
@mlxsw_sp2_switchdev_ops = dso_local constant { %struct.mlxsw_sp_switchdev_ops, [28 x i8] } { %struct.mlxsw_sp_switchdev_ops { ptr @mlxsw_sp2_switchdev_init }, [28 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_8021q_ops = internal constant { %struct.mlxsw_sp_bridge_ops, [40 x i8] } { %struct.mlxsw_sp_bridge_ops { ptr @mlxsw_sp_bridge_8021q_port_join, ptr @mlxsw_sp_bridge_8021q_port_leave, ptr @mlxsw_sp_bridge_8021q_vxlan_join, ptr @mlxsw_sp_bridge_8021q_fid_get, ptr @mlxsw_sp_bridge_8021q_fid_lookup, ptr @mlxsw_sp_bridge_8021q_fid_vid }, [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_8021d_ops = internal constant { %struct.mlxsw_sp_bridge_ops, [40 x i8] } { %struct.mlxsw_sp_bridge_ops { ptr @mlxsw_sp_bridge_8021d_port_join, ptr @mlxsw_sp_bridge_8021d_port_leave, ptr @mlxsw_sp_bridge_8021d_vxlan_join, ptr @mlxsw_sp_bridge_8021d_fid_get, ptr @mlxsw_sp_bridge_8021d_fid_lookup, ptr @mlxsw_sp_bridge_8021d_fid_vid }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_sfdf = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8211, i16 20, ptr @.str.13 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 35, ptr null, ptr null }, align 1
@.str.2 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sfdf_flush_type\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_sfdf_flush_static\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sfdf_fid\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_sfdf_port_fid_system_port\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sfdf\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_sfd = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8202, i16 1040, ptr @.str.35 }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_sfd_op\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_sfd_record_locator\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_sfd_num_rec\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_sfd_rec_swid\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_sfd_rec_type\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_sfd_rec_action\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_sfd_rec_policy\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sfd_uc_sub_port\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_sfd_uc_fid_vid\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_sfd_uc_system_port\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfd\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to remove port from SMID\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to remove MC SFD\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_sfd_mc_pgi\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_sfd_mc_fid_vid\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_sfd_mc_mid\00", [17 x i8] zeroinitializer }, align 32
@mlxsw_reg_smid2 = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8244, i16 288, ptr @.str.52 }, [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_smid2_swid\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_smid2_mid\00", [18 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 216, ptr null, ptr null }, align 1
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,element_size=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__mlxsw_item_bit_array_offset\00", [34 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry_ptr = internal global ptr @__mlxsw_item_bit_array_offset._entry, section ".printk_index", align 4
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_smid2_port\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_smid2_port_mask\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smid2\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_device_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 221, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Only one VLAN-aware bridge is supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlxsw_sp_bridge_device_create\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_device_create._entry_ptr = internal global ptr @mlxsw_sp_bridge_device_create._entry, section ".printk_index", align 4
@mlxsw_sp_bridge_device_create.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlxsw_spectrum: Only one VLAN-aware bridge is supported\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&switchdev_work->work)\00", [55 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_event.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mlxsw_reg_sfdat = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8201, i16 8, ptr @.str.63 }, [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_sfdat_swid\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_sfdat_age_time\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sfdat\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"VLAN filtering can't be changed for existing bridge\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"VLAN protocol can't be changed on existing bridge\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_sfd_uc_tunnel_uip_msb\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_sfd_uc_tunnel_uip_lsb\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_sfd_uc_tunnel_fid\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_sfd_uc_tunnel_protocol\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_sfd_uc_lag_sub_port\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_sfd_uc_lag_fid_vid\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_sfd_uc_lag_lag_vid\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_sfd_uc_lag_lag_id\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mlxsw_sp_switchdev_vxlan_work_prepare.__msg = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlxsw_spectrum: VxLAN: FDB: Non-default remote port is not supported\00", [59 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_vxlan_work_prepare.__msg.82 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mlxsw_spectrum: VxLAN: FDB: Non-default VNI is not supported\00", [35 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_vxlan_work_prepare.__msg.83 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mlxsw_spectrum: VxLAN: FDB: Local interface is not supported\00", [35 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_vxlan_work_prepare.__msg.84 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"mlxsw_spectrum: VxLAN: FDB: Multicast MAC addresses not supported\00", [62 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_vxlan_work_prepare.__msg.85 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mlxsw_spectrum: VxLAN: FDB: Multicast destination IP is not supported\00", [58 x i8] zeroinitializer }, align 32
@mlxsw_sp1_bridge_8021ad_ops = internal constant { %struct.mlxsw_sp_bridge_ops, [40 x i8] } { %struct.mlxsw_sp_bridge_ops { ptr @mlxsw_sp_bridge_8021ad_port_join, ptr @mlxsw_sp_bridge_8021ad_port_leave, ptr @mlxsw_sp_bridge_8021ad_vxlan_join, ptr @mlxsw_sp_bridge_8021q_fid_get, ptr @mlxsw_sp_bridge_8021q_fid_lookup, ptr @mlxsw_sp_bridge_8021q_fid_vid }, [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_vlan_aware_port_join.__msg = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlxsw_spectrum: Can not enslave a VLAN device to a VLAN-aware bridge\00", [59 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlxsw_spectrum: Failed to create 802.1Q FID\00", [52 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxsw_spectrum: VNI is already set on FID\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp2_bridge_8021ad_ops = internal constant { %struct.mlxsw_sp_bridge_ops, [40 x i8] } { %struct.mlxsw_sp_bridge_ops { ptr @mlxsw_sp2_bridge_8021ad_port_join, ptr @mlxsw_sp2_bridge_8021ad_port_leave, ptr @mlxsw_sp_bridge_8021ad_vxlan_join, ptr @mlxsw_sp_bridge_8021q_fid_get, ptr @mlxsw_sp_bridge_8021q_fid_lookup, ptr @mlxsw_sp_bridge_8021q_fid_vid }, [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_8021d_port_join.__msg = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mlxsw_spectrum: Can not bridge VLAN uppers of the same port\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_8021d_vxlan_join.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlxsw_spectrum: Failed to create 802.1D FID\00", [52 x i8] zeroinitializer }, align 32
@mlxsw_sp_bridge_8021d_vxlan_join.__msg.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxsw_spectrum: VNI is already set on FID\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str, i32 3651, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set default ageing time\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlxsw_sp_fdb_init\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_init._entry_ptr = internal global ptr @mlxsw_sp_fdb_init._entry, section ".printk_index", align 4
@mlxsw_sp_fdb_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str, i32 3657, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to register switchdev notifier\0A\00", [57 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_init._entry_ptr.92 = internal global ptr @mlxsw_sp_fdb_init._entry.90, section ".printk_index", align 4
@mlxsw_sp_switchdev_blocking_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mlxsw_sp_switchdev_blocking_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str, i32 3664, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to register switchdev blocking notifier\0A\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_init._entry_ptr.95 = internal global ptr @mlxsw_sp_fdb_init._entry.93, section ".printk_index", align 4
@mlxsw_sp_fdb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.96 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&bridge->fdb_notify.dw)->work)\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_init.__key.97 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&bridge->fdb_notify.dw)->timer\00", [63 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_vxlan_vlan_add.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxsw_spectrum: VLAN already mapped to a different VNI\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Can't change PVID, it's used by router interface\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Can't remove PVID, it's used by router interface\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to allocate MC group\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to set SMID\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to remove port from MC DB\0A\00", [62 x i8] zeroinitializer }, align 32
@mlxsw_reg_sfn = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8203, i16 1040, ptr @.str.112 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_work._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.104, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mlxsw_sp_fdb_notify_work = private unnamed_addr constant [25 x i8] c"mlxsw_sp_fdb_notify_work\00", align 1
@mlxsw_sp_fdb_notify_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @__func__.mlxsw_sp_fdb_notify_work, ptr @.str, i32 2926, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get FDB notifications\0A\00", [63 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_work._entry_ptr = internal global ptr @mlxsw_sp_fdb_notify_work._entry, section ".printk_index", align 4
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sfn_swid\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_sfn_end\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_sfn_num_rec\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfn\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_sfn_rec_type\00", [47 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_process.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_fdb_notify_mac_process._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.104, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mlxsw_sp_fdb_notify_mac_process = private unnamed_addr constant [32 x i8] c"mlxsw_sp_fdb_notify_mac_process\00", align 1
@mlxsw_sp_fdb_notify_mac_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @__func__.mlxsw_sp_fdb_notify_mac_process, ptr @.str, i32 2637, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Incorrect local port in FDB notification\0A\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_process._entry_ptr = internal global ptr @mlxsw_sp_fdb_notify_mac_process._entry, section ".printk_index", align 4
@.str.116 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Failed to find a matching {Port, VID} following FDB notification\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"{Port, VID} not associated with a bridge\0A\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_process._rs.118 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.104, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_process._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @__func__.mlxsw_sp_fdb_notify_mac_process, ptr @.str, i32 2663, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set FDB entry\0A\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_process._entry_ptr.121 = internal global ptr @mlxsw_sp_fdb_notify_mac_process._entry.119, section ".printk_index", align 4
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_sfn_mac_fid\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_sfn_mac_system_port\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_lag_process._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.104, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mlxsw_sp_fdb_notify_mac_lag_process = private unnamed_addr constant [36 x i8] c"mlxsw_sp_fdb_notify_mac_lag_process\00", align 1
@mlxsw_sp_fdb_notify_mac_lag_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @__func__.mlxsw_sp_fdb_notify_mac_lag_process, ptr @.str, i32 2699, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot find port representor for LAG\0A\00", [58 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_lag_process._entry_ptr = internal global ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry, section ".printk_index", align 4
@mlxsw_sp_fdb_notify_mac_lag_process._rs.128 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.104, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_lag_process._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @__func__.mlxsw_sp_fdb_notify_mac_lag_process, ptr @.str, i32 2727, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_fdb_notify_mac_lag_process._entry_ptr.130 = internal global ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry.129, section ".printk_index", align 4
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_sfn_mac_lag_lag_id\00", [41 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_sfn_uc_tunnel_uip_msb\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_sfn_uc_tunnel_uip_lsb\00", [38 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_sfn_uc_tunnel_protocol\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 12, i64 13]
@__sancov_gen_cov_switch_values.139 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 13]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.144 = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 6, i64 7, i64 8, i64 13, i64 14]
@__sancov_gen_cov_switch_values.145 = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 6, i64 7, i64 8, i64 13, i64 14]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1118, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant [28 x i8] c"mlxsw_sp_switchdev_notifier\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3381, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant [24 x i8] c"mlxsw_sp1_switchdev_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3695, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"mlxsw_sp2_switchdev_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3704, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"mlxsw_sp_bridge_8021q_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2208, i32 41 }
@___asan_gen_.164 = private unnamed_addr constant [26 x i8] c"mlxsw_sp_bridge_8021d_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2348, i32 41 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"../include/net/vxlan.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 420, i32 43 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sfdf\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 33, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1130, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1138, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1152, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1164, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1097, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [14 x i8] c"mlxsw_reg_sfd\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 213, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 222, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 231, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 245, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 259, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 313, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 277, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 322, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 335, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 342, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 173, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1951, i32 20 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1956, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 433, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 441, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 450, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_smid2\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 2101, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 2108, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 215, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 2114, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 2120, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 2095, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 221, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 222, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3341, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3358, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_sfdat\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 141, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 150, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 135, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 771, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 786, i32 33 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 471, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 500, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 478, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 490, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 379, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 392, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 399, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 406, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3273, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3278, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3282, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3286, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3290, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [28 x i8] c"mlxsw_sp1_bridge_8021ad_ops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2399, i32 41 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2063, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2129, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2134, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [28 x i8] c"mlxsw_sp2_bridge_8021ad_ops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2446, i32 41 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2250, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2297, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2302, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3651, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3657, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [37 x i8] c"mlxsw_sp_switchdev_blocking_notifier\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3633, i32 30 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3664, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3668, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 3405, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1211, i32 23 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1216, i32 23 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1804, i32 20 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1818, i32 19 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1988, i32 19 }
@___asan_gen_.434 = private unnamed_addr constant [14 x i8] c"mlxsw_reg_sfn\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2926, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 569, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 575, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 585, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 563, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 621, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2637, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2646, i32 34 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2652, i32 34 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2663, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 643, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 650, i32 1 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2699, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2727, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 666, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 684, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 705, i32 1 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 696, i32 1 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__mlxsw_item_bit_array_offset._entry, ptr @__mlxsw_item_bit_array_offset._entry_ptr, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_bridge_device_create._entry, ptr @mlxsw_sp_bridge_device_create._entry_ptr, ptr @mlxsw_sp_fdb_init._entry, ptr @mlxsw_sp_fdb_init._entry.90, ptr @mlxsw_sp_fdb_init._entry.93, ptr @mlxsw_sp_fdb_init._entry_ptr, ptr @mlxsw_sp_fdb_init._entry_ptr.92, ptr @mlxsw_sp_fdb_init._entry_ptr.95, ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry, ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry.129, ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry_ptr, ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry_ptr.130, ptr @mlxsw_sp_fdb_notify_mac_process._entry, ptr @mlxsw_sp_fdb_notify_mac_process._entry.119, ptr @mlxsw_sp_fdb_notify_mac_process._entry_ptr, ptr @mlxsw_sp_fdb_notify_mac_process._entry_ptr.121, ptr @mlxsw_sp_fdb_notify_work._entry, ptr @mlxsw_sp_fdb_notify_work._entry_ptr, ptr @.str, ptr @mlxsw_sp_switchdev_notifier, ptr @mlxsw_sp1_switchdev_ops, ptr @mlxsw_sp2_switchdev_ops, ptr @mlxsw_sp_bridge_8021q_ops, ptr @mlxsw_sp_bridge_8021d_ops, ptr @.str.1, ptr @mlxsw_reg_sfdf, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @mlxsw_reg_sfd, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @mlxsw_reg_smid2, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @mlxsw_sp_bridge_device_create.__msg, ptr @mlxsw_sp_switchdev_event.__key, ptr @.str.57, ptr @mlxsw_sp_switchdev_event.__key.58, ptr @mlxsw_reg_sfdat, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg, ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.82, ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.83, ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.84, ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.85, ptr @mlxsw_sp1_bridge_8021ad_ops, ptr @mlxsw_sp_bridge_vlan_aware_port_join.__msg, ptr @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg, ptr @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg.86, ptr @mlxsw_sp2_bridge_8021ad_ops, ptr @mlxsw_sp_bridge_8021d_port_join.__msg, ptr @mlxsw_sp_bridge_8021d_vxlan_join.__msg, ptr @mlxsw_sp_bridge_8021d_vxlan_join.__msg.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @mlxsw_sp_switchdev_blocking_notifier, ptr @.str.94, ptr @mlxsw_sp_fdb_init.__key, ptr @.str.96, ptr @mlxsw_sp_fdb_init.__key.97, ptr @.str.98, ptr @mlxsw_sp_switchdev_vxlan_vlan_add.__msg, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @mlxsw_reg_sfn, ptr @mlxsw_sp_fdb_notify_work._rs, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @mlxsw_sp_fdb_notify_mac_process._rs, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @mlxsw_sp_fdb_notify_mac_process._rs.118, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @mlxsw_sp_fdb_notify_mac_lag_process._rs, ptr @.str.127, ptr @mlxsw_sp_fdb_notify_mac_lag_process._rs.128, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_switchdev_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_switchdev_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_8021q_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_8021d_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sfdf to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sfd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_smid2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_device_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_device_create.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_event.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sfdat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.82 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.83 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.84 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.85 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_bridge_8021ad_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_vlan_aware_port_join.__msg to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_bridge_8021ad_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_8021d_port_join.__msg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_8021d_vxlan_join.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_bridge_8021d_vxlan_join.__msg.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_blocking_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_init.__key.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_switchdev_vxlan_vlan_add.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sfn to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_work._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_mac_process._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_mac_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_mac_process._rs.118 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_mac_process._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_mac_lag_process._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_mac_lag_process._rs.128 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_bridge_device_is_offloaded(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef readnone %br_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  %bridges_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %1, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %bridges_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %bridges_list.i
  br i1 %cmp.not.i, label %for.cond.i.mlxsw_sp_bridge_device_find.exit_crit_edge, label %for.body.i

for.cond.i.mlxsw_sp_bridge_device_find.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_find.exit

for.body.i:                                       ; preds = %for.cond.i
  %bridge_device.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %3 = ptrtoint ptr %bridge_device.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bridge_device.0.i, align 4
  %cmp2.i = icmp eq ptr %4, %br_dev
  br i1 %cmp2.i, label %mlxsw_sp_bridge_device_find.exit.split.loop.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlxsw_sp_bridge_device_find.exit.split.loop.exit: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %bridge_device.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %phi.cmp = icmp ne ptr %bridge_device.0.i.le, null
  br label %mlxsw_sp_bridge_device_find.exit

mlxsw_sp_bridge_device_find.exit:                 ; preds = %mlxsw_sp_bridge_device_find.exit.split.loop.exit, %for.cond.i.mlxsw_sp_bridge_device_find.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %mlxsw_sp_bridge_device_find.exit.split.loop.exit ], [ false, %for.cond.i.mlxsw_sp_bridge_device_find.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_bridge_port_find(ptr noundef readonly %bridge, ptr noundef %brport_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @netdev_master_upper_dev_get(ptr noundef %brport_dev) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridges_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %bridges_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %bridges_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %bridge_device.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %1 = ptrtoint ptr %bridge_device.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bridge_device.0.i, align 4
  %cmp2.i = icmp eq ptr %2, %call
  br i1 %cmp2.i, label %mlxsw_sp_bridge_device_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlxsw_sp_bridge_device_find.exit:                 ; preds = %for.body.i
  %bridge_device.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool2.not = icmp eq ptr %bridge_device.0.i.le, null
  br i1 %tobool2.not, label %mlxsw_sp_bridge_device_find.exit.cleanup_crit_edge, label %if.end4

mlxsw_sp_bridge_device_find.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %mlxsw_sp_bridge_device_find.exit
  %ports_list.i = getelementptr i8, ptr %.pn.i, i32 8
  br label %for.cond.i13

for.cond.i13:                                     ; preds = %for.body.i15.for.cond.i13_crit_edge, %if.end4
  %.pn.in.i10 = phi ptr [ %ports_list.i, %if.end4 ], [ %.pn.i11, %for.body.i15.for.cond.i13_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i11 = load ptr, ptr %.pn.in.i10, align 4
  %cmp.not.i12 = icmp eq ptr %.pn.i11, %ports_list.i
  br i1 %cmp.not.i12, label %for.cond.i13.cleanup_crit_edge, label %for.body.i15

for.cond.i13.cleanup_crit_edge:                   ; preds = %for.cond.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i15:                                     ; preds = %for.cond.i13
  %bridge_port.0.i = getelementptr i8, ptr %.pn.i11, i32 -8
  %4 = ptrtoint ptr %bridge_port.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge_port.0.i, align 4
  %cmp2.i14 = icmp eq ptr %5, %brport_dev
  br i1 %cmp2.i14, label %cleanup.loopexit.split.loop.exit, label %for.body.i15.for.cond.i13_crit_edge

for.body.i15.for.cond.i13_crit_edge:              ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #14
  %bridge_port.0.i.le = getelementptr i8, ptr %.pn.i11, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.i13.cleanup_crit_edge, %mlxsw_sp_bridge_device_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %mlxsw_sp_bridge_device_find.exit.cleanup_crit_edge ], [ %bridge_port.0.i.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.i13.cleanup_crit_edge ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_port_vlan_bridge_leave(ptr noundef %mlxsw_sp_port_vlan) local_unnamed_addr #1 align 64 {
entry:
  %sfdf_pl.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp_port1 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 1
  %0 = ptrtoint ptr %mlxsw_sp_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp_port1, align 4
  %fid2 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 2
  %2 = ptrtoint ptr %fid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fid2, align 4
  %vid3 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 3
  %4 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid3, align 4
  %call = tail call i32 @mlxsw_sp_fid_type(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end26_crit_edge, label %land.rhs

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.rhs:                                         ; preds = %entry
  %call4 = tail call i32 @mlxsw_sp_fid_type(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 1
  br i1 %cmp5.not, label %land.rhs.if.end26_crit_edge, label %do.end, !prof !293

land.rhs.if.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1119, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end26:                                         ; preds = %land.rhs.if.end26_crit_edge, %entry.if.end26_crit_edge
  %bridge_port27 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 4
  %6 = ptrtoint ptr %bridge_port27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge_port27, align 4
  %vlans_list = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %vlans_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vlans_list, align 4
  %cmp.i.not.i = icmp eq ptr %9, %vlans_list
  br i1 %cmp.i.not.i, label %if.end26.list_is_singular.exit_crit_edge, label %land.rhs.i

if.end26.list_is_singular.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_is_singular.exit

land.rhs.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %7, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp ne ptr %9, %11
  br label %list_is_singular.exit

list_is_singular.exit:                            ; preds = %land.rhs.i, %if.end26.list_is_singular.exit_crit_edge
  %12 = phi i1 [ true, %if.end26.list_is_singular.exit_crit_edge ], [ %cmp.i, %land.rhs.i ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %list_is_singular.exit
  %bridge_vlan.0.in.i = phi ptr [ %vlans_list, %list_is_singular.exit ], [ %bridge_vlan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %bridge_vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bridge_vlan.0.i = load ptr, ptr %bridge_vlan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bridge_vlan.0.i, %vlans_list
  br i1 %cmp.not.i, label %for.cond.i.mlxsw_sp_bridge_vlan_find.exit_crit_edge, label %for.body.i

for.cond.i.mlxsw_sp_bridge_vlan_find.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vlan_find.exit

for.body.i:                                       ; preds = %for.cond.i
  %vid2.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid2.i, align 4
  %cmp4.i = icmp eq i16 %15, %5
  br i1 %cmp4.i, label %for.body.i.mlxsw_sp_bridge_vlan_find.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i.mlxsw_sp_bridge_vlan_find.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vlan_find.exit

mlxsw_sp_bridge_vlan_find.exit:                   ; preds = %for.body.i.mlxsw_sp_bridge_vlan_find.exit_crit_edge, %for.cond.i.mlxsw_sp_bridge_vlan_find.exit_crit_edge
  %retval.0.i = phi ptr [ %bridge_vlan.0.i, %for.body.i.mlxsw_sp_bridge_vlan_find.exit_crit_edge ], [ null, %for.cond.i.mlxsw_sp_bridge_vlan_find.exit_crit_edge ]
  %port_vlan_list = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %retval.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %port_vlan_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %port_vlan_list, align 4
  %cmp.i.not.i72 = icmp eq ptr %17, %port_vlan_list
  br i1 %cmp.i.not.i72, label %mlxsw_sp_bridge_vlan_find.exit.list_is_singular.exit77_crit_edge, label %land.rhs.i76

mlxsw_sp_bridge_vlan_find.exit.list_is_singular.exit77_crit_edge: ; preds = %mlxsw_sp_bridge_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_is_singular.exit77

land.rhs.i76:                                     ; preds = %mlxsw_sp_bridge_vlan_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i73 = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %retval.0.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i73, align 4
  %cmp.i74 = icmp ne ptr %17, %19
  br label %list_is_singular.exit77

list_is_singular.exit77:                          ; preds = %land.rhs.i76, %mlxsw_sp_bridge_vlan_find.exit.list_is_singular.exit77_crit_edge
  %20 = phi i1 [ true, %mlxsw_sp_bridge_vlan_find.exit.list_is_singular.exit77_crit_edge ], [ %cmp.i74, %land.rhs.i76 ]
  %bridge_vlan_node = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bridge_vlan_node) #12
  br i1 %call.i.i, label %if.end.i.i, label %list_is_singular.exit77.list_del.exit_crit_edge

list_is_singular.exit77.list_del.exit_crit_edge:  ; preds = %list_is_singular.exit77
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %list_is_singular.exit77
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %bridge_vlan_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge_vlan_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %list_is_singular.exit77.list_del.exit_crit_edge
  %27 = ptrtoint ptr %bridge_vlan_node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %bridge_vlan_node, align 4
  %prev.i78 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i78, align 4
  %29 = ptrtoint ptr %port_vlan_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %port_vlan_list, align 4
  %cmp.i.not.i79 = icmp eq ptr %30, %port_vlan_list
  br i1 %cmp.i.not.i79, label %if.then.i, label %list_del.exit.mlxsw_sp_bridge_vlan_put.exit_crit_edge

list_del.exit.mlxsw_sp_bridge_vlan_put.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vlan_put.exit

if.then.i:                                        ; preds = %list_del.exit
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %retval.0.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.list_del.exit.i.i_crit_edge

if.then.i.list_del.exit.i.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i.i, align 4
  %33 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %retval.0.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.list_del.exit.i.i_crit_edge
  %37 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.0.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %port_vlan_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %port_vlan_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %40, %port_vlan_list
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.mlxsw_sp_bridge_vlan_destroy.exit.i_crit_edge, label %do.end.i.i, !prof !293

list_del.exit.i.i.mlxsw_sp_bridge_vlan_destroy.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vlan_destroy.exit.i

do.end.i.i:                                       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #12
  br label %mlxsw_sp_bridge_vlan_destroy.exit.i

mlxsw_sp_bridge_vlan_destroy.exit.i:              ; preds = %do.end.i.i, %list_del.exit.i.i.mlxsw_sp_bridge_vlan_destroy.exit.i_crit_edge
  tail call void @kfree(ptr noundef %retval.0.i) #12
  br label %mlxsw_sp_bridge_vlan_put.exit

mlxsw_sp_bridge_vlan_put.exit:                    ; preds = %mlxsw_sp_bridge_vlan_destroy.exit.i, %list_del.exit.mlxsw_sp_bridge_vlan_put.exit_crit_edge
  %call34 = tail call i32 @mlxsw_sp_port_vid_stp_set(ptr noundef %1, i16 noundef zeroext %5, i8 noundef zeroext 0) #12
  %call35 = tail call i32 @mlxsw_sp_port_vid_learning_set(ptr noundef %1, i16 noundef zeroext %5, i1 noundef zeroext false) #12
  br i1 %20, label %mlxsw_sp_bridge_vlan_put.exit.if.end40_crit_edge, label %if.then37

mlxsw_sp_bridge_vlan_put.exit.if.end40_crit_edge: ; preds = %mlxsw_sp_bridge_vlan_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %mlxsw_sp_bridge_vlan_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mlxsw_sp, align 8
  %call38 = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %3) #12
  %lagged1.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %7, i32 0, i32 8
  %43 = ptrtoint ptr %lagged1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lagged1.i, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sfdf_pl.i) #12
  %cond.in.in.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %7, i32 0, i32 9
  %45 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %cond.in1.i = load i16, ptr %cond.in.in.i, align 2
  %cond.i.i = select i1 %tobool.not.i, i32 805306368, i32 1342177280
  %46 = call ptr @memset(ptr %sfdf_pl.i, i32 0, i32 20)
  %arrayidx.i.i.i.i = getelementptr inbounds i32, ptr %sfdf_pl.i, i32 1
  %47 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and7.i.i.i.i = and i32 %48, 251658239
  %or.i.i.i.i = or i32 %cond.i.i, %and7.i.i.i.i
  %arrayidx.i.i26.i.i = getelementptr inbounds i32, ptr %sfdf_pl.i, i32 1
  %or.i.i29.i.i = or i32 %or.i.i.i.i, 16777216
  %49 = ptrtoint ptr %arrayidx.i.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i29.i.i, ptr %arrayidx.i.i26.i.i, align 4
  %conv7.i = zext i16 %call38 to i32
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %sfdf_pl.i, i32 3
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %51, -65536
  %or.i.i.i = or i32 %and7.i.i.i, %conv7.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %conv9.i = zext i16 %cond.in1.i to i32
  %arrayidx.i.i26.i = getelementptr inbounds i32, ptr %sfdf_pl.i, i32 2
  %52 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i26.i, align 4
  %and7.i.i28.i = and i32 %53, -65536
  %or.i.i29.i = or i32 %and7.i.i28.i, %conv9.i
  store i32 %or.i.i29.i, ptr %arrayidx.i.i26.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %42, i32 0, i32 1
  %54 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %core.i, align 4
  %call11.i = call i32 @mlxsw_reg_write(ptr noundef %55, ptr noundef nonnull @mlxsw_reg_sfdf, ptr noundef nonnull %sfdf_pl.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sfdf_pl.i) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %mlxsw_sp_bridge_vlan_put.exit.if.end40_crit_edge
  br i1 %12, label %if.end40.if.end43_crit_edge, label %if.then42

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  %bridge_device1.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %7, i32 0, i32 1
  %56 = ptrtoint ptr %bridge_device1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bridge_device1.i, align 4
  %mids_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %mids_list.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mids_list.i, align 4
  %cmp.not35.i = icmp eq ptr %59, %mids_list.i
  br i1 %cmp.not35.i, label %if.then42.if.end43_crit_edge, label %for.body.lr.ph.i

if.then42.if.end43_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

for.body.lr.ph.i:                                 ; preds = %if.then42
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %1, i32 0, i32 3
  %multicast_enabled.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %57, i32 0, i32 4
  %mrouter.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %7, i32 0, i32 7
  %mlxsw_sp1.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %1, i32 0, i32 2
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.inc.i.for.body.i82_crit_edge, %for.body.lr.ph.i
  %mid.036.i = phi ptr [ %59, %for.body.lr.ph.i ], [ %tmp.037.i, %for.inc.i.for.body.i82_crit_edge ]
  %60 = ptrtoint ptr %mid.036.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %tmp.037.i = load ptr, ptr %mid.036.i, align 4
  %61 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %local_port.i, align 4
  %conv.i = zext i16 %62 to i32
  %ports_in_mid.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.036.i, i32 0, i32 5
  %63 = ptrtoint ptr %ports_in_mid.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ports_in_mid.i, align 4
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %64, i32 %div3.i.i
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %67 = shl nuw i32 1, %and.i.i
  %68 = and i32 %67, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i81 = icmp eq i32 %68, 0
  br i1 %tobool.not.i81, label %if.else.i, label %if.then.i83

if.then.i83:                                      ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = call fastcc i32 @__mlxsw_sp_port_mdb_del(ptr noundef %1, ptr noundef %7, ptr noundef %mid.036.i) #12
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i82
  %69 = ptrtoint ptr %multicast_enabled.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i = load i8, ptr %multicast_enabled.i, align 4
  %70 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool11.not.i = icmp eq i8 %70, 0
  br i1 %tobool11.not.i, label %if.else.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %71 = ptrtoint ptr %mrouter.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mrouter.i, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool12.not.i = icmp eq i8 %72, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then14.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  %mid15.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.036.i, i32 0, i32 3
  %73 = ptrtoint ptr %mid15.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %mid15.i, align 4
  %75 = ptrtoint ptr %mlxsw_sp1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mlxsw_sp1.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3264, i32 noundef 288) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then14.i.for.inc.i_crit_edge, label %if.end.i.i84

if.then14.i.for.inc.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i84:                                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %local_port.i, align 4
  call fastcc void @mlxsw_reg_smid2_pack(ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext %74, i16 noundef zeroext %79, i1 noundef zeroext false) #12
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %76, i32 0, i32 1
  %80 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %core.i.i, align 4
  %call3.i.i = call i32 @mlxsw_reg_write(ptr noundef %81, ptr noundef nonnull @mlxsw_reg_smid2, ptr noundef nonnull %call7.i.i.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i84, %if.then14.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %if.then.i83
  %cmp.not.i85 = icmp eq ptr %tmp.037.i, %mids_list.i
  br i1 %cmp.not.i85, label %for.inc.i.if.end43_crit_edge, label %for.inc.i.for.body.i82_crit_edge

for.inc.i.for.body.i82_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i82

for.inc.i.if.end43_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end43:                                         ; preds = %for.inc.i.if.end43_crit_edge, %if.then42.if.end43_crit_edge, %if.end40.if.end43_crit_edge
  %82 = ptrtoint ptr %mlxsw_sp_port1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mlxsw_sp_port1, align 4
  %84 = ptrtoint ptr %fid2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fid2, align 4
  %local_port3.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %83, i32 0, i32 3
  %86 = ptrtoint ptr %local_port3.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %local_port3.i, align 4
  %88 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vid3, align 4
  store ptr null, ptr %fid2, align 4
  call void @mlxsw_sp_fid_port_vid_unmap(ptr noundef %85, ptr noundef %83, i16 noundef zeroext %89) #12
  %call.i = call i32 @mlxsw_sp_fid_flood_set(ptr noundef %85, i32 noundef 1, i16 noundef zeroext %87, i1 noundef zeroext false) #12
  %call6.i = call i32 @mlxsw_sp_fid_flood_set(ptr noundef %85, i32 noundef 2, i16 noundef zeroext %87, i1 noundef zeroext false) #12
  %call7.i = call i32 @mlxsw_sp_fid_flood_set(ptr noundef %85, i32 noundef 0, i16 noundef zeroext %87, i1 noundef zeroext false) #12
  call void @mlxsw_sp_fid_put(ptr noundef %85) #12
  %mlxsw_sp44 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %1, i32 0, i32 2
  %90 = ptrtoint ptr %mlxsw_sp44 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mlxsw_sp44, align 8
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bridge, align 4
  call fastcc void @mlxsw_sp_bridge_port_put(ptr noundef %93, ptr noundef %7)
  %94 = ptrtoint ptr %bridge_port27 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %bridge_port27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_vid_stp_set(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_vid_learning_set(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_fid_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_bridge_port_put(ptr nocapture noundef %bridge, ptr noundef %bridge_port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 4
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge_device1 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 1
  %2 = ptrtoint ptr %bridge_device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_device1, align 4
  %4 = ptrtoint ptr %bridge_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge_port, align 4
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.list_del.exit.i_crit_edge

if.end.list_del.exit.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 3
  %14 = ptrtoint ptr %vlans_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %vlans_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %vlans_list.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.mlxsw_sp_bridge_port_destroy.exit_crit_edge, label %do.end.i, !prof !293

list_del.exit.i.mlxsw_sp_bridge_port_destroy.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_port_destroy.exit

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 382, i32 noundef 9, ptr noundef null) #12
  br label %mlxsw_sp_bridge_port_destroy.exit

mlxsw_sp_bridge_port_destroy.exit:                ; preds = %do.end.i, %list_del.exit.i.mlxsw_sp_bridge_port_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %bridge_port) #12
  tail call fastcc void @mlxsw_sp_bridge_device_put(ptr noundef %bridge, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_bridge_port_destroy.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_rif_fdb_op(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %mac, i16 noundef zeroext %fid, i1 noundef zeroext %adding) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mlxsw_sp_port_fdb_uc_op(ptr noundef %mlxsw_sp, i16 noundef zeroext 0, ptr noundef %mac, i16 noundef zeroext %fid, i1 noundef zeroext %adding, i32 noundef 3, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_port_fdb_uc_op(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %local_port, ptr nocapture noundef readonly %mac, i16 noundef zeroext %fid, i1 noundef zeroext %adding, i32 noundef %action, i32 noundef %policy) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1040) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond.i = select i1 %adding, i32 1, i32 2
  tail call fastcc void @mlxsw_reg_sfd_pack(ptr noundef nonnull %call7.i, i32 noundef %cond.i)
  tail call fastcc void @mlxsw_reg_sfd_rec_pack(ptr noundef nonnull %call7.i, i32 noundef 0, ptr noundef %mac, i32 noundef %action) #12
  %spec.select.i.i.i = shl i32 %policy, 18
  %and6.i.i.i = and i32 %spec.select.i.i.i, 786432
  %arrayidx.i.i.i = getelementptr i32, ptr %call7.i, i32 4
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i.i, align 8
  %and7.i.i.i = and i32 %2, -786433
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 8
  %arrayidx.i.i21.i = getelementptr i32, ptr %call7.i, i32 6
  %3 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i21.i, align 8
  %conv3.i = zext i16 %fid to i32
  %arrayidx.i.i48.i = getelementptr i32, ptr %call7.i, i32 6
  %and7.i.i50.i = and i32 %4, -16777216
  %or.i.i51.i = or i32 %and7.i.i50.i, %conv3.i
  %5 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i51.i, ptr %arrayidx.i.i48.i, align 8
  %conv5.i = zext i16 %local_port to i32
  %arrayidx.i.i76.i = getelementptr i32, ptr %call7.i, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i76.i, align 4
  %and7.i.i78.i = and i32 %7, -65536
  %or.i.i79.i = or i32 %and7.i.i78.i, %conv5.i
  store i32 %or.i.i79.i, ptr %arrayidx.i.i76.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %call7.i, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %call4 = tail call i32 @mlxsw_reg_write(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_sfd, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %mlxsw_reg_sfd_num_rec_get.exit47, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

mlxsw_reg_sfd_num_rec_get.exit47:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i37 = getelementptr i32, ptr %call7.i, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i37, align 8
  %14 = xor i32 %9, %13
  %15 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 -16
  br label %out

out:                                              ; preds = %mlxsw_reg_sfd_num_rec_get.exit47, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %spec.select, %mlxsw_reg_sfd_num_rec_get.exit47 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_port_bridge_join(ptr noundef %mlxsw_sp_port, ptr noundef %brport_dev, ptr nocapture noundef readnone %br_dev, ptr noundef %extack) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge, align 4
  %call = tail call fastcc ptr @mlxsw_sp_bridge_port_get(ptr noundef %3, ptr noundef %brport_dev, ptr noundef %extack)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge_device4 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %bridge_device4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bridge_device4, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call5 = tail call i32 %10(ptr noundef %6, ptr noundef %call, ptr noundef %mlxsw_sp_port, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %err_port_join

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_port_join:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bridge, align 4
  tail call fastcc void @mlxsw_sp_bridge_port_put(ptr noundef %12, ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %err_port_join, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call5, %err_port_join ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxsw_sp_bridge_port_get(ptr noundef %bridge, ptr noundef %brport_dev, ptr noundef %extack) unnamed_addr #1 align 64 {
entry:
  %iter.i.i.i = alloca ptr, align 4
  %proto.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @netdev_master_upper_dev_get(ptr noundef %brport_dev) #12
  %call.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %brport_dev) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %bridges_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %.pn.in.i.i = phi ptr [ %bridges_list.i.i, %if.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %bridges_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end_crit_edge, label %for.body.i.i

for.cond.i.i.if.end_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bridge_device.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %1 = ptrtoint ptr %bridge_device.0.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bridge_device.0.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %call.i
  br i1 %cmp2.i.i, label %mlxsw_sp_bridge_device_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

mlxsw_sp_bridge_device_find.exit.i:               ; preds = %for.body.i.i
  %bridge_device.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool2.not.i = icmp eq ptr %bridge_device.0.i.i.le, null
  br i1 %tobool2.not.i, label %mlxsw_sp_bridge_device_find.exit.i.if.end_crit_edge, label %if.end4.i

mlxsw_sp_bridge_device_find.exit.i.if.end_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end4.i:                                        ; preds = %mlxsw_sp_bridge_device_find.exit.i
  %ports_list.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  br label %for.cond.i13.i

for.cond.i13.i:                                   ; preds = %for.body.i15.i.for.cond.i13.i_crit_edge, %if.end4.i
  %.pn.in.i10.i = phi ptr [ %ports_list.i.i, %if.end4.i ], [ %.pn.i11.i, %for.body.i15.i.for.cond.i13.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i10.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i11.i = load ptr, ptr %.pn.in.i10.i, align 4
  %cmp.not.i12.i = icmp eq ptr %.pn.i11.i, %ports_list.i.i
  br i1 %cmp.not.i12.i, label %for.cond.i13.i.if.end_crit_edge, label %for.body.i15.i

for.cond.i13.i.if.end_crit_edge:                  ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i15.i:                                   ; preds = %for.cond.i13.i
  %bridge_port.0.i.i = getelementptr i8, ptr %.pn.i11.i, i32 -8
  %4 = ptrtoint ptr %bridge_port.0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge_port.0.i.i, align 4
  %cmp2.i14.i = icmp eq ptr %5, %brport_dev
  br i1 %cmp2.i14.i, label %mlxsw_sp_bridge_port_find.exit, label %for.body.i15.i.for.cond.i13.i_crit_edge

for.body.i15.i.for.cond.i13.i_crit_edge:          ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i

mlxsw_sp_bridge_port_find.exit:                   ; preds = %for.body.i15.i
  %bridge_port.0.i.i.le = getelementptr i8, ptr %.pn.i11.i, i32 -8
  %tobool.not = icmp eq ptr %bridge_port.0.i.i.le, null
  br i1 %tobool.not, label %mlxsw_sp_bridge_port_find.exit.if.end_crit_edge, label %if.then

mlxsw_sp_bridge_port_find.exit.if.end_crit_edge:  ; preds = %mlxsw_sp_bridge_port_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %mlxsw_sp_bridge_port_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ref_count = getelementptr i8, ptr %.pn.i11.i, i32 16
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %ref_count, align 4
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_bridge_port_find.exit.if.end_crit_edge, %for.cond.i13.i.if.end_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.if.end_crit_edge, %for.cond.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %bridges_list.i.i29 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 4
  br label %for.cond.i.i33

for.cond.i.i33:                                   ; preds = %for.body.i.i36.for.cond.i.i33_crit_edge, %if.end
  %.pn.in.i.i30 = phi ptr [ %bridges_list.i.i29, %if.end ], [ %.pn.i.i31, %for.body.i.i36.for.cond.i.i33_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i.i30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i.i31 = load ptr, ptr %.pn.in.i.i30, align 4
  %cmp.not.i.i32 = icmp eq ptr %.pn.i.i31, %bridges_list.i.i29
  br i1 %cmp.not.i.i32, label %for.cond.i.i33.if.end.i40_crit_edge, label %for.body.i.i36

for.cond.i.i33.if.end.i40_crit_edge:              ; preds = %for.cond.i.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i40

for.body.i.i36:                                   ; preds = %for.cond.i.i33
  %bridge_device.0.i.i34 = getelementptr i8, ptr %.pn.i.i31, i32 -4
  %9 = ptrtoint ptr %bridge_device.0.i.i34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bridge_device.0.i.i34, align 4
  %cmp2.i.i35 = icmp eq ptr %10, %call
  br i1 %cmp2.i.i35, label %mlxsw_sp_bridge_device_find.exit.i39, label %for.body.i.i36.for.cond.i.i33_crit_edge

for.body.i.i36.for.cond.i.i33_crit_edge:          ; preds = %for.body.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i33

mlxsw_sp_bridge_device_find.exit.i39:             ; preds = %for.body.i.i36
  %bridge_device.0.i.i34.le = getelementptr i8, ptr %.pn.i.i31, i32 -4
  %tobool.not.i38 = icmp eq ptr %bridge_device.0.i.i34.le, null
  br i1 %tobool.not.i38, label %mlxsw_sp_bridge_device_find.exit.i39.if.end.i40_crit_edge, label %mlxsw_sp_bridge_device_find.exit.i39.mlxsw_sp_bridge_device_get.exit_crit_edge

mlxsw_sp_bridge_device_find.exit.i39.mlxsw_sp_bridge_device_get.exit_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_get.exit

mlxsw_sp_bridge_device_find.exit.i39.if.end.i40_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i40

if.end.i40:                                       ; preds = %mlxsw_sp_bridge_device_find.exit.i39.if.end.i40_crit_edge, %for.cond.i.i33.if.end.i40_crit_edge
  %11 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bridge, align 4
  %bus_info.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bus_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_info.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i.i, align 4
  %call.i.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef %call) #12
  br i1 %call.i.i, label %land.lhs.true.i.i, label %if.end.i40.if.end9.i.i_crit_edge

if.end.i40.if.end9.i.i_crit_edge:                 ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i40
  %vlan_enabled_exists.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 3
  %17 = ptrtoint ptr %vlan_enabled_exists.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vlan_enabled_exists.i.i, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %do.end.i.i

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.53) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_device_create.__msg) #12
  %tobool4.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i.i, label %do.end.i.i.cleanup_crit_edge, label %if.then5.i.i

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlxsw_sp_bridge_device_create.__msg, ptr %extack, align 4
  br label %cleanup

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %if.end.i40.if.end9.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 36) #15
  %tobool11.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool11.not.i.i, label %if.end9.i.i.cleanup_crit_edge, label %if.end14.i.i

if.end9.i.i.cleanup_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %21 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %call7.i.i.i.i, align 8
  %vlan_enabled17.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %vlan_enabled17.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i = load i8, ptr %vlan_enabled17.i.i, align 4
  %bf.shl.i.i = select i1 %call.i.i, i8 -128, i8 0
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %vlan_enabled17.i.i, align 4
  %call18.i.i = tail call zeroext i1 @br_multicast_enabled(ptr noundef %call) #12
  %23 = ptrtoint ptr %vlan_enabled17.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load20.i.i = load i8, ptr %vlan_enabled17.i.i, align 4
  %bf.shl22.i.i = select i1 %call18.i.i, i8 64, i8 0
  %bf.clear23.i.i = and i8 %bf.load20.i.i, -65
  %bf.set24.i.i = or i8 %bf.clear23.i.i, %bf.shl22.i.i
  store i8 %bf.set24.i.i, ptr %vlan_enabled17.i.i, align 4
  %call25.i.i = tail call zeroext i1 @br_multicast_router(ptr noundef %call) #12
  %24 = ptrtoint ptr %vlan_enabled17.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load27.i.i = load i8, ptr %vlan_enabled17.i.i, align 4
  %bf.shl29.i.i = select i1 %call25.i.i, i8 32, i8 0
  %bf.clear30.i.i = and i8 %bf.load27.i.i, -33
  %bf.set31.i.i = or i8 %bf.clear30.i.i, %bf.shl29.i.i
  store i8 %bf.set31.i.i, ptr %vlan_enabled17.i.i, align 4
  %ports_list.i.i41 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ports_list.i.i41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %ports_list.i.i41, ptr %ports_list.i.i41, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ports_list.i.i41, ptr %prev.i.i.i, align 8
  br i1 %call.i.i, label %if.then33.i.i, label %if.else41.i.i

if.then33.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i.i) #12
  %27 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %proto.i.i, align 2, !annotation !295
  %vlan_enabled_exists34.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 3
  %28 = ptrtoint ptr %vlan_enabled_exists34.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %vlan_enabled_exists34.i.i, align 4
  %call35.i.i = call i32 @br_vlan_get_proto(ptr noundef %call, ptr noundef nonnull %proto.i.i) #12
  %29 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %proto.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %30)
  %cmp.i.i = icmp eq i16 %30, -30552
  %bridge_8021ad_ops.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 8
  %bridge_8021q_ops.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 6
  %.sink.in.i.i = select i1 %cmp.i.i, ptr %bridge_8021ad_ops.i.i, ptr %bridge_8021q_ops.i.i
  %31 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i.i) #12
  br label %if.end43.i.i

if.else41.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bridge_8021d_ops.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 7
  %32 = ptrtoint ptr %bridge_8021d_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bridge_8021d_ops.i.i, align 4
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.else41.i.i, %if.then33.i.i
  %.sink.i = phi ptr [ %.sink.i.i, %if.then33.i.i ], [ %33, %if.else41.i.i ]
  %34 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %.sink.i, ptr %34, align 8
  %mids_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %mids_list.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %mids_list.i.i, ptr %mids_list.i.i, align 4
  %prev.i91.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i91.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mids_list.i.i, ptr %prev.i91.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %bridges_list.i.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bridges_list.i.i29, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %bridges_list.i.i29, ptr noundef %39) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end43.i.i.list_add.exit.i.i_crit_edge

if.end43.i.i.list_add.exit.i.i_crit_edge:         ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list.i.i, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %bridges_list.i.i29, ptr %prev3.i.i.i.i, align 8
  %43 = ptrtoint ptr %bridges_list.i.i29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list.i.i, ptr %bridges_list.i.i29, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end43.i.i.list_add.exit.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i.i.i) #12
  %lower.i.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %lower.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lower.i.i.i, align 8
  %46 = ptrtoint ptr %iter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %iter.i.i.i, align 4
  %call.i.i.i = call ptr @netdev_lower_get_next(ptr noundef %call, ptr noundef nonnull %iter.i.i.i) #12
  %tobool.not69.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not69.i.i.i, label %list_add.exit.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i_crit_edge, label %list_add.exit.i.i.for.body.i.i.i_crit_edge

list_add.exit.i.i.for.body.i.i.i_crit_edge:       ; preds = %list_add.exit.i.i
  br label %for.body.i.i.i

list_add.exit.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i_crit_edge: ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %list_add.exit.i.i.for.body.i.i.i_crit_edge
  %dev.070.i.i.i = phi ptr [ %call7.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %list_add.exit.i.i.for.body.i.i.i_crit_edge ]
  %rtnl_link_ops.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.070.i.i.i, i32 0, i32 136
  %47 = ptrtoint ptr %rtnl_link_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rtnl_link_ops.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %netif_is_vxlan.exit.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

netif_is_vxlan.exit.i.i.i:                        ; preds = %for.body.i.i.i
  %kind.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %kind.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %kind.i.i.i.i, align 4
  %call.i.i92.i.i = call i32 @strcmp(ptr noundef %50, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call.i.i92.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i, label %netif_is_vxlan.exit.i.i.i.for.inc.i.i.i_crit_edge

netif_is_vxlan.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %netif_is_vxlan.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %netif_is_vxlan.exit.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.070.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %53 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bridge, align 4
  %bridge.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %bridge.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bridge.i.i.i.i, align 4
  %bridges_list.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %56, i32 0, i32 4
  br label %for.cond.i.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge, %if.then.i.i.i
  %.pn.in.i.i.i.i.i = phi ptr [ %bridges_list.i.i.i.i.i, %if.then.i.i.i ], [ %.pn.i.i.i.i.i, %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge ]
  %57 = ptrtoint ptr %.pn.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %.pn.i.i.i.i.i, %bridges_list.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %for.cond.i.i.i.i.i.mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i_crit_edge, label %for.body.i.i.i.i.i

for.cond.i.i.i.i.i.mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i_crit_edge: ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i
  %bridge_device.0.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i.i, i32 -4
  %58 = ptrtoint ptr %bridge_device.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bridge_device.0.i.i.i.i.i, align 4
  %cmp2.i.i.i.i.i = icmp eq ptr %59, %call
  br i1 %cmp2.i.i.i.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i.i.i, label %for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i.i.i

mlxsw_sp_bridge_device_find.exit.i.i.i.i:         ; preds = %for.body.i.i.i.i.i
  %bridge_device.0.i.i.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i.i.i, i32 -4
  %tobool.not.i46.i.i.i = icmp eq ptr %bridge_device.0.i.i.i.i.i.le, null
  br i1 %tobool.not.i46.i.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i.i.i.mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i_crit_edge, label %mlxsw_sp_bridge_vxlan_join.exit.i.i.i, !prof !296

mlxsw_sp_bridge_device_find.exit.i.i.i.i.mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i

mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i:     ; preds = %mlxsw_sp_bridge_device_find.exit.i.i.i.i.mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i_crit_edge, %for.cond.i.i.i.i.i.mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2511, i32 noundef 9, ptr noundef null) #12
  br label %if.then5.i.i.i

mlxsw_sp_bridge_vxlan_join.exit.i.i.i:            ; preds = %mlxsw_sp_bridge_device_find.exit.i.i.i.i
  %ops.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i.i, i32 28
  %60 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i.i.i.i, align 4
  %vxlan_join.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %vxlan_join.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vxlan_join.i.i.i.i, align 4
  %call24.i.i.i.i = call i32 %63(ptr noundef nonnull %bridge_device.0.i.i.i.i.i.le, ptr noundef nonnull %dev.070.i.i.i, i16 noundef zeroext 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call24.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %mlxsw_sp_bridge_vxlan_join.exit.i.i.i.for.inc.i.i.i_crit_edge, label %if.then5.i.loopexit.i.i

mlxsw_sp_bridge_vxlan_join.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %mlxsw_sp_bridge_vxlan_join.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.then5.i.loopexit.i.i:                          ; preds = %mlxsw_sp_bridge_vxlan_join.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.i.i = inttoptr i32 %call24.i.i.i.i to ptr
  br label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.then5.i.loopexit.i.i, %mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i
  %retval.0.i60.i.i.i = phi ptr [ inttoptr (i32 -22 to ptr), %mlxsw_sp_bridge_vxlan_join.exit.thread.i.i.i ], [ %phi.cast.i.i, %if.then5.i.loopexit.i.i ]
  %64 = ptrtoint ptr %lower.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lower.i.i.i, align 8
  %66 = ptrtoint ptr %iter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %iter.i.i.i, align 4
  %call11.i.i.i = call ptr @netdev_lower_get_next(ptr noundef %call, ptr noundef nonnull %iter.i.i.i) #12
  %tobool13.not71.i.i.i = icmp eq ptr %call11.i.i.i, null
  br i1 %tobool13.not71.i.i.i, label %mlxsw_sp_bridge_device_vxlan_init.exit.thread99.i.i, label %if.then5.i.i.i.for.body14.i.i.i_crit_edge

if.then5.i.i.i.for.body14.i.i.i_crit_edge:        ; preds = %if.then5.i.i.i
  br label %for.body14.i.i.i

mlxsw_sp_bridge_device_vxlan_init.exit.thread99.i.i: ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i.i) #12
  br label %err_vxlan_init.i.i

for.inc.i.i.i:                                    ; preds = %mlxsw_sp_bridge_vxlan_join.exit.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %netif_is_vxlan.exit.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %call7.i.i.i = call ptr @netdev_lower_get_next(ptr noundef %call, ptr noundef nonnull %iter.i.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i

for.body14.i.i.i:                                 ; preds = %for.inc23.i.i.i.for.body14.i.i.i_crit_edge, %if.then5.i.i.i.for.body14.i.i.i_crit_edge
  %dev.172.i.i.i = phi ptr [ %call24.i.i.i, %for.inc23.i.i.i.for.body14.i.i.i_crit_edge ], [ %call11.i.i.i, %if.then5.i.i.i.for.body14.i.i.i_crit_edge ]
  %rtnl_link_ops.i47.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.172.i.i.i, i32 0, i32 136
  %67 = ptrtoint ptr %rtnl_link_ops.i47.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rtnl_link_ops.i47.i.i.i, align 4
  %tobool.not.i48.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i48.i.i.i, label %for.body14.i.i.i.for.inc23.i.i.i_crit_edge, label %netif_is_vxlan.exit53.i.i.i

for.body14.i.i.i.for.inc23.i.i.i_crit_edge:       ; preds = %for.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23.i.i.i

netif_is_vxlan.exit53.i.i.i:                      ; preds = %for.body14.i.i.i
  %kind.i49.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %kind.i49.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %kind.i49.i.i.i, align 4
  %call.i50.i.i.i = call i32 @strcmp(ptr noundef %70, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i.i.i)
  %tobool2.not.i51.i.i.i = icmp eq i32 %call.i50.i.i.i, 0
  br i1 %tobool2.not.i51.i.i.i, label %land.lhs.true16.i.i.i, label %netif_is_vxlan.exit53.i.i.i.for.inc23.i.i.i_crit_edge

netif_is_vxlan.exit53.i.i.i.for.inc23.i.i.i_crit_edge: ; preds = %netif_is_vxlan.exit53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23.i.i.i

land.lhs.true16.i.i.i:                            ; preds = %netif_is_vxlan.exit53.i.i.i
  %state.i54.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.172.i.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %state.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %state.i54.i.i.i, align 4
  %and1.i.i55.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i55.i.i.i)
  %tobool.i56.not.i.i.i = icmp eq i32 %and1.i.i55.i.i.i, 0
  br i1 %tobool.i56.not.i.i.i, label %land.lhs.true16.i.i.i.for.inc23.i.i.i_crit_edge, label %if.then18.i.i.i

land.lhs.true16.i.i.i.for.inc23.i.i.i_crit_edge:  ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23.i.i.i

if.then18.i.i.i:                                  ; preds = %land.lhs.true16.i.i.i
  %cmp.i.i.i = icmp eq ptr %dev.070.i.i.i, %dev.172.i.i.i
  br i1 %cmp.i.i.i, label %if.then18.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.i.i_crit_edge, label %if.end20.i.i.i

if.then18.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.i.i_crit_edge: ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_vxlan_init.exit.i.i

if.end20.i.i.i:                                   ; preds = %if.then18.i.i.i
  %73 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bridge, align 4
  %vni.i.i.i.i = getelementptr i8, ptr %dev.172.i.i.i, i32 13796
  %75 = ptrtoint ptr %vni.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vni.i.i.i.i, align 4
  %call1.i.i.i.i = call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef %74, i32 noundef %76) #12
  %tobool.not.i57.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i57.i.i.i, label %if.end20.i.i.i.for.inc23.i.i.i_crit_edge, label %if.end.i.i93.i.i

if.end20.i.i.i.for.inc23.i.i.i_crit_edge:         ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23.i.i.i

if.end.i.i93.i.i:                                 ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlxsw_sp_nve_fid_disable(ptr noundef %74, ptr noundef nonnull %call1.i.i.i.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i.i.i.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i.i.i.i) #12
  br label %for.inc23.i.i.i

for.inc23.i.i.i:                                  ; preds = %if.end.i.i93.i.i, %if.end20.i.i.i.for.inc23.i.i.i_crit_edge, %land.lhs.true16.i.i.i.for.inc23.i.i.i_crit_edge, %netif_is_vxlan.exit53.i.i.i.for.inc23.i.i.i_crit_edge, %for.body14.i.i.i.for.inc23.i.i.i_crit_edge
  %call24.i.i.i = call ptr @netdev_lower_get_next(ptr noundef %call, ptr noundef nonnull %iter.i.i.i) #12
  %tobool13.not.i.i.i = icmp eq ptr %call24.i.i.i, null
  br i1 %tobool13.not.i.i.i, label %for.inc23.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.i.i_crit_edge, label %for.inc23.i.i.i.for.body14.i.i.i_crit_edge

for.inc23.i.i.i.for.body14.i.i.i_crit_edge:       ; preds = %for.inc23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14.i.i.i

for.inc23.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.i.i_crit_edge: ; preds = %for.inc23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_vxlan_init.exit.i.i

mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i: ; preds = %for.inc.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i_crit_edge, %list_add.exit.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i.i) #12
  br label %mlxsw_sp_bridge_device_get.exit

mlxsw_sp_bridge_device_vxlan_init.exit.i.i:       ; preds = %for.inc23.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.i.i_crit_edge, %if.then18.i.i.i.mlxsw_sp_bridge_device_vxlan_init.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i.i) #12
  br label %err_vxlan_init.i.i

err_vxlan_init.i.i:                               ; preds = %mlxsw_sp_bridge_device_vxlan_init.exit.i.i, %mlxsw_sp_bridge_device_vxlan_init.exit.thread99.i.i
  %call.i.i94.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #12
  br i1 %call.i.i94.i.i, label %if.end.i.i95.i.i, label %err_vxlan_init.i.i.list_del.exit.i.i_crit_edge

err_vxlan_init.i.i.list_del.exit.i.i_crit_edge:   ; preds = %err_vxlan_init.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i95.i.i:                                 ; preds = %err_vxlan_init.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i.i, align 8
  %79 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i95.i.i, %err_vxlan_init.i.i.list_del.exit.i.i_crit_edge
  %83 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i96.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %prev.i96.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i96.i.i, align 8
  %85 = ptrtoint ptr %vlan_enabled17.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load50.i.i = load i8, ptr %vlan_enabled17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load50.i.i)
  %tobool51.not.i.i = icmp sgt i8 %bf.load50.i.i, -1
  br i1 %tobool51.not.i.i, label %list_del.exit.i.i.if.end54.i.i_crit_edge, label %if.then52.i.i

list_del.exit.i.i.if.end54.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.then52.i.i:                                    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_enabled_exists53.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 3
  %86 = ptrtoint ptr %vlan_enabled_exists53.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %vlan_enabled_exists53.i.i, align 4
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then52.i.i, %list_del.exit.i.i.if.end54.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %mlxsw_sp_bridge_device_get.exit

mlxsw_sp_bridge_device_get.exit:                  ; preds = %if.end54.i.i, %mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i, %mlxsw_sp_bridge_device_find.exit.i39.mlxsw_sp_bridge_device_get.exit_crit_edge
  %retval.0.i42 = phi ptr [ %bridge_device.0.i.i34.le, %mlxsw_sp_bridge_device_find.exit.i39.mlxsw_sp_bridge_device_get.exit_crit_edge ], [ %retval.0.i60.i.i.i, %if.end54.i.i ], [ %call7.i.i.i.i, %mlxsw_sp_bridge_device_vxlan_init.exit.thread.i.i ]
  %cmp.i = icmp ugt ptr %retval.0.i42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlxsw_sp_bridge_device_get.exit.cleanup_crit_edge, label %if.end6

mlxsw_sp_bridge_device_get.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_bridge_device_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %mlxsw_sp_bridge_device_get.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %87 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i43 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3520, i32 noundef 40) #15
  %tobool.not.i44 = icmp eq ptr %call7.i.i.i43, null
  br i1 %tobool.not.i44, label %if.end6.if.then9_crit_edge, label %if.end.i47

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end.i47:                                       ; preds = %if.end6
  %call2.i = call ptr @mlxsw_sp_port_dev_lower_find(ptr noundef %brport_dev) #12
  %lagged.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call2.i, i32 0, i32 4
  %88 = ptrtoint ptr %lagged.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load.i = load i8, ptr %lagged.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool3.i = icmp slt i8 %bf.load.i, 0
  %lagged4.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 8
  %bf.load.lobit.i = lshr i8 %bf.load.i, 7
  %89 = ptrtoint ptr %lagged4.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %bf.load.lobit.i, ptr %lagged4.i, align 1
  %lag_id.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call2.i, i32 0, i32 6
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call2.i, i32 0, i32 3
  %.sink.in.i = select i1 %tobool3.i, ptr %lag_id.i, ptr %local_port.i
  %90 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %.sink.i45 = load i16, ptr %.sink.in.i, align 2
  %91 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 9
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %.sink.i45, ptr %91, align 2
  %93 = ptrtoint ptr %call7.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %brport_dev, ptr %call7.i.i.i43, align 8
  %bridge_device9.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 1
  %94 = ptrtoint ptr %bridge_device9.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %retval.0.i42, ptr %bridge_device9.i, align 4
  %stp_state.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 5
  %95 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %stp_state.i, align 4
  %flags.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 6
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2656, ptr %flags.i, align 8
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 3
  %97 = ptrtoint ptr %vlans_list.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %vlans_list.i, ptr %vlans_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %vlans_list.i, ptr %prev.i.i, align 4
  %list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 2
  %ports_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %retval.0.i42, i32 0, i32 2
  %99 = ptrtoint ptr %ports_list.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ports_list.i, align 4
  %call.i.i.i46 = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %ports_list.i, ptr noundef %100) #12
  br i1 %call.i.i.i46, label %if.end.i.i.i, label %if.end.i47.list_add.exit.i_crit_edge

if.end.i47.list_add.exit.i_crit_edge:             ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %102 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %100, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %ports_list.i, ptr %prev3.i.i.i, align 4
  %104 = ptrtoint ptr %ports_list.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %list.i, ptr %ports_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i47.list_add.exit.i_crit_edge
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 4
  %105 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %ref_count.i, align 8
  %106 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call2.i, align 8
  %call11.i = call i32 @switchdev_bridge_port_offload(ptr noundef %brport_dev, ptr noundef %107, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %list_add.exit.i.mlxsw_sp_bridge_port_create.exit_crit_edge, label %err_switchdev_offload.i

list_add.exit.i.mlxsw_sp_bridge_port_create.exit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_port_create.exit

err_switchdev_offload.i:                          ; preds = %list_add.exit.i
  %call.i.i40.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i40.i, label %if.end.i.i41.i, label %err_switchdev_offload.i.list_del.exit.i_crit_edge

err_switchdev_offload.i.list_del.exit.i_crit_edge: ; preds = %err_switchdev_offload.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i41.i:                                   ; preds = %err_switchdev_offload.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i48 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %prev.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i.i48, align 4
  %110 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %list.i, align 8
  %prev1.i.i.i.i49 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i.i49, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i41.i, %err_switchdev_offload.i.list_del.exit.i_crit_edge
  %114 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 8
  %prev.i42.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %call7.i.i.i43, i32 0, i32 2, i32 1
  %115 = ptrtoint ptr %prev.i42.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i42.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i43) #12
  %116 = inttoptr i32 %call11.i to ptr
  br label %mlxsw_sp_bridge_port_create.exit

mlxsw_sp_bridge_port_create.exit:                 ; preds = %list_del.exit.i, %list_add.exit.i.mlxsw_sp_bridge_port_create.exit_crit_edge
  %retval.0.i50 = phi ptr [ %116, %list_del.exit.i ], [ %call7.i.i.i43, %list_add.exit.i.mlxsw_sp_bridge_port_create.exit_crit_edge ]
  %cmp.i51 = icmp ugt ptr %retval.0.i50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %mlxsw_sp_bridge_port_create.exit.if.then9_crit_edge, label %mlxsw_sp_bridge_port_create.exit.cleanup_crit_edge

mlxsw_sp_bridge_port_create.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_bridge_port_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlxsw_sp_bridge_port_create.exit.if.then9_crit_edge: ; preds = %mlxsw_sp_bridge_port_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %mlxsw_sp_bridge_port_create.exit.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %retval.0.i5059 = phi ptr [ %retval.0.i50, %mlxsw_sp_bridge_port_create.exit.if.then9_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.if.then9_crit_edge ]
  call fastcc void @mlxsw_sp_bridge_device_put(ptr noundef %bridge, ptr noundef %retval.0.i42)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %mlxsw_sp_bridge_port_create.exit.cleanup_crit_edge, %mlxsw_sp_bridge_device_get.exit.cleanup_crit_edge, %if.end9.i.i.cleanup_crit_edge, %if.then5.i.i, %do.end.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %bridge_port.0.i.i.le, %if.then ], [ %retval.0.i5059, %if.then9 ], [ %retval.0.i50, %mlxsw_sp_bridge_port_create.exit.cleanup_crit_edge ], [ %retval.0.i42, %mlxsw_sp_bridge_device_get.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then5.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_port_bridge_leave(ptr noundef %mlxsw_sp_port, ptr noundef readnone %brport_dev, ptr noundef readnone %br_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge, align 4
  %bridges_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %3, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %bridges_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %bridges_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %bridge_device.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %5 = ptrtoint ptr %bridge_device.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bridge_device.0.i, align 4
  %cmp2.i = icmp eq ptr %6, %br_dev
  br i1 %cmp2.i, label %mlxsw_sp_bridge_device_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlxsw_sp_bridge_device_find.exit:                 ; preds = %for.body.i
  %bridge_device.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %bridge_device.0.i.le, null
  br i1 %tobool.not, label %mlxsw_sp_bridge_device_find.exit.cleanup_crit_edge, label %if.end

mlxsw_sp_bridge_device_find.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_bridge_device_find.exit
  %ports_list.i = getelementptr i8, ptr %.pn.i, i32 8
  br label %for.cond.i19

for.cond.i19:                                     ; preds = %for.body.i21.for.cond.i19_crit_edge, %if.end
  %.pn.in.i16 = phi ptr [ %ports_list.i, %if.end ], [ %.pn.i17, %for.body.i21.for.cond.i19_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i17 = load ptr, ptr %.pn.in.i16, align 4
  %cmp.not.i18 = icmp eq ptr %.pn.i17, %ports_list.i
  br i1 %cmp.not.i18, label %for.cond.i19.cleanup_crit_edge, label %for.body.i21

for.cond.i19.cleanup_crit_edge:                   ; preds = %for.cond.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i21:                                     ; preds = %for.cond.i19
  %bridge_port.0.i = getelementptr i8, ptr %.pn.i17, i32 -8
  %8 = ptrtoint ptr %bridge_port.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge_port.0.i, align 4
  %cmp2.i20 = icmp eq ptr %9, %brport_dev
  br i1 %cmp2.i20, label %__mlxsw_sp_bridge_port_find.exit, label %for.body.i21.for.cond.i19_crit_edge

for.body.i21.for.cond.i19_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i19

__mlxsw_sp_bridge_port_find.exit:                 ; preds = %for.body.i21
  %bridge_port.0.i.le = getelementptr i8, ptr %.pn.i17, i32 -8
  %tobool3.not = icmp eq ptr %bridge_port.0.i.le, null
  br i1 %tobool3.not, label %__mlxsw_sp_bridge_port_find.exit.cleanup_crit_edge, label %if.end5

__mlxsw_sp_bridge_port_find.exit.cleanup_crit_edge: ; preds = %__mlxsw_sp_bridge_port_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %__mlxsw_sp_bridge_port_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ops = getelementptr i8, ptr %.pn.i, i32 28
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %port_leave = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %port_leave to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_leave, align 4
  tail call void %13(ptr noundef nonnull %bridge_device.0.i.le, ptr noundef nonnull %bridge_port.0.i.le, ptr noundef %mlxsw_sp_port) #12
  %14 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bridge, align 4
  tail call fastcc void @mlxsw_sp_bridge_port_put(ptr noundef %15, ptr noundef nonnull %bridge_port.0.i.le)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %__mlxsw_sp_bridge_port_find.exit.cleanup_crit_edge, %for.cond.i19.cleanup_crit_edge, %mlxsw_sp_bridge_device_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_bridge_vxlan_join(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef readnone %br_dev, ptr noundef %vxlan_dev, i16 noundef zeroext %vid, ptr noundef %extack) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  %bridges_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %1, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %bridges_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %bridges_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %bridge_device.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %3 = ptrtoint ptr %bridge_device.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bridge_device.0.i, align 4
  %cmp2.i = icmp eq ptr %4, %br_dev
  br i1 %cmp2.i, label %mlxsw_sp_bridge_device_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlxsw_sp_bridge_device_find.exit:                 ; preds = %for.body.i
  %bridge_device.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %bridge_device.0.i.le, null
  br i1 %tobool.not, label %mlxsw_sp_bridge_device_find.exit.do.end_crit_edge, label %if.end23, !prof !296

mlxsw_sp_bridge_device_find.exit.do.end_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_bridge_device_find.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2511, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %mlxsw_sp_bridge_device_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ops = getelementptr i8, ptr %.pn.i, i32 28
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %vxlan_join = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %vxlan_join to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vxlan_join, align 4
  %call24 = tail call i32 %8(ptr noundef nonnull %bridge_device.0.i.le, ptr noundef %vxlan_dev, i16 noundef zeroext %vid, ptr noundef %extack) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call24, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_bridge_vxlan_leave(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %vxlan_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vni = getelementptr i8, ptr %vxlan_dev, i32 13796
  %0 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vni, align 4
  %call1 = tail call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef %mlxsw_sp, i32 noundef %1) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_nve_fid_disable(ptr noundef %mlxsw_sp, ptr noundef nonnull %call1) #12
  tail call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1) #12
  tail call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_nve_fid_disable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_fid_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_switchdev_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp = icmp eq i32 %event, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @mlxsw_sp_port_dev_check, ptr noundef nonnull @mlxsw_sp_port_attr_set) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call ptr @mlxsw_sp_port_dev_lower_find_rcu(ptr noundef nonnull %call3) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 120) #15
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %dev17 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %dev17, align 8
  %event18 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %event18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %event, ptr %event18, align 4
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %sw.default [
    i32 3, label %if.end16.sw.bb_crit_edge
    i32 4, label %if.end16.sw.bb_crit_edge93
    i32 1, label %if.end16.sw.bb_crit_edge94
    i32 2, label %if.end16.sw.bb_crit_edge95
    i32 12, label %if.end16.do.body32_crit_edge
    i32 13, label %if.end16.do.body32_crit_edge96
  ]

if.end16.do.body32_crit_edge96:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body32

if.end16.do.body32_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body32

if.end16.sw.bb_crit_edge95:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end16.sw.bb_crit_edge94:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end16.sw.bb_crit_edge93:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge93, %if.end16.sw.bb_crit_edge94, %if.end16.sw.bb_crit_edge95
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #12
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.57, ptr noundef nonnull @mlxsw_sp_switchdev_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry22 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry22, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlxsw_sp_switchdev_bridge_fdb_event_work, ptr %func, align 4
  %12 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %12, ptr %ptr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i90 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2848, i32 noundef 6) #15
  %addr = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i90, ptr %addr, align 8
  %tobool26.not = icmp eq ptr %call7.i.i90, null
  br i1 %tobool26.not, label %sw.bb.err_addr_alloc_crit_edge, label %if.end28

sw.bb.err_addr_alloc_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_addr_alloc

if.end28:                                         ; preds = %sw.bb
  %addr30 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %16 = ptrtoint ptr %addr30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr30, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %call7.i.i90 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call7.i.i90, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i90, i32 4
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i, align 4
  %tobool.not.i91 = icmp eq ptr %1, null
  br i1 %tobool.not.i91, label %if.end28.sw.epilog_crit_edge, label %do.body1.i

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body1.i:                                       ; preds = %if.end28
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !297
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %25 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_refcnt.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !283) #12
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add13.i = add i32 %36, 1
  store i32 %add13.i, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !298
  %and.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !296

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #12, !srcloc !299
  br label %sw.epilog

do.body32:                                        ; preds = %if.end16.do.body32_crit_edge, %if.end16.do.body32_crit_edge96
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #12
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map39 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map39, ptr noundef nonnull @.str.57, ptr noundef nonnull @mlxsw_sp_switchdev_event.__key.58, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry41 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i92 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i92 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry41, ptr %prev.i92, align 8
  %func43 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %func43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mlxsw_sp_switchdev_vxlan_fdb_event_work, ptr %func43, align 4
  %call46 = tail call fastcc i32 @mlxsw_sp_switchdev_vxlan_work_prepare(ptr noundef nonnull %call7.i.i, ptr noundef %ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %do.body32.err_addr_alloc_crit_edge

do.body32.err_addr_alloc_crit_edge:               ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_addr_alloc

if.end49:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dev_hold(ptr noundef %1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.end49, %do.end30.i, %if.end28.sw.epilog_crit_edge
  %call51 = tail call zeroext i1 @mlxsw_core_schedule_work(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

err_addr_alloc:                                   ; preds = %do.body32.err_addr_alloc_crit_edge, %sw.bb.err_addr_alloc_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_addr_alloc, %sw.epilog, %sw.default, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ 0, %sw.default ], [ 32770, %err_addr_alloc ], [ 0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 32770, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlxsw_sp_bridge_port_stp_state(ptr nocapture noundef readonly %bridge_port) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stp_state = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 5
  %0 = ptrtoint ptr %stp_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stp_state, align 4
  ret i8 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_switchdev_init(ptr nocapture noundef readonly %mlxsw_sp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  %bridge_8021ad_ops = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bridge_8021ad_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlxsw_sp1_bridge_8021ad_ops, ptr %bridge_8021ad_ops, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp2_switchdev_init(ptr nocapture noundef readonly %mlxsw_sp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  %bridge_8021ad_ops = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bridge_8021ad_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlxsw_sp2_bridge_8021ad_ops, ptr %bridge_8021ad_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_switchdev_init(ptr noundef %mlxsw_sp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1012) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %1 = ptrtoint ptr %bridge1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %bridge1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mlxsw_sp, ptr %call7.i.i, align 8
  %bridges_list = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %bridges_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %bridges_list, ptr %bridges_list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bridges_list, ptr %prev.i, align 8
  %bridge_8021q_ops = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %bridge_8021q_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlxsw_sp_bridge_8021q_ops, ptr %bridge_8021q_ops, align 8
  %bridge_8021d_ops = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %bridge_8021d_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mlxsw_sp_bridge_8021d_ops, ptr %bridge_8021d_ops, align 4
  %switchdev_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 25
  %7 = ptrtoint ptr %switchdev_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %switchdev_ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void %10(ptr noundef %mlxsw_sp) #12
  %11 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bridge1, align 4
  %call.i = tail call fastcc i32 @mlxsw_sp_ageing_set(ptr noundef %mlxsw_sp, i32 noundef 300) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %13 = ptrtoint ptr %bus_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_info.i, align 4
  %dev.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.88) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @mlxsw_sp_switchdev_notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info8.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %17 = ptrtoint ptr %bus_info8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_info8.i, align 4
  %dev9.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.91) #16
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @mlxsw_sp_switchdev_blocking_notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %do.body21.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info17.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %21 = ptrtoint ptr %bus_info17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_info17.i, align 4
  %dev18.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev18.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.94) #16
  %call45.i = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @mlxsw_sp_switchdev_notifier) #12
  br label %cleanup

do.body21.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %fdb_notify.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %12, i32 0, i32 1
  tail call void @__init_work(ptr noundef %fdb_notify.i, i32 noundef 0) #12
  %25 = ptrtoint ptr %fdb_notify.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %fdb_notify.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %12, i32 0, i32 1, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @mlxsw_sp_fdb_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry31.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %12, i32 0, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %entry31.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry31.i, ptr %entry31.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %12, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry31.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %12, i32 0, i32 1, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mlxsw_sp_fdb_notify_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %12, i32 0, i32 1, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.98, ptr noundef nonnull @mlxsw_sp_fdb_init.__key.97) #12
  %interval.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %12, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100, ptr %interval.i, align 4
  %30 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bridge1, align 4
  %interval2.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %31, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %interval2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interval2.i.i, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %33) #12
  %fdb_notify3.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %31, i32 0, i32 1
  %call4.i.i = tail call i32 @mlxsw_core_schedule_dw(ptr noundef %fdb_notify3.i.i, i32 noundef %call2.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body21.i, %do.end16.i, %do.end7.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ %call2.i, %do.end7.i ], [ %call11.i, %do.end16.i ], [ 0, %do.body21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_switchdev_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %0 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge.i, align 4
  %fdb_notify.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %1, i32 0, i32 1
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fdb_notify.i) #12
  %call1.i = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @mlxsw_sp_switchdev_blocking_notifier) #12
  %call2.i = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @mlxsw_sp_switchdev_notifier) #12
  %2 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge.i, align 4
  %bridges_list = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bridges_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bridges_list, align 4
  %cmp.i.not = icmp eq ptr %5, %bridges_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !293

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3731, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge.i, align 4
  tail call void @kfree(ptr noundef %7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_fid_port_vid_unmap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_flood_set(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_bridge_device_put(ptr nocapture noundef %bridge, ptr noundef %bridge_device) unnamed_addr #1 align 64 {
entry:
  %priv.i.i = alloca %struct.netdev_nested_priv, align 8
  %iter.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports_list = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %bridge_device, i32 0, i32 2
  %0 = ptrtoint ptr %ports_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ports_list, align 4
  %cmp.i.not = icmp eq ptr %1, %ports_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_device, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i.i) #12
  %lower.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lower.i.i, align 8
  %6 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %iter.i.i, align 4
  %call.i.i = call ptr @netdev_lower_get_next(ptr noundef %3, ptr noundef nonnull %iter.i.i) #12
  %tobool.not10.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not10.i.i, label %if.then.mlxsw_sp_bridge_device_vxlan_fini.exit.i_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.mlxsw_sp_bridge_device_vxlan_fini.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_vxlan_fini.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %dev.011.i.i = phi ptr [ %call3.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.then.for.body.i.i_crit_edge ]
  %rtnl_link_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.011.i.i, i32 0, i32 136
  %7 = ptrtoint ptr %rtnl_link_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtnl_link_ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %netif_is_vxlan.exit.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

netif_is_vxlan.exit.i.i:                          ; preds = %for.body.i.i
  %kind.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %kind.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kind.i.i.i, align 4
  %call.i.i.i = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i, label %netif_is_vxlan.exit.i.i.for.inc.i.i_crit_edge

netif_is_vxlan.exit.i.i.for.inc.i.i_crit_edge:    ; preds = %netif_is_vxlan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %netif_is_vxlan.exit.i.i
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.011.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %13 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bridge, align 4
  %vni.i.i.i = getelementptr i8, ptr %dev.011.i.i, i32 13796
  %15 = ptrtoint ptr %vni.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vni.i.i.i, align 4
  %call1.i.i.i = call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef %14, i32 noundef %16) #12
  %tobool.not.i9.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i9.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlxsw_sp_nve_fid_disable(ptr noundef %14, ptr noundef nonnull %call1.i.i.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i.i.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.i, %if.then.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %netif_is_vxlan.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %call3.i.i = call ptr @netdev_lower_get_next(ptr noundef %3, ptr noundef nonnull %iter.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.mlxsw_sp_bridge_device_vxlan_fini.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.mlxsw_sp_bridge_device_vxlan_fini.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_vxlan_fini.exit.i

mlxsw_sp_bridge_device_vxlan_fini.exit.i:         ; preds = %for.inc.i.i.mlxsw_sp_bridge_device_vxlan_fini.exit.i_crit_edge, %if.then.mlxsw_sp_bridge_device_vxlan_fini.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #12
  %17 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge, align 4
  %19 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bridge_device, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i.i) #12
  %21 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 72057594037927935, ptr %priv.i.i, align 8, !annotation !295
  %data.i.i = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %data.i.i, align 4
  call void @mlxsw_sp_rif_destroy_by_dev(ptr noundef %18, ptr noundef %20) #12
  %call.i69.i = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %20, ptr noundef nonnull @mlxsw_sp_bridge_device_upper_rif_destroy, ptr noundef nonnull %priv.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i.i) #12
  %list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %bridge_device, i32 0, i32 1
  %call.i.i70.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i70.i, label %if.end.i.i71.i, label %mlxsw_sp_bridge_device_vxlan_fini.exit.i.list_del.exit.i_crit_edge

mlxsw_sp_bridge_device_vxlan_fini.exit.i.list_del.exit.i_crit_edge: ; preds = %mlxsw_sp_bridge_device_vxlan_fini.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i71.i:                                   ; preds = %mlxsw_sp_bridge_device_vxlan_fini.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %bridge_device, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i71.i, %mlxsw_sp_bridge_device_vxlan_fini.exit.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %bridge_device, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %vlan_enabled.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %bridge_device, i32 0, i32 4
  %31 = ptrtoint ptr %vlan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %vlan_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then.i

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_enabled_exists.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %bridge, i32 0, i32 3
  %32 = ptrtoint ptr %vlan_enabled_exists.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %vlan_enabled_exists.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %33 = ptrtoint ptr %ports_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %ports_list, align 4
  %cmp.i.not.i = icmp eq ptr %34, %ports_list
  br i1 %cmp.i.not.i, label %if.end.i.if.end18.i_crit_edge, label %do.end.i, !prof !293

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %if.end.i.if.end18.i_crit_edge
  %mids_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %bridge_device, i32 0, i32 3
  %35 = ptrtoint ptr %mids_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %mids_list.i, align 4
  %cmp.i72.not.i = icmp eq ptr %36, %mids_list.i
  br i1 %cmp.i72.not.i, label %if.end18.i.mlxsw_sp_bridge_device_destroy.exit_crit_edge, label %do.end45.i, !prof !293

if.end18.i.mlxsw_sp_bridge_device_destroy.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_device_destroy.exit

do.end45.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #12
  br label %mlxsw_sp_bridge_device_destroy.exit

mlxsw_sp_bridge_device_destroy.exit:              ; preds = %do.end45.i, %if.end18.i.mlxsw_sp_bridge_device_destroy.exit_crit_edge
  call void @kfree(ptr noundef %bridge_device) #12
  br label %if.end

if.end:                                           ; preds = %mlxsw_sp_bridge_device_destroy.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_rif_destroy_by_dev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_upper_dev_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_bridge_device_upper_rif_destroy(ptr noundef %dev, ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @mlxsw_sp_rif_destroy_by_dev(ptr noundef %1, ptr noundef %dev) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_sfd_pack(ptr nocapture noundef %payload, i32 noundef %op) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memset(ptr %payload, i32 0, i32 1040)
  %spec.select.i.i = shl i32 %op, 30
  %arrayidx.i.i21 = getelementptr i32, ptr %payload, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i.i, ptr %arrayidx.i.i21, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_sfd_rec_pack(ptr nocapture noundef %payload, i32 noundef %rec_type, ptr nocapture noundef readonly %mac, i32 noundef %action) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 2
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %and4.i.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp = icmp eq i32 %and4.i.i, 0
  br i1 %cmp, label %mlxsw_reg_sfd_num_rec_set.exit, label %entry.mlxsw_reg_sfd_rec_swid_set.exit_crit_edge

entry.mlxsw_reg_sfd_rec_swid_set.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_reg_sfd_rec_swid_set.exit

mlxsw_reg_sfd_num_rec_set.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and7.i.i = and i32 %1, -256
  %or.i.i = or i32 %and7.i.i, 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  br label %mlxsw_reg_sfd_rec_swid_set.exit

mlxsw_reg_sfd_rec_swid_set.exit:                  ; preds = %mlxsw_reg_sfd_num_rec_set.exit, %entry.mlxsw_reg_sfd_rec_swid_set.exit_crit_edge
  %arrayidx.i.i39 = getelementptr i32, ptr %payload, i32 4
  %3 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i39, align 4
  %spec.select.i.i59 = shl i32 %rec_type, 20
  %and6.i.i64 = and i32 %spec.select.i.i59, 15728640
  %arrayidx.i.i65 = getelementptr i32, ptr %payload, i32 4
  %and7.i.i67 = and i32 %4, 1048575
  %or.i.i68 = or i32 %and6.i.i64, %and7.i.i67
  %5 = ptrtoint ptr %arrayidx.i.i65 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i68, ptr %arrayidx.i.i65, align 4
  %arrayidx.i.i72 = getelementptr i8, ptr %payload, i32 18
  %6 = call ptr @memcpy(ptr %arrayidx.i.i72, ptr %mac, i32 6)
  %spec.select.i.i92 = shl i32 %action, 28
  %arrayidx.i.i98 = getelementptr i32, ptr %payload, i32 7
  %7 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i98, align 4
  %and7.i.i100 = and i32 %8, 268435455
  %or.i.i101 = or i32 %spec.select.i.i92, %and7.i.i100
  store i32 %or.i.i101, ptr %arrayidx.i.i98, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_port_mdb_del(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %bridge_port, ptr noundef %mid) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp_port, align 8
  %bridge_device = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 1
  %2 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_device, align 4
  %multicast_enabled = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %multicast_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %multicast_enabled, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %mrouter = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 7
  %6 = ptrtoint ptr %mrouter to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mrouter, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %mid3 = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 3
  %8 = ptrtoint ptr %mid3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mid3, align 4
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %10 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 288) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.if.then5_crit_edge, label %mlxsw_sp_port_smid_set.exit

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

mlxsw_sp_port_smid_set.exit:                      ; preds = %if.then
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %13 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %local_port.i, align 4
  tail call fastcc void @mlxsw_reg_smid2_pack(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %9, i16 noundef zeroext %14, i1 noundef zeroext false) #12
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core.i, align 4
  %call3.i = tail call i32 @mlxsw_reg_write(ptr noundef %16, ptr noundef nonnull @mlxsw_reg_smid2, ptr noundef nonnull %call7.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not, label %mlxsw_sp_port_smid_set.exit.if.end6_crit_edge, label %mlxsw_sp_port_smid_set.exit.if.then5_crit_edge

mlxsw_sp_port_smid_set.exit.if.then5_crit_edge:   ; preds = %mlxsw_sp_port_smid_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

mlxsw_sp_port_smid_set.exit.if.end6_crit_edge:    ; preds = %mlxsw_sp_port_smid_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %mlxsw_sp_port_smid_set.exit.if.then5_crit_edge, %if.then.if.then5_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.36) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %mlxsw_sp_port_smid_set.exit.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call fastcc i32 @mlxsw_sp_port_remove_from_mid(ptr noundef %mlxsw_sp_port, ptr noundef %mid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  ret i32 %call7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_remove_from_mid(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mid) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port, align 4
  %conv = zext i16 %3 to i32
  %ports_in_mid = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 5
  %4 = ptrtoint ptr %ports_in_mid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports_in_mid, align 4
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %5) #12
  %6 = ptrtoint ptr %ports_in_mid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports_in_mid, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call = tail call i32 @mlxsw_core_max_ports(ptr noundef %9) #12
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %7, i32 noundef %call) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call)
  %cmp4.i = icmp eq i32 %call.i, %call
  br i1 %cmp4.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %in_hw.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 4
  %10 = ptrtoint ptr %in_hw.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_hw.i, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i13 = icmp eq i8 %11, 0
  br i1 %tobool.not.i13, label %if.then.mlxsw_sp_mc_remove_mdb_entry.exit_crit_edge, label %if.end.i15

if.then.mlxsw_sp_mc_remove_mdb_entry.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_mc_remove_mdb_entry.exit

if.end.i15:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %mid1.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 3
  %12 = ptrtoint ptr %mid1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mid1.i, align 4
  %conv.i = zext i16 %13 to i32
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bridge.i, align 4
  %mids_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %15, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %mids_bitmap.i) #12
  %16 = ptrtoint ptr %in_hw.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %in_hw.i, align 2
  %addr.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 1
  %fid.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 2
  %17 = ptrtoint ptr %fid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fid.i, align 2
  %19 = ptrtoint ptr %mid1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mid1.i, align 4
  %call.i14 = tail call fastcc i32 @mlxsw_sp_port_mdb_op(ptr noundef %1, ptr noundef %addr.i, i16 noundef zeroext %18, i16 noundef zeroext %20, i1 noundef zeroext false) #12
  br label %mlxsw_sp_mc_remove_mdb_entry.exit

mlxsw_sp_mc_remove_mdb_entry.exit:                ; preds = %if.end.i15, %if.then.mlxsw_sp_mc_remove_mdb_entry.exit_crit_edge
  %retval.0.i16 = phi i32 [ %call.i14, %if.end.i15 ], [ 0, %if.then.mlxsw_sp_mc_remove_mdb_entry.exit_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mid) #12
  br i1 %call.i.i, label %if.end.i.i, label %mlxsw_sp_mc_remove_mdb_entry.exit.list_del.exit_crit_edge

mlxsw_sp_mc_remove_mdb_entry.exit.list_del.exit_crit_edge: ; preds = %mlxsw_sp_mc_remove_mdb_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %mlxsw_sp_mc_remove_mdb_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mid, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %mid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mid, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %mlxsw_sp_mc_remove_mdb_entry.exit.list_del.exit_crit_edge
  %27 = ptrtoint ptr %mid to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %mid, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mid, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %29 = ptrtoint ptr %ports_in_mid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ports_in_mid, align 4
  tail call void @bitmap_free(ptr noundef %30) #12
  tail call void @kfree(ptr noundef %mid) #12
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %retval.0.i16, %list_del.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_max_ports(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_mdb_op(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %addr, i16 noundef zeroext %fid, i16 noundef zeroext %mid_idx, i1 noundef zeroext %adding) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1040) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond.i = select i1 %adding, i32 1, i32 2
  tail call fastcc void @mlxsw_reg_sfd_pack(ptr noundef nonnull %call7.i, i32 noundef %cond.i)
  tail call fastcc void @mlxsw_reg_sfd_rec_pack(ptr noundef nonnull %call7.i, i32 noundef 2, ptr noundef %addr, i32 noundef 0) #12
  %arrayidx.i.i.i = getelementptr i32, ptr %call7.i, i32 6
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i.i, align 8
  %conv2.i = zext i16 %fid to i32
  %arrayidx.i.i24.i = getelementptr i32, ptr %call7.i, i32 6
  %or.i.i.i = and i32 %2, -536870912
  %and7.i.i26.i = or i32 %or.i.i.i, %conv2.i
  %or.i.i27.i = or i32 %and7.i.i26.i, 536805376
  %3 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i.i27.i, ptr %arrayidx.i.i24.i, align 8
  %conv4.i = zext i16 %mid_idx to i32
  %arrayidx.i.i52.i = getelementptr i32, ptr %call7.i, i32 7
  %4 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i52.i, align 4
  %and7.i.i54.i = and i32 %5, -65536
  %or.i.i55.i = or i32 %and7.i.i54.i, %conv4.i
  store i32 %or.i.i55.i, ptr %arrayidx.i.i52.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %call7.i, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call4 = tail call i32 @mlxsw_reg_write(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_sfd, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %mlxsw_reg_sfd_num_rec_get.exit47, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

mlxsw_reg_sfd_num_rec_get.exit47:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i37 = getelementptr i32, ptr %call7.i, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i37, align 8
  %12 = xor i32 %7, %11
  %13 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 -16
  br label %out

out:                                              ; preds = %mlxsw_reg_sfd_num_rec_get.exit47, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %spec.select, %mlxsw_reg_sfd_num_rec_get.exit47 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_smid2_pack(ptr nocapture noundef %payload, i16 noundef zeroext %mid, i16 noundef zeroext %port, i1 noundef zeroext %set) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memset(ptr %payload, i32 0, i32 288)
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %conv1 = zext i16 %mid to i32
  %and7.i.i30 = and i32 %2, 16711680
  %or.i.i = or i32 %and7.i.i30, %conv1
  store i32 %or.i.i, ptr %payload, align 4
  %conv41.i.i.i = sub i16 1023, %port
  %3 = lshr i16 %conv41.i.i.i, 3
  %4 = and i16 %port, 7
  %5 = zext i16 %4 to i32
  %conv60.i.i.i = add nuw nsw i16 %3, 32
  %shl.i.i37 = shl i32 1, %5
  %conv5.i.i = zext i1 %set to i32
  %shl6.i.i = shl nuw i32 %conv5.i.i, %5
  %and10.i.i = and i32 %shl6.i.i, %shl.i.i37
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i38 = getelementptr i8, ptr %payload, i32 %idxprom.i.i
  %6 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i38, align 1
  %8 = trunc i32 %shl.i.i37 to i8
  %9 = xor i8 %8, -1
  %conv15.i.i = and i8 %7, %9
  %10 = trunc i32 %and10.i.i to i8
  %conv18.i.i = or i8 %conv15.i.i, %10
  store i8 %conv18.i.i, ptr %arrayidx.i.i38, align 1
  %conv41.i.i.i56 = sub i16 1023, %port
  %11 = lshr i16 %conv41.i.i.i56, 3
  %12 = and i16 %port, 7
  %13 = trunc i16 %12 to i8
  %conv60.i.i.i63 = add nuw nsw i16 %11, 160
  %shl.i.i67 = shl i16 1, %12
  %and10.i.i69 = shl i8 1, %13
  %idxprom.i.i70 = zext i16 %conv60.i.i.i63 to i32
  %arrayidx.i.i71 = getelementptr i8, ptr %payload, i32 %idxprom.i.i70
  %14 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i71, align 1
  %16 = trunc i16 %shl.i.i67 to i8
  %17 = xor i8 %16, -1
  %conv15.i.i72 = and i8 %15, %17
  %conv18.i.i73 = or i8 %conv15.i.i72, %and10.i.i69
  store i8 %conv18.i.i73, ptr %arrayidx.i.i71, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_multicast_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_multicast_router(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_proto(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_port_dev_lower_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_attr_set(ptr noundef %dev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb5
    i32 5, label %sw.bb9
    i32 6, label %sw.bb12
    i32 7, label %sw.bb16
    i32 4, label %sw.bb20
    i32 8, label %sw.bb25
    i32 9, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %u = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %u, align 4
  %mlxsw_sp.i = getelementptr i8, ptr %dev, i32 2312
  %7 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mlxsw_sp.i, align 8
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bridge.i, align 4
  %call.i.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %4) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %bridges_list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %10, i32 0, i32 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i.i = phi ptr [ %bridges_list.i.i.i, %if.end.i.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %bridges_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.sw.epilog_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %bridge_device.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %12 = ptrtoint ptr %bridge_device.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge_device.0.i.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %13, %call.i.i
  br i1 %cmp2.i.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

mlxsw_sp_bridge_device_find.exit.i.i:             ; preds = %for.body.i.i.i
  %bridge_device.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %tobool2.not.i.i = icmp eq ptr %bridge_device.0.i.i.i.le, null
  br i1 %tobool2.not.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i.sw.epilog_crit_edge, label %if.end4.i.i

mlxsw_sp_bridge_device_find.exit.i.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end4.i.i:                                      ; preds = %mlxsw_sp_bridge_device_find.exit.i.i
  %ports_list.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 8
  br label %for.cond.i13.i.i

for.cond.i13.i.i:                                 ; preds = %for.body.i15.i.i.for.cond.i13.i.i_crit_edge, %if.end4.i.i
  %.pn.in.i10.i.i = phi ptr [ %ports_list.i.i.i, %if.end4.i.i ], [ %.pn.i11.i.i, %for.body.i15.i.i.for.cond.i13.i.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i11.i.i = load ptr, ptr %.pn.in.i10.i.i, align 4
  %cmp.not.i12.i.i = icmp eq ptr %.pn.i11.i.i, %ports_list.i.i.i
  br i1 %cmp.not.i12.i.i, label %for.cond.i13.i.i.sw.epilog_crit_edge, label %for.body.i15.i.i

for.cond.i13.i.i.sw.epilog_crit_edge:             ; preds = %for.cond.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i15.i.i:                                 ; preds = %for.cond.i13.i.i
  %bridge_port.0.i.i.i = getelementptr i8, ptr %.pn.i11.i.i, i32 -8
  %15 = ptrtoint ptr %bridge_port.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bridge_port.0.i.i.i, align 4
  %cmp2.i14.i.i = icmp eq ptr %16, %4
  br i1 %cmp2.i14.i.i, label %mlxsw_sp_bridge_port_find.exit.i, label %for.body.i15.i.i.for.cond.i13.i.i_crit_edge

for.body.i15.i.i.for.cond.i13.i.i_crit_edge:      ; preds = %for.body.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i.i

mlxsw_sp_bridge_port_find.exit.i:                 ; preds = %for.body.i15.i.i
  %bridge_port.0.i.i.i.le = getelementptr i8, ptr %.pn.i11.i.i, i32 -8
  %tobool.not.i = icmp eq ptr %bridge_port.0.i.i.i.le, null
  br i1 %tobool.not.i, label %mlxsw_sp_bridge_port_find.exit.i.sw.epilog_crit_edge, label %if.end.i

mlxsw_sp_bridge_port_find.exit.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_port_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %mlxsw_sp_bridge_port_find.exit.i
  %vlans_list.i = getelementptr i8, ptr %.pn.i11.i.i, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %mlxsw_sp_port_bridge_vlan_stp_set.exit.i.for.cond.i_crit_edge, %if.end.i
  %bridge_vlan.0.in.i = phi ptr [ %vlans_list.i, %if.end.i ], [ %bridge_vlan.0.i, %mlxsw_sp_port_bridge_vlan_stp_set.exit.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %bridge_vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bridge_vlan.0.i = load ptr, ptr %bridge_vlan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bridge_vlan.0.i, %vlans_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %port_vlan_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i
  %.pn.in.i.i = phi ptr [ %port_vlan_list.i.i, %for.body.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %port_vlan_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.mlxsw_sp_port_bridge_vlan_stp_set.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.mlxsw_sp_port_bridge_vlan_stp_set.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_stp_set.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mlxsw_sp_port2.i.i = getelementptr i8, ptr %.pn.i.i, i32 -16
  %19 = ptrtoint ptr %mlxsw_sp_port2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mlxsw_sp_port2.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %20, %add.ptr.i
  br i1 %cmp3.not.i.i, label %if.end.i48.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

if.end.i48.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %vid.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid.i.i, align 4
  %call.i47.i = tail call i32 @mlxsw_sp_port_vid_stp_set(ptr noundef %add.ptr.i, i16 noundef zeroext %22, i8 noundef zeroext %6) #12
  br label %mlxsw_sp_port_bridge_vlan_stp_set.exit.i

mlxsw_sp_port_bridge_vlan_stp_set.exit.i:         ; preds = %if.end.i48.i, %for.cond.i.i.mlxsw_sp_port_bridge_vlan_stp_set.exit.i_crit_edge
  %retval.0.i49.i = phi i32 [ %call.i47.i, %if.end.i48.i ], [ 0, %for.cond.i.i.mlxsw_sp_port_bridge_vlan_stp_set.exit.i_crit_edge ]
  %tobool3.not.i = icmp eq i32 %retval.0.i49.i, 0
  br i1 %tobool3.not.i, label %mlxsw_sp_port_bridge_vlan_stp_set.exit.i.for.cond.i_crit_edge, label %for.cond15.preheader.i

mlxsw_sp_port_bridge_vlan_stp_set.exit.i.for.cond.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_stp_set.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.cond15.preheader.i:                           ; preds = %mlxsw_sp_port_bridge_vlan_stp_set.exit.i
  %bridge_vlan.1.in70.i = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %bridge_vlan.1.in70.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bridge_vlan.171.i = load ptr, ptr %bridge_vlan.1.in70.i, align 4
  %cmp18.not72.i = icmp eq ptr %bridge_vlan.171.i, %vlans_list.i
  br i1 %cmp18.not72.i, label %for.cond15.preheader.i.sw.epilog_crit_edge, label %for.body20.lr.ph.i

for.cond15.preheader.i.sw.epilog_crit_edge:       ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body20.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %stp_state21.i = getelementptr i8, ptr %.pn.i11.i.i, i32 20
  br label %for.body20.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %stp_state.i = getelementptr i8, ptr %.pn.i11.i.i, i32 20
  %24 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %6, ptr %stp_state.i, align 4
  br label %sw.epilog

for.body20.i:                                     ; preds = %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i.for.body20.i_crit_edge, %for.body20.lr.ph.i
  %bridge_vlan.173.i = phi ptr [ %bridge_vlan.171.i, %for.body20.lr.ph.i ], [ %bridge_vlan.1.i, %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i.for.body20.i_crit_edge ]
  %25 = ptrtoint ptr %stp_state21.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %stp_state21.i, align 4
  %port_vlan_list.i50.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.173.i, i32 0, i32 1
  br label %for.cond.i54.i

for.cond.i54.i:                                   ; preds = %for.body.i57.i.for.cond.i54.i_crit_edge, %for.body20.i
  %.pn.in.i51.i = phi ptr [ %port_vlan_list.i50.i, %for.body20.i ], [ %.pn.i52.i, %for.body.i57.i.for.cond.i54.i_crit_edge ]
  %27 = ptrtoint ptr %.pn.in.i51.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i52.i = load ptr, ptr %.pn.in.i51.i, align 4
  %cmp.not.i53.i = icmp eq ptr %.pn.i52.i, %port_vlan_list.i50.i
  br i1 %cmp.not.i53.i, label %for.cond.i54.i.mlxsw_sp_port_bridge_vlan_stp_set.exit62.i_crit_edge, label %for.body.i57.i

for.cond.i54.i.mlxsw_sp_port_bridge_vlan_stp_set.exit62.i_crit_edge: ; preds = %for.cond.i54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i

for.body.i57.i:                                   ; preds = %for.cond.i54.i
  %mlxsw_sp_port2.i55.i = getelementptr i8, ptr %.pn.i52.i, i32 -16
  %28 = ptrtoint ptr %mlxsw_sp_port2.i55.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mlxsw_sp_port2.i55.i, align 4
  %cmp3.not.i56.i = icmp eq ptr %29, %add.ptr.i
  br i1 %cmp3.not.i56.i, label %if.end.i60.i, label %for.body.i57.i.for.cond.i54.i_crit_edge

for.body.i57.i.for.cond.i54.i_crit_edge:          ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i54.i

if.end.i60.i:                                     ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  %vid.i58.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.173.i, i32 0, i32 2
  %30 = ptrtoint ptr %vid.i58.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid.i58.i, align 4
  %call.i59.i = tail call i32 @mlxsw_sp_port_vid_stp_set(ptr noundef %add.ptr.i, i16 noundef zeroext %31, i8 noundef zeroext %26) #12
  br label %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i

mlxsw_sp_port_bridge_vlan_stp_set.exit62.i:       ; preds = %if.end.i60.i, %for.cond.i54.i.mlxsw_sp_port_bridge_vlan_stp_set.exit62.i_crit_edge
  %bridge_vlan.1.in.i = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.173.i, i32 0, i32 1
  %32 = ptrtoint ptr %bridge_vlan.1.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bridge_vlan.1.i = load ptr, ptr %bridge_vlan.1.in.i, align 4
  %cmp18.not.i = icmp eq ptr %bridge_vlan.1.i, %vlans_list.i
  br i1 %cmp18.not.i, label %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i.sw.epilog_crit_edge, label %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i.for.body20.i_crit_edge

mlxsw_sp_port_bridge_vlan_stp_set.exit62.i.for.body20.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20.i

mlxsw_sp_port_bridge_vlan_stp_set.exit62.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %.elt63 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %.elt63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack64 = load i32, ptr %.elt63, align 4
  %and.i = and i32 %.unpack64, -2145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i65 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i65, i32 0, i32 -22
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %34 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %attr, align 4
  %u7 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %36 = ptrtoint ptr %u7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack = load i32, ptr %u7, align 4
  %.elt60 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %.elt60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack61 = load i32, ptr %.elt60, align 4
  %mlxsw_sp.i66 = getelementptr i8, ptr %dev, i32 2312
  %38 = ptrtoint ptr %mlxsw_sp.i66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mlxsw_sp.i66, align 8
  %bridge.i67 = getelementptr inbounds %struct.mlxsw_sp, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %bridge.i67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bridge.i67, align 4
  %call.i.i68 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %35) #12
  %tobool.not.i.i69 = icmp eq ptr %call.i.i68, null
  br i1 %tobool.not.i.i69, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i.i71

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i.i71:                                     ; preds = %sw.bb5
  %bridges_list.i.i.i70 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %41, i32 0, i32 4
  br label %for.cond.i.i.i75

for.cond.i.i.i75:                                 ; preds = %for.body.i.i.i78.for.cond.i.i.i75_crit_edge, %if.end.i.i71
  %.pn.in.i.i.i72 = phi ptr [ %bridges_list.i.i.i70, %if.end.i.i71 ], [ %.pn.i.i.i73, %for.body.i.i.i78.for.cond.i.i.i75_crit_edge ]
  %42 = ptrtoint ptr %.pn.in.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i.i.i73 = load ptr, ptr %.pn.in.i.i.i72, align 4
  %cmp.not.i.i.i74 = icmp eq ptr %.pn.i.i.i73, %bridges_list.i.i.i70
  br i1 %cmp.not.i.i.i74, label %for.cond.i.i.i75.sw.epilog_crit_edge, label %for.body.i.i.i78

for.cond.i.i.i75.sw.epilog_crit_edge:             ; preds = %for.cond.i.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i.i78:                                 ; preds = %for.cond.i.i.i75
  %bridge_device.0.i.i.i76 = getelementptr i8, ptr %.pn.i.i.i73, i32 -4
  %43 = ptrtoint ptr %bridge_device.0.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bridge_device.0.i.i.i76, align 4
  %cmp2.i.i.i77 = icmp eq ptr %44, %call.i.i68
  br i1 %cmp2.i.i.i77, label %mlxsw_sp_bridge_device_find.exit.i.i81, label %for.body.i.i.i78.for.cond.i.i.i75_crit_edge

for.body.i.i.i78.for.cond.i.i.i75_crit_edge:      ; preds = %for.body.i.i.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i75

mlxsw_sp_bridge_device_find.exit.i.i81:           ; preds = %for.body.i.i.i78
  %bridge_device.0.i.i.i76.le = getelementptr i8, ptr %.pn.i.i.i73, i32 -4
  %tobool2.not.i.i80 = icmp eq ptr %bridge_device.0.i.i.i76.le, null
  br i1 %tobool2.not.i.i80, label %mlxsw_sp_bridge_device_find.exit.i.i81.sw.epilog_crit_edge, label %if.end4.i.i83

mlxsw_sp_bridge_device_find.exit.i.i81.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end4.i.i83:                                    ; preds = %mlxsw_sp_bridge_device_find.exit.i.i81
  %ports_list.i.i.i82 = getelementptr i8, ptr %.pn.i.i.i73, i32 8
  br label %for.cond.i13.i.i87

for.cond.i13.i.i87:                               ; preds = %for.body.i15.i.i90.for.cond.i13.i.i87_crit_edge, %if.end4.i.i83
  %.pn.in.i10.i.i84 = phi ptr [ %ports_list.i.i.i82, %if.end4.i.i83 ], [ %.pn.i11.i.i85, %for.body.i15.i.i90.for.cond.i13.i.i87_crit_edge ]
  %45 = ptrtoint ptr %.pn.in.i10.i.i84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i11.i.i85 = load ptr, ptr %.pn.in.i10.i.i84, align 4
  %cmp.not.i12.i.i86 = icmp eq ptr %.pn.i11.i.i85, %ports_list.i.i.i82
  br i1 %cmp.not.i12.i.i86, label %for.cond.i13.i.i87.sw.epilog_crit_edge, label %for.body.i15.i.i90

for.cond.i13.i.i87.sw.epilog_crit_edge:           ; preds = %for.cond.i13.i.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i15.i.i90:                               ; preds = %for.cond.i13.i.i87
  %bridge_port.0.i.i.i88 = getelementptr i8, ptr %.pn.i11.i.i85, i32 -8
  %46 = ptrtoint ptr %bridge_port.0.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bridge_port.0.i.i.i88, align 4
  %cmp2.i14.i.i89 = icmp eq ptr %47, %35
  br i1 %cmp2.i14.i.i89, label %mlxsw_sp_bridge_port_find.exit.i93, label %for.body.i15.i.i90.for.cond.i13.i.i87_crit_edge

for.body.i15.i.i90.for.cond.i13.i.i87_crit_edge:  ; preds = %for.body.i15.i.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i.i87

mlxsw_sp_bridge_port_find.exit.i93:               ; preds = %for.body.i15.i.i90
  %bridge_port.0.i.i.i88.le = getelementptr i8, ptr %.pn.i11.i.i85, i32 -8
  %tobool.not.i92 = icmp eq ptr %bridge_port.0.i.i.i88.le, null
  br i1 %tobool.not.i92, label %mlxsw_sp_bridge_port_find.exit.i93.sw.epilog_crit_edge, label %if.end.i95

mlxsw_sp_bridge_port_find.exit.i93.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_port_find.exit.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i95:                                       ; preds = %mlxsw_sp_bridge_port_find.exit.i93
  %and.i94 = and i32 %.unpack61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool1.not.i = icmp eq i32 %and.i94, 0
  br i1 %tobool1.not.i, label %if.end.i95.if.end9.i_crit_edge, label %if.then2.i

if.end.i95.if.end9.i_crit_edge:                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i95
  %and3.i = and i32 %.unpack, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %vlans_list.i.i = getelementptr i8, ptr %.pn.i11.i.i85, i32 8
  %local_port.i.i.i = getelementptr i8, ptr %dev, i32 2316
  br label %for.cond.i.i97

for.cond.i.i97:                                   ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i.for.cond.i.i97_crit_edge, %if.then2.i
  %bridge_vlan.0.in.i.i = phi ptr [ %vlans_list.i.i, %if.then2.i ], [ %bridge_vlan.0.i.i, %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i.for.cond.i.i97_crit_edge ]
  %48 = ptrtoint ptr %bridge_vlan.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bridge_vlan.0.i.i = load ptr, ptr %bridge_vlan.0.in.i.i, align 4
  %cmp.not.i.i96 = icmp eq ptr %bridge_vlan.0.i.i, %vlans_list.i.i
  br i1 %cmp.not.i.i96, label %for.cond.i.i97.if.end9.i_crit_edge, label %for.body.i.i98

for.cond.i.i97.if.end9.i_crit_edge:               ; preds = %for.cond.i.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

for.body.i.i98:                                   ; preds = %for.cond.i.i97
  %port_vlan_list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i.i, i32 0, i32 1
  br label %for.cond.i.i60.i

for.cond.i.i60.i:                                 ; preds = %for.body.i.i61.i.for.cond.i.i60.i_crit_edge, %for.body.i.i98
  %.pn.in.i.i57.i = phi ptr [ %port_vlan_list.i.i.i, %for.body.i.i98 ], [ %.pn.i.i58.i, %for.body.i.i61.i.for.cond.i.i60.i_crit_edge ]
  %49 = ptrtoint ptr %.pn.in.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i.i58.i = load ptr, ptr %.pn.in.i.i57.i, align 4
  %cmp.not.i.i59.i = icmp eq ptr %.pn.i.i58.i, %port_vlan_list.i.i.i
  br i1 %cmp.not.i.i59.i, label %for.cond.i.i60.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i_crit_edge, label %for.body.i.i61.i

for.cond.i.i60.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i_crit_edge: ; preds = %for.cond.i.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i

for.body.i.i61.i:                                 ; preds = %for.cond.i.i60.i
  %mlxsw_sp_port2.i.i.i = getelementptr i8, ptr %.pn.i.i58.i, i32 -16
  %50 = ptrtoint ptr %mlxsw_sp_port2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mlxsw_sp_port2.i.i.i, align 4
  %cmp3.not.i.i.i = icmp eq ptr %51, %add.ptr.i
  br i1 %cmp3.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i61.i.for.cond.i.i60.i_crit_edge

for.body.i.i61.i.for.cond.i.i60.i_crit_edge:      ; preds = %for.body.i.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i60.i

if.end.i.i.i:                                     ; preds = %for.body.i.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  %fid.i.i.i = getelementptr i8, ptr %.pn.i.i58.i, i32 -12
  %52 = ptrtoint ptr %fid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fid.i.i.i, align 4
  %54 = ptrtoint ptr %local_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %local_port.i.i.i, align 4
  %call.i.i.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %53, i32 noundef 0, i16 noundef zeroext %55, i1 noundef zeroext %tobool4.i) #12
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i

mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i:     ; preds = %if.end.i.i.i, %for.cond.i.i60.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i ], [ 0, %for.cond.i.i60.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i_crit_edge ]
  %tobool2.not.i62.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool2.not.i62.i, label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i.for.cond.i.i97_crit_edge, label %for.cond12.preheader.i.i

mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i.for.cond.i.i97_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i97

for.cond12.preheader.i.i:                         ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i
  %bridge_vlan.1.in59.i.i = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.0.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %bridge_vlan.1.in59.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bridge_vlan.160.i.i = load ptr, ptr %bridge_vlan.1.in59.i.i, align 4
  %cmp15.not61.i.i = icmp eq ptr %bridge_vlan.160.i.i, %vlans_list.i.i
  br i1 %cmp15.not61.i.i, label %for.cond12.preheader.i.i.sw.epilog_crit_edge, label %for.body17.lr.ph.i.i

for.cond12.preheader.i.i.sw.epilog_crit_edge:     ; preds = %for.cond12.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body17.lr.ph.i.i:                             ; preds = %for.cond12.preheader.i.i
  %lnot19.i.i = xor i1 %tobool4.i, true
  br label %for.body17.i.i

for.body17.i.i:                                   ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i.for.body17.i.i_crit_edge, %for.body17.lr.ph.i.i
  %bridge_vlan.162.i.i = phi ptr [ %bridge_vlan.160.i.i, %for.body17.lr.ph.i.i ], [ %bridge_vlan.1.i.i, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i.for.body17.i.i_crit_edge ]
  %port_vlan_list.i41.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.162.i.i, i32 0, i32 1
  br label %for.cond.i45.i.i

for.cond.i45.i.i:                                 ; preds = %for.body.i48.i.i.for.cond.i45.i.i_crit_edge, %for.body17.i.i
  %.pn.in.i42.i.i = phi ptr [ %port_vlan_list.i41.i.i, %for.body17.i.i ], [ %.pn.i43.i.i, %for.body.i48.i.i.for.cond.i45.i.i_crit_edge ]
  %57 = ptrtoint ptr %.pn.in.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i43.i.i = load ptr, ptr %.pn.in.i42.i.i, align 4
  %cmp.not.i44.i.i = icmp eq ptr %.pn.i43.i.i, %port_vlan_list.i41.i.i
  br i1 %cmp.not.i44.i.i, label %for.cond.i45.i.i.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i_crit_edge, label %for.body.i48.i.i

for.cond.i45.i.i.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i_crit_edge: ; preds = %for.cond.i45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i

for.body.i48.i.i:                                 ; preds = %for.cond.i45.i.i
  %mlxsw_sp_port2.i46.i.i = getelementptr i8, ptr %.pn.i43.i.i, i32 -16
  %58 = ptrtoint ptr %mlxsw_sp_port2.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mlxsw_sp_port2.i46.i.i, align 4
  %cmp3.not.i47.i.i = icmp eq ptr %59, %add.ptr.i
  br i1 %cmp3.not.i47.i.i, label %if.end.i52.i.i, label %for.body.i48.i.i.for.cond.i45.i.i_crit_edge

for.body.i48.i.i.for.cond.i45.i.i_crit_edge:      ; preds = %for.body.i48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i45.i.i

if.end.i52.i.i:                                   ; preds = %for.body.i48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %fid.i49.i.i = getelementptr i8, ptr %.pn.i43.i.i, i32 -12
  %60 = ptrtoint ptr %fid.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fid.i49.i.i, align 4
  %62 = ptrtoint ptr %local_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %local_port.i.i.i, align 4
  %call.i51.i.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %61, i32 noundef 0, i16 noundef zeroext %63, i1 noundef zeroext %lnot19.i.i) #12
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i:   ; preds = %if.end.i52.i.i, %for.cond.i45.i.i.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i_crit_edge
  %bridge_vlan.1.in.i.i = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.162.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %bridge_vlan.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bridge_vlan.1.i.i = load ptr, ptr %bridge_vlan.1.in.i.i, align 4
  %cmp15.not.i.i = icmp eq ptr %bridge_vlan.1.i.i, %vlans_list.i.i
  br i1 %cmp15.not.i.i, label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i.sw.epilog_crit_edge, label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i.for.body17.i.i_crit_edge

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i.for.body17.i.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i.i

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end9.i:                                        ; preds = %for.cond.i.i97.if.end9.i_crit_edge, %if.end.i95.if.end9.i_crit_edge
  %and11.i = and i32 %.unpack61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end21.i_crit_edge, label %if.then13.i

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end9.i
  %and15.i = and i32 %.unpack, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.i = icmp ne i32 %and15.i, 0
  %vlans_list.i64.i = getelementptr i8, ptr %.pn.i11.i.i85, i32 8
  br label %for.cond.i68.i

for.cond.i68.i:                                   ; preds = %mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i.for.cond.i68.i_crit_edge, %if.then13.i
  %bridge_vlan.0.in.i65.i = phi ptr [ %vlans_list.i64.i, %if.then13.i ], [ %bridge_vlan.0.i66.i, %mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i.for.cond.i68.i_crit_edge ]
  %65 = ptrtoint ptr %bridge_vlan.0.in.i65.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bridge_vlan.0.i66.i = load ptr, ptr %bridge_vlan.0.in.i65.i, align 4
  %cmp.not.i67.i = icmp eq ptr %bridge_vlan.0.i66.i, %vlans_list.i64.i
  br i1 %cmp.not.i67.i, label %for.cond.i68.i.if.end21.i_crit_edge, label %for.body.i70.i

for.cond.i68.i.if.end21.i_crit_edge:              ; preds = %for.cond.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

for.body.i70.i:                                   ; preds = %for.cond.i68.i
  %vid1.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i66.i, i32 0, i32 2
  %66 = ptrtoint ptr %vid1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vid1.i.i.i, align 4
  %port_vlan_list.i.i69.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i66.i, i32 0, i32 1
  br label %for.cond.i.i74.i

for.cond.i.i74.i:                                 ; preds = %for.body.i.i75.i.for.cond.i.i74.i_crit_edge, %for.body.i70.i
  %.pn.in.i.i71.i = phi ptr [ %port_vlan_list.i.i69.i, %for.body.i70.i ], [ %.pn.i.i72.i, %for.body.i.i75.i.for.cond.i.i74.i_crit_edge ]
  %68 = ptrtoint ptr %.pn.in.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i.i72.i = load ptr, ptr %.pn.in.i.i71.i, align 4
  %cmp.not.i.i73.i = icmp eq ptr %.pn.i.i72.i, %port_vlan_list.i.i69.i
  br i1 %cmp.not.i.i73.i, label %for.cond.i.i74.i.mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i_crit_edge, label %for.body.i.i75.i

for.cond.i.i74.i.mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i_crit_edge: ; preds = %for.cond.i.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i

for.body.i.i75.i:                                 ; preds = %for.cond.i.i74.i
  %mlxsw_sp_port3.i.i.i = getelementptr i8, ptr %.pn.i.i72.i, i32 -16
  %69 = ptrtoint ptr %mlxsw_sp_port3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mlxsw_sp_port3.i.i.i, align 4
  %cmp4.not.i.i.i = icmp eq ptr %70, %add.ptr.i
  br i1 %cmp4.not.i.i.i, label %if.end.i.i77.i, label %for.body.i.i75.i.for.cond.i.i74.i_crit_edge

for.body.i.i75.i.for.cond.i.i74.i_crit_edge:      ; preds = %for.body.i.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i74.i

if.end.i.i77.i:                                   ; preds = %for.body.i.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i76.i = tail call i32 @mlxsw_sp_port_vid_learning_set(ptr noundef %add.ptr.i, i16 noundef zeroext %67, i1 noundef zeroext %tobool16.i) #12
  br label %mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i

mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i:  ; preds = %if.end.i.i77.i, %for.cond.i.i74.i.mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i_crit_edge
  %retval.0.i.i78.i = phi i32 [ %call.i.i76.i, %if.end.i.i77.i ], [ 0, %for.cond.i.i74.i.mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i_crit_edge ]
  %tobool2.not.i79.i = icmp eq i32 %retval.0.i.i78.i, 0
  br i1 %tobool2.not.i79.i, label %mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i.for.cond.i68.i_crit_edge, label %for.cond12.preheader.i80.i

mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i.for.cond.i68.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i68.i

for.cond12.preheader.i80.i:                       ; preds = %mlxsw_sp_port_bridge_vlan_learning_set.exit.i.i
  %bridge_vlan.1.in55.i.i = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.0.i66.i, i32 0, i32 1
  %71 = ptrtoint ptr %bridge_vlan.1.in55.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %bridge_vlan.156.i.i = load ptr, ptr %bridge_vlan.1.in55.i.i, align 4
  %cmp15.not57.i.i = icmp eq ptr %bridge_vlan.156.i.i, %vlans_list.i64.i
  br i1 %cmp15.not57.i.i, label %for.cond12.preheader.i80.i.sw.epilog_crit_edge, label %for.body17.lr.ph.i82.i

for.cond12.preheader.i80.i.sw.epilog_crit_edge:   ; preds = %for.cond12.preheader.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body17.lr.ph.i82.i:                           ; preds = %for.cond12.preheader.i80.i
  %lnot19.i81.i = xor i1 %tobool16.i, true
  br label %for.body17.i84.i

for.body17.i84.i:                                 ; preds = %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i.for.body17.i84.i_crit_edge, %for.body17.lr.ph.i82.i
  %bridge_vlan.158.i.i = phi ptr [ %bridge_vlan.156.i.i, %for.body17.lr.ph.i82.i ], [ %bridge_vlan.1.i91.i, %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i.for.body17.i84.i_crit_edge ]
  %vid1.i40.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.158.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %vid1.i40.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vid1.i40.i.i, align 4
  %port_vlan_list.i41.i83.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.158.i.i, i32 0, i32 1
  br label %for.cond.i45.i88.i

for.cond.i45.i88.i:                               ; preds = %for.body.i48.i89.i.for.cond.i45.i88.i_crit_edge, %for.body17.i84.i
  %.pn.in.i42.i85.i = phi ptr [ %port_vlan_list.i41.i83.i, %for.body17.i84.i ], [ %.pn.i43.i86.i, %for.body.i48.i89.i.for.cond.i45.i88.i_crit_edge ]
  %74 = ptrtoint ptr %.pn.in.i42.i85.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i43.i86.i = load ptr, ptr %.pn.in.i42.i85.i, align 4
  %cmp.not.i44.i87.i = icmp eq ptr %.pn.i43.i86.i, %port_vlan_list.i41.i83.i
  br i1 %cmp.not.i44.i87.i, label %for.cond.i45.i88.i.mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i_crit_edge, label %for.body.i48.i89.i

for.cond.i45.i88.i.mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i_crit_edge: ; preds = %for.cond.i45.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i

for.body.i48.i89.i:                               ; preds = %for.cond.i45.i88.i
  %mlxsw_sp_port3.i46.i.i = getelementptr i8, ptr %.pn.i43.i86.i, i32 -16
  %75 = ptrtoint ptr %mlxsw_sp_port3.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mlxsw_sp_port3.i46.i.i, align 4
  %cmp4.not.i47.i.i = icmp eq ptr %76, %add.ptr.i
  br i1 %cmp4.not.i47.i.i, label %if.end.i50.i.i, label %for.body.i48.i89.i.for.cond.i45.i88.i_crit_edge

for.body.i48.i89.i.for.cond.i45.i88.i_crit_edge:  ; preds = %for.body.i48.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i45.i88.i

if.end.i50.i.i:                                   ; preds = %for.body.i48.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i49.i.i = tail call i32 @mlxsw_sp_port_vid_learning_set(ptr noundef %add.ptr.i, i16 noundef zeroext %73, i1 noundef zeroext %lnot19.i81.i) #12
  br label %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i

mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i: ; preds = %if.end.i50.i.i, %for.cond.i45.i88.i.mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i_crit_edge
  %bridge_vlan.1.in.i90.i = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.158.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %bridge_vlan.1.in.i90.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %bridge_vlan.1.i91.i = load ptr, ptr %bridge_vlan.1.in.i90.i, align 4
  %cmp15.not.i92.i = icmp eq ptr %bridge_vlan.1.i91.i, %vlans_list.i64.i
  br i1 %cmp15.not.i92.i, label %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i.sw.epilog_crit_edge, label %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i.for.body17.i84.i_crit_edge

mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i.for.body17.i84.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i84.i

mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end21.i:                                       ; preds = %for.cond.i68.i.if.end21.i_crit_edge, %if.end9.i.if.end21.i_crit_edge
  %bridge_device.i = getelementptr i8, ptr %.pn.i11.i.i85, i32 -4
  %78 = ptrtoint ptr %bridge_device.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bridge_device.i, align 4
  %multicast_enabled.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %multicast_enabled.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i = load i8, ptr %multicast_enabled.i, align 4
  %81 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool22.not.i = icmp ne i8 %81, 0
  %and26.i = and i32 %.unpack61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond.i, label %if.end21.i.out.i_crit_edge, label %if.then28.i

if.end21.i.out.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then28.i:                                      ; preds = %if.end21.i
  %and30.i = and i32 %.unpack, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.i = icmp ne i32 %and30.i, 0
  %vlans_list.i94.i = getelementptr i8, ptr %.pn.i11.i.i85, i32 8
  %local_port.i.i95.i = getelementptr i8, ptr %dev, i32 2316
  br label %for.cond.i99.i

for.cond.i99.i:                                   ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i.for.cond.i99.i_crit_edge, %if.then28.i
  %bridge_vlan.0.in.i96.i = phi ptr [ %vlans_list.i94.i, %if.then28.i ], [ %bridge_vlan.0.i97.i, %mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i.for.cond.i99.i_crit_edge ]
  %82 = ptrtoint ptr %bridge_vlan.0.in.i96.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %bridge_vlan.0.i97.i = load ptr, ptr %bridge_vlan.0.in.i96.i, align 4
  %cmp.not.i98.i = icmp eq ptr %bridge_vlan.0.i97.i, %vlans_list.i94.i
  br i1 %cmp.not.i98.i, label %for.cond.i99.i.out.i_crit_edge, label %for.body.i101.i

for.cond.i99.i.out.i_crit_edge:                   ; preds = %for.cond.i99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

for.body.i101.i:                                  ; preds = %for.cond.i99.i
  %port_vlan_list.i.i100.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i97.i, i32 0, i32 1
  br label %for.cond.i.i105.i

for.cond.i.i105.i:                                ; preds = %for.body.i.i108.i.for.cond.i.i105.i_crit_edge, %for.body.i101.i
  %.pn.in.i.i102.i = phi ptr [ %port_vlan_list.i.i100.i, %for.body.i101.i ], [ %.pn.i.i103.i, %for.body.i.i108.i.for.cond.i.i105.i_crit_edge ]
  %83 = ptrtoint ptr %.pn.in.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn.i.i103.i = load ptr, ptr %.pn.in.i.i102.i, align 4
  %cmp.not.i.i104.i = icmp eq ptr %.pn.i.i103.i, %port_vlan_list.i.i100.i
  br i1 %cmp.not.i.i104.i, label %for.cond.i.i105.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i_crit_edge, label %for.body.i.i108.i

for.cond.i.i105.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i_crit_edge: ; preds = %for.cond.i.i105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i

for.body.i.i108.i:                                ; preds = %for.cond.i.i105.i
  %mlxsw_sp_port2.i.i106.i = getelementptr i8, ptr %.pn.i.i103.i, i32 -16
  %84 = ptrtoint ptr %mlxsw_sp_port2.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mlxsw_sp_port2.i.i106.i, align 4
  %cmp3.not.i.i107.i = icmp eq ptr %85, %add.ptr.i
  br i1 %cmp3.not.i.i107.i, label %if.end.i.i111.i, label %for.body.i.i108.i.for.cond.i.i105.i_crit_edge

for.body.i.i108.i.for.cond.i.i105.i_crit_edge:    ; preds = %for.body.i.i108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i105.i

if.end.i.i111.i:                                  ; preds = %for.body.i.i108.i
  call void @__sanitizer_cov_trace_pc() #14
  %fid.i.i109.i = getelementptr i8, ptr %.pn.i.i103.i, i32 -12
  %86 = ptrtoint ptr %fid.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fid.i.i109.i, align 4
  %88 = ptrtoint ptr %local_port.i.i95.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %local_port.i.i95.i, align 4
  %call.i.i110.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %87, i32 noundef 2, i16 noundef zeroext %89, i1 noundef zeroext %tobool31.i) #12
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i

mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i:  ; preds = %if.end.i.i111.i, %for.cond.i.i105.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i_crit_edge
  %retval.0.i.i112.i = phi i32 [ %call.i.i110.i, %if.end.i.i111.i ], [ 0, %for.cond.i.i105.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i_crit_edge ]
  %tobool2.not.i113.i = icmp eq i32 %retval.0.i.i112.i, 0
  br i1 %tobool2.not.i113.i, label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i.for.cond.i99.i_crit_edge, label %for.cond12.preheader.i118.i

mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i.for.cond.i99.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i99.i

for.cond12.preheader.i118.i:                      ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i114.i
  %bridge_vlan.1.in59.i115.i = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.0.i97.i, i32 0, i32 1
  %90 = ptrtoint ptr %bridge_vlan.1.in59.i115.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bridge_vlan.160.i116.i = load ptr, ptr %bridge_vlan.1.in59.i115.i, align 4
  %cmp15.not61.i117.i = icmp eq ptr %bridge_vlan.160.i116.i, %vlans_list.i94.i
  br i1 %cmp15.not61.i117.i, label %for.cond12.preheader.i118.i.sw.epilog_crit_edge, label %for.body17.lr.ph.i120.i

for.cond12.preheader.i118.i.sw.epilog_crit_edge:  ; preds = %for.cond12.preheader.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body17.lr.ph.i120.i:                          ; preds = %for.cond12.preheader.i118.i
  %lnot19.i119.i = xor i1 %tobool31.i, true
  br label %for.body17.i123.i

for.body17.i123.i:                                ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i.for.body17.i123.i_crit_edge, %for.body17.lr.ph.i120.i
  %bridge_vlan.162.i121.i = phi ptr [ %bridge_vlan.160.i116.i, %for.body17.lr.ph.i120.i ], [ %bridge_vlan.1.i135.i, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i.for.body17.i123.i_crit_edge ]
  %port_vlan_list.i41.i122.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.162.i121.i, i32 0, i32 1
  br label %for.cond.i45.i127.i

for.cond.i45.i127.i:                              ; preds = %for.body.i48.i130.i.for.cond.i45.i127.i_crit_edge, %for.body17.i123.i
  %.pn.in.i42.i124.i = phi ptr [ %port_vlan_list.i41.i122.i, %for.body17.i123.i ], [ %.pn.i43.i125.i, %for.body.i48.i130.i.for.cond.i45.i127.i_crit_edge ]
  %91 = ptrtoint ptr %.pn.in.i42.i124.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn.i43.i125.i = load ptr, ptr %.pn.in.i42.i124.i, align 4
  %cmp.not.i44.i126.i = icmp eq ptr %.pn.i43.i125.i, %port_vlan_list.i41.i122.i
  br i1 %cmp.not.i44.i126.i, label %for.cond.i45.i127.i.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i_crit_edge, label %for.body.i48.i130.i

for.cond.i45.i127.i.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i_crit_edge: ; preds = %for.cond.i45.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i

for.body.i48.i130.i:                              ; preds = %for.cond.i45.i127.i
  %mlxsw_sp_port2.i46.i128.i = getelementptr i8, ptr %.pn.i43.i125.i, i32 -16
  %92 = ptrtoint ptr %mlxsw_sp_port2.i46.i128.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mlxsw_sp_port2.i46.i128.i, align 4
  %cmp3.not.i47.i129.i = icmp eq ptr %93, %add.ptr.i
  br i1 %cmp3.not.i47.i129.i, label %if.end.i52.i133.i, label %for.body.i48.i130.i.for.cond.i45.i127.i_crit_edge

for.body.i48.i130.i.for.cond.i45.i127.i_crit_edge: ; preds = %for.body.i48.i130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i45.i127.i

if.end.i52.i133.i:                                ; preds = %for.body.i48.i130.i
  call void @__sanitizer_cov_trace_pc() #14
  %fid.i49.i131.i = getelementptr i8, ptr %.pn.i43.i125.i, i32 -12
  %94 = ptrtoint ptr %fid.i49.i131.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fid.i49.i131.i, align 4
  %96 = ptrtoint ptr %local_port.i.i95.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %local_port.i.i95.i, align 4
  %call.i51.i132.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %95, i32 noundef 2, i16 noundef zeroext %97, i1 noundef zeroext %lnot19.i119.i) #12
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i: ; preds = %if.end.i52.i133.i, %for.cond.i45.i127.i.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i_crit_edge
  %bridge_vlan.1.in.i134.i = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.162.i121.i, i32 0, i32 1
  %98 = ptrtoint ptr %bridge_vlan.1.in.i134.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %bridge_vlan.1.i135.i = load ptr, ptr %bridge_vlan.1.in.i134.i, align 4
  %cmp15.not.i136.i = icmp eq ptr %bridge_vlan.1.i135.i, %vlans_list.i94.i
  br i1 %cmp15.not.i136.i, label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i.sw.epilog_crit_edge, label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i.for.body17.i123.i_crit_edge

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i.for.body17.i123.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i123.i

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

out.i:                                            ; preds = %for.cond.i99.i.out.i_crit_edge, %if.end21.i.out.i_crit_edge
  %flags37.i = getelementptr i8, ptr %.pn.i11.i.i85, i32 24
  %99 = ptrtoint ptr %flags37.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %.unpack, ptr %flags37.i, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %u10 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %100 = ptrtoint ptr %u10 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %u10, align 4
  %mlxsw_sp1.i = getelementptr i8, ptr %dev, i32 2312
  %102 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mlxsw_sp1.i, align 8
  %call.i = tail call i32 @clock_t_to_jiffies(i32 noundef %101) #12
  %call2.i = tail call i32 @jiffies_to_msecs(i32 noundef %call.i) #12
  %104 = add i32 %call2.i, -1000001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999991000, i32 %104)
  %105 = icmp ult i32 %104, -999991000
  br i1 %105, label %sw.bb9.sw.epilog_crit_edge, label %if.end.i100

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i100:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %call2.i, 1000
  %call4.i = tail call fastcc i32 @mlxsw_sp_ageing_set(ptr noundef %103, i32 noundef %div.i) #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %106 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %attr, align 4
  %u14 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %108 = ptrtoint ptr %u14 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %u14, align 4, !range !294
  %mlxsw_sp1.i102 = getelementptr i8, ptr %dev, i32 2312
  %110 = ptrtoint ptr %mlxsw_sp1.i102 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mlxsw_sp1.i102, align 8
  %bridge.i103 = getelementptr inbounds %struct.mlxsw_sp, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %bridge.i103 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bridge.i103, align 4
  %bridges_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %113, i32 0, i32 4
  br label %for.cond.i.i107

for.cond.i.i107:                                  ; preds = %for.body.i.i108.for.cond.i.i107_crit_edge, %sw.bb12
  %.pn.in.i.i104 = phi ptr [ %bridges_list.i.i, %sw.bb12 ], [ %.pn.i.i105, %for.body.i.i108.for.cond.i.i107_crit_edge ]
  %114 = ptrtoint ptr %.pn.in.i.i104 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pn.i.i105 = load ptr, ptr %.pn.in.i.i104, align 4
  %cmp.not.i.i106 = icmp eq ptr %.pn.i.i105, %bridges_list.i.i
  br i1 %cmp.not.i.i106, label %for.cond.i.i107.do.end.i_crit_edge, label %for.body.i.i108

for.cond.i.i107.do.end.i_crit_edge:               ; preds = %for.cond.i.i107
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.i.i108:                                  ; preds = %for.cond.i.i107
  %bridge_device.0.i.i = getelementptr i8, ptr %.pn.i.i105, i32 -4
  %115 = ptrtoint ptr %bridge_device.0.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bridge_device.0.i.i, align 4
  %cmp2.i.i = icmp eq ptr %116, %107
  br i1 %cmp2.i.i, label %mlxsw_sp_bridge_device_find.exit.i, label %for.body.i.i108.for.cond.i.i107_crit_edge

for.body.i.i108.for.cond.i.i107_crit_edge:        ; preds = %for.body.i.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i107

mlxsw_sp_bridge_device_find.exit.i:               ; preds = %for.body.i.i108
  %bridge_device.0.i.i.le = getelementptr i8, ptr %.pn.i.i105, i32 -4
  %tobool.not.i109 = icmp eq ptr %bridge_device.0.i.i.le, null
  br i1 %tobool.not.i109, label %mlxsw_sp_bridge_device_find.exit.i.do.end.i_crit_edge, label %if.end24.i, !prof !296

mlxsw_sp_bridge_device_find.exit.i.do.end.i_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %mlxsw_sp_bridge_device_find.exit.i.do.end.i_crit_edge, %for.cond.i.i107.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 765, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

if.end24.i:                                       ; preds = %mlxsw_sp_bridge_device_find.exit.i
  %vlan_enabled25.i = getelementptr i8, ptr %.pn.i.i105, i32 24
  %117 = ptrtoint ptr %vlan_enabled25.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load.i110 = load i8, ptr %vlan_enabled25.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i110, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i, i8 %109)
  %cmp.i = icmp eq i8 %bf.lshr.i, %109
  br i1 %cmp.i, label %if.end24.i.sw.epilog_crit_edge, label %if.end30.i

if.end24.i.sw.epilog_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %107, ptr noundef nonnull @.str.64) #16
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %118 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %attr, align 4
  %mlxsw_sp1.i112 = getelementptr i8, ptr %dev, i32 2312
  %120 = ptrtoint ptr %mlxsw_sp1.i112 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mlxsw_sp1.i112, align 8
  %bridge.i113 = getelementptr inbounds %struct.mlxsw_sp, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %bridge.i113 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bridge.i113, align 4
  %bridges_list.i.i114 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %123, i32 0, i32 4
  br label %for.cond.i.i118

for.cond.i.i118:                                  ; preds = %for.body.i.i121.for.cond.i.i118_crit_edge, %sw.bb16
  %.pn.in.i.i115 = phi ptr [ %bridges_list.i.i114, %sw.bb16 ], [ %.pn.i.i116, %for.body.i.i121.for.cond.i.i118_crit_edge ]
  %124 = ptrtoint ptr %.pn.in.i.i115 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn.i.i116 = load ptr, ptr %.pn.in.i.i115, align 4
  %cmp.not.i.i117 = icmp eq ptr %.pn.i.i116, %bridges_list.i.i114
  br i1 %cmp.not.i.i117, label %for.cond.i.i118.do.end.i125_crit_edge, label %for.body.i.i121

for.cond.i.i118.do.end.i125_crit_edge:            ; preds = %for.cond.i.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i125

for.body.i.i121:                                  ; preds = %for.cond.i.i118
  %bridge_device.0.i.i119 = getelementptr i8, ptr %.pn.i.i116, i32 -4
  %125 = ptrtoint ptr %bridge_device.0.i.i119 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bridge_device.0.i.i119, align 4
  %cmp2.i.i120 = icmp eq ptr %126, %119
  br i1 %cmp2.i.i120, label %mlxsw_sp_bridge_device_find.exit.i124, label %for.body.i.i121.for.cond.i.i118_crit_edge

for.body.i.i121.for.cond.i.i118_crit_edge:        ; preds = %for.body.i.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i118

mlxsw_sp_bridge_device_find.exit.i124:            ; preds = %for.body.i.i121
  %bridge_device.0.i.i119.le = getelementptr i8, ptr %.pn.i.i116, i32 -4
  %tobool.not.i123 = icmp eq ptr %bridge_device.0.i.i119.le, null
  br i1 %tobool.not.i123, label %mlxsw_sp_bridge_device_find.exit.i124.do.end.i125_crit_edge, label %if.end24.i126, !prof !296

mlxsw_sp_bridge_device_find.exit.i124.do.end.i125_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i125

do.end.i125:                                      ; preds = %mlxsw_sp_bridge_device_find.exit.i124.do.end.i125_crit_edge, %for.cond.i.i118.do.end.i125_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 783, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

if.end24.i126:                                    ; preds = %mlxsw_sp_bridge_device_find.exit.i124
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %119, ptr noundef nonnull @.str.65) #16
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %127 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %attr, align 4
  %u22 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %129 = ptrtoint ptr %u22 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %u22, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool23 = icmp ne i8 %130, 0
  %mlxsw_sp.i127 = getelementptr i8, ptr %dev, i32 2312
  %131 = ptrtoint ptr %mlxsw_sp.i127 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mlxsw_sp.i127, align 8
  %bridge.i128 = getelementptr inbounds %struct.mlxsw_sp, ptr %132, i32 0, i32 9
  %133 = ptrtoint ptr %bridge.i128 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bridge.i128, align 4
  %call.i.i129 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %128) #12
  %tobool.not.i.i130 = icmp eq ptr %call.i.i129, null
  br i1 %tobool.not.i.i130, label %sw.bb20.sw.epilog_crit_edge, label %if.end.i.i132

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i.i132:                                    ; preds = %sw.bb20
  %bridges_list.i.i.i131 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %134, i32 0, i32 4
  br label %for.cond.i.i.i136

for.cond.i.i.i136:                                ; preds = %for.body.i.i.i139.for.cond.i.i.i136_crit_edge, %if.end.i.i132
  %.pn.in.i.i.i133 = phi ptr [ %bridges_list.i.i.i131, %if.end.i.i132 ], [ %.pn.i.i.i134, %for.body.i.i.i139.for.cond.i.i.i136_crit_edge ]
  %135 = ptrtoint ptr %.pn.in.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn.i.i.i134 = load ptr, ptr %.pn.in.i.i.i133, align 4
  %cmp.not.i.i.i135 = icmp eq ptr %.pn.i.i.i134, %bridges_list.i.i.i131
  br i1 %cmp.not.i.i.i135, label %for.cond.i.i.i136.sw.epilog_crit_edge, label %for.body.i.i.i139

for.cond.i.i.i136.sw.epilog_crit_edge:            ; preds = %for.cond.i.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i.i139:                                ; preds = %for.cond.i.i.i136
  %bridge_device.0.i.i.i137 = getelementptr i8, ptr %.pn.i.i.i134, i32 -4
  %136 = ptrtoint ptr %bridge_device.0.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bridge_device.0.i.i.i137, align 4
  %cmp2.i.i.i138 = icmp eq ptr %137, %call.i.i129
  br i1 %cmp2.i.i.i138, label %mlxsw_sp_bridge_device_find.exit.i.i142, label %for.body.i.i.i139.for.cond.i.i.i136_crit_edge

for.body.i.i.i139.for.cond.i.i.i136_crit_edge:    ; preds = %for.body.i.i.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i136

mlxsw_sp_bridge_device_find.exit.i.i142:          ; preds = %for.body.i.i.i139
  %bridge_device.0.i.i.i137.le = getelementptr i8, ptr %.pn.i.i.i134, i32 -4
  %tobool2.not.i.i141 = icmp eq ptr %bridge_device.0.i.i.i137.le, null
  br i1 %tobool2.not.i.i141, label %mlxsw_sp_bridge_device_find.exit.i.i142.sw.epilog_crit_edge, label %if.end4.i.i144

mlxsw_sp_bridge_device_find.exit.i.i142.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end4.i.i144:                                   ; preds = %mlxsw_sp_bridge_device_find.exit.i.i142
  %ports_list.i.i.i143 = getelementptr i8, ptr %.pn.i.i.i134, i32 8
  br label %for.cond.i13.i.i148

for.cond.i13.i.i148:                              ; preds = %for.body.i15.i.i151.for.cond.i13.i.i148_crit_edge, %if.end4.i.i144
  %.pn.in.i10.i.i145 = phi ptr [ %ports_list.i.i.i143, %if.end4.i.i144 ], [ %.pn.i11.i.i146, %for.body.i15.i.i151.for.cond.i13.i.i148_crit_edge ]
  %138 = ptrtoint ptr %.pn.in.i10.i.i145 to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pn.i11.i.i146 = load ptr, ptr %.pn.in.i10.i.i145, align 4
  %cmp.not.i12.i.i147 = icmp eq ptr %.pn.i11.i.i146, %ports_list.i.i.i143
  br i1 %cmp.not.i12.i.i147, label %for.cond.i13.i.i148.sw.epilog_crit_edge, label %for.body.i15.i.i151

for.cond.i13.i.i148.sw.epilog_crit_edge:          ; preds = %for.cond.i13.i.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i15.i.i151:                              ; preds = %for.cond.i13.i.i148
  %bridge_port.0.i.i.i149 = getelementptr i8, ptr %.pn.i11.i.i146, i32 -8
  %139 = ptrtoint ptr %bridge_port.0.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bridge_port.0.i.i.i149, align 4
  %cmp2.i14.i.i150 = icmp eq ptr %140, %128
  br i1 %cmp2.i14.i.i150, label %mlxsw_sp_bridge_port_find.exit.i154, label %for.body.i15.i.i151.for.cond.i13.i.i148_crit_edge

for.body.i15.i.i151.for.cond.i13.i.i148_crit_edge: ; preds = %for.body.i15.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i.i148

mlxsw_sp_bridge_port_find.exit.i154:              ; preds = %for.body.i15.i.i151
  %bridge_port.0.i.i.i149.le = getelementptr i8, ptr %.pn.i11.i.i146, i32 -8
  %tobool.not.i153 = icmp eq ptr %bridge_port.0.i.i.i149.le, null
  br i1 %tobool.not.i153, label %mlxsw_sp_bridge_port_find.exit.i154.sw.epilog_crit_edge, label %if.end.i159

mlxsw_sp_bridge_port_find.exit.i154.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_port_find.exit.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i159:                                      ; preds = %mlxsw_sp_bridge_port_find.exit.i154
  %bridge_device.i155 = getelementptr i8, ptr %.pn.i11.i.i146, i32 -4
  %141 = ptrtoint ptr %bridge_device.i155 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bridge_device.i155, align 4
  %multicast_enabled.i156 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %multicast_enabled.i156 to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load.i157 = load i8, ptr %multicast_enabled.i156, align 4
  %144 = and i8 %bf.load.i157, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool1.not.i158 = icmp eq i8 %144, 0
  br i1 %tobool1.not.i158, label %if.end.i159.out.i198_crit_edge, label %if.end3.i

if.end.i159.out.i198_crit_edge:                   ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i198

if.end3.i:                                        ; preds = %if.end.i159
  %vlans_list.i.i160 = getelementptr i8, ptr %.pn.i11.i.i146, i32 8
  %local_port.i.i.i161 = getelementptr i8, ptr %dev, i32 2316
  br label %for.cond.i.i165

for.cond.i.i165:                                  ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174.for.cond.i.i165_crit_edge, %if.end3.i
  %bridge_vlan.0.in.i.i162 = phi ptr [ %vlans_list.i.i160, %if.end3.i ], [ %bridge_vlan.0.i.i163, %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174.for.cond.i.i165_crit_edge ]
  %145 = ptrtoint ptr %bridge_vlan.0.in.i.i162 to i32
  call void @__asan_load4_noabort(i32 %145)
  %bridge_vlan.0.i.i163 = load ptr, ptr %bridge_vlan.0.in.i.i162, align 4
  %cmp.not.i.i164 = icmp eq ptr %bridge_vlan.0.i.i163, %vlans_list.i.i160
  br i1 %cmp.not.i.i164, label %if.end8.i, label %for.body.i.i167

for.body.i.i167:                                  ; preds = %for.cond.i.i165
  %port_vlan_list.i.i.i166 = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i.i163, i32 0, i32 1
  br label %for.cond.i.i25.i

for.cond.i.i25.i:                                 ; preds = %for.body.i.i26.i.for.cond.i.i25.i_crit_edge, %for.body.i.i167
  %.pn.in.i.i22.i = phi ptr [ %port_vlan_list.i.i.i166, %for.body.i.i167 ], [ %.pn.i.i23.i, %for.body.i.i26.i.for.cond.i.i25.i_crit_edge ]
  %146 = ptrtoint ptr %.pn.in.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pn.i.i23.i = load ptr, ptr %.pn.in.i.i22.i, align 4
  %cmp.not.i.i24.i = icmp eq ptr %.pn.i.i23.i, %port_vlan_list.i.i.i166
  br i1 %cmp.not.i.i24.i, label %for.cond.i.i25.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174_crit_edge, label %for.body.i.i26.i

for.cond.i.i25.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174_crit_edge: ; preds = %for.cond.i.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174

for.body.i.i26.i:                                 ; preds = %for.cond.i.i25.i
  %mlxsw_sp_port2.i.i.i168 = getelementptr i8, ptr %.pn.i.i23.i, i32 -16
  %147 = ptrtoint ptr %mlxsw_sp_port2.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mlxsw_sp_port2.i.i.i168, align 4
  %cmp3.not.i.i.i169 = icmp eq ptr %148, %add.ptr.i
  br i1 %cmp3.not.i.i.i169, label %if.end.i.i.i172, label %for.body.i.i26.i.for.cond.i.i25.i_crit_edge

for.body.i.i26.i.for.cond.i.i25.i_crit_edge:      ; preds = %for.body.i.i26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i25.i

if.end.i.i.i172:                                  ; preds = %for.body.i.i26.i
  call void @__sanitizer_cov_trace_pc() #14
  %fid.i.i.i170 = getelementptr i8, ptr %.pn.i.i23.i, i32 -12
  %149 = ptrtoint ptr %fid.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %fid.i.i.i170, align 4
  %151 = ptrtoint ptr %local_port.i.i.i161 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %local_port.i.i.i161, align 4
  %call.i.i.i171 = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %150, i32 noundef 2, i16 noundef zeroext %152, i1 noundef zeroext %tobool23) #12
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174

mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174:  ; preds = %if.end.i.i.i172, %for.cond.i.i25.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174_crit_edge
  %retval.0.i.i.i173 = phi i32 [ %call.i.i.i171, %if.end.i.i.i172 ], [ 0, %for.cond.i.i25.i.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174_crit_edge ]
  %tobool2.not.i27.i = icmp eq i32 %retval.0.i.i.i173, 0
  br i1 %tobool2.not.i27.i, label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174.for.cond.i.i165_crit_edge, label %for.cond12.preheader.i.i178

mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174.for.cond.i.i165_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i165

for.cond12.preheader.i.i178:                      ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i174
  %bridge_vlan.1.in59.i.i175 = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.0.i.i163, i32 0, i32 1
  %153 = ptrtoint ptr %bridge_vlan.1.in59.i.i175 to i32
  call void @__asan_load4_noabort(i32 %153)
  %bridge_vlan.160.i.i176 = load ptr, ptr %bridge_vlan.1.in59.i.i175, align 4
  %cmp15.not61.i.i177 = icmp eq ptr %bridge_vlan.160.i.i176, %vlans_list.i.i160
  br i1 %cmp15.not61.i.i177, label %for.cond12.preheader.i.i178.sw.epilog_crit_edge, label %for.body17.lr.ph.i.i180

for.cond12.preheader.i.i178.sw.epilog_crit_edge:  ; preds = %for.cond12.preheader.i.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body17.lr.ph.i.i180:                          ; preds = %for.cond12.preheader.i.i178
  %lnot19.i.i179 = xor i1 %tobool23, true
  br label %for.body17.i.i183

for.body17.i.i183:                                ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197.for.body17.i.i183_crit_edge, %for.body17.lr.ph.i.i180
  %bridge_vlan.162.i.i181 = phi ptr [ %bridge_vlan.160.i.i176, %for.body17.lr.ph.i.i180 ], [ %bridge_vlan.1.i.i195, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197.for.body17.i.i183_crit_edge ]
  %port_vlan_list.i41.i.i182 = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.162.i.i181, i32 0, i32 1
  br label %for.cond.i45.i.i187

for.cond.i45.i.i187:                              ; preds = %for.body.i48.i.i190.for.cond.i45.i.i187_crit_edge, %for.body17.i.i183
  %.pn.in.i42.i.i184 = phi ptr [ %port_vlan_list.i41.i.i182, %for.body17.i.i183 ], [ %.pn.i43.i.i185, %for.body.i48.i.i190.for.cond.i45.i.i187_crit_edge ]
  %154 = ptrtoint ptr %.pn.in.i42.i.i184 to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pn.i43.i.i185 = load ptr, ptr %.pn.in.i42.i.i184, align 4
  %cmp.not.i44.i.i186 = icmp eq ptr %.pn.i43.i.i185, %port_vlan_list.i41.i.i182
  br i1 %cmp.not.i44.i.i186, label %for.cond.i45.i.i187.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197_crit_edge, label %for.body.i48.i.i190

for.cond.i45.i.i187.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197_crit_edge: ; preds = %for.cond.i45.i.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197

for.body.i48.i.i190:                              ; preds = %for.cond.i45.i.i187
  %mlxsw_sp_port2.i46.i.i188 = getelementptr i8, ptr %.pn.i43.i.i185, i32 -16
  %155 = ptrtoint ptr %mlxsw_sp_port2.i46.i.i188 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mlxsw_sp_port2.i46.i.i188, align 4
  %cmp3.not.i47.i.i189 = icmp eq ptr %156, %add.ptr.i
  br i1 %cmp3.not.i47.i.i189, label %if.end.i52.i.i193, label %for.body.i48.i.i190.for.cond.i45.i.i187_crit_edge

for.body.i48.i.i190.for.cond.i45.i.i187_crit_edge: ; preds = %for.body.i48.i.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i45.i.i187

if.end.i52.i.i193:                                ; preds = %for.body.i48.i.i190
  call void @__sanitizer_cov_trace_pc() #14
  %fid.i49.i.i191 = getelementptr i8, ptr %.pn.i43.i.i185, i32 -12
  %157 = ptrtoint ptr %fid.i49.i.i191 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fid.i49.i.i191, align 4
  %159 = ptrtoint ptr %local_port.i.i.i161 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %local_port.i.i.i161, align 4
  %call.i51.i.i192 = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %158, i32 noundef 2, i16 noundef zeroext %160, i1 noundef zeroext %lnot19.i.i179) #12
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197: ; preds = %if.end.i52.i.i193, %for.cond.i45.i.i187.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197_crit_edge
  %bridge_vlan.1.in.i.i194 = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.162.i.i181, i32 0, i32 1
  %161 = ptrtoint ptr %bridge_vlan.1.in.i.i194 to i32
  call void @__asan_load4_noabort(i32 %161)
  %bridge_vlan.1.i.i195 = load ptr, ptr %bridge_vlan.1.in.i.i194, align 4
  %cmp15.not.i.i196 = icmp eq ptr %bridge_vlan.1.i.i195, %vlans_list.i.i160
  br i1 %cmp15.not.i.i196, label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197.sw.epilog_crit_edge, label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197.for.body17.i.i183_crit_edge

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197.for.body17.i.i183_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i.i183

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197.sw.epilog_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.i:                                        ; preds = %for.cond.i.i165
  %162 = ptrtoint ptr %bridge_device.i155 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bridge_device.i155, align 4
  %mids_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %mids_list.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %mid.016.i.i = load ptr, ptr %mids_list.i.i, align 4
  %cmp.not17.i.i = icmp eq ptr %mid.016.i.i, %mids_list.i.i
  br i1 %cmp.not17.i.i, label %if.end8.i.out.i198_crit_edge, label %if.end8.i.for.body.i30.i_crit_edge

if.end8.i.for.body.i30.i_crit_edge:               ; preds = %if.end8.i
  br label %for.body.i30.i

if.end8.i.out.i198_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i198

for.body.i30.i:                                   ; preds = %for.inc.i.i.for.body.i30.i_crit_edge, %if.end8.i.for.body.i30.i_crit_edge
  %mid.018.i.i = phi ptr [ %mid.0.i.i, %for.inc.i.i.for.body.i30.i_crit_edge ], [ %mid.016.i.i, %if.end8.i.for.body.i30.i_crit_edge ]
  %165 = ptrtoint ptr %local_port.i.i.i161 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %local_port.i.i.i161, align 4
  %conv.i.i = zext i16 %166 to i32
  %ports_in_mid.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.018.i.i, i32 0, i32 5
  %167 = ptrtoint ptr %ports_in_mid.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ports_in_mid.i.i, align 4
  %div3.i.i.i = lshr i32 %conv.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %168, i32 %div3.i.i.i
  %169 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %conv.i.i, 31
  %171 = shl nuw i32 1, %and.i.i.i
  %172 = and i32 %171, %170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i29.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i29.i, label %if.then.i.i, label %for.body.i30.i.for.inc.i.i_crit_edge

for.body.i30.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i30.i
  %mid3.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.018.i.i, i32 0, i32 3
  %173 = ptrtoint ptr %mid3.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %mid3.i.i, align 4
  %175 = ptrtoint ptr %mlxsw_sp.i127 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mlxsw_sp.i127, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %177 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %177, i32 noundef 3264, i32 noundef 288) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.end.i.i31.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i31.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %178 = ptrtoint ptr %local_port.i.i.i161 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %local_port.i.i.i161, align 4
  tail call fastcc void @mlxsw_reg_smid2_pack(ptr noundef nonnull %call7.i.i.i.i, i16 noundef zeroext %174, i16 noundef zeroext %179, i1 noundef zeroext %tobool23) #12
  %core.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %176, i32 0, i32 1
  %180 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %core.i.i.i, align 4
  %call3.i.i.i = tail call i32 @mlxsw_reg_write(ptr noundef %181, ptr noundef nonnull @mlxsw_reg_smid2, ptr noundef nonnull %call7.i.i.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i31.i, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i30.i.for.inc.i.i_crit_edge
  %182 = ptrtoint ptr %mid.018.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %mid.0.i.i = load ptr, ptr %mid.018.i.i, align 4
  %cmp.not.i32.i = icmp eq ptr %mid.0.i.i, %mids_list.i.i
  br i1 %cmp.not.i32.i, label %for.inc.i.i.out.i198_crit_edge, label %for.inc.i.i.for.body.i30.i_crit_edge

for.inc.i.i.for.body.i30.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i30.i

for.inc.i.i.out.i198_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i198

out.i198:                                         ; preds = %for.inc.i.i.out.i198_crit_edge, %if.end8.i.out.i198_crit_edge, %if.end.i159.out.i198_crit_edge
  %mrouter.i = getelementptr i8, ptr %.pn.i11.i.i146, i32 28
  %183 = ptrtoint ptr %mrouter.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %130, ptr %mrouter.i, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %184 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %attr, align 4
  %u27 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %186 = ptrtoint ptr %u27 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %u27, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool28 = icmp ne i8 %187, 0
  %mlxsw_sp1.i200 = getelementptr i8, ptr %dev, i32 2312
  %188 = ptrtoint ptr %mlxsw_sp1.i200 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mlxsw_sp1.i200, align 8
  %bridge.i201 = getelementptr inbounds %struct.mlxsw_sp, ptr %189, i32 0, i32 9
  %190 = ptrtoint ptr %bridge.i201 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %bridge.i201, align 4
  %bridges_list.i.i202 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %191, i32 0, i32 4
  br label %for.cond.i.i206

for.cond.i.i206:                                  ; preds = %for.body.i.i209.for.cond.i.i206_crit_edge, %sw.bb25
  %.pn.in.i.i203 = phi ptr [ %bridges_list.i.i202, %sw.bb25 ], [ %.pn.i.i204, %for.body.i.i209.for.cond.i.i206_crit_edge ]
  %192 = ptrtoint ptr %.pn.in.i.i203 to i32
  call void @__asan_load4_noabort(i32 %192)
  %.pn.i.i204 = load ptr, ptr %.pn.in.i.i203, align 4
  %cmp.not.i.i205 = icmp eq ptr %.pn.i.i204, %bridges_list.i.i202
  br i1 %cmp.not.i.i205, label %for.cond.i.i206.sw.epilog_crit_edge, label %for.body.i.i209

for.cond.i.i206.sw.epilog_crit_edge:              ; preds = %for.cond.i.i206
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i209:                                  ; preds = %for.cond.i.i206
  %bridge_device.0.i.i207 = getelementptr i8, ptr %.pn.i.i204, i32 -4
  %193 = ptrtoint ptr %bridge_device.0.i.i207 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %bridge_device.0.i.i207, align 4
  %cmp2.i.i208 = icmp eq ptr %194, %185
  br i1 %cmp2.i.i208, label %mlxsw_sp_bridge_device_find.exit.i212, label %for.body.i.i209.for.cond.i.i206_crit_edge

for.body.i.i209.for.cond.i.i206_crit_edge:        ; preds = %for.body.i.i209
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i206

mlxsw_sp_bridge_device_find.exit.i212:            ; preds = %for.body.i.i209
  %bridge_device.0.i.i207.le = getelementptr i8, ptr %.pn.i.i204, i32 -4
  %tobool.not.i211 = icmp eq ptr %bridge_device.0.i.i207.le, null
  br i1 %tobool.not.i211, label %mlxsw_sp_bridge_device_find.exit.i212.sw.epilog_crit_edge, label %if.end.i216

mlxsw_sp_bridge_device_find.exit.i212.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i216:                                      ; preds = %mlxsw_sp_bridge_device_find.exit.i212
  %multicast_enabled.i213 = getelementptr i8, ptr %.pn.i.i204, i32 24
  %195 = ptrtoint ptr %multicast_enabled.i213 to i32
  call void @__asan_load1_noabort(i32 %195)
  %bf.load.i214 = load i8, ptr %multicast_enabled.i213, align 4
  %196 = and i8 %bf.load.i214, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %197 = icmp ne i8 %196, 0
  %cmp.not.i215 = xor i1 %tobool28, %197
  br i1 %cmp.not.i215, label %if.end.i216.if.end12.i_crit_edge, label %if.then4.i

if.end.i216.if.end12.i_crit_edge:                 ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.end.i216
  %bf.shl.i = select i1 %tobool28, i8 0, i8 64
  %bf.clear11.i = and i8 %bf.load.i214, -65
  %bf.set.i = or i8 %bf.clear11.i, %bf.shl.i
  %198 = ptrtoint ptr %multicast_enabled.i213 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %bf.set.i, ptr %multicast_enabled.i213, align 4
  %199 = ptrtoint ptr %mlxsw_sp1.i200 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mlxsw_sp1.i200, align 8
  %mids_list.i.i217 = getelementptr i8, ptr %.pn.i.i204, i32 16
  %201 = ptrtoint ptr %mids_list.i.i217 to i32
  call void @__asan_load4_noabort(i32 %201)
  %mid.017.i.i = load ptr, ptr %mids_list.i.i217, align 4
  %cmp.not18.i.i = icmp eq ptr %mid.017.i.i, %mids_list.i.i217
  br i1 %cmp.not18.i.i, label %if.then4.i.if.end12.i_crit_edge, label %for.body.lr.ph.i.i

if.then4.i.if.end12.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

for.body.lr.ph.i.i:                               ; preds = %if.then4.i
  %bridge.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %200, i32 0, i32 9
  br label %for.body.i59.i

for.body.i59.i:                                   ; preds = %for.inc.i.i225.for.body.i59.i_crit_edge, %for.body.lr.ph.i.i
  %mid.019.i.i = phi ptr [ %mid.017.i.i, %for.body.lr.ph.i.i ], [ %mid.0.i.i224, %for.inc.i.i225.for.body.i59.i_crit_edge ]
  br i1 %tobool28, label %if.else.i.i, label %if.then.i.i219

if.then.i.i219:                                   ; preds = %for.body.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i218 = tail call fastcc zeroext i1 @mlxsw_sp_mc_write_mdb_entry(ptr noundef %200, ptr noundef %mid.019.i.i, ptr noundef nonnull %bridge_device.0.i.i207.le) #12
  br label %for.inc.i.i225

if.else.i.i:                                      ; preds = %for.body.i59.i
  %in_hw.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 4
  %202 = ptrtoint ptr %in_hw.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %in_hw.i.i.i, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool.not.i.i.i220 = icmp eq i8 %203, 0
  br i1 %tobool.not.i.i.i220, label %if.else.i.i.for.inc.i.i225_crit_edge, label %if.end.i.i.i223

if.else.i.i.for.inc.i.i225_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i225

if.end.i.i.i223:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mid1.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 3
  %204 = ptrtoint ptr %mid1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %mid1.i.i.i, align 4
  %conv.i.i.i = zext i16 %205 to i32
  %206 = ptrtoint ptr %bridge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bridge.i.i.i, align 4
  %mids_bitmap.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %207, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef %conv.i.i.i, ptr noundef %mids_bitmap.i.i.i) #12
  %208 = ptrtoint ptr %in_hw.i.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %in_hw.i.i.i, align 2
  %addr.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 1
  %fid.i.i.i221 = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 2
  %209 = ptrtoint ptr %fid.i.i.i221 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %fid.i.i.i221, align 2
  %211 = ptrtoint ptr %mid1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %mid1.i.i.i, align 4
  %call.i.i.i222 = tail call fastcc i32 @mlxsw_sp_port_mdb_op(ptr noundef %200, ptr noundef %addr.i.i.i, i16 noundef zeroext %210, i16 noundef zeroext %212, i1 noundef zeroext false) #12
  br label %for.inc.i.i225

for.inc.i.i225:                                   ; preds = %if.end.i.i.i223, %if.else.i.i.for.inc.i.i225_crit_edge, %if.then.i.i219
  %213 = ptrtoint ptr %mid.019.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %mid.0.i.i224 = load ptr, ptr %mid.019.i.i, align 4
  %cmp.not.i60.i = icmp eq ptr %mid.0.i.i224, %mids_list.i.i217
  br i1 %cmp.not.i60.i, label %for.inc.i.i225.if.end12.i_crit_edge, label %for.inc.i.i225.for.body.i59.i_crit_edge

for.inc.i.i225.for.body.i59.i_crit_edge:          ; preds = %for.inc.i.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i59.i

for.inc.i.i225.if.end12.i_crit_edge:              ; preds = %for.inc.i.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %for.inc.i.i225.if.end12.i_crit_edge, %if.then4.i.if.end12.i_crit_edge, %if.end.i216.if.end12.i_crit_edge
  %ports_list.i = getelementptr i8, ptr %.pn.i.i204, i32 8
  %local_port.i.i.i226 = getelementptr i8, ptr %dev, i32 2316
  br label %for.cond.i227

for.cond.i227:                                    ; preds = %mlxsw_sp_bridge_port_flood_table_set.exit.i.for.cond.i227_crit_edge, %if.end12.i
  %.pn.in.i = phi ptr [ %ports_list.i, %if.end12.i ], [ %.pn.i, %mlxsw_sp_bridge_port_flood_table_set.exit.i.for.cond.i227_crit_edge ]
  %214 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp14.not.i = icmp eq ptr %.pn.i, %ports_list.i
  br i1 %cmp14.not.i, label %for.end.i267, label %for.body.i228

for.body.i228:                                    ; preds = %for.cond.i227
  %bridge_device1.i.i = getelementptr i8, ptr %.pn.i, i32 -4
  %215 = ptrtoint ptr %bridge_device1.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %bridge_device1.i.i, align 4
  %multicast_enabled.i61.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %216, i32 0, i32 4
  %217 = ptrtoint ptr %multicast_enabled.i61.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %bf.load.i62.i = load i8, ptr %multicast_enabled.i61.i, align 4
  %218 = and i8 %bf.load.i62.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i63.i = icmp eq i8 %218, 0
  br i1 %tobool.not.i63.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i228
  call void @__sanitizer_cov_trace_pc() #14
  %mrouter.i.i = getelementptr i8, ptr %.pn.i, i32 28
  %219 = ptrtoint ptr %mrouter.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %mrouter.i.i, align 4, !range !294
  %221 = zext i8 %220 to i32
  br label %mlxsw_sp_mc_flood.exit.i

cond.false.i.i:                                   ; preds = %for.body.i228
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i.i = getelementptr i8, ptr %.pn.i, i32 24
  %222 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %223, 2048
  br label %mlxsw_sp_mc_flood.exit.i

mlxsw_sp_mc_flood.exit.i:                         ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %221, %cond.true.i.i ], [ %and.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool4.i.i = icmp ne i32 %cond.i.i, 0
  %vlans_list.i.i229 = getelementptr i8, ptr %.pn.i, i32 8
  br label %for.cond.i65.i

for.cond.i65.i:                                   ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242.for.cond.i65.i_crit_edge, %mlxsw_sp_mc_flood.exit.i
  %bridge_vlan.0.in.i.i230 = phi ptr [ %vlans_list.i.i229, %mlxsw_sp_mc_flood.exit.i ], [ %bridge_vlan.0.i.i231, %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242.for.cond.i65.i_crit_edge ]
  %224 = ptrtoint ptr %bridge_vlan.0.in.i.i230 to i32
  call void @__asan_load4_noabort(i32 %224)
  %bridge_vlan.0.i.i231 = load ptr, ptr %bridge_vlan.0.in.i.i230, align 4
  %cmp.not.i64.i = icmp eq ptr %bridge_vlan.0.i.i231, %vlans_list.i.i229
  br i1 %cmp.not.i64.i, label %for.cond.i65.i.mlxsw_sp_bridge_port_flood_table_set.exit.i_crit_edge, label %for.body.i66.i

for.cond.i65.i.mlxsw_sp_bridge_port_flood_table_set.exit.i_crit_edge: ; preds = %for.cond.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_port_flood_table_set.exit.i

for.body.i66.i:                                   ; preds = %for.cond.i65.i
  %port_vlan_list.i.i.i232 = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i.i231, i32 0, i32 1
  br label %for.cond.i.i.i236

for.cond.i.i.i236:                                ; preds = %for.body.i.i.i239.for.cond.i.i.i236_crit_edge, %for.body.i66.i
  %.pn.in.i.i.i233 = phi ptr [ %port_vlan_list.i.i.i232, %for.body.i66.i ], [ %.pn.i.i.i234, %for.body.i.i.i239.for.cond.i.i.i236_crit_edge ]
  %225 = ptrtoint ptr %.pn.in.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %225)
  %.pn.i.i.i234 = load ptr, ptr %.pn.in.i.i.i233, align 4
  %cmp.not.i.i.i235 = icmp eq ptr %.pn.i.i.i234, %port_vlan_list.i.i.i232
  br i1 %cmp.not.i.i.i235, label %for.cond.i.i.i236.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242_crit_edge, label %for.body.i.i.i239

for.cond.i.i.i236.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242_crit_edge: ; preds = %for.cond.i.i.i236
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242

for.body.i.i.i239:                                ; preds = %for.cond.i.i.i236
  %mlxsw_sp_port2.i.i.i237 = getelementptr i8, ptr %.pn.i.i.i234, i32 -16
  %226 = ptrtoint ptr %mlxsw_sp_port2.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mlxsw_sp_port2.i.i.i237, align 4
  %cmp3.not.i.i.i238 = icmp eq ptr %227, %add.ptr.i
  br i1 %cmp3.not.i.i.i238, label %if.end.i.i69.i, label %for.body.i.i.i239.for.cond.i.i.i236_crit_edge

for.body.i.i.i239.for.cond.i.i.i236_crit_edge:    ; preds = %for.body.i.i.i239
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i236

if.end.i.i69.i:                                   ; preds = %for.body.i.i.i239
  call void @__sanitizer_cov_trace_pc() #14
  %fid.i.i67.i = getelementptr i8, ptr %.pn.i.i.i234, i32 -12
  %228 = ptrtoint ptr %fid.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %fid.i.i67.i, align 4
  %230 = ptrtoint ptr %local_port.i.i.i226 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %local_port.i.i.i226, align 4
  %call.i.i68.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %229, i32 noundef 2, i16 noundef zeroext %231, i1 noundef zeroext %tobool4.i.i) #12
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242

mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242:  ; preds = %if.end.i.i69.i, %for.cond.i.i.i236.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242_crit_edge
  %retval.0.i.i.i240 = phi i32 [ %call.i.i68.i, %if.end.i.i69.i ], [ 0, %for.cond.i.i.i236.mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242_crit_edge ]
  %tobool2.not.i.i241 = icmp eq i32 %retval.0.i.i.i240, 0
  br i1 %tobool2.not.i.i241, label %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242.for.cond.i65.i_crit_edge, label %for.cond12.preheader.i.i246

mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242.for.cond.i65.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i65.i

for.cond12.preheader.i.i246:                      ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit.i.i242
  %bridge_vlan.1.in59.i.i243 = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.0.i.i231, i32 0, i32 1
  %232 = ptrtoint ptr %bridge_vlan.1.in59.i.i243 to i32
  call void @__asan_load4_noabort(i32 %232)
  %bridge_vlan.160.i.i244 = load ptr, ptr %bridge_vlan.1.in59.i.i243, align 4
  %cmp15.not61.i.i245 = icmp eq ptr %bridge_vlan.160.i.i244, %vlans_list.i.i229
  br i1 %cmp15.not61.i.i245, label %for.cond12.preheader.i.i246.sw.epilog_crit_edge, label %for.body17.lr.ph.i.i248

for.cond12.preheader.i.i246.sw.epilog_crit_edge:  ; preds = %for.cond12.preheader.i.i246
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body17.lr.ph.i.i248:                          ; preds = %for.cond12.preheader.i.i246
  %lnot19.i.i247 = xor i1 %tobool4.i.i, true
  br label %for.body17.i.i251

for.body17.i.i251:                                ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265.for.body17.i.i251_crit_edge, %for.body17.lr.ph.i.i248
  %bridge_vlan.162.i.i249 = phi ptr [ %bridge_vlan.160.i.i244, %for.body17.lr.ph.i.i248 ], [ %bridge_vlan.1.i.i263, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265.for.body17.i.i251_crit_edge ]
  %port_vlan_list.i41.i.i250 = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.162.i.i249, i32 0, i32 1
  br label %for.cond.i45.i.i255

for.cond.i45.i.i255:                              ; preds = %for.body.i48.i.i258.for.cond.i45.i.i255_crit_edge, %for.body17.i.i251
  %.pn.in.i42.i.i252 = phi ptr [ %port_vlan_list.i41.i.i250, %for.body17.i.i251 ], [ %.pn.i43.i.i253, %for.body.i48.i.i258.for.cond.i45.i.i255_crit_edge ]
  %233 = ptrtoint ptr %.pn.in.i42.i.i252 to i32
  call void @__asan_load4_noabort(i32 %233)
  %.pn.i43.i.i253 = load ptr, ptr %.pn.in.i42.i.i252, align 4
  %cmp.not.i44.i.i254 = icmp eq ptr %.pn.i43.i.i253, %port_vlan_list.i41.i.i250
  br i1 %cmp.not.i44.i.i254, label %for.cond.i45.i.i255.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265_crit_edge, label %for.body.i48.i.i258

for.cond.i45.i.i255.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265_crit_edge: ; preds = %for.cond.i45.i.i255
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265

for.body.i48.i.i258:                              ; preds = %for.cond.i45.i.i255
  %mlxsw_sp_port2.i46.i.i256 = getelementptr i8, ptr %.pn.i43.i.i253, i32 -16
  %234 = ptrtoint ptr %mlxsw_sp_port2.i46.i.i256 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mlxsw_sp_port2.i46.i.i256, align 4
  %cmp3.not.i47.i.i257 = icmp eq ptr %235, %add.ptr.i
  br i1 %cmp3.not.i47.i.i257, label %if.end.i52.i.i261, label %for.body.i48.i.i258.for.cond.i45.i.i255_crit_edge

for.body.i48.i.i258.for.cond.i45.i.i255_crit_edge: ; preds = %for.body.i48.i.i258
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i45.i.i255

if.end.i52.i.i261:                                ; preds = %for.body.i48.i.i258
  call void @__sanitizer_cov_trace_pc() #14
  %fid.i49.i.i259 = getelementptr i8, ptr %.pn.i43.i.i253, i32 -12
  %236 = ptrtoint ptr %fid.i49.i.i259 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %fid.i49.i.i259, align 4
  %238 = ptrtoint ptr %local_port.i.i.i226 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %local_port.i.i.i226, align 4
  %call.i51.i.i260 = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %237, i32 noundef 2, i16 noundef zeroext %239, i1 noundef zeroext %lnot19.i.i247) #12
  br label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265: ; preds = %if.end.i52.i.i261, %for.cond.i45.i.i255.mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265_crit_edge
  %bridge_vlan.1.in.i.i262 = getelementptr inbounds %struct.list_head, ptr %bridge_vlan.162.i.i249, i32 0, i32 1
  %240 = ptrtoint ptr %bridge_vlan.1.in.i.i262 to i32
  call void @__asan_load4_noabort(i32 %240)
  %bridge_vlan.1.i.i263 = load ptr, ptr %bridge_vlan.1.in.i.i262, align 4
  %cmp15.not.i.i264 = icmp eq ptr %bridge_vlan.1.i.i263, %vlans_list.i.i229
  br i1 %cmp15.not.i.i264, label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265.mlxsw_sp_bridge_port_flood_table_set.exit.i_crit_edge, label %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265.for.body17.i.i251_crit_edge

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265.for.body17.i.i251_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i.i251

mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265.mlxsw_sp_bridge_port_flood_table_set.exit.i_crit_edge: ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_port_flood_table_set.exit.i

mlxsw_sp_bridge_port_flood_table_set.exit.i:      ; preds = %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265.mlxsw_sp_bridge_port_flood_table_set.exit.i_crit_edge, %for.cond.i65.i.mlxsw_sp_bridge_port_flood_table_set.exit.i_crit_edge
  %retval.0.i70.i = phi i32 [ %retval.0.i.i.i240, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i265.mlxsw_sp_bridge_port_flood_table_set.exit.i_crit_edge ], [ 0, %for.cond.i65.i.mlxsw_sp_bridge_port_flood_table_set.exit.i_crit_edge ]
  %tobool22.not.i266 = icmp eq i32 %retval.0.i70.i, 0
  br i1 %tobool22.not.i266, label %mlxsw_sp_bridge_port_flood_table_set.exit.i.for.cond.i227_crit_edge, label %mlxsw_sp_bridge_port_flood_table_set.exit.i.sw.epilog_crit_edge

mlxsw_sp_bridge_port_flood_table_set.exit.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_port_flood_table_set.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

mlxsw_sp_bridge_port_flood_table_set.exit.i.for.cond.i227_crit_edge: ; preds = %mlxsw_sp_bridge_port_flood_table_set.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i227

for.end.i267:                                     ; preds = %for.cond.i227
  call void @__sanitizer_cov_trace_pc() #14
  %241 = ptrtoint ptr %multicast_enabled.i213 to i32
  call void @__asan_load1_noabort(i32 %241)
  %bf.load36.i = load i8, ptr %multicast_enabled.i213, align 4
  %bf.shl38.i = select i1 %tobool28, i8 0, i8 64
  %bf.clear39.i = and i8 %bf.load36.i, -65
  %bf.set40.i = or i8 %bf.clear39.i, %bf.shl38.i
  store i8 %bf.set40.i, ptr %multicast_enabled.i213, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %242 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %attr, align 4
  %u32 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %244 = ptrtoint ptr %u32 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %u32, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool33 = icmp ne i8 %245, 0
  %mlxsw_sp1.i268 = getelementptr i8, ptr %dev, i32 2312
  %246 = ptrtoint ptr %mlxsw_sp1.i268 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mlxsw_sp1.i268, align 8
  %bridge.i269 = getelementptr inbounds %struct.mlxsw_sp, ptr %247, i32 0, i32 9
  %248 = ptrtoint ptr %bridge.i269 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %bridge.i269, align 4
  %bridges_list.i.i270 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %249, i32 0, i32 4
  br label %for.cond.i.i274

for.cond.i.i274:                                  ; preds = %for.body.i.i277.for.cond.i.i274_crit_edge, %sw.bb30
  %.pn.in.i.i271 = phi ptr [ %bridges_list.i.i270, %sw.bb30 ], [ %.pn.i.i272, %for.body.i.i277.for.cond.i.i274_crit_edge ]
  %250 = ptrtoint ptr %.pn.in.i.i271 to i32
  call void @__asan_load4_noabort(i32 %250)
  %.pn.i.i272 = load ptr, ptr %.pn.in.i.i271, align 4
  %cmp.not.i.i273 = icmp eq ptr %.pn.i.i272, %bridges_list.i.i270
  br i1 %cmp.not.i.i273, label %for.cond.i.i274.sw.epilog_crit_edge, label %for.body.i.i277

for.cond.i.i274.sw.epilog_crit_edge:              ; preds = %for.cond.i.i274
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i277:                                  ; preds = %for.cond.i.i274
  %bridge_device.0.i.i275 = getelementptr i8, ptr %.pn.i.i272, i32 -4
  %251 = ptrtoint ptr %bridge_device.0.i.i275 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %bridge_device.0.i.i275, align 4
  %cmp2.i.i276 = icmp eq ptr %252, %243
  br i1 %cmp2.i.i276, label %mlxsw_sp_bridge_device_find.exit.i280, label %for.body.i.i277.for.cond.i.i274_crit_edge

for.body.i.i277.for.cond.i.i274_crit_edge:        ; preds = %for.body.i.i277
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i274

mlxsw_sp_bridge_device_find.exit.i280:            ; preds = %for.body.i.i277
  %bridge_device.0.i.i275.le = getelementptr i8, ptr %.pn.i.i272, i32 -4
  %tobool.not.i279 = icmp eq ptr %bridge_device.0.i.i275.le, null
  br i1 %tobool.not.i279, label %mlxsw_sp_bridge_device_find.exit.i280.sw.epilog_crit_edge, label %if.end.i284

mlxsw_sp_bridge_device_find.exit.i280.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i280
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i284:                                      ; preds = %mlxsw_sp_bridge_device_find.exit.i280
  %mrouter.i281 = getelementptr i8, ptr %.pn.i.i272, i32 24
  %253 = ptrtoint ptr %mrouter.i281 to i32
  call void @__asan_load1_noabort(i32 %253)
  %bf.load.i282 = load i8, ptr %mrouter.i281, align 4
  %254 = and i8 %bf.load.i282, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %255 = icmp eq i8 %254, 0
  %cmp.not.i283 = xor i1 %tobool33, %255
  br i1 %cmp.not.i283, label %if.end.i284.if.end7.i_crit_edge, label %if.then5.i

if.end.i284.if.end7.i_crit_edge:                  ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i284
  %mids_list.i.i285 = getelementptr i8, ptr %.pn.i.i272, i32 16
  %256 = ptrtoint ptr %mids_list.i.i285 to i32
  call void @__asan_load4_noabort(i32 %256)
  %mid.011.i.i = load ptr, ptr %mids_list.i.i285, align 4
  %cmp.not12.i.i = icmp eq ptr %mid.011.i.i, %mids_list.i.i285
  br i1 %cmp.not12.i.i, label %if.then5.i.if.end7.i_crit_edge, label %for.body.lr.ph.i.i287

if.then5.i.if.end7.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

for.body.lr.ph.i.i287:                            ; preds = %if.then5.i
  %core.i.i.i286 = getelementptr inbounds %struct.mlxsw_sp, ptr %247, i32 0, i32 1
  br label %for.body.i1.i

for.body.i1.i:                                    ; preds = %mlxsw_sp_smid_router_port_set.exit.i.i.for.body.i1.i_crit_edge, %for.body.lr.ph.i.i287
  %mid.013.i.i = phi ptr [ %mid.011.i.i, %for.body.lr.ph.i.i287 ], [ %mid.0.i.i292, %mlxsw_sp_smid_router_port_set.exit.i.i.for.body.i1.i_crit_edge ]
  %mid2.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.013.i.i, i32 0, i32 3
  %257 = ptrtoint ptr %mid2.i.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %mid2.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %259 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i288 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %259, i32 noundef 3264, i32 noundef 288) #15
  %tobool.not.i.i.i289 = icmp eq ptr %call7.i.i.i.i288, null
  br i1 %tobool.not.i.i.i289, label %for.body.i1.i.mlxsw_sp_smid_router_port_set.exit.i.i_crit_edge, label %if.end.i.i.i291

for.body.i1.i.mlxsw_sp_smid_router_port_set.exit.i.i_crit_edge: ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_smid_router_port_set.exit.i.i

if.end.i.i.i291:                                  ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i.i = tail call zeroext i16 @mlxsw_sp_router_port(ptr noundef %247) #12
  tail call fastcc void @mlxsw_reg_smid2_pack(ptr noundef nonnull %call7.i.i.i.i288, i16 noundef zeroext %258, i16 noundef zeroext %call1.i.i.i, i1 noundef zeroext %tobool33) #12
  %260 = ptrtoint ptr %core.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %core.i.i.i286, align 4
  %call3.i.i.i290 = tail call i32 @mlxsw_reg_write(ptr noundef %261, ptr noundef nonnull @mlxsw_reg_smid2, ptr noundef nonnull %call7.i.i.i.i288) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i288) #12
  br label %mlxsw_sp_smid_router_port_set.exit.i.i

mlxsw_sp_smid_router_port_set.exit.i.i:           ; preds = %if.end.i.i.i291, %for.body.i1.i.mlxsw_sp_smid_router_port_set.exit.i.i_crit_edge
  %262 = ptrtoint ptr %mid.013.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %mid.0.i.i292 = load ptr, ptr %mid.013.i.i, align 4
  %cmp.not.i2.i = icmp eq ptr %mid.0.i.i292, %mids_list.i.i285
  br i1 %cmp.not.i2.i, label %mlxsw_sp_smid_router_port_set.exit.i.i.if.end7.i_crit_edge, label %mlxsw_sp_smid_router_port_set.exit.i.i.for.body.i1.i_crit_edge

mlxsw_sp_smid_router_port_set.exit.i.i.for.body.i1.i_crit_edge: ; preds = %mlxsw_sp_smid_router_port_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i1.i

mlxsw_sp_smid_router_port_set.exit.i.i.if.end7.i_crit_edge: ; preds = %mlxsw_sp_smid_router_port_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %mlxsw_sp_smid_router_port_set.exit.i.i.if.end7.i_crit_edge, %if.then5.i.if.end7.i_crit_edge, %if.end.i284.if.end7.i_crit_edge
  %263 = ptrtoint ptr %mrouter.i281 to i32
  call void @__asan_load1_noabort(i32 %263)
  %bf.load11.i = load i8, ptr %mrouter.i281, align 4
  %bf.shl.i293 = select i1 %tobool33, i8 32, i8 0
  %bf.clear12.i = and i8 %bf.load11.i, -33
  %bf.set.i294 = or i8 %bf.clear12.i, %bf.shl.i293
  store i8 %bf.set.i294, ptr %mrouter.i281, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7.i, %mlxsw_sp_bridge_device_find.exit.i280.sw.epilog_crit_edge, %for.cond.i.i274.sw.epilog_crit_edge, %for.end.i267, %mlxsw_sp_bridge_port_flood_table_set.exit.i.sw.epilog_crit_edge, %for.cond12.preheader.i.i246.sw.epilog_crit_edge, %mlxsw_sp_bridge_device_find.exit.i212.sw.epilog_crit_edge, %for.cond.i.i206.sw.epilog_crit_edge, %out.i198, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197.sw.epilog_crit_edge, %for.cond12.preheader.i.i178.sw.epilog_crit_edge, %mlxsw_sp_bridge_port_find.exit.i154.sw.epilog_crit_edge, %for.cond.i13.i.i148.sw.epilog_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i142.sw.epilog_crit_edge, %for.cond.i.i.i136.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %if.end24.i126, %do.end.i125, %if.end30.i, %if.end24.i.sw.epilog_crit_edge, %do.end.i, %if.end.i100, %sw.bb9.sw.epilog_crit_edge, %out.i, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i.sw.epilog_crit_edge, %for.cond12.preheader.i118.i.sw.epilog_crit_edge, %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i.sw.epilog_crit_edge, %for.cond12.preheader.i80.i.sw.epilog_crit_edge, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i.sw.epilog_crit_edge, %for.cond12.preheader.i.i.sw.epilog_crit_edge, %mlxsw_sp_bridge_port_find.exit.i93.sw.epilog_crit_edge, %for.cond.i13.i.i87.sw.epilog_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i81.sw.epilog_crit_edge, %for.cond.i.i.i75.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb2, %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i.sw.epilog_crit_edge, %for.end.i, %for.cond15.preheader.i.sw.epilog_crit_edge, %mlxsw_sp_bridge_port_find.exit.i.sw.epilog_crit_edge, %for.cond.i13.i.i.sw.epilog_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i.sw.epilog_crit_edge, %for.cond.i.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %..i, %sw.bb2 ], [ -95, %entry.sw.epilog_crit_edge ], [ 0, %for.end.i ], [ 0, %mlxsw_sp_bridge_port_find.exit.i.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_bridge_device_find.exit.i.i.sw.epilog_crit_edge ], [ %retval.0.i49.i, %for.cond15.preheader.i.sw.epilog_crit_edge ], [ 0, %out.i ], [ 0, %mlxsw_sp_bridge_port_find.exit.i93.sw.epilog_crit_edge ], [ 0, %sw.bb5.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_bridge_device_find.exit.i.i81.sw.epilog_crit_edge ], [ %retval.0.i.i.i, %for.cond12.preheader.i.i.sw.epilog_crit_edge ], [ %retval.0.i.i78.i, %for.cond12.preheader.i80.i.sw.epilog_crit_edge ], [ %retval.0.i.i112.i, %for.cond12.preheader.i118.i.sw.epilog_crit_edge ], [ %call4.i, %if.end.i100 ], [ -34, %sw.bb9.sw.epilog_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end30.i ], [ 0, %if.end24.i.sw.epilog_crit_edge ], [ -22, %do.end.i125 ], [ -22, %if.end24.i126 ], [ 0, %out.i198 ], [ 0, %mlxsw_sp_bridge_port_find.exit.i154.sw.epilog_crit_edge ], [ 0, %sw.bb20.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_bridge_device_find.exit.i.i142.sw.epilog_crit_edge ], [ %retval.0.i.i.i173, %for.cond12.preheader.i.i178.sw.epilog_crit_edge ], [ 0, %for.end.i267 ], [ 0, %mlxsw_sp_bridge_device_find.exit.i212.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_bridge_device_find.exit.i280.sw.epilog_crit_edge ], [ 0, %if.end7.i ], [ %retval.0.i49.i, %mlxsw_sp_port_bridge_vlan_stp_set.exit62.i.sw.epilog_crit_edge ], [ 0, %for.cond.i13.i.i.sw.epilog_crit_edge ], [ 0, %for.cond.i.i.i.sw.epilog_crit_edge ], [ %retval.0.i.i112.i, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i137.i.sw.epilog_crit_edge ], [ %retval.0.i.i78.i, %mlxsw_sp_port_bridge_vlan_learning_set.exit52.i.i.sw.epilog_crit_edge ], [ %retval.0.i.i.i, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i.sw.epilog_crit_edge ], [ 0, %for.cond.i13.i.i87.sw.epilog_crit_edge ], [ 0, %for.cond.i.i.i75.sw.epilog_crit_edge ], [ %retval.0.i.i.i173, %mlxsw_sp_port_bridge_vlan_flood_set.exit54.i.i197.sw.epilog_crit_edge ], [ 0, %for.cond.i13.i.i148.sw.epilog_crit_edge ], [ 0, %for.cond.i.i.i136.sw.epilog_crit_edge ], [ %retval.0.i70.i, %mlxsw_sp_bridge_port_flood_table_set.exit.i.sw.epilog_crit_edge ], [ %retval.0.i.i.i240, %for.cond12.preheader.i.i246.sw.epilog_crit_edge ], [ 0, %for.cond.i.i206.sw.epilog_crit_edge ], [ 0, %for.cond.i.i274.sw.epilog_crit_edge ]
  %mlxsw_sp = getelementptr i8, ptr %dev, i32 2312
  %264 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mlxsw_sp, align 8
  tail call void @mlxsw_sp_span_respin(ptr noundef %265) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_port_dev_lower_find_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_switchdev_bridge_fdb_event_work(ptr noundef %work) #1 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %vni.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @rtnl_lock() #12
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 136
  %2 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %netif_is_vxlan.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

netif_is_vxlan.exit:                              ; preds = %entry
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then, label %netif_is_vxlan.exit.if.end_crit_edge

netif_is_vxlan.exit.if.end_crit_edge:             ; preds = %netif_is_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %netif_is_vxlan.exit
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vni.i) #12
  %8 = ptrtoint ptr %vni.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %vni.i, align 4, !annotation !295
  %event.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 3
  %9 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event.i, align 4
  %.off.i = add i32 %10, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i, label %if.then.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge

if.then.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp5.i = icmp eq i32 %10, 3
  br i1 %cmp5.i, label %land.lhs.true6.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %11 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1
  %added_by_user.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %added_by_user.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %added_by_user.i, align 2
  %13 = and i8 %bf.load.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %13)
  %14 = icmp eq i8 %13, -128
  br i1 %14, label %land.lhs.true6.i.if.end11.i_crit_edge, label %land.lhs.true6.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge

land.lhs.true6.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

land.lhs.true6.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true6.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end11.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, label %if.end13.i

if.end11.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

if.end13.i:                                       ; preds = %if.end11.i
  %call14.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %7) #12
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, label %if.end17.i

if.end13.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

if.end17.i:                                       ; preds = %if.end13.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call14.i, i32 0, i32 15
  %17 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %18, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i61.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i61.not.i, label %if.end17.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, label %if.end20.i

if.end17.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

if.end20.i:                                       ; preds = %if.end17.i
  %call21.i = tail call ptr @mlxsw_sp_lower_get(ptr noundef nonnull %call14.i) #12
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end20.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, label %if.end24.i

if.end20.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

if.end24.i:                                       ; preds = %if.end20.i
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call21.i, i32 0, i32 9
  %19 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bridge.i, align 4
  %bridges_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %20, i32 0, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end24.i
  %.pn.in.i.i = phi ptr [ %bridges_list.i.i, %if.end24.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %bridges_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, label %for.body.i.i

for.cond.i.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bridge_device.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %22 = ptrtoint ptr %bridge_device.0.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bridge_device.0.i.i, align 4
  %cmp2.i.i = icmp eq ptr %23, %call14.i
  br i1 %cmp2.i.i, label %mlxsw_sp_bridge_device_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

mlxsw_sp_bridge_device_find.exit.i:               ; preds = %for.body.i.i
  %bridge_device.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool26.not.i = icmp eq ptr %bridge_device.0.i.i.le, null
  br i1 %tobool26.not.i, label %mlxsw_sp_bridge_device_find.exit.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, label %if.end28.i

mlxsw_sp_bridge_device_find.exit.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

if.end28.i:                                       ; preds = %mlxsw_sp_bridge_device_find.exit.i
  %ops.i = getelementptr i8, ptr %.pn.i.i, i32 28
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %fid_lookup.i = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %fid_lookup.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fid_lookup.i, align 4
  %vid.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid.i, align 4
  %call29.i = tail call ptr %27(ptr noundef nonnull %bridge_device.0.i.i.le, i16 noundef zeroext %29) #12
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.end28.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, label %if.end32.i

if.end28.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

if.end32.i:                                       ; preds = %if.end28.i
  %call33.i = call i32 @mlxsw_sp_fid_vni(ptr noundef nonnull %call29.i, ptr noundef nonnull %vni.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.out.i_crit_edge

if.end32.i.out.i_crit_edge:                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end36.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %vni.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vni.i, align 4
  call fastcc void @mlxsw_sp_switchdev_bridge_vxlan_fdb_event(ptr noundef nonnull %call21.i, ptr noundef %work, ptr noundef nonnull %call29.i, i32 noundef %31) #12
  br label %out.i

out.i:                                            ; preds = %if.end36.i, %if.end32.i.out.i_crit_edge
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call29.i) #12
  br label %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit

mlxsw_sp_switchdev_bridge_nve_fdb_event.exit:     ; preds = %out.i, %if.end28.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, %for.cond.i.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, %if.end20.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, %if.end17.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, %if.end13.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, %if.end11.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, %land.lhs.true6.i.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge, %if.then.mlxsw_sp_switchdev_bridge_nve_fdb_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vni.i) #12
  br label %out

if.end:                                           ; preds = %netif_is_vxlan.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @mlxsw_sp_port_dev_lower_find(ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %event = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 3
  %32 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %event, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %33, label %if.end4.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb15
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  %35 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1
  %added_by_user = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %added_by_user, align 2
  %37 = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %37)
  %38 = icmp eq i8 %37, -128
  br i1 %38, label %if.end10, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end10:                                         ; preds = %sw.bb
  %call11 = tail call fastcc i32 @mlxsw_sp_port_fdb_set(ptr noundef nonnull %call2, ptr noundef %35, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.sw.epilog_crit_edge

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %addr = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vid, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #12
  %43 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %addr.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %40, ptr %addr.i, align 4
  %vid1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %45 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %42, ptr %vid1.i, align 4
  %offloaded2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %46 = ptrtoint ptr %offloaded2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 32, ptr %offloaded2.i, align 2
  %call.i36 = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %1, ptr noundef nonnull %info.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #12
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %47 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1
  %call16 = tail call fastcc i32 @mlxsw_sp_port_fdb_set(ptr noundef nonnull %call2, ptr noundef %47, i1 noundef zeroext false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %if.end14, %if.end10.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call2, i32 0, i32 2
  %48 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mlxsw_sp, align 8
  call void @mlxsw_sp_span_respin(ptr noundef %49) #12
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.out_crit_edge, %mlxsw_sp_switchdev_bridge_nve_fdb_event.exit
  call void @rtnl_unlock() #12
  %addr18 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %addr18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr18, align 4
  call void @kfree(ptr noundef %51) #12
  call void @kfree(ptr noundef %work) #12
  %tobool.not.i37 = icmp eq ptr %1, null
  br i1 %tobool.not.i37, label %out.dev_put.exit_crit_edge, label %do.body1.i

out.dev_put.exit_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

do.body1.i:                                       ; preds = %out
  %52 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !297
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %53 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcpu_refcnt.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = call i32 @llvm.read_register.i32(metadata !283) #12
  %and.i.i38 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i38 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %61, %55
  %62 = inttoptr i32 %add.i to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add13.i = add i32 %64, -1
  store i32 %add13.i, ptr %62, align 4
  %65 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !298
  %and.i.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !296

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #12, !srcloc !299
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %out.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !297
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !283) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !298
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !296

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !299
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_switchdev_vxlan_fdb_event_work(ptr noundef %work) #1 align 64 {
entry:
  %info.i.i24 = alloca %struct.switchdev_notifier_fdb_info, align 4
  %addr.i25 = alloca %union.mlxsw_sp_l3addr, align 4
  %info.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %addr.i = alloca %union.mlxsw_sp_l3addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @rtnl_lock() #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i23.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i23.not, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %if.end4
  %call8 = tail call ptr @mlxsw_sp_lower_get(ptr noundef nonnull %call2) #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end11:                                         ; preds = %if.end7
  %event = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 3
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %7, label %if.end11.out_crit_edge [
    i32 12, label %sw.bb
    i32 13, label %sw.bb12
  ]

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb:                                            ; preds = %if.end11
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i) #12
  %11 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1
  %12 = getelementptr inbounds i8, ptr %addr.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 12)
  %call.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %10) #12
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call8, i32 0, i32 9
  %14 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bridge.i, align 4
  %bridges_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %15, i32 0, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.bb
  %.pn.in.i.i = phi ptr [ %bridges_list.i.i, %sw.bb ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %16 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %bridges_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge, label %for.body.i.i

for.cond.i.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_vxlan_fdb_add.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bridge_device.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %17 = ptrtoint ptr %bridge_device.0.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge_device.0.i.i, align 4
  %cmp2.i.i = icmp eq ptr %18, %call.i
  br i1 %cmp2.i.i, label %mlxsw_sp_bridge_device_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

mlxsw_sp_bridge_device_find.exit.i:               ; preds = %for.body.i.i
  %bridge_device.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %bridge_device.0.i.i.le, null
  br i1 %tobool.not.i, label %mlxsw_sp_bridge_device_find.exit.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge, label %if.end.i

mlxsw_sp_bridge_device_find.exit.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_vxlan_fdb_add.exit

if.end.i:                                         ; preds = %mlxsw_sp_bridge_device_find.exit.i
  %vni.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %vni.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vni.i, align 4
  %call3.i = tail call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef nonnull %call8, i32 noundef %20) #12
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge, label %if.end6.i

if.end.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_vxlan_fdb_add.exit

if.end6.i:                                        ; preds = %if.end.i
  %remote_ip.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %remote_ip.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %remote_ip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp.i.i = icmp eq i16 %22, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sin_addr.i.i, align 4
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr.i, align 4
  br label %mlxsw_sp_switchdev_vxlan_addr_convert.exit.i

if.else.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3
  %26 = call ptr @memcpy(ptr %addr.i, ptr %sin6_addr.i.i, i32 16)
  br label %mlxsw_sp_switchdev_vxlan_addr_convert.exit.i

mlxsw_sp_switchdev_vxlan_addr_convert.exit.i:     ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i.i = phi i32 [ 1, %if.else.i.i ], [ 0, %if.then.i.i ]
  %eth_addr.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %eth_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eth_addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 5, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i, align 2
  %xor3.i.i = zext i16 %30 to i32
  %or.i.i = or i32 %28, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i72.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i72.i, label %if.then9.i, label %if.end15.i

if.then9.i:                                       ; preds = %mlxsw_sp_switchdev_vxlan_addr_convert.exit.i
  %call10.i = call i32 @mlxsw_sp_nve_flood_ip_add(ptr noundef nonnull %call8, ptr noundef nonnull %call3.i, i32 noundef %storemerge.i.i, ptr noundef nonnull %addr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then9.i.cleanup.sink.split.i_crit_edge

if.then9.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %offloaded.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 7
  %31 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %offloaded.i, align 4
  %call14.i = call i32 @call_switchdev_notifiers(i32 noundef 14, ptr noundef %10, ptr noundef %11, ptr noundef null) #12
  br label %cleanup.sink.split.i

if.end15.i:                                       ; preds = %mlxsw_sp_switchdev_vxlan_addr_convert.exit.i
  %ops.i = getelementptr i8, ptr %.pn.i.i, i32 28
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %fid_vid.i = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %fid_vid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fid_vid.i, align 4
  %call16.i = tail call zeroext i16 %35(ptr noundef nonnull %bridge_device.0.i.i.le, ptr noundef nonnull %call3.i) #12
  %call19.i = tail call ptr @br_fdb_find_port(ptr noundef %call.i, ptr noundef %eth_addr.i, i16 noundef zeroext %call16.i) #12
  %cmp.not.i = icmp eq ptr %call19.i, %10
  br i1 %cmp.not.i, label %if.end21.i, label %if.end15.i.cleanup.sink.split.i_crit_edge

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end21.i:                                       ; preds = %if.end15.i
  %call24.i = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef nonnull %call3.i) #12
  %call25.i = call fastcc i32 @mlxsw_sp_port_fdb_tunnel_uc_op(ptr noundef nonnull %call8, ptr noundef %eth_addr.i, i16 noundef zeroext %call24.i, i32 noundef %storemerge.i.i, ptr noundef nonnull %addr.i, i1 noundef zeroext true, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end21.i.cleanup.sink.split.i_crit_edge

if.end21.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %offloaded29.i = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 7
  %36 = ptrtoint ptr %offloaded29.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %offloaded29.i, align 4
  %call31.i = call i32 @call_switchdev_notifiers(i32 noundef 14, ptr noundef %10, ptr noundef %11, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #12
  %37 = call ptr @memset(ptr %info.i.i, i32 0, i32 20)
  %addr.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %eth_addr.i, ptr %addr.i.i, align 4
  %vid1.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %vid1.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %call16.i, ptr %vid1.i.i, align 4
  %offloaded2.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %offloaded2.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 32, ptr %offloaded2.i.i, align 2
  %call.i.i = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %10, ptr noundef nonnull %info.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end28.i, %if.end21.i.cleanup.sink.split.i_crit_edge, %if.end15.i.cleanup.sink.split.i_crit_edge, %if.end13.i, %if.then9.i.cleanup.sink.split.i_crit_edge
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call3.i) #12
  br label %mlxsw_sp_switchdev_vxlan_fdb_add.exit

mlxsw_sp_switchdev_vxlan_fdb_add.exit:            ; preds = %cleanup.sink.split.i, %if.end.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge, %for.cond.i.i.mlxsw_sp_switchdev_vxlan_fdb_add.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i) #12
  br label %out

sw.bb12:                                          ; preds = %if.end11
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  %call.i27 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %42) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i25) #12
  %bridge.i28 = getelementptr inbounds %struct.mlxsw_sp, ptr %call8, i32 0, i32 9
  %43 = getelementptr inbounds i8, ptr %addr.i25, i32 4
  %44 = call ptr @memset(ptr %43, i32 255, i32 12)
  %45 = ptrtoint ptr %bridge.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bridge.i28, align 4
  %bridges_list.i.i29 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %46, i32 0, i32 4
  br label %for.cond.i.i33

for.cond.i.i33:                                   ; preds = %for.body.i.i36.for.cond.i.i33_crit_edge, %sw.bb12
  %.pn.in.i.i30 = phi ptr [ %bridges_list.i.i29, %sw.bb12 ], [ %.pn.i.i31, %for.body.i.i36.for.cond.i.i33_crit_edge ]
  %47 = ptrtoint ptr %.pn.in.i.i30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i.i31 = load ptr, ptr %.pn.in.i.i30, align 4
  %cmp.not.i.i32 = icmp eq ptr %.pn.i.i31, %bridges_list.i.i29
  br i1 %cmp.not.i.i32, label %for.cond.i.i33.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge, label %for.body.i.i36

for.cond.i.i33.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge: ; preds = %for.cond.i.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_vxlan_fdb_del.exit

for.body.i.i36:                                   ; preds = %for.cond.i.i33
  %bridge_device.0.i.i34 = getelementptr i8, ptr %.pn.i.i31, i32 -4
  %48 = ptrtoint ptr %bridge_device.0.i.i34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bridge_device.0.i.i34, align 4
  %cmp2.i.i35 = icmp eq ptr %49, %call.i27
  br i1 %cmp2.i.i35, label %mlxsw_sp_bridge_device_find.exit.i39, label %for.body.i.i36.for.cond.i.i33_crit_edge

for.body.i.i36.for.cond.i.i33_crit_edge:          ; preds = %for.body.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i33

mlxsw_sp_bridge_device_find.exit.i39:             ; preds = %for.body.i.i36
  %bridge_device.0.i.i34.le = getelementptr i8, ptr %.pn.i.i31, i32 -4
  %tobool.not.i38 = icmp eq ptr %bridge_device.0.i.i34.le, null
  br i1 %tobool.not.i38, label %mlxsw_sp_bridge_device_find.exit.i39.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge, label %if.end.i43

mlxsw_sp_bridge_device_find.exit.i39.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_vxlan_fdb_del.exit

if.end.i43:                                       ; preds = %mlxsw_sp_bridge_device_find.exit.i39
  %vni.i40 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 6
  %50 = ptrtoint ptr %vni.i40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vni.i40, align 4
  %call3.i41 = tail call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef nonnull %call8, i32 noundef %51) #12
  %tobool4.not.i42 = icmp eq ptr %call3.i41, null
  br i1 %tobool4.not.i42, label %if.end.i43.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge, label %if.end6.i46

if.end.i43.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_switchdev_vxlan_fdb_del.exit

if.end6.i46:                                      ; preds = %if.end.i43
  %remote_ip.i44 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %remote_ip.i44 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %remote_ip.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %53)
  %cmp.i.i45 = icmp eq i16 %53, 2
  br i1 %cmp.i.i45, label %if.then.i.i48, label %if.else.i.i50

if.then.i.i48:                                    ; preds = %if.end6.i46
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i.i47 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %54 = ptrtoint ptr %sin_addr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sin_addr.i.i47, align 4
  %56 = ptrtoint ptr %addr.i25 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %addr.i25, align 4
  br label %mlxsw_sp_switchdev_vxlan_addr_convert.exit.i56

if.else.i.i50:                                    ; preds = %if.end6.i46
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i.i49 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1, i32 0, i32 3
  %57 = call ptr @memcpy(ptr %addr.i25, ptr %sin6_addr.i.i49, i32 16)
  br label %mlxsw_sp_switchdev_vxlan_addr_convert.exit.i56

mlxsw_sp_switchdev_vxlan_addr_convert.exit.i56:   ; preds = %if.else.i.i50, %if.then.i.i48
  %storemerge.i.i51 = phi i32 [ 1, %if.else.i.i50 ], [ 0, %if.then.i.i48 ]
  %eth_addr.i52 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 5
  %58 = ptrtoint ptr %eth_addr.i52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %eth_addr.i52, align 4
  %add.ptr.i.i53 = getelementptr %struct.mlxsw_sp_switchdev_event_work, ptr %work, i32 0, i32 1, i32 0, i32 5, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i.i53, align 2
  %xor3.i.i54 = zext i16 %61 to i32
  %or.i.i55 = or i32 %59, %xor3.i.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i55)
  %cmp.i42.i = icmp eq i32 %or.i.i55, 0
  br i1 %cmp.i42.i, label %if.then9.i57, label %if.end10.i

if.then9.i57:                                     ; preds = %mlxsw_sp_switchdev_vxlan_addr_convert.exit.i56
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlxsw_sp_nve_flood_ip_del(ptr noundef nonnull %call8, ptr noundef nonnull %call3.i41, i32 noundef %storemerge.i.i51, ptr noundef nonnull %addr.i25) #12
  br label %cleanup.sink.split.i64

if.end10.i:                                       ; preds = %mlxsw_sp_switchdev_vxlan_addr_convert.exit.i56
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef nonnull %call3.i41) #12
  %call14.i58 = call fastcc i32 @mlxsw_sp_port_fdb_tunnel_uc_op(ptr noundef nonnull %call8, ptr noundef %eth_addr.i52, i16 noundef zeroext %call13.i, i32 noundef %storemerge.i.i51, ptr noundef nonnull %addr.i25, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %ops.i59 = getelementptr i8, ptr %.pn.i.i31, i32 28
  %62 = ptrtoint ptr %ops.i59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i59, align 4
  %fid_vid.i60 = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %fid_vid.i60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fid_vid.i60, align 4
  %call15.i = call zeroext i16 %65(ptr noundef nonnull %bridge_device.0.i.i34.le, ptr noundef nonnull %call3.i41) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i24) #12
  %66 = call ptr @memset(ptr %info.i.i24, i32 0, i32 20)
  %addr.i.i61 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i24, i32 0, i32 1
  %67 = ptrtoint ptr %addr.i.i61 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %eth_addr.i52, ptr %addr.i.i61, align 4
  %vid1.i.i62 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i24, i32 0, i32 2
  %68 = ptrtoint ptr %vid1.i.i62 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %call15.i, ptr %vid1.i.i62, align 4
  %call.i.i63 = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %42, ptr noundef nonnull %info.i.i24, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i24) #12
  br label %cleanup.sink.split.i64

cleanup.sink.split.i64:                           ; preds = %if.end10.i, %if.then9.i57
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call3.i41) #12
  br label %mlxsw_sp_switchdev_vxlan_fdb_del.exit

mlxsw_sp_switchdev_vxlan_fdb_del.exit:            ; preds = %cleanup.sink.split.i64, %if.end.i43.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge, %mlxsw_sp_bridge_device_find.exit.i39.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge, %for.cond.i.i33.mlxsw_sp_switchdev_vxlan_fdb_del.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i25) #12
  br label %out

out:                                              ; preds = %mlxsw_sp_switchdev_vxlan_fdb_del.exit, %mlxsw_sp_switchdev_vxlan_fdb_add.exit, %if.end11.out_crit_edge, %if.end7.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @rtnl_unlock() #12
  call void @kfree(ptr noundef %work) #12
  %tobool.not.i65 = icmp eq ptr %1, null
  br i1 %tobool.not.i65, label %out.dev_put.exit_crit_edge, label %do.body1.i

out.dev_put.exit_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

do.body1.i:                                       ; preds = %out
  %69 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !297
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %70 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcpu_refcnt.i, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = call i32 @llvm.read_register.i32(metadata !283) #12
  %and.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %78, %72
  %79 = inttoptr i32 %add.i to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add13.i = add i32 %81, -1
  store i32 %add13.i, ptr %79, align 4
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !298
  %and.i.i.i = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !296

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #12, !srcloc !299
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %out.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_switchdev_vxlan_work_prepare(ptr nocapture noundef %switchdev_work, ptr nocapture noundef readonly %info) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %switchdev_work, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %extack.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack.i, align 4
  %remote_port = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %remote_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %remote_port, align 4
  %dst_port = getelementptr i8, ptr %1, i32 13808
  %6 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dst_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not = icmp eq i16 %5, %7
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_switchdev_vxlan_work_prepare.__msg) #12
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg, ptr %3, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %remote_vni = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %remote_vni to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %remote_vni, align 4
  %vni = getelementptr i8, ptr %1, i32 13796
  %11 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vni, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp7.not = icmp eq i32 %10, %12
  br i1 %cmp7.not, label %lor.lhs.false, label %if.end6.do.body14_crit_edge

if.end6.do.body14_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14

lor.lhs.false:                                    ; preds = %if.end6
  %vni9 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info, i32 0, i32 6
  %13 = ptrtoint ptr %vni9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vni9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp11.not = icmp eq i32 %14, %10
  br i1 %cmp11.not, label %if.end22, label %lor.lhs.false.do.body14_crit_edge

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %if.end6.do.body14_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.82) #12
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %if.then17

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.82, ptr %3, align 4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %remote_ifindex = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info, i32 0, i32 4
  %16 = ptrtoint ptr %remote_ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %remote_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %if.end33, label %do.body25

do.body25:                                        ; preds = %if.end22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.83) #12
  %tobool27.not = icmp eq ptr %3, null
  br i1 %tobool27.not, label %do.body25.cleanup_crit_edge, label %if.then28

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.83, ptr %3, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %eth_addr = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info, i32 0, i32 5
  %19 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eth_addr, align 4
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %if.end44, label %do.body36

do.body36:                                        ; preds = %if.end33
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.84) #12
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %do.body36.cleanup_crit_edge, label %if.then39

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then39:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.84, ptr %3, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %remote_ip = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %remote_ip to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %remote_ip, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %24)
  %cmp.i = icmp eq i16 %24, 10
  br i1 %cmp.i, label %if.then.i, label %vxlan_addr_multicast.exit

if.then.i:                                        ; preds = %if.end44
  %sin6_addr.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sin6_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %26)
  %cmp.i.i = icmp ugt i32 %26, -16777217
  br i1 %cmp.i.i, label %if.then.i.do.body47_crit_edge, label %if.then.i.if.end55_crit_edge

if.then.i.if.end55_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then.i.do.body47_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body47

vxlan_addr_multicast.exit:                        ; preds = %if.end44
  %sin_addr.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin_addr.i, align 4
  %and.i.i = and i32 %28, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i5.i = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i5.i, label %vxlan_addr_multicast.exit.do.body47_crit_edge, label %vxlan_addr_multicast.exit.if.end55_crit_edge

vxlan_addr_multicast.exit.if.end55_crit_edge:     ; preds = %vxlan_addr_multicast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

vxlan_addr_multicast.exit.do.body47_crit_edge:    ; preds = %vxlan_addr_multicast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body47

do.body47:                                        ; preds = %vxlan_addr_multicast.exit.do.body47_crit_edge, %if.then.i.do.body47_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.85) #12
  %tobool49.not = icmp eq ptr %3, null
  br i1 %tobool49.not, label %do.body47.cleanup_crit_edge, label %if.then50

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then50:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.85, ptr %3, align 4
  br label %cleanup

if.end55:                                         ; preds = %vxlan_addr_multicast.exit.if.end55_crit_edge, %if.then.i.if.end55_crit_edge
  %30 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %switchdev_work, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %30, ptr %info, i32 68)
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then50, %do.body47.cleanup_crit_edge, %if.then39, %do.body36.cleanup_crit_edge, %if.then28, %do.body25.cleanup_crit_edge, %if.then17, %do.body14.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -95, %if.then5 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then17 ], [ -95, %do.body14.cleanup_crit_edge ], [ -95, %if.then28 ], [ -95, %do.body25.cleanup_crit_edge ], [ -95, %if.then39 ], [ -95, %do.body36.cleanup_crit_edge ], [ -95, %if.then50 ], [ -95, %do.body47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_schedule_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_respin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_ageing_set(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %ageing_time) unnamed_addr #1 align 64 {
entry:
  %sfdat_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sfdat_pl) #12
  %0 = ptrtoint ptr %sfdat_pl to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %sfdat_pl, align 8
  store i32 0, ptr %sfdat_pl, align 8
  %and6.i.i.i = and i32 %ageing_time, 1048575
  %arrayidx.i.i23.i = getelementptr inbounds i32, ptr %sfdat_pl, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i23.i, align 4
  %and7.i.i25.i = and i32 %2, -1048576
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i25.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i23.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %4, ptr noundef nonnull @mlxsw_reg_sfdat, ptr noundef nonnull %sfdat_pl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %5 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bridge, align 4
  %ageing_time2 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ageing_time2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ageing_time, ptr %ageing_time2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sfdat_pl) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlxsw_sp_mc_write_mdb_entry(ptr noundef %mlxsw_sp, ptr nocapture noundef %mid, ptr noundef readonly %bridge_device) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  %mids_bitmap = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %1, i32 0, i32 5
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %mids_bitmap, i32 noundef 7000) #12
  %conv = trunc i32 %call to i16
  %conv1 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000, i32 %conv1)
  %cmp = icmp eq i32 %conv1, 7000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call3 = tail call i32 @mlxsw_core_max_ports(ptr noundef %3) #12
  %call4 = tail call ptr @bitmap_alloc(i32 noundef %call3, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ports_in_mid = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 5
  %4 = ptrtoint ptr %ports_in_mid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports_in_mid, align 4
  %sub.i = add i32 %call3, 31
  %6 = lshr i32 %sub.i, 3
  %mul.i = and i32 %6, 536870908
  %7 = call ptr @memcpy(ptr %call4, ptr %5, i32 %mul.i)
  %ports_list.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %bridge_device, i32 0, i32 2
  %8 = ptrtoint ptr %ports_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn11.i = load ptr, ptr %ports_list.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %ports_list.i
  br i1 %cmp.not12.i, label %if.end6.mlxsw_sp_mc_get_mrouters_bitmap.exit_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.mlxsw_sp_mc_get_mrouters_bitmap.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_mc_get_mrouters_bitmap.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn11.i, %if.end6.for.body.i_crit_edge ]
  %mrouter.i = getelementptr i8, ptr %.pn13.i, i32 28
  %9 = ptrtoint ptr %mrouter.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mrouter.i, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %lagged.i.i = getelementptr i8, ptr %.pn13.i, i32 29
  %11 = ptrtoint ptr %lagged.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lagged.i.i, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = getelementptr i8, ptr %.pn13.i, i32 30
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv.i.i = zext i16 %15 to i32
  tail call void @_set_bit(i32 noundef %conv.i.i, ptr noundef nonnull %call4) #12
  br label %for.inc.i

if.else.i.i:                                      ; preds = %if.then.i
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 4
  %call.i.i = tail call i64 @mlxsw_core_res_get(ptr noundef %17, i32 noundef 16) #12
  %18 = getelementptr i8, ptr %.pn13.i, i32 30
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp19.not.i.i = icmp eq i64 %call.i.i, 0
  br i1 %cmp19.not.i.i, label %if.else.i.i.for.inc.i_crit_edge, label %if.else.i.i.for.body.i.i_crit_edge

if.else.i.i.for.body.i.i_crit_edge:               ; preds = %if.else.i.i
  br label %for.body.i.i

if.else.i.i.for.inc.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.i.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i64 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.i.for.body.i.i_crit_edge ]
  %conv4.i.i = trunc i64 %i.020.i.i to i8
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 4
  %call.i.i.i = tail call zeroext i16 @mlxsw_core_lag_mapping_get(ptr noundef %22, i16 noundef zeroext %20, i8 noundef zeroext %conv4.i.i) #12
  %23 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mlxsw_sp, align 4
  %idxprom.i.i.i = zext i16 %call.i.i.i to i32
  %arrayidx.i.i.i = getelementptr ptr, ptr %24, i32 %idxprom.i.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %lagged.i.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %lagged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i.i = load i8, ptr %lagged.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool1.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, label %if.then7.i.i

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %local_port.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %26, i32 0, i32 3
  %28 = ptrtoint ptr %local_port.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %local_port.i.i, align 4
  %conv8.i.i = zext i16 %29 to i32
  tail call void @_set_bit(i32 noundef %conv8.i.i, ptr noundef nonnull %call4) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i64 %i.020.i.i, 1
  %cmp.i.i = icmp ult i64 %inc.i.i, %call.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.inc.i_crit_edge

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i:                                        ; preds = %for.inc.i.i.for.inc.i_crit_edge, %if.else.i.i.for.inc.i_crit_edge, %if.then.i.i, %for.body.i.for.inc.i_crit_edge
  %30 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports_list.i
  br i1 %cmp.not.i, label %for.inc.i.mlxsw_sp_mc_get_mrouters_bitmap.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mlxsw_sp_mc_get_mrouters_bitmap.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_mc_get_mrouters_bitmap.exit

mlxsw_sp_mc_get_mrouters_bitmap.exit:             ; preds = %for.inc.i.mlxsw_sp_mc_get_mrouters_bitmap.exit_crit_edge, %if.end6.mlxsw_sp_mc_get_mrouters_bitmap.exit_crit_edge
  %mid7 = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 3
  %31 = ptrtoint ptr %mid7 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %mid7, align 4
  %mrouter = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %bridge_device, i32 0, i32 4
  %32 = ptrtoint ptr %mrouter to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %mrouter, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 288) #15
  %tobool.not.i45 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i45, label %mlxsw_sp_port_smid_full_entry.exit.thread, label %if.end.i

mlxsw_sp_port_smid_full_entry.exit.thread:        ; preds = %mlxsw_sp_mc_get_mrouters_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bitmap_free(ptr noundef nonnull %call4) #12
  br label %cleanup

if.end.i:                                         ; preds = %mlxsw_sp_mc_get_mrouters_bitmap.exit
  tail call fastcc void @mlxsw_reg_smid2_pack(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv, i16 noundef zeroext 0, i1 noundef zeroext false) #12
  %34 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core, align 4
  %call1159.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1159.i)
  %cmp160.i = icmp ugt i32 %call1159.i, 1
  br i1 %cmp160.i, label %if.end.i.for.body.i46_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i.for.body.i46_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.inc.i49.for.body.i46_crit_edge, %if.end.i.for.body.i46_crit_edge
  %i.0161.i = phi i32 [ %inc.i, %for.inc.i49.for.body.i46_crit_edge ], [ 1, %if.end.i.for.body.i46_crit_edge ]
  %36 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mlxsw_sp, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %i.0161.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %for.body.i46.for.inc.i49_crit_edge, label %if.then3.i

for.body.i46.for.inc.i49_crit_edge:               ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i49

if.then3.i:                                       ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #14
  %40 = and i32 %i.0161.i, 7
  %41 = trunc i32 %i.0161.i to i16
  %42 = sub i16 1023, %41
  %43 = lshr i16 %42, 3
  %conv60.i.i.i.i = add nuw nsw i16 %43, 160
  %shl.i.i.i = shl i32 1, %40
  %and10.i.i.i = shl i32 1, %40
  %idxprom.i.i.i47 = zext i16 %conv60.i.i.i.i to i32
  %arrayidx.i.i.i48 = getelementptr i8, ptr %call7.i.i, i32 %idxprom.i.i.i47
  %44 = ptrtoint ptr %arrayidx.i.i.i48 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i.i48, align 1
  %46 = trunc i32 %shl.i.i.i to i8
  %47 = xor i8 %46, -1
  %conv15.i.i.i = and i8 %45, %47
  %48 = trunc i32 %and10.i.i.i to i8
  %conv18.i.i.i = or i8 %conv15.i.i.i, %48
  store i8 %conv18.i.i.i, ptr %arrayidx.i.i.i48, align 1
  br label %for.inc.i49

for.inc.i49:                                      ; preds = %if.then3.i, %for.body.i46.for.inc.i49_crit_edge
  %inc.i = add nuw i32 %i.0161.i, 1
  %49 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core, align 4
  %call1.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %50) #12
  %cmp.i = icmp ult i32 %inc.i, %call1.i
  br i1 %cmp.i, label %for.inc.i49.for.body.i46_crit_edge, label %for.inc.i49.for.end.i_crit_edge

for.inc.i49.for.end.i_crit_edge:                  ; preds = %for.inc.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i49.for.body.i46_crit_edge:               ; preds = %for.inc.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i46

for.end.i:                                        ; preds = %for.inc.i49.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %call5.i = tail call zeroext i16 @mlxsw_sp_router_port(ptr noundef %mlxsw_sp) #12
  %conv41.i.i.i66.i = sub i16 1023, %call5.i
  %51 = lshr i16 %conv41.i.i.i66.i, 3
  %52 = and i16 %call5.i, 7
  %53 = trunc i16 %52 to i8
  %conv60.i.i.i73.i = add nuw nsw i16 %51, 160
  %shl.i.i77.i = shl i16 1, %52
  %and10.i.i79.i = shl i8 1, %53
  %idxprom.i.i80.i = zext i16 %conv60.i.i.i73.i to i32
  %arrayidx.i.i81.i = getelementptr i8, ptr %call7.i.i, i32 %idxprom.i.i80.i
  %54 = ptrtoint ptr %arrayidx.i.i81.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i81.i, align 1
  %56 = trunc i16 %shl.i.i77.i to i8
  %57 = xor i8 %56, -1
  %conv15.i.i82.i = and i8 %55, %57
  %conv18.i.i83.i = or i8 %conv15.i.i82.i, %and10.i.i79.i
  store i8 %conv18.i.i83.i, ptr %arrayidx.i.i81.i, align 1
  %58 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %core, align 4
  %call7.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %59) #12
  %call8.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull %call4, i32 noundef %call7.i, i32 noundef 0) #12
  %60 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %core, align 4
  %call11163.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %61) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %call11163.i)
  %cmp12164.i = icmp ult i32 %call8.i, %call11163.i
  br i1 %cmp12164.i, label %for.end.i.for.body14.i_crit_edge, label %for.end.i.for.end20.i_crit_edge

for.end.i.for.end20.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end20.i

for.end.i.for.body14.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.end.i.for.body14.i_crit_edge
  %i.1165.i = phi i32 [ %call19.i, %for.body14.i.for.body14.i_crit_edge ], [ %call8.i, %for.end.i.for.body14.i_crit_edge ]
  %62 = and i32 %i.1165.i, 7
  %63 = trunc i32 %i.1165.i to i16
  %64 = sub i16 1023, %63
  %65 = lshr i16 %64, 3
  %conv60.i.i.i109.i = add nuw nsw i16 %65, 32
  %shl.i.i113.i = shl i32 1, %62
  %and10.i.i115.i = shl i32 1, %62
  %idxprom.i.i116.i = zext i16 %conv60.i.i.i109.i to i32
  %arrayidx.i.i117.i = getelementptr i8, ptr %call7.i.i, i32 %idxprom.i.i116.i
  %66 = ptrtoint ptr %arrayidx.i.i117.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.i117.i, align 1
  %68 = trunc i32 %shl.i.i113.i to i8
  %69 = xor i8 %68, -1
  %conv15.i.i118.i = and i8 %67, %69
  %70 = trunc i32 %and10.i.i115.i to i8
  %conv18.i.i119.i = or i8 %conv15.i.i118.i, %70
  store i8 %conv18.i.i119.i, ptr %arrayidx.i.i117.i, align 1
  %71 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %core, align 4
  %call18.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %72) #12
  %add.i = add nuw i32 %i.1165.i, 1
  %call19.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull %call4, i32 noundef %call18.i, i32 noundef %add.i) #12
  %73 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %core, align 4
  %call11.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %74) #12
  %cmp12.i = icmp ult i32 %call19.i, %call11.i
  br i1 %cmp12.i, label %for.body14.i.for.body14.i_crit_edge, label %for.body14.i.for.end20.i_crit_edge

for.body14.i.for.end20.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end20.i

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14.i

for.end20.i:                                      ; preds = %for.body14.i.for.end20.i_crit_edge, %for.end.i.for.end20.i_crit_edge
  %call21.i = tail call zeroext i16 @mlxsw_sp_router_port(ptr noundef %mlxsw_sp) #12
  %conv41.i.i.i137.i = sub i16 1023, %call21.i
  %75 = lshr i16 %conv41.i.i.i137.i, 3
  %76 = and i16 %call21.i, 7
  %77 = zext i16 %76 to i32
  %conv60.i.i.i144.i = add nuw nsw i16 %75, 32
  %shl.i.i148.i = shl i32 1, %77
  %78 = lshr i8 %bf.load, 5
  %.lobit = and i8 %78, 1
  %79 = zext i8 %.lobit to i32
  %shl6.i.i149.i = shl nuw i32 %79, %77
  %and10.i.i150.i = and i32 %shl6.i.i149.i, %shl.i.i148.i
  %idxprom.i.i151.i = zext i16 %conv60.i.i.i144.i to i32
  %arrayidx.i.i152.i = getelementptr i8, ptr %call7.i.i, i32 %idxprom.i.i151.i
  %80 = ptrtoint ptr %arrayidx.i.i152.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i152.i, align 1
  %82 = trunc i32 %shl.i.i148.i to i8
  %83 = xor i8 %82, -1
  %conv15.i.i153.i = and i8 %81, %83
  %84 = trunc i32 %and10.i.i150.i to i8
  %conv18.i.i154.i = or i8 %conv15.i.i153.i, %84
  store i8 %conv18.i.i154.i, ptr %arrayidx.i.i152.i, align 1
  %85 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %core, align 4
  %call25.i = tail call i32 @mlxsw_reg_write(ptr noundef %86, ptr noundef nonnull @mlxsw_reg_smid2, ptr noundef nonnull %call7.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @bitmap_free(ptr noundef nonnull %call4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool10.not = icmp eq i32 %call25.i, 0
  br i1 %tobool10.not, label %if.end12, label %for.end20.i.cleanup_crit_edge

for.end20.i.cleanup_crit_edge:                    ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %for.end20.i
  %addr = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 1
  %fid = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 2
  %87 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %fid, align 2
  %call14 = tail call fastcc i32 @mlxsw_sp_port_mdb_op(ptr noundef %mlxsw_sp, ptr noundef %addr, i16 noundef zeroext %88, i16 noundef zeroext %conv, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bridge, align 4
  %mids_bitmap20 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %90, i32 0, i32 5
  tail call void @_set_bit(i32 noundef %conv1, ptr noundef %mids_bitmap20) #12
  %in_hw = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid, i32 0, i32 4
  %91 = ptrtoint ptr %in_hw to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %in_hw, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %for.end20.i.cleanup_crit_edge, %mlxsw_sp_port_smid_full_entry.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end17 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %for.end20.i.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ], [ false, %mlxsw_sp_port_smid_full_entry.exit.thread ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_core_lag_mapping_get(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_router_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_fdb_set(ptr noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %fdb_info, i1 noundef zeroext %adding) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %2 = ptrtoint ptr %fdb_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdb_info, align 4
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 4
  %call.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %3) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bridges_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %5, i32 0, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %.pn.in.i.i = phi ptr [ %bridges_list.i.i, %if.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %bridges_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bridge_device.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %7 = ptrtoint ptr %bridge_device.0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bridge_device.0.i.i, align 4
  %cmp2.i.i = icmp eq ptr %8, %call.i
  br i1 %cmp2.i.i, label %mlxsw_sp_bridge_device_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

mlxsw_sp_bridge_device_find.exit.i:               ; preds = %for.body.i.i
  %bridge_device.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool2.not.i = icmp eq ptr %bridge_device.0.i.i.le, null
  br i1 %tobool2.not.i, label %mlxsw_sp_bridge_device_find.exit.i.cleanup_crit_edge, label %if.end4.i

mlxsw_sp_bridge_device_find.exit.i.cleanup_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %mlxsw_sp_bridge_device_find.exit.i
  %ports_list.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  br label %for.cond.i13.i

for.cond.i13.i:                                   ; preds = %for.body.i15.i.for.cond.i13.i_crit_edge, %if.end4.i
  %.pn.in.i10.i = phi ptr [ %ports_list.i.i, %if.end4.i ], [ %.pn.i11.i, %for.body.i15.i.for.cond.i13.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i11.i = load ptr, ptr %.pn.in.i10.i, align 4
  %cmp.not.i12.i = icmp eq ptr %.pn.i11.i, %ports_list.i.i
  br i1 %cmp.not.i12.i, label %for.cond.i13.i.cleanup_crit_edge, label %for.body.i15.i

for.cond.i13.i.cleanup_crit_edge:                 ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i15.i:                                   ; preds = %for.cond.i13.i
  %bridge_port.0.i.i = getelementptr i8, ptr %.pn.i11.i, i32 -8
  %10 = ptrtoint ptr %bridge_port.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bridge_port.0.i.i, align 4
  %cmp2.i14.i = icmp eq ptr %11, %3
  br i1 %cmp2.i14.i, label %mlxsw_sp_bridge_port_find.exit, label %for.body.i15.i.for.cond.i13.i_crit_edge

for.body.i15.i.for.cond.i13.i_crit_edge:          ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i

mlxsw_sp_bridge_port_find.exit:                   ; preds = %for.body.i15.i
  %bridge_port.0.i.i.le = getelementptr i8, ptr %.pn.i11.i, i32 -8
  %tobool.not = icmp eq ptr %bridge_port.0.i.i.le, null
  br i1 %tobool.not, label %mlxsw_sp_bridge_port_find.exit.cleanup_crit_edge, label %if.end

mlxsw_sp_bridge_port_find.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_bridge_port_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_bridge_port_find.exit
  %bridge_device2 = getelementptr i8, ptr %.pn.i11.i, i32 -4
  %12 = ptrtoint ptr %bridge_device2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge_device2, align 4
  %vid3 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 2
  %14 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid3, align 4
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 11
  %vlan_enabled.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %vlans_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %mlxsw_sp_port_vlan.027.i = load ptr, ptr %vlans_list.i, align 4
  %cmp.not28.i = icmp eq ptr %mlxsw_sp_port_vlan.027.i, %vlans_list.i
  br i1 %cmp.not28.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %mlxsw_sp_port_vlan.029.i = phi ptr [ %mlxsw_sp_port_vlan.0.i, %for.inc.i.for.body.i_crit_edge ], [ %mlxsw_sp_port_vlan.027.i, %if.end.for.body.i_crit_edge ]
  %bridge_port.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i, i32 0, i32 4
  %17 = ptrtoint ptr %bridge_port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge_port.i, align 4
  %tobool.not.i37 = icmp eq ptr %18, null
  br i1 %tobool.not.i37, label %for.body.i.for.inc.i_crit_edge, label %if.end.i38

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i38:                                       ; preds = %for.body.i
  %bridge_device3.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bridge_device3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bridge_device3.i, align 4
  %cmp4.not.i = icmp eq ptr %20, %13
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i38.for.inc.i_crit_edge

if.end.i38.for.inc.i_crit_edge:                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i38
  %21 = ptrtoint ptr %vlan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %vlan_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool7.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool7.not.i, label %if.end6.i.mlxsw_sp_port_vlan_find_by_bridge.exit_crit_edge, label %land.lhs.true.i

if.end6.i.mlxsw_sp_port_vlan_find_by_bridge.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlan_find_by_bridge.exit

land.lhs.true.i:                                  ; preds = %if.end6.i
  %vid8.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i, i32 0, i32 3
  %22 = ptrtoint ptr %vid8.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vid8.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %15)
  %cmp11.not.i = icmp eq i16 %23, %15
  br i1 %cmp11.not.i, label %land.lhs.true.i.mlxsw_sp_port_vlan_find_by_bridge.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.mlxsw_sp_port_vlan_find_by_bridge.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlan_find_by_bridge.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i38.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %mlxsw_sp_port_vlan.029.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %mlxsw_sp_port_vlan.0.i = load ptr, ptr %mlxsw_sp_port_vlan.029.i, align 4
  %cmp.not.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i, %vlans_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlxsw_sp_port_vlan_find_by_bridge.exit:           ; preds = %land.lhs.true.i.mlxsw_sp_port_vlan_find_by_bridge.exit_crit_edge, %if.end6.i.mlxsw_sp_port_vlan_find_by_bridge.exit_crit_edge
  %tobool5.not = icmp eq ptr %mlxsw_sp_port_vlan.029.i, null
  br i1 %tobool5.not, label %mlxsw_sp_port_vlan_find_by_bridge.exit.cleanup_crit_edge, label %if.end7

mlxsw_sp_port_vlan_find_by_bridge.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_bridge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %mlxsw_sp_port_vlan_find_by_bridge.exit
  %fid = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i, i32 0, i32 2
  %25 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fid, align 4
  %call8 = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %26) #12
  %lagged = getelementptr i8, ptr %.pn.i11.i, i32 29
  %27 = ptrtoint ptr %lagged to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lagged, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool10.not = icmp eq i8 %28, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %29 = getelementptr i8, ptr %.pn.i11.i, i32 30
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %addr = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr, align 4
  %call3.i = tail call fastcc i32 @__mlxsw_sp_port_fdb_uc_op(ptr noundef %1, i16 noundef zeroext %31, ptr noundef %33, i16 noundef zeroext %call8, i1 noundef zeroext %adding, i32 noundef 0, i32 noundef 1) #12
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %vid9 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i, i32 0, i32 3
  %34 = ptrtoint ptr %vid9 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vid9, align 4
  %36 = getelementptr i8, ptr %.pn.i11.i, i32 30
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  %addr14 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %39 = ptrtoint ptr %addr14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr14, align 4
  %call16 = tail call fastcc i32 @mlxsw_sp_port_fdb_uc_lag_op(ptr noundef %1, i16 noundef zeroext %38, ptr noundef %40, i16 noundef zeroext %call8, i16 noundef zeroext %35, i1 noundef zeroext %adding, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %mlxsw_sp_port_vlan_find_by_bridge.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mlxsw_sp_bridge_port_find.exit.cleanup_crit_edge, %for.cond.i13.i.cleanup_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.else ], [ %call3.i, %if.then11 ], [ -22, %mlxsw_sp_bridge_port_find.exit.cleanup_crit_edge ], [ 0, %mlxsw_sp_port_vlan_find_by_bridge.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %mlxsw_sp_bridge_device_find.exit.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ], [ -22, %for.cond.i13.i.cleanup_crit_edge ], [ -22, %for.cond.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_lower_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_vni(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_switchdev_bridge_vxlan_fdb_event(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %switchdev_work, ptr noundef %fid, i32 noundef %vni) unnamed_addr #1 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %vxlan_fdb_info = alloca %struct.switchdev_notifier_vxlan_fdb_info, align 4
  %addr = alloca %union.mlxsw_sp_l3addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %vxlan_fdb_info) #12
  %0 = call ptr @memset(ptr %vxlan_fdb_info, i32 255, i32 68)
  %dev1 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %switchdev_work, i32 0, i32 2
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #12
  %addr2 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %switchdev_work, i32 0, i32 1, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %addr, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 12)
  %5 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr2, align 4
  %call = call i32 @vxlan_fdb_find_uc(ptr noundef %2, ptr noundef %6, i32 noundef %vni, ptr noundef nonnull %vxlan_fdb_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %remote_ip = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %vxlan_fdb_info, i32 0, i32 1
  %7 = ptrtoint ptr %remote_ip to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %remote_ip, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp.i = icmp eq i16 %8, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sin_addr.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %vxlan_fdb_info, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sin_addr.i, align 4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %addr, align 4
  br label %mlxsw_sp_switchdev_vxlan_addr_convert.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_addr.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %vxlan_fdb_info, i32 0, i32 1, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %addr, ptr %sin6_addr.i, i32 16)
  br label %mlxsw_sp_switchdev_vxlan_addr_convert.exit

mlxsw_sp_switchdev_vxlan_addr_convert.exit:       ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ 1, %if.else.i ], [ 0, %if.then.i ]
  %event = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %switchdev_work, i32 0, i32 3
  %13 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %14, label %mlxsw_sp_switchdev_vxlan_addr_convert.exit.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb11
  ]

mlxsw_sp_switchdev_vxlan_addr_convert.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_switchdev_vxlan_addr_convert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %mlxsw_sp_switchdev_vxlan_addr_convert.exit
  %eth_addr = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %vxlan_fdb_info, i32 0, i32 5
  %call3 = call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %fid) #12
  %call4 = call fastcc i32 @mlxsw_sp_port_fdb_tunnel_uc_op(ptr noundef %mlxsw_sp, ptr noundef %eth_addr, i16 noundef zeroext %call3, i32 noundef %storemerge.i, ptr noundef nonnull %addr, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %offloaded = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %vxlan_fdb_info, i32 0, i32 7
  %16 = ptrtoint ptr %offloaded to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %offloaded, align 4
  %call8 = call i32 @call_switchdev_notifiers(i32 noundef 14, ptr noundef %2, ptr noundef nonnull %vxlan_fdb_info, ptr noundef null) #12
  %vid = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, ptr %switchdev_work, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vid, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #12
  %19 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %addr.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %eth_addr, ptr %addr.i, align 4
  %vid1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %21 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %18, ptr %vid1.i, align 4
  %offloaded2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %22 = ptrtoint ptr %offloaded2.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %offloaded2.i, align 2
  %call.i = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %2, ptr noundef nonnull %info.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #12
  br label %cleanup

sw.bb11:                                          ; preds = %mlxsw_sp_switchdev_vxlan_addr_convert.exit
  call void @__sanitizer_cov_trace_pc() #14
  %eth_addr12 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %vxlan_fdb_info, i32 0, i32 5
  %call14 = call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %fid) #12
  %call15 = call fastcc i32 @mlxsw_sp_port_fdb_tunnel_uc_op(ptr noundef %mlxsw_sp, ptr noundef %eth_addr12, i16 noundef zeroext %call14, i32 noundef %storemerge.i, ptr noundef nonnull %addr, i1 noundef zeroext false, i1 noundef zeroext false)
  %offloaded16 = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %vxlan_fdb_info, i32 0, i32 7
  %23 = ptrtoint ptr %offloaded16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %offloaded16, align 4
  %call18 = call i32 @call_switchdev_notifiers(i32 noundef 14, ptr noundef %2, ptr noundef nonnull %vxlan_fdb_info, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %if.end7, %sw.bb.cleanup_crit_edge, %mlxsw_sp_switchdev_vxlan_addr_convert.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %vxlan_fdb_info) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxlan_fdb_find_uc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_fdb_tunnel_uc_op(ptr noundef %mlxsw_sp, ptr noundef %mac, i16 noundef zeroext %fid, i32 noundef %proto, ptr noundef %addr, i1 noundef zeroext %adding, i1 noundef zeroext %dynamic) unnamed_addr #1 align 64 {
entry:
  %kvdl_index.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %proto, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1040) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %cond.i.i = select i1 %adding, i32 1, i32 2
  tail call fastcc void @mlxsw_reg_sfd_pack(ptr noundef nonnull %call7.i.i, i32 noundef %cond.i.i) #12
  %cond.i26.i = select i1 %dynamic, i32 3, i32 1
  %shr.i.i = and i32 %2, -16777216
  %arrayidx.i.i.i.i = getelementptr i32, ptr %call7.i.i, i32 6
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i.i, align 8
  %and7.i.i.i.i = and i32 %5, 16777215
  %or.i.i.i.i = or i32 %shr.i.i, %and7.i.i.i.i
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i.i.i, align 8
  %and6.i.i24.i.i = and i32 %2, 16777215
  %arrayidx.i.i25.i.i = getelementptr i32, ptr %call7.i.i, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i25.i.i, align 4
  %and7.i.i27.i.i = and i32 %7, -16777216
  %or.i.i28.i.i = or i32 %and6.i.i24.i.i, %and7.i.i27.i.i
  store i32 %or.i.i28.i.i, ptr %arrayidx.i.i25.i.i, align 4
  tail call fastcc void @mlxsw_reg_sfd_uc_tunnel_pack(ptr noundef nonnull %call7.i.i, i32 noundef %cond.i26.i, ptr noundef %mac, i16 noundef zeroext %fid, i32 noundef 0) #12
  %arrayidx.i.i.i = getelementptr i32, ptr %call7.i.i, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 8
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %call7.i = tail call i32 @mlxsw_reg_write(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_sfd, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %mlxsw_reg_sfd_num_rec_get.exit52.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

mlxsw_reg_sfd_num_rec_get.exit52.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i42.i = getelementptr i32, ptr %call7.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i42.i, align 8
  %14 = xor i32 %9, %13
  %15 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 -16
  br label %out.i

out.i:                                            ; preds = %mlxsw_reg_sfd_num_rec_get.exit52.i, %if.end.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call7.i, %if.end.i.out.i_crit_edge ], [ %spec.select.i, %mlxsw_reg_sfd_num_rec_get.exit52.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %return

sw.bb3:                                           ; preds = %entry
  br i1 %adding, label %if.then.i, label %if.end.i27

if.then.i:                                        ; preds = %sw.bb3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kvdl_index.i.i) #12
  %16 = ptrtoint ptr %kvdl_index.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %kvdl_index.i.i, align 4, !annotation !295
  %call.i.i = call i32 @mlxsw_sp_nve_ipv6_addr_kvdl_set(ptr noundef %mlxsw_sp, ptr noundef %addr, ptr noundef nonnull %kvdl_index.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i_crit_edge

if.then.i.mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %17 = ptrtoint ptr %kvdl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %kvdl_index.i.i, align 4
  %call1.i.i = call fastcc i32 @mlxsw_sp_port_fdb_tun_uc_op6_sfd_write(ptr noundef %mlxsw_sp, ptr noundef %mac, i16 noundef zeroext %fid, i32 noundef %18, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.err_sfd_write.i.i_crit_edge

if.end.i.i.err_sfd_write.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_sfd_write.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call i32 @mlxsw_sp_nve_ipv6_addr_map_replace(ptr noundef %mlxsw_sp, ptr noundef %mac, i16 noundef zeroext %fid, ptr noundef %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end4.i.i.mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i_crit_edge, label %err_addr_replace.i.i

if.end4.i.i.mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i

err_addr_replace.i.i:                             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %kvdl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kvdl_index.i.i, align 4
  %call9.i.i = call fastcc i32 @mlxsw_sp_port_fdb_tun_uc_op6_sfd_write(ptr noundef %mlxsw_sp, ptr noundef %mac, i16 noundef zeroext %fid, i32 noundef %20, i1 noundef zeroext false) #12
  br label %err_sfd_write.i.i

err_sfd_write.i.i:                                ; preds = %err_addr_replace.i.i, %if.end.i.i.err_sfd_write.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call1.i.i, %if.end.i.i.err_sfd_write.i.i_crit_edge ], [ %call5.i.i, %err_addr_replace.i.i ]
  call void @mlxsw_sp_nve_ipv6_addr_kvdl_unset(ptr noundef %mlxsw_sp, ptr noundef %addr) #12
  br label %mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i

mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i:          ; preds = %err_sfd_write.i.i, %if.end4.i.i.mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i_crit_edge, %if.then.i.mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %err.0.i.i, %err_sfd_write.i.i ], [ %call.i.i, %if.then.i.mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i_crit_edge ], [ 0, %if.end4.i.i.mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kvdl_index.i.i) #12
  br label %return

if.end.i27:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_nve_ipv6_addr_map_del(ptr noundef %mlxsw_sp, ptr noundef %mac, i16 noundef zeroext %fid) #12
  %call.i5.i = tail call fastcc i32 @mlxsw_sp_port_fdb_tun_uc_op6_sfd_write(ptr noundef %mlxsw_sp, ptr noundef %mac, i16 noundef zeroext %fid, i32 noundef 0, i1 noundef zeroext false) #12
  tail call void @mlxsw_sp_nve_ipv6_addr_kvdl_unset(ptr noundef %mlxsw_sp, ptr noundef %addr) #12
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1420, i32 noundef 9, ptr noundef null) #12
  br label %return

return:                                           ; preds = %do.end, %if.end.i27, %mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i, %out.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ %err.0.i, %out.i ], [ -12, %sw.bb.return_crit_edge ], [ %retval.0.i.i, %mlxsw_sp_port_fdb_tun_uc_op6_add.exit.i ], [ 0, %if.end.i27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_sfd_uc_tunnel_pack(ptr nocapture noundef %payload, i32 noundef %policy, ptr nocapture noundef readonly %mac, i16 noundef zeroext %fid, i32 noundef %proto) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_reg_sfd_rec_pack(ptr noundef %payload, i32 noundef 12, ptr noundef %mac, i32 noundef 0)
  %spec.select.i.i = shl i32 %policy, 18
  %and6.i.i = and i32 %spec.select.i.i, 786432
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 4
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %1, -786433
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %conv2 = zext i16 %fid to i32
  %arrayidx.i.i25 = getelementptr i32, ptr %payload, i32 6
  %2 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i25, align 4
  %and7.i.i27 = and i32 %3, -65536
  %or.i.i28 = or i32 %and7.i.i27, %conv2
  store i32 %or.i.i28, ptr %arrayidx.i.i25, align 4
  %spec.select.i.i47 = shl i32 %proto, 27
  %and6.i.i52 = and i32 %spec.select.i.i47, 134217728
  %arrayidx.i.i53 = getelementptr i32, ptr %payload, i32 7
  %4 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i53, align 4
  %and7.i.i55 = and i32 %5, -134217729
  %or.i.i56 = or i32 %and6.i.i52, %and7.i.i55
  store i32 %or.i.i56, ptr %arrayidx.i.i53, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_nve_ipv6_addr_kvdl_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_fdb_tun_uc_op6_sfd_write(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %mac, i16 noundef zeroext %fid, i32 noundef %kvdl_index, i1 noundef zeroext %adding) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1040) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond.i = select i1 %adding, i32 1, i32 2
  tail call fastcc void @mlxsw_reg_sfd_pack(ptr noundef nonnull %call7.i, i32 noundef %cond.i)
  %and6.i.i.i = and i32 %kvdl_index, 16777215
  %arrayidx.i.i.i = getelementptr i32, ptr %call7.i, i32 7
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %2, -16777216
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  tail call fastcc void @mlxsw_reg_sfd_uc_tunnel_pack(ptr noundef nonnull %call7.i, i32 noundef 0, ptr noundef %mac, i16 noundef zeroext %fid, i32 noundef 1) #12
  %arrayidx.i.i = getelementptr i32, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 4
  %call4 = tail call i32 @mlxsw_reg_write(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_sfd, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %mlxsw_reg_sfd_num_rec_get.exit47, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

mlxsw_reg_sfd_num_rec_get.exit47:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i37 = getelementptr i32, ptr %call7.i, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i37, align 8
  %9 = xor i32 %4, %8
  %10 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 -16
  br label %out

out:                                              ; preds = %mlxsw_reg_sfd_num_rec_get.exit47, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %spec.select, %mlxsw_reg_sfd_num_rec_get.exit47 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_nve_ipv6_addr_map_replace(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_nve_ipv6_addr_kvdl_unset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_nve_ipv6_addr_map_del(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_fdb_uc_lag_op(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %lag_id, ptr nocapture noundef readonly %mac, i16 noundef zeroext %fid, i16 noundef zeroext %lag_vid, i1 noundef zeroext %adding, i1 noundef zeroext %dynamic) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1040) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond.i = select i1 %adding, i32 1, i32 2
  tail call fastcc void @mlxsw_reg_sfd_pack(ptr noundef nonnull %call7.i, i32 noundef %cond.i)
  %cond.i25 = select i1 %dynamic, i32 786432, i32 262144
  tail call fastcc void @mlxsw_reg_sfd_rec_pack(ptr noundef nonnull %call7.i, i32 noundef 1, ptr noundef %mac, i32 noundef 0) #12
  %arrayidx.i.i.i = getelementptr i32, ptr %call7.i, i32 4
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i.i, align 8
  %and7.i.i.i = and i32 %2, -786433
  %or.i.i.i = or i32 %cond.i25, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 8
  %arrayidx.i.i21.i = getelementptr i32, ptr %call7.i, i32 6
  %3 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i21.i, align 8
  %conv3.i = zext i16 %fid to i32
  %arrayidx.i.i48.i = getelementptr i32, ptr %call7.i, i32 6
  %and7.i.i50.i = and i32 %4, -16777216
  %or.i.i51.i = or i32 %and7.i.i50.i, %conv3.i
  %5 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i51.i, ptr %arrayidx.i.i48.i, align 8
  %conv5.i = zext i16 %lag_vid to i32
  %spec.select.i.i70.i = shl nuw i32 %conv5.i, 16
  %and6.i.i75.i = and i32 %spec.select.i.i70.i, 268369920
  %arrayidx.i.i76.i = getelementptr i32, ptr %call7.i, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i76.i, align 4
  %and7.i.i78.i = and i32 %7, -268370944
  %or.i.i79.i = or i32 %and6.i.i75.i, %and7.i.i78.i
  %8 = and i16 %lag_id, 1023
  %and6.i.i103.i = zext i16 %8 to i32
  %arrayidx.i.i104.i = getelementptr i32, ptr %call7.i, i32 7
  %or.i.i107.i = or i32 %or.i.i79.i, %and6.i.i103.i
  %9 = ptrtoint ptr %arrayidx.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i107.i, ptr %arrayidx.i.i104.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %call7.i, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %call7 = tail call i32 @mlxsw_reg_write(ptr noundef %13, ptr noundef nonnull @mlxsw_reg_sfd, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %mlxsw_reg_sfd_num_rec_get.exit51, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

mlxsw_reg_sfd_num_rec_get.exit51:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i41 = getelementptr i32, ptr %call7.i, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i41, align 8
  %16 = xor i32 %11, %15
  %17 = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 -16
  br label %out

out:                                              ; preds = %mlxsw_reg_sfd_num_rec_get.exit51, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call7, %if.end.out_crit_edge ], [ %spec.select, %mlxsw_reg_sfd_num_rec_get.exit51 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_nve_flood_ip_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_fdb_find_port(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_nve_flood_ip_del(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_bridge_8021ad_port_join(ptr nocapture noundef readnone %bridge_device, ptr nocapture noundef readonly %bridge_port, ptr noundef %mlxsw_sp_port, ptr noundef writeonly %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_port_vlan_classification_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext true, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %bridge_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_port, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end2.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_vlan_aware_port_join.__msg) #12
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.err_bridge_vlan_aware_port_join_crit_edge, label %if.then1.i

do.body.i.err_bridge_vlan_aware_port_join_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_bridge_vlan_aware_port_join

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_bridge_vlan_aware_port_join.__msg, ptr %extack, align 4
  br label %err_bridge_vlan_aware_port_join

if.end2.i:                                        ; preds = %if.end
  %default_vlan.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 12
  %5 = ptrtoint ptr %default_vlan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %default_vlan.i, align 8
  %fid.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fid.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.end2.i.cleanup_crit_edge, label %if.then4.i

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_port_vlan_router_leave(ptr noundef %6) #12
  br label %cleanup

err_bridge_vlan_aware_port_join:                  ; preds = %if.then1.i, %do.body.i.err_bridge_vlan_aware_port_join_crit_edge
  %call5 = tail call i32 @mlxsw_sp_port_vlan_classification_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %err_bridge_vlan_aware_port_join, %if.then4.i, %if.end2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err_bridge_vlan_aware_port_join ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then4.i ], [ 0, %if.end2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_bridge_8021ad_port_leave(ptr nocapture noundef readnone %bridge_device, ptr nocapture noundef readnone %bridge_port, ptr noundef %mlxsw_sp_port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mlxsw_sp_port_pvid_set(ptr noundef %mlxsw_sp_port, i16 noundef zeroext 4095, i16 noundef zeroext -32512) #12
  %call = tail call i32 @mlxsw_sp_port_vlan_classification_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_bridge_8021ad_vxlan_join(ptr nocapture noundef readonly %bridge_device, ptr noundef %vxlan_dev, i16 noundef zeroext %vid, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_bridge_vlan_aware_vxlan_join(ptr noundef %bridge_device, ptr noundef %vxlan_dev, i16 noundef zeroext %vid, i16 noundef zeroext -30552, ptr noundef %extack)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_bridge_8021q_fid_get(ptr nocapture noundef readonly %bridge_device, i16 noundef zeroext %vid, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_device, align 4
  %call = tail call ptr @mlxsw_sp_lower_get(ptr noundef %1) #12
  %call1 = tail call ptr @mlxsw_sp_fid_8021q_get(ptr noundef %call, i16 noundef zeroext %vid) #12
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_bridge_8021q_fid_lookup(ptr nocapture noundef readonly %bridge_device, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_device, align 4
  %call = tail call ptr @mlxsw_sp_lower_get(ptr noundef %1) #12
  %call1 = tail call ptr @mlxsw_sp_fid_8021q_lookup(ptr noundef %call, i16 noundef zeroext %vid) #12
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @mlxsw_sp_bridge_8021q_fid_vid(ptr nocapture noundef readnone %bridge_device, ptr noundef %fid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @mlxsw_sp_fid_8021q_vid(ptr noundef %fid) #12
  ret i16 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_vlan_classification_set(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_port_vlan_router_leave(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_pvid_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_bridge_vlan_aware_vxlan_join(ptr nocapture noundef readonly %bridge_device, ptr noundef %vxlan_dev, i16 noundef zeroext %vid, i16 noundef zeroext %ethertype, ptr noundef %extack) unnamed_addr #1 align 64 {
entry:
  %vinfo.i = alloca %struct.bridge_vlan_info, align 2
  %vid.i = alloca i16, align 2
  %params = alloca %struct.mlxsw_sp_nve_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_device, align 4
  %call = tail call ptr @mlxsw_sp_lower_get(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #12
  %2 = getelementptr inbounds i8, ptr %params, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %params, align 4
  %vni = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 1
  %vni2 = getelementptr i8, ptr %vxlan_dev, i32 13796
  %5 = ptrtoint ptr %vni2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vni2, align 4
  %7 = ptrtoint ptr %vni to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vni, align 4
  %dev3 = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vxlan_dev, ptr %dev3, align 4
  %ethertype4 = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %ethertype4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %ethertype, ptr %ethertype4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool.not = icmp eq i16 %vid, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo.i) #12
  %10 = ptrtoint ptr %vinfo.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %vinfo.i, align 2, !annotation !295
  %11 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %11, align 2, !annotation !295
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid.i) #12
  %13 = ptrtoint ptr %vid.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %vid.i, align 2
  %call.i = call i32 @br_vlan_get_pvid(ptr noundef %vxlan_dev, ptr noundef nonnull %vid.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %mlxsw_sp_vxlan_mapped_vid.exit.thread56

mlxsw_sp_vxlan_mapped_vid.exit.thread56:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then
  %14 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool1.not.i = icmp eq i16 %15, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.thread62, label %if.end.i

lor.lhs.false.thread62:                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = call i32 @br_vlan_get_info(ptr noundef %vxlan_dev, i16 noundef zeroext %15, ptr noundef nonnull %vinfo.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %mlxsw_sp_vxlan_mapped_vid.exit

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %16 = ptrtoint ptr %vinfo.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vinfo.i, align 2
  %18 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool5.not.i = icmp eq i16 %18, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.thread, label %lor.lhs.false

lor.lhs.false.thread:                             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #12
  br label %cleanup

mlxsw_sp_vxlan_mapped_vid.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %lor.lhs.false4.i
  %19 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %.pr = load i16, ptr %vid.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool7.not = icmp eq i16 %.pr, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false.if.end9_crit_edge, %entry.if.end9_crit_edge
  %vid.addr.0 = phi i16 [ %.pr, %lor.lhs.false.if.end9_crit_edge ], [ %vid, %entry.if.end9_crit_edge ]
  %call10 = call ptr @mlxsw_sp_fid_8021q_get(ptr noundef %call, i16 noundef zeroext %vid.addr.0) #12
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg) #12
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body.if.end15_crit_edge, label %if.then14

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg, ptr %extack, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.body.if.end15_crit_edge
  %21 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = call zeroext i1 @mlxsw_sp_fid_vni_is_set(ptr noundef %call10) #12
  br i1 %call18, label %do.body20, label %if.end28

do.body20:                                        ; preds = %if.end17
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg.86) #12
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.err_vni_exists_crit_edge, label %if.then23

do.body20.err_vni_exists_crit_edge:               ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vni_exists

if.then23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg.86, ptr %extack, align 4
  br label %err_vni_exists

if.end28:                                         ; preds = %if.end17
  %call29 = call i32 @mlxsw_sp_nve_fid_enable(ptr noundef %call, ptr noundef %call10, ptr noundef nonnull %params, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end28.err_vni_exists_crit_edge

if.end28.err_vni_exists_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vni_exists

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_vni_exists:                                   ; preds = %if.end28.err_vni_exists_crit_edge, %if.then23, %do.body20.err_vni_exists_crit_edge
  %err.0 = phi i32 [ %call29, %if.end28.err_vni_exists_crit_edge ], [ -22, %if.then23 ], [ -22, %do.body20.err_vni_exists_crit_edge ]
  call void @mlxsw_sp_fid_put(ptr noundef %call10) #12
  br label %cleanup

cleanup:                                          ; preds = %err_vni_exists, %if.end28.cleanup_crit_edge, %if.end15, %lor.lhs.false.cleanup_crit_edge, %mlxsw_sp_vxlan_mapped_vid.exit, %lor.lhs.false.thread, %lor.lhs.false.thread62, %mlxsw_sp_vxlan_mapped_vid.exit.thread56
  %retval.0 = phi i32 [ %21, %if.end15 ], [ %err.0, %err_vni_exists ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call2.i, %mlxsw_sp_vxlan_mapped_vid.exit ], [ 0, %if.end28.cleanup_crit_edge ], [ %call.i, %mlxsw_sp_vxlan_mapped_vid.exit.thread56 ], [ 0, %lor.lhs.false.thread ], [ 0, %lor.lhs.false.thread62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_fid_8021q_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_fid_vni_is_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_nve_fid_enable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_pvid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_info(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_fid_8021q_lookup(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_fid_8021q_vid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_bridge_8021ad_port_join(ptr nocapture noundef readnone %bridge_device, ptr nocapture noundef readonly %bridge_port, ptr noundef %mlxsw_sp_port, ptr noundef writeonly %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_port_egress_ethtype_set(ptr noundef %mlxsw_sp_port, i16 noundef zeroext -30552) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @mlxsw_sp_port_vlan_classification_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext true, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.err_bridge_8021ad_port_join_crit_edge

if.end.err_bridge_8021ad_port_join_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_bridge_8021ad_port_join

if.end.i:                                         ; preds = %if.end
  %0 = ptrtoint ptr %bridge_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_port, align 4
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end2.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_vlan_aware_port_join.__msg) #12
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.err_bridge_vlan_aware_port_join.i_crit_edge, label %if.then1.i.i

do.body.i.i.err_bridge_vlan_aware_port_join.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_bridge_vlan_aware_port_join.i

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_bridge_vlan_aware_port_join.__msg, ptr %extack, align 4
  br label %err_bridge_vlan_aware_port_join.i

if.end2.i.i:                                      ; preds = %if.end.i
  %default_vlan.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 12
  %5 = ptrtoint ptr %default_vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %default_vlan.i.i, align 8
  %fid.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fid.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fid.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i.i, label %if.end2.i.i.cleanup_crit_edge, label %if.then4.i.i

if.end2.i.i.cleanup_crit_edge:                    ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_port_vlan_router_leave(ptr noundef %6) #12
  br label %cleanup

err_bridge_vlan_aware_port_join.i:                ; preds = %if.then1.i.i, %do.body.i.i.err_bridge_vlan_aware_port_join.i_crit_edge
  %call5.i = tail call i32 @mlxsw_sp_port_vlan_classification_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %err_bridge_8021ad_port_join

err_bridge_8021ad_port_join:                      ; preds = %err_bridge_vlan_aware_port_join.i, %if.end.err_bridge_8021ad_port_join_crit_edge
  %retval.0.i = phi i32 [ -22, %err_bridge_vlan_aware_port_join.i ], [ %call.i, %if.end.err_bridge_8021ad_port_join_crit_edge ]
  %call5 = tail call i32 @mlxsw_sp_port_egress_ethtype_set(ptr noundef %mlxsw_sp_port, i16 noundef zeroext -32512) #12
  br label %cleanup

cleanup:                                          ; preds = %err_bridge_8021ad_port_join, %if.then4.i.i, %if.end2.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %err_bridge_8021ad_port_join ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then4.i.i ], [ 0, %if.end2.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_bridge_8021ad_port_leave(ptr nocapture noundef readnone %bridge_device, ptr nocapture noundef readnone %bridge_port, ptr noundef %mlxsw_sp_port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @mlxsw_sp_port_pvid_set(ptr noundef %mlxsw_sp_port, i16 noundef zeroext 4095, i16 noundef zeroext -32512) #12
  %call.i = tail call i32 @mlxsw_sp_port_vlan_classification_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %call = tail call i32 @mlxsw_sp_port_egress_ethtype_set(ptr noundef %mlxsw_sp_port, i16 noundef zeroext -32512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_egress_ethtype_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_bridge_8021q_port_join(ptr nocapture noundef readnone %bridge_device, ptr nocapture noundef readonly %bridge_port, ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef writeonly %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_port, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end2.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_vlan_aware_port_join.__msg) #12
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.mlxsw_sp_bridge_vlan_aware_port_join.exit_crit_edge, label %if.then1.i

do.body.i.mlxsw_sp_bridge_vlan_aware_port_join.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vlan_aware_port_join.exit

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_bridge_vlan_aware_port_join.__msg, ptr %extack, align 4
  br label %mlxsw_sp_bridge_vlan_aware_port_join.exit

if.end2.i:                                        ; preds = %entry
  %default_vlan.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 12
  %5 = ptrtoint ptr %default_vlan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %default_vlan.i, align 8
  %fid.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fid.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.end2.i.mlxsw_sp_bridge_vlan_aware_port_join.exit_crit_edge, label %if.then4.i

if.end2.i.mlxsw_sp_bridge_vlan_aware_port_join.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vlan_aware_port_join.exit

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_port_vlan_router_leave(ptr noundef %6) #12
  br label %mlxsw_sp_bridge_vlan_aware_port_join.exit

mlxsw_sp_bridge_vlan_aware_port_join.exit:        ; preds = %if.then4.i, %if.end2.i.mlxsw_sp_bridge_vlan_aware_port_join.exit_crit_edge, %if.then1.i, %do.body.i.mlxsw_sp_bridge_vlan_aware_port_join.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then1.i ], [ -22, %do.body.i.mlxsw_sp_bridge_vlan_aware_port_join.exit_crit_edge ], [ 0, %if.then4.i ], [ 0, %if.end2.i.mlxsw_sp_bridge_vlan_aware_port_join.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_bridge_8021q_port_leave(ptr nocapture noundef readnone %bridge_device, ptr nocapture noundef readnone %bridge_port, ptr noundef %mlxsw_sp_port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mlxsw_sp_port_pvid_set(ptr noundef %mlxsw_sp_port, i16 noundef zeroext 4095, i16 noundef zeroext -32512) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_bridge_8021q_vxlan_join(ptr nocapture noundef readonly %bridge_device, ptr noundef %vxlan_dev, i16 noundef zeroext %vid, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_bridge_vlan_aware_vxlan_join(ptr noundef %bridge_device, ptr noundef %vxlan_dev, i16 noundef zeroext %vid, i16 noundef zeroext -32512, ptr noundef %extack)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_bridge_8021d_port_join(ptr nocapture noundef readonly %bridge_device, ptr noundef %bridge_port, ptr noundef readonly %mlxsw_sp_port, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_port, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %call2, %cond.true ], [ 4095, %entry.cond.end_crit_edge ]
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %cond.end
  %mlxsw_sp_port_vlan.0.in.i = phi ptr [ %vlans_list.i, %cond.end ], [ %mlxsw_sp_port_vlan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %mlxsw_sp_port_vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mlxsw_sp_port_vlan.0.i = load ptr, ptr %mlxsw_sp_port_vlan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i, %vlans_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %vid2.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid2.i, align 4
  %cmp4.i = icmp eq i16 %6, %cond
  br i1 %cmp4.i, label %mlxsw_sp_port_vlan_find_by_vid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlxsw_sp_port_vlan_find_by_vid.exit:              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mlxsw_sp_port_vlan.0.i, null
  br i1 %tobool.not, label %mlxsw_sp_port_vlan_find_by_vid.exit.do.end_crit_edge, label %if.end27, !prof !296

mlxsw_sp_port_vlan_find_by_vid.exit.do.end_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2246, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end27:                                         ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit
  %7 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bridge_device, align 4
  %9 = ptrtoint ptr %vlans_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %mlxsw_sp_port_vlan.013.i = load ptr, ptr %vlans_list.i, align 4
  %cmp.not14.i = icmp eq ptr %mlxsw_sp_port_vlan.013.i, %vlans_list.i
  br i1 %cmp.not14.i, label %if.end27.if.end37_crit_edge, label %if.end27.for.body.i54_crit_edge

if.end27.for.body.i54_crit_edge:                  ; preds = %if.end27
  br label %for.body.i54

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

for.body.i54:                                     ; preds = %for.inc.i.for.body.i54_crit_edge, %if.end27.for.body.i54_crit_edge
  %mlxsw_sp_port_vlan.015.i = phi ptr [ %mlxsw_sp_port_vlan.0.i55, %for.inc.i.for.body.i54_crit_edge ], [ %mlxsw_sp_port_vlan.013.i, %if.end27.for.body.i54_crit_edge ]
  %bridge_port.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.015.i, i32 0, i32 4
  %10 = ptrtoint ptr %bridge_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bridge_port.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i54.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i54.for.inc.i_crit_edge:                 ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i54
  %bridge_device.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bridge_device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge_device.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cmp3.i = icmp eq ptr %15, %8
  br i1 %cmp3.i, label %do.body31, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i54.for.inc.i_crit_edge
  %16 = ptrtoint ptr %mlxsw_sp_port_vlan.015.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %mlxsw_sp_port_vlan.0.i55 = load ptr, ptr %mlxsw_sp_port_vlan.015.i, align 4
  %cmp.not.i56 = icmp eq ptr %mlxsw_sp_port_vlan.0.i55, %vlans_list.i
  br i1 %cmp.not.i56, label %for.inc.i.if.end37_crit_edge, label %for.inc.i.for.body.i54_crit_edge

for.inc.i.for.body.i54_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i54

for.inc.i.if.end37_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body31:                                        ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_8021d_port_join.__msg) #12
  %tobool32.not = icmp eq ptr %extack, null
  br i1 %tobool32.not, label %do.body31.cleanup_crit_edge, label %if.then33

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mlxsw_sp_bridge_8021d_port_join.__msg, ptr %extack, align 4
  br label %cleanup

if.end37:                                         ; preds = %for.inc.i.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %fid = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fid, align 4
  %tobool38.not = icmp eq ptr %19, null
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_port_vlan_router_leave(ptr noundef nonnull %mlxsw_sp_port_vlan.0.i) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  %call41 = tail call fastcc i32 @mlxsw_sp_port_vlan_bridge_join(ptr noundef nonnull %mlxsw_sp_port_vlan.0.i, ptr noundef %bridge_port, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then33, %do.body31.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call41, %if.end40 ], [ -22, %if.then33 ], [ -22, %do.body31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_bridge_8021d_port_leave(ptr nocapture noundef readnone %bridge_device, ptr nocapture noundef readonly %bridge_port, ptr noundef readonly %mlxsw_sp_port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_port, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %call2, %cond.true ], [ 4095, %entry.cond.end_crit_edge ]
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %cond.end
  %mlxsw_sp_port_vlan.0.in.i = phi ptr [ %vlans_list.i, %cond.end ], [ %mlxsw_sp_port_vlan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %mlxsw_sp_port_vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mlxsw_sp_port_vlan.0.i = load ptr, ptr %mlxsw_sp_port_vlan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i, %vlans_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %vid2.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid2.i, align 4
  %cmp4.i = icmp eq i16 %6, %cond
  br i1 %cmp4.i, label %mlxsw_sp_port_vlan_find_by_vid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

mlxsw_sp_port_vlan_find_by_vid.exit:              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mlxsw_sp_port_vlan.0.i, null
  br i1 %tobool.not, label %mlxsw_sp_port_vlan_find_by_vid.exit.cleanup_crit_edge, label %lor.lhs.false

mlxsw_sp_port_vlan_find_by_vid.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit
  %bridge_port5 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.0.i, i32 0, i32 4
  %7 = ptrtoint ptr %bridge_port5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bridge_port5, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_port_vlan_bridge_leave(ptr noundef nonnull %mlxsw_sp_port_vlan.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %mlxsw_sp_port_vlan_find_by_vid.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_bridge_8021d_vxlan_join(ptr nocapture noundef readonly %bridge_device, ptr noundef %vxlan_dev, i16 noundef zeroext %vid, ptr noundef %extack) #1 align 64 {
entry:
  %params = alloca %struct.mlxsw_sp_nve_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_device, align 4
  %call = tail call ptr @mlxsw_sp_lower_get(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #12
  %2 = getelementptr inbounds i8, ptr %params, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %params, align 4
  %vni = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 1
  %vni2 = getelementptr i8, ptr %vxlan_dev, i32 13796
  %5 = ptrtoint ptr %vni2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vni2, align 4
  %7 = ptrtoint ptr %vni to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vni, align 4
  %dev3 = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vxlan_dev, ptr %dev3, align 4
  %ethertype = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %ethertype to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -32512, ptr %ethertype, align 4
  %10 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bridge_device, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %call5 = tail call ptr @mlxsw_sp_fid_8021d_get(ptr noundef %call, i32 noundef %13) #12
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_8021d_vxlan_join.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mlxsw_sp_bridge_8021d_vxlan_join.__msg, ptr %extack, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call zeroext i1 @mlxsw_sp_fid_vni_is_set(ptr noundef %call5) #12
  br i1 %call9, label %do.body11, label %if.end19

do.body11:                                        ; preds = %if.end8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_bridge_8021d_vxlan_join.__msg.87) #12
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body11.err_vni_exists_crit_edge, label %if.then14

do.body11.err_vni_exists_crit_edge:               ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vni_exists

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlxsw_sp_bridge_8021d_vxlan_join.__msg.87, ptr %extack, align 4
  br label %err_vni_exists

if.end19:                                         ; preds = %if.end8
  %call20 = call i32 @mlxsw_sp_nve_fid_enable(ptr noundef %call, ptr noundef %call5, ptr noundef nonnull %params, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end19.err_vni_exists_crit_edge

if.end19.err_vni_exists_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vni_exists

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_vni_exists:                                   ; preds = %if.end19.err_vni_exists_crit_edge, %if.then14, %do.body11.err_vni_exists_crit_edge
  %err.0 = phi i32 [ %call20, %if.end19.err_vni_exists_crit_edge ], [ -22, %if.then14 ], [ -22, %do.body11.err_vni_exists_crit_edge ]
  call void @mlxsw_sp_fid_put(ptr noundef %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %err_vni_exists, %if.end19.cleanup_crit_edge, %if.then7, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_vni_exists ], [ -22, %if.then7 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_bridge_8021d_fid_get(ptr nocapture noundef readonly %bridge_device, i16 noundef zeroext %vid, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_device, align 4
  %call = tail call ptr @mlxsw_sp_lower_get(ptr noundef %1) #12
  %2 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_device, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %call2 = tail call ptr @mlxsw_sp_fid_8021d_get(ptr noundef %call, i32 noundef %5) #12
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_bridge_8021d_fid_lookup(ptr nocapture noundef readonly %bridge_device, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_device, align 4
  %call = tail call ptr @mlxsw_sp_lower_get(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool.not = icmp eq i16 %vid, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %bridge_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_device, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %call2 = tail call ptr @mlxsw_sp_fid_8021d_lookup(ptr noundef %call, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mlxsw_sp_bridge_8021d_fid_vid(ptr nocapture noundef readnone %bridge_device, ptr nocapture noundef readnone %fid) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_vlan_bridge_join(ptr noundef %mlxsw_sp_port_vlan, ptr noundef %bridge_port, ptr noundef %extack) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp_port1 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 1
  %0 = ptrtoint ptr %mlxsw_sp_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp_port1, align 4
  %vid2 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 3
  %2 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid2, align 4
  %bridge_port3 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 4
  %4 = ptrtoint ptr %bridge_port3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge_port3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_port2.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %local_port2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %local_port2.i, align 4
  %bridge_device4.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 1
  %8 = ptrtoint ptr %bridge_device4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge_device4.i, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %fid_get.i = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %fid_get.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fid_get.i, align 4
  %call.i = tail call ptr %13(ptr noundef %9, i16 noundef zeroext %3, ptr noundef %extack) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlxsw_sp_port_vlan_fid_join.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 6
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %call7.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %call.i, i32 noundef 0, i16 noundef zeroext %7, i1 noundef zeroext %tobool.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.mlxsw_sp_port_vlan_fid_join.exit.thread61_crit_edge

if.end.i.mlxsw_sp_port_vlan_fid_join.exit.thread61_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlan_fid_join.exit.thread61

if.end10.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %bridge_device4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bridge_device4.i, align 4
  %multicast_enabled.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %multicast_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %multicast_enabled.i.i, align 4
  %19 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %mrouter.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 7
  %20 = ptrtoint ptr %mrouter.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mrouter.i.i, align 4, !range !294
  %22 = zext i8 %21 to i32
  br label %mlxsw_sp_mc_flood.exit.i

cond.false.i.i:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %24, 2048
  br label %mlxsw_sp_mc_flood.exit.i

mlxsw_sp_mc_flood.exit.i:                         ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %22, %cond.true.i.i ], [ %and.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool4.i.i = icmp ne i32 %cond.i.i, 0
  %call12.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %call.i, i32 noundef 2, i16 noundef zeroext %7, i1 noundef zeroext %tobool4.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %mlxsw_sp_mc_flood.exit.i.err_fid_mc_flood_set.i_crit_edge

mlxsw_sp_mc_flood.exit.i.err_fid_mc_flood_set.i_crit_edge: ; preds = %mlxsw_sp_mc_flood.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fid_mc_flood_set.i

if.end15.i:                                       ; preds = %mlxsw_sp_mc_flood.exit.i
  %call16.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %call.i, i32 noundef 1, i16 noundef zeroext %7, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.err_fid_bc_flood_set.i_crit_edge

if.end15.i.err_fid_bc_flood_set.i_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fid_bc_flood_set.i

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = tail call i32 @mlxsw_sp_fid_port_vid_map(ptr noundef %call.i, ptr noundef %1, i16 noundef zeroext %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %mlxsw_sp_port_vlan_fid_join.exit.thread, label %err_fid_port_vid_map.i

mlxsw_sp_port_vlan_fid_join.exit.thread:          ; preds = %if.end19.i
  %fid24.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 2
  %25 = ptrtoint ptr %fid24.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %fid24.i, align 4
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7 = icmp ne i32 %and, 0
  %call8 = tail call i32 @mlxsw_sp_port_vid_learning_set(ptr noundef %1, i16 noundef zeroext %3, i1 noundef zeroext %tobool7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %mlxsw_sp_port_vlan_fid_join.exit.thread.err_port_vid_learning_set_crit_edge

mlxsw_sp_port_vlan_fid_join.exit.thread.err_port_vid_learning_set_crit_edge: ; preds = %mlxsw_sp_port_vlan_fid_join.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_port_vid_learning_set

err_fid_port_vid_map.i:                           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %call25.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %call.i, i32 noundef 1, i16 noundef zeroext %7, i1 noundef zeroext false) #12
  br label %err_fid_bc_flood_set.i

err_fid_bc_flood_set.i:                           ; preds = %err_fid_port_vid_map.i, %if.end15.i.err_fid_bc_flood_set.i_crit_edge
  %err.0.i = phi i32 [ %call16.i, %if.end15.i.err_fid_bc_flood_set.i_crit_edge ], [ %call20.i, %err_fid_port_vid_map.i ]
  %call26.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %call.i, i32 noundef 2, i16 noundef zeroext %7, i1 noundef zeroext false) #12
  br label %err_fid_mc_flood_set.i

err_fid_mc_flood_set.i:                           ; preds = %err_fid_bc_flood_set.i, %mlxsw_sp_mc_flood.exit.i.err_fid_mc_flood_set.i_crit_edge
  %err.1.i = phi i32 [ %call12.i, %mlxsw_sp_mc_flood.exit.i.err_fid_mc_flood_set.i_crit_edge ], [ %err.0.i, %err_fid_bc_flood_set.i ]
  %call27.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %call.i, i32 noundef 0, i16 noundef zeroext %7, i1 noundef zeroext false) #12
  br label %mlxsw_sp_port_vlan_fid_join.exit.thread61

mlxsw_sp_port_vlan_fid_join.exit.thread61:        ; preds = %err_fid_mc_flood_set.i, %if.end.i.mlxsw_sp_port_vlan_fid_join.exit.thread61_crit_edge
  %err.2.i = phi i32 [ %call7.i, %if.end.i.mlxsw_sp_port_vlan_fid_join.exit.thread61_crit_edge ], [ %err.1.i, %err_fid_mc_flood_set.i ]
  tail call void @mlxsw_sp_fid_put(ptr noundef %call.i) #12
  br label %cleanup

mlxsw_sp_port_vlan_fid_join.exit:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end11:                                         ; preds = %mlxsw_sp_port_vlan_fid_join.exit.thread
  %stp_state = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 5
  %29 = ptrtoint ptr %stp_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stp_state, align 4
  %call12 = tail call i32 @mlxsw_sp_port_vid_stp_set(ptr noundef %1, i16 noundef zeroext %3, i8 noundef zeroext %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_port_vid_stp_set_crit_edge

if.end11.err_port_vid_stp_set_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_port_vid_stp_set

if.end15:                                         ; preds = %if.end11
  %vlans_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %bridge_port, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end15
  %bridge_vlan.0.in.i.i = phi ptr [ %vlans_list.i.i, %if.end15 ], [ %bridge_vlan.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %31 = ptrtoint ptr %bridge_vlan.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bridge_vlan.0.i.i = load ptr, ptr %bridge_vlan.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %bridge_vlan.0.i.i, %vlans_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i53_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i53_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i53

for.body.i.i:                                     ; preds = %for.cond.i.i
  %vid2.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %bridge_vlan.0.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %vid2.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vid2.i.i, align 4
  %cmp4.i.i = icmp eq i16 %33, %3
  br i1 %cmp4.i.i, label %mlxsw_sp_bridge_vlan_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

mlxsw_sp_bridge_vlan_find.exit.i:                 ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %bridge_vlan.0.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_bridge_vlan_find.exit.i.if.end.i53_crit_edge, label %mlxsw_sp_bridge_vlan_find.exit.i.if.end19_crit_edge

mlxsw_sp_bridge_vlan_find.exit.i.if.end19_crit_edge: ; preds = %mlxsw_sp_bridge_vlan_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

mlxsw_sp_bridge_vlan_find.exit.i.if.end.i53_crit_edge: ; preds = %mlxsw_sp_bridge_vlan_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i53

if.end.i53:                                       ; preds = %mlxsw_sp_bridge_vlan_find.exit.i.if.end.i53_crit_edge, %for.cond.i.i.if.end.i53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not.i.i52 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i52, label %if.then18, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i53
  %port_vlan_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %call7.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %port_vlan_list.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %port_vlan_list.i.i, ptr %port_vlan_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %port_vlan_list.i.i, ptr %prev.i.i.i, align 4
  %vid1.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %call7.i.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %vid1.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %3, ptr %vid1.i.i, align 8
  %38 = ptrtoint ptr %vlans_list.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vlans_list.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %vlans_list.i.i, ptr noundef %39) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.end19_crit_edge

if.end.i.i.if.end19_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %vlans_list.i.i, ptr %prev3.i.i.i.i, align 4
  %43 = ptrtoint ptr %vlans_list.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %call7.i.i.i.i, ptr %vlans_list.i.i, align 4
  br label %if.end19

if.then18:                                        ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 @mlxsw_sp_port_vid_stp_set(ptr noundef %1, i16 noundef zeroext %3, i8 noundef zeroext 0) #12
  br label %err_port_vid_stp_set

if.end19:                                         ; preds = %if.end.i.i.i.i, %if.end.i.i.if.end19_crit_edge, %mlxsw_sp_bridge_vlan_find.exit.i.if.end19_crit_edge
  %retval.0.i54.ph = phi ptr [ %call7.i.i.i.i, %if.end.i.i.i.i ], [ %call7.i.i.i.i, %if.end.i.i.if.end19_crit_edge ], [ %bridge_vlan.0.i.i, %mlxsw_sp_bridge_vlan_find.exit.i.if.end19_crit_edge ]
  %bridge_vlan_node = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 5
  %port_vlan_list = getelementptr inbounds %struct.mlxsw_sp_bridge_vlan, ptr %retval.0.i54.ph, i32 0, i32 1
  %44 = ptrtoint ptr %port_vlan_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port_vlan_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bridge_vlan_node, ptr noundef %port_vlan_list, ptr noundef %45) #12
  br i1 %call.i.i, label %if.end.i.i55, label %if.end19.list_add.exit_crit_edge

if.end19.list_add.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i55:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %bridge_vlan_node, ptr %prev1.i.i, align 4
  %47 = ptrtoint ptr %bridge_vlan_node to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %bridge_vlan_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %port_vlan_list, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %port_vlan_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %bridge_vlan_node, ptr %port_vlan_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i55, %if.end19.list_add.exit_crit_edge
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mlxsw_sp, align 8
  %bridge = getelementptr inbounds %struct.mlxsw_sp, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bridge, align 4
  %54 = ptrtoint ptr %bridge_port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bridge_port, align 4
  %call20 = tail call fastcc ptr @mlxsw_sp_bridge_port_get(ptr noundef %53, ptr noundef %55, ptr noundef %extack)
  %56 = ptrtoint ptr %bridge_port3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %bridge_port, ptr %bridge_port3, align 4
  br label %cleanup

err_port_vid_stp_set:                             ; preds = %if.then18, %if.end11.err_port_vid_stp_set_crit_edge
  %err.0 = phi i32 [ %call12, %if.end11.err_port_vid_stp_set_crit_edge ], [ -12, %if.then18 ]
  %call23 = tail call i32 @mlxsw_sp_port_vid_learning_set(ptr noundef %1, i16 noundef zeroext %3, i1 noundef zeroext false) #12
  br label %err_port_vid_learning_set

err_port_vid_learning_set:                        ; preds = %err_port_vid_stp_set, %mlxsw_sp_port_vlan_fid_join.exit.thread.err_port_vid_learning_set_crit_edge
  %err.1 = phi i32 [ %call8, %mlxsw_sp_port_vlan_fid_join.exit.thread.err_port_vid_learning_set_crit_edge ], [ %err.0, %err_port_vid_stp_set ]
  %57 = ptrtoint ptr %mlxsw_sp_port1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mlxsw_sp_port1, align 4
  %59 = ptrtoint ptr %fid24.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fid24.i, align 4
  %local_port3.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %58, i32 0, i32 3
  %61 = ptrtoint ptr %local_port3.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %local_port3.i, align 4
  %63 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vid2, align 4
  store ptr null, ptr %fid24.i, align 4
  tail call void @mlxsw_sp_fid_port_vid_unmap(ptr noundef %60, ptr noundef %58, i16 noundef zeroext %64) #12
  %call.i57 = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %60, i32 noundef 1, i16 noundef zeroext %62, i1 noundef zeroext false) #12
  %call6.i = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %60, i32 noundef 2, i16 noundef zeroext %62, i1 noundef zeroext false) #12
  %call7.i58 = tail call i32 @mlxsw_sp_fid_flood_set(ptr noundef %60, i32 noundef 0, i16 noundef zeroext %62, i1 noundef zeroext false) #12
  tail call void @mlxsw_sp_fid_put(ptr noundef %60) #12
  br label %cleanup

cleanup:                                          ; preds = %err_port_vid_learning_set, %list_add.exit, %mlxsw_sp_port_vlan_fid_join.exit, %mlxsw_sp_port_vlan_fid_join.exit.thread61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_port_vid_learning_set ], [ 0, %list_add.exit ], [ 0, %entry.cleanup_crit_edge ], [ %28, %mlxsw_sp_port_vlan_fid_join.exit ], [ %err.2.i, %mlxsw_sp_port_vlan_fid_join.exit.thread61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_port_vid_map(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_fid_8021d_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_fid_8021d_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fdb_notify_work(ptr nocapture noundef readonly %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1040) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  tail call void @rtnl_lock() #12
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %arrayidx.i.i24.i = getelementptr i32, ptr %call7.i, i32 1
  %arrayidx.i.i47.i = getelementptr i32, ptr %call7.i, i32 1
  %arrayidx.i.i = getelementptr i32, ptr %call7.i, i32 1
  %arrayidx.i.i.i54.peel = getelementptr i32, ptr %call7.i, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %if.end
  %queries.094 = phi i32 [ 10, %if.end ], [ %dec, %if.end21.while.body_crit_edge ]
  %3 = call ptr @memset(ptr %call7.i, i32 0, i32 1040)
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7.i, align 8
  %and7.i.i.i = and i32 %5, 16777215
  store i32 %and7.i.i.i, ptr %call7.i, align 8
  %6 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i24.i, align 4
  %and7.i.i49.i = and i32 %7, -1048832
  %or.i.i.i = or i32 %and7.i.i49.i, 64
  %8 = ptrtoint ptr %arrayidx.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i.i, ptr %arrayidx.i.i47.i, align 4
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %call2 = tail call i32 @mlxsw_reg_query(ptr noundef %10, ptr noundef nonnull @mlxsw_reg_sfn, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %mlxsw_reg_sfn_num_rec_get.exit, label %do.body

do.body:                                          ; preds = %while.body
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_fdb_notify_work._rs, ptr noundef nonnull @__func__.mlxsw_sp_fdb_notify_work) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.105) #16
  br label %out

mlxsw_reg_sfn_num_rec_get.exit:                   ; preds = %while.body
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %and4.i.i = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp1587.not = icmp eq i32 %and4.i.i, 0
  br i1 %cmp1587.not, label %mlxsw_reg_sfn_num_rec_get.exit.out_crit_edge, label %mlxsw_reg_sfn_rec_type_get.exit.i.peel

mlxsw_reg_sfn_num_rec_get.exit.out_crit_edge:     ; preds = %mlxsw_reg_sfn_num_rec_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

mlxsw_reg_sfn_rec_type_get.exit.i.peel:           ; preds = %mlxsw_reg_sfn_num_rec_get.exit
  %17 = ptrtoint ptr %arrayidx.i.i.i54.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i54.peel, align 8
  %shr.i.i.i56.peel = lshr i32 %18, 20
  %and4.i.i.i.peel = and i32 %shr.i.i.i56.peel, 15
  %19 = zext i32 %and4.i.i.i.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %and4.i.i.i.peel, label %mlxsw_reg_sfn_rec_type_get.exit.i.peel.mlxsw_sp_fdb_notify_rec_process.exit.peel_crit_edge [
    i32 5, label %sw.bb.i.peel
    i32 7, label %sw.bb1.i.peel
    i32 6, label %sw.bb2.i.peel
    i32 8, label %sw.bb3.i.peel
    i32 13, label %sw.bb4.i.peel
    i32 14, label %sw.bb5.i.peel
  ]

mlxsw_reg_sfn_rec_type_get.exit.i.peel.mlxsw_sp_fdb_notify_rec_process.exit.peel_crit_edge: ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_fdb_notify_rec_process.exit.peel

sw.bb5.i.peel:                                    ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_uc_tunnel_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef 0, i1 noundef zeroext false) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit.peel

sw.bb4.i.peel:                                    ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_uc_tunnel_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef 0, i1 noundef zeroext true) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit.peel

sw.bb3.i.peel:                                    ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_lag_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef 0, i1 noundef zeroext false) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit.peel

sw.bb2.i.peel:                                    ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_lag_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef 0, i1 noundef zeroext true) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit.peel

sw.bb1.i.peel:                                    ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef 0, i1 noundef zeroext false) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit.peel

sw.bb.i.peel:                                     ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef 0, i1 noundef zeroext true) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit.peel

mlxsw_sp_fdb_notify_rec_process.exit.peel:        ; preds = %sw.bb.i.peel, %sw.bb1.i.peel, %sw.bb2.i.peel, %sw.bb3.i.peel, %sw.bb4.i.peel, %sw.bb5.i.peel, %mlxsw_reg_sfn_rec_type_get.exit.i.peel.mlxsw_sp_fdb_notify_rec_process.exit.peel_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4.i.i)
  %exitcond.peel.not = icmp eq i32 %and4.i.i, 1
  br i1 %exitcond.peel.not, label %mlxsw_sp_fdb_notify_rec_process.exit.peel.out_crit_edge, label %mlxsw_sp_fdb_notify_rec_process.exit.peel.mlxsw_reg_sfn_rec_type_get.exit.i_crit_edge

mlxsw_sp_fdb_notify_rec_process.exit.peel.mlxsw_reg_sfn_rec_type_get.exit.i_crit_edge: ; preds = %mlxsw_sp_fdb_notify_rec_process.exit.peel
  br label %mlxsw_reg_sfn_rec_type_get.exit.i

mlxsw_sp_fdb_notify_rec_process.exit.peel.out_crit_edge: ; preds = %mlxsw_sp_fdb_notify_rec_process.exit.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

mlxsw_reg_sfn_rec_type_get.exit.i:                ; preds = %mlxsw_sp_fdb_notify_rec_process.exit.mlxsw_reg_sfn_rec_type_get.exit.i_crit_edge, %mlxsw_sp_fdb_notify_rec_process.exit.peel.mlxsw_reg_sfn_rec_type_get.exit.i_crit_edge
  %i.088 = phi i32 [ %inc, %mlxsw_sp_fdb_notify_rec_process.exit.mlxsw_reg_sfn_rec_type_get.exit.i_crit_edge ], [ 1, %mlxsw_sp_fdb_notify_rec_process.exit.peel.mlxsw_reg_sfn_rec_type_get.exit.i_crit_edge ]
  %mul.i.i.i.i = shl nsw i32 %i.088, 4
  %add.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 16
  %div.i16.i.i.i = lshr exact i32 %add.i.i.i.i, 2
  %arrayidx.i.i.i54 = getelementptr i32, ptr %call7.i, i32 %div.i16.i.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i54, align 8
  %shr.i.i.i56 = lshr i32 %21, 20
  %and4.i.i.i = and i32 %shr.i.i.i56, 15
  %22 = zext i32 %and4.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %and4.i.i.i, label %mlxsw_reg_sfn_rec_type_get.exit.i.mlxsw_sp_fdb_notify_rec_process.exit_crit_edge [
    i32 5, label %sw.bb.i
    i32 7, label %sw.bb1.i
    i32 6, label %sw.bb2.i
    i32 8, label %sw.bb3.i
    i32 13, label %sw.bb4.i
    i32 14, label %sw.bb5.i
  ]

mlxsw_reg_sfn_rec_type_get.exit.i.mlxsw_sp_fdb_notify_rec_process.exit_crit_edge: ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_fdb_notify_rec_process.exit

sw.bb.i:                                          ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef %i.088, i1 noundef zeroext true) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit

sw.bb1.i:                                         ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef %i.088, i1 noundef zeroext false) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit

sw.bb2.i:                                         ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_lag_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef %i.088, i1 noundef zeroext true) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit

sw.bb3.i:                                         ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_lag_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef %i.088, i1 noundef zeroext false) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit

sw.bb4.i:                                         ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_uc_tunnel_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef %i.088, i1 noundef zeroext true) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit

sw.bb5.i:                                         ; preds = %mlxsw_reg_sfn_rec_type_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlxsw_sp_fdb_notify_mac_uc_tunnel_process(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef %i.088, i1 noundef zeroext false) #12
  br label %mlxsw_sp_fdb_notify_rec_process.exit

mlxsw_sp_fdb_notify_rec_process.exit:             ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %mlxsw_reg_sfn_rec_type_get.exit.i.mlxsw_sp_fdb_notify_rec_process.exit_crit_edge
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, %and4.i.i
  br i1 %exitcond.not, label %for.end, label %mlxsw_sp_fdb_notify_rec_process.exit.mlxsw_reg_sfn_rec_type_get.exit.i_crit_edge, !llvm.loop !300

mlxsw_sp_fdb_notify_rec_process.exit.mlxsw_reg_sfn_rec_type_get.exit.i_crit_edge: ; preds = %mlxsw_sp_fdb_notify_rec_process.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_reg_sfn_rec_type_get.exit.i

for.end:                                          ; preds = %mlxsw_sp_fdb_notify_rec_process.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and4.i.i)
  %cmp18.not = icmp eq i32 %and4.i.i, 64
  br i1 %cmp18.not, label %if.end21, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end21:                                         ; preds = %for.end
  %dec = add nsw i32 %queries.094, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end21.out_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end21.out_crit_edge, %for.end.out_crit_edge, %mlxsw_sp_fdb_notify_rec_process.exit.peel.out_crit_edge, %mlxsw_reg_sfn_num_rec_get.exit.out_crit_edge, %do.end, %do.body.out_crit_edge
  %queries.069 = phi i32 [ %queries.094, %do.body.out_crit_edge ], [ %queries.094, %do.end ], [ %queries.094, %mlxsw_reg_sfn_num_rec_get.exit.out_crit_edge ], [ %queries.094, %mlxsw_sp_fdb_notify_rec_process.exit.peel.out_crit_edge ], [ %queries.094, %for.end.out_crit_edge ], [ 0, %if.end21.out_crit_edge ]
  tail call void @rtnl_unlock() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queries.069)
  %tobool22.not = icmp eq i32 %queries.069, 0
  %bridge1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 9
  %23 = ptrtoint ptr %bridge1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge1.i, align 4
  br i1 %tobool22.not, label %out.if.else.i.i_crit_edge, label %cond.false.i

out.if.else.i.i_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

cond.false.i:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %interval2.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %interval2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interval2.i, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %cond.false.i, %out.if.else.i.i_crit_edge
  %cond.i = phi i32 [ %26, %cond.false.i ], [ 0, %out.if.else.i.i_crit_edge ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond.i) #12
  %fdb_notify3.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %24, i32 0, i32 1
  %call4.i = tail call i32 @mlxsw_core_schedule_dw(ptr noundef %fdb_notify3.i, i32 noundef %call2.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_switchdev_blocking_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  %vinfo.i.i.i.i.i = alloca %struct.bridge_vlan_info, align 2
  %vid.i.i.i.i.i = alloca i16, align 2
  %iter.i.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb5
    i32 9, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 136
  %3 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %sw.bb.if.else_crit_edge, label %netif_is_vxlan.exit

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

netif_is_vxlan.exit:                              ; preds = %sw.bb
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then, label %netif_is_vxlan.exit.if.else_crit_edge

netif_is_vxlan.exit.if.else_crit_edge:            ; preds = %netif_is_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %netif_is_vxlan.exit
  %obj.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %7 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %obj.i, align 4
  %id.i = getelementptr inbounds %struct.switchdev_obj, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cond.i = icmp eq i32 %10, 1
  br i1 %cond.i, label %sw.bb.i, label %if.then.if.end.thread_crit_edge

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

sw.bb.i:                                          ; preds = %if.then
  %flags.i.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %and.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %extack.i.i.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %ptr, i32 0, i32 1
  %13 = ptrtoint ptr %extack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extack.i.i.i, align 4
  %call6.i.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %1) #12
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %sw.bb.i.if.end.thread_crit_edge, label %if.end.i.i

sw.bb.i.if.end.thread_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

if.end.i.i:                                       ; preds = %sw.bb.i
  %call8.i.i = tail call ptr @mlxsw_sp_lower_get(ptr noundef nonnull %call6.i.i) #12
  %tobool9.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end.thread_crit_edge, label %if.end11.i.i

if.end.i.i.if.end.thread_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

if.end11.i.i:                                     ; preds = %if.end.i.i
  %handled.i.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %15 = ptrtoint ptr %handled.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %handled.i.i, align 4
  %bridge.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %call8.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bridge.i.i, align 4
  %bridges_list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %17, i32 0, i32 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end11.i.i
  %.pn.in.i.i.i = phi ptr [ %bridges_list.i.i.i, %if.end11.i.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %bridges_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.cleanup_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.cleanup_crit_edge:                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %bridge_device.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %19 = ptrtoint ptr %bridge_device.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bridge_device.0.i.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %20, %call6.i.i
  br i1 %cmp2.i.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

mlxsw_sp_bridge_device_find.exit.i.i:             ; preds = %for.body.i.i.i
  %bridge_device.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %tobool13.not.i.i = icmp eq ptr %bridge_device.0.i.i.i.le, null
  br i1 %tobool13.not.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i.cleanup_crit_edge, label %if.end15.i.i

mlxsw_sp_bridge_device_find.exit.i.i.cleanup_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.i.i:                                     ; preds = %mlxsw_sp_bridge_device_find.exit.i.i
  %vlan_enabled.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 24
  %21 = ptrtoint ptr %vlan_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i = load i8, ptr %vlan_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool16.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end.thread_crit_edge, label %if.end18.i.i

if.end15.i.i.if.end.thread_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

if.end18.i.i:                                     ; preds = %if.end15.i.i
  %vid.i.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %8, i32 0, i32 2
  %22 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vid.i.i, align 2
  %vni2.i.i.i = getelementptr i8, ptr %1, i32 13796
  %24 = ptrtoint ptr %vni2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vni2.i.i.i, align 4
  %26 = and i32 %conv.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %land.lhs.true4.i.i.i, label %if.end18.i.i.if.end9.i.i.i_crit_edge

if.end18.i.i.if.end9.i.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %if.end18.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i.i.i.i) #12
  %lower.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i.i, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %lower.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lower.i.i.i.i, align 8
  %30 = ptrtoint ptr %iter.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %iter.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @netdev_lower_get_next(ptr noundef nonnull %call6.i.i, ptr noundef nonnull %iter.i.i.i.i) #12
  %tobool.not30.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not30.i.i.i.i, label %land.lhs.true4.i.i.i.mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

land.lhs.true4.i.i.i.mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %land.lhs.true4.i.i.i
  %31 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.i.i.i.i.i, i32 0, i32 1
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %dev.034.i.i.i.i = phi ptr [ %call.i.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %call9.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %rtnl_link_ops.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.034.i.i.i.i, i32 0, i32 136
  %32 = ptrtoint ptr %rtnl_link_ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtnl_link_ops.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %netif_is_vxlan.exit.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

netif_is_vxlan.exit.i.i.i.i:                      ; preds = %for.body.i.i.i.i
  %kind.i.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %kind.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %kind.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i, label %netif_is_vxlan.exit.i.i.i.i.for.inc.i.i.i.i_crit_edge

netif_is_vxlan.exit.i.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %netif_is_vxlan.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %netif_is_vxlan.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo.i.i.i.i.i) #12
  %36 = ptrtoint ptr %vinfo.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %vinfo.i.i.i.i.i, align 2, !annotation !295
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %31, align 2, !annotation !295
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid.i.i.i.i.i) #12
  %38 = ptrtoint ptr %vid.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %vid.i.i.i.i.i, align 2
  %call.i18.i.i.i.i = call i32 @br_vlan_get_pvid(ptr noundef nonnull %dev.034.i.i.i.i, ptr noundef nonnull %vid.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i.i.i)
  %tobool.not.i19.i.i.i.i = icmp eq i32 %call.i18.i.i.i.i, 0
  br i1 %tobool.not.i19.i.i.i.i, label %lor.lhs.false.i.i.i.i.i, label %mlxsw_sp_vxlan_mapped_vid.exit.thread22.i.i.i.i

mlxsw_sp_vxlan_mapped_vid.exit.thread22.i.i.i.i:  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i.i.i.i.i) #12
  br label %for.inc.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %39 = ptrtoint ptr %vid.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool1.not.i.i.i.i.i = icmp eq i16 %40, 0
  br i1 %tobool1.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i.i
  %call2.i.i.i.i.i = call i32 @br_vlan_get_info(ptr noundef nonnull %dev.034.i.i.i.i, i16 noundef zeroext %40, ptr noundef nonnull %vinfo.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %lor.lhs.false4.i.i.i.i.i, label %mlxsw_sp_vxlan_mapped_vid.exit.i.i.i.i

lor.lhs.false4.i.i.i.i.i:                         ; preds = %if.end.i.i.i.i.i
  %41 = ptrtoint ptr %vinfo.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vinfo.i.i.i.i.i, align 2
  %43 = and i16 %42, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool5.not.i.i.i.i.i = icmp eq i16 %43, 0
  br i1 %tobool5.not.i.i.i.i.i, label %mlxsw_sp_vxlan_mapped_vid.exit.thread25.i.i.i.i, label %lor.lhs.false4.i.i.i.i.i.mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i_crit_edge

lor.lhs.false4.i.i.i.i.i.mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i_crit_edge: ; preds = %lor.lhs.false4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i

mlxsw_sp_vxlan_mapped_vid.exit.thread25.i.i.i.i:  ; preds = %lor.lhs.false4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i.i.i.i.i) #12
  br label %cleanup.i.i.i.i

mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i:    ; preds = %lor.lhs.false4.i.i.i.i.i.mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i_crit_edge
  %44 = ptrtoint ptr %vid.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vid.i.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i.i.i.i.i) #12
  br label %cleanup.i.i.i.i

mlxsw_sp_vxlan_mapped_vid.exit.i.i.i.i:           ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i.i.i.i.i) #12
  br label %for.inc.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i, %mlxsw_sp_vxlan_mapped_vid.exit.thread25.i.i.i.i
  %46 = phi i16 [ %45, %mlxsw_sp_vxlan_mapped_vid.exit.thread.i.i.i.i ], [ 0, %mlxsw_sp_vxlan_mapped_vid.exit.thread25.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %23)
  %cmp.not.i.i.i.i = icmp eq i16 %46, %23
  br i1 %cmp.not.i.i.i.i, label %do.body.i.i.i, label %cleanup.i.i.i.i.for.inc.i.i.i.i_crit_edge

cleanup.i.i.i.i.for.inc.i.i.i.i_crit_edge:        ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %cleanup.i.i.i.i.for.inc.i.i.i.i_crit_edge, %mlxsw_sp_vxlan_mapped_vid.exit.i.i.i.i, %mlxsw_sp_vxlan_mapped_vid.exit.thread22.i.i.i.i, %netif_is_vxlan.exit.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %call9.i.i.i.i = call ptr @netdev_lower_get_next(ptr noundef nonnull %call6.i.i, ptr noundef nonnull %iter.i.i.i.i) #12
  %tobool.not.i.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i.mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i

mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i: ; preds = %for.inc.i.i.i.i.mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i_crit_edge, %land.lhs.true4.i.i.i.mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i.i.i) #12
  br label %if.end9.i.i.i

do.body.i.i.i:                                    ; preds = %cleanup.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i.i.i) #12
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_switchdev_vxlan_vlan_add.__msg) #12
  %tobool7.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i.i.i, label %do.body.i.i.i.cleanup_crit_edge, label %if.then8.i.i.i

do.body.i.i.i.cleanup_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mlxsw_sp_switchdev_vxlan_vlan_add.__msg, ptr %14, align 4
  br label %cleanup

if.end9.i.i.i:                                    ; preds = %mlxsw_sp_bridge_8021q_vxlan_dev_find.exit.thread.i.i.i, %if.end18.i.i.if.end9.i.i.i_crit_edge
  %state.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end9.i.i.i.if.end.thread_crit_edge, label %if.end12.i.i.i

if.end9.i.i.i.if.end.thread_crit_edge:            ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

if.end12.i.i.i:                                   ; preds = %if.end9.i.i.i
  %call13.i.i.i = call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef nonnull %call8.i.i, i32 noundef %25) #12
  %tobool14.not.i.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %if.end21.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end12.i.i.i
  br i1 %27, label %if.end19.i.i.i, label %if.then15.i.i.i.if.end.thread_crit_edge

if.then15.i.i.i.if.end.thread_crit_edge:          ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

if.end19.i.i.i:                                   ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 28
  %50 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i.i.i, align 4
  %vxlan_join.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %vxlan_join.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vxlan_join.i.i.i, align 4
  %call20.i.i.i = call i32 %53(ptr noundef nonnull %bridge_device.0.i.i.i.le, ptr noundef %1, i16 noundef zeroext %23, ptr noundef %14) #12
  br label %if.end

if.end21.i.i.i:                                   ; preds = %if.end12.i.i.i
  %call22.i.i.i = call zeroext i16 @mlxsw_sp_fid_8021q_vid(ptr noundef nonnull %call13.i.i.i) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %call22.i.i.i, i16 %23)
  %cmp.i.i.i = icmp eq i16 %call22.i.i.i, %23
  br i1 %cmp.i.i.i, label %if.then25.i.i.i, label %if.end57.i.i.i

if.then25.i.i.i:                                  ; preds = %if.end21.i.i.i
  br i1 %27, label %do.end41.i.i.i, label %if.end56.i.i.i, !prof !296

do.end41.i.i.i:                                   ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3431, i32 noundef 9, ptr noundef null) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call13.i.i.i) #12
  br label %cleanup

if.end56.i.i.i:                                   ; preds = %if.then25.i.i.i
  %54 = ptrtoint ptr %vni2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vni2.i.i.i, align 4
  %call1.i.i.i.i = call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef nonnull %call8.i.i, i32 noundef %55) #12
  %tobool.not.i114.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i114.i.i.i, label %if.end56.i.i.i.if.end.thread.sink.split_crit_edge, label %if.end.i115.i.i.i

if.end56.i.i.i.if.end.thread.sink.split_crit_edge: ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread.sink.split

if.end.i115.i.i.i:                                ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlxsw_sp_nve_fid_disable(ptr noundef nonnull %call8.i.i, ptr noundef nonnull %call1.i.i.i.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i.i.i.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i.i.i.i) #12
  br label %if.end.thread.sink.split

if.end57.i.i.i:                                   ; preds = %if.end21.i.i.i
  br i1 %tobool4.not.i.i, label %if.end57.i.i.i.if.end.thread.sink.split_crit_edge, label %if.end60.i.i.i

if.end57.i.i.i.if.end.thread.sink.split_crit_edge: ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread.sink.split

if.end60.i.i.i:                                   ; preds = %if.end57.i.i.i
  %56 = ptrtoint ptr %vni2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vni2.i.i.i, align 4
  %call1.i118.i.i.i = call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef nonnull %call8.i.i, i32 noundef %57) #12
  %tobool.not.i119.i.i.i = icmp eq ptr %call1.i118.i.i.i, null
  br i1 %tobool.not.i119.i.i.i, label %if.end60.i.i.i.mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i_crit_edge, label %if.end.i120.i.i.i

if.end60.i.i.i.mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i_crit_edge: ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i

if.end.i120.i.i.i:                                ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlxsw_sp_nve_fid_disable(ptr noundef nonnull %call8.i.i, ptr noundef nonnull %call1.i118.i.i.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i118.i.i.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i118.i.i.i) #12
  br label %mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i

mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i:        ; preds = %if.end.i120.i.i.i, %if.end60.i.i.i.mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i_crit_edge
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call13.i.i.i) #12
  br i1 %tobool.not.i.i, label %mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i.if.end.thread_crit_edge, label %if.end63.i.i.i

mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i.if.end.thread_crit_edge: ; preds = %mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

if.end63.i.i.i:                                   ; preds = %mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i
  %ops64.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 28
  %58 = ptrtoint ptr %ops64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops64.i.i.i, align 4
  %vxlan_join65.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %vxlan_join65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vxlan_join65.i.i.i, align 4
  %call66.i.i.i = call i32 %61(ptr noundef nonnull %bridge_device.0.i.i.i.le, ptr noundef %1, i16 noundef zeroext %23, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i.i)
  %tobool67.not.i.i.i = icmp eq i32 %call66.i.i.i, 0
  br i1 %tobool67.not.i.i.i, label %if.end63.i.i.i.if.end.thread_crit_edge, label %err_vxlan_join.i.i.i

if.end63.i.i.i.if.end.thread_crit_edge:           ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

err_vxlan_join.i.i.i:                             ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %ops64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops64.i.i.i, align 4
  %vxlan_join71.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %vxlan_join71.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vxlan_join71.i.i.i, align 4
  %call72.i.i.i = call i32 %65(ptr noundef nonnull %bridge_device.0.i.i.i.le, ptr noundef %1, i16 noundef zeroext %call22.i.i.i, ptr noundef null) #12
  %phi.bo = sub i32 1, %call66.i.i.i
  %phi.bo88 = or i32 %phi.bo, 32768
  br label %cleanup

if.else:                                          ; preds = %netif_is_vxlan.exit.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %call3 = tail call i32 @switchdev_handle_port_obj_add(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @mlxsw_sp_port_dev_check, ptr noundef nonnull @mlxsw_sp_port_obj_add) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end19.i.i.i
  %err.0 = phi i32 [ %call3, %if.else ], [ %call20.i.i.i, %if.end19.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i29 = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i29, label %if.end.if.end.thread_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

if.end.thread.sink.split:                         ; preds = %if.end57.i.i.i.if.end.thread.sink.split_crit_edge, %if.end.i115.i.i.i, %if.end56.i.i.i.if.end.thread.sink.split_crit_edge
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call13.i.i.i) #12
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.thread.sink.split, %if.end.if.end.thread_crit_edge, %if.end63.i.i.i.if.end.thread_crit_edge, %mlxsw_sp_bridge_vxlan_leave.exit122.i.i.i.if.end.thread_crit_edge, %if.then15.i.i.i.if.end.thread_crit_edge, %if.end9.i.i.i.if.end.thread_crit_edge, %if.end15.i.i.if.end.thread_crit_edge, %if.end.i.i.if.end.thread_crit_edge, %sw.bb.i.if.end.thread_crit_edge, %if.then.if.end.thread_crit_edge
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %rtnl_link_ops.i30 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 136
  %66 = ptrtoint ptr %rtnl_link_ops.i30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rtnl_link_ops.i30, align 4
  %tobool.not.i31 = icmp eq ptr %67, null
  br i1 %tobool.not.i31, label %sw.bb5.if.end10_crit_edge, label %netif_is_vxlan.exit36

sw.bb5.if.end10_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

netif_is_vxlan.exit36:                            ; preds = %sw.bb5
  %kind.i32 = getelementptr inbounds %struct.rtnl_link_ops, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %kind.i32 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %kind.i32, align 4
  %call.i33 = tail call i32 @strcmp(ptr noundef %69, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool2.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool2.not.i34, label %if.then7, label %netif_is_vxlan.exit36.if.end10_crit_edge

netif_is_vxlan.exit36.if.end10_crit_edge:         ; preds = %netif_is_vxlan.exit36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %netif_is_vxlan.exit36
  %obj.i37 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %70 = ptrtoint ptr %obj.i37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %obj.i37, align 4
  %id.i38 = getelementptr inbounds %struct.switchdev_obj, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %id.i38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cond.i39 = icmp eq i32 %73, 1
  br i1 %cond.i39, label %sw.bb.i41, label %if.then7.if.end10.thread_crit_edge

if.then7.if.end10.thread_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

sw.bb.i41:                                        ; preds = %if.then7
  %call.i.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %1) #12
  %tobool.not.i.i40 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i40, label %sw.bb.i41.if.end10.thread_crit_edge, label %if.end.i.i42

sw.bb.i41.if.end10.thread_crit_edge:              ; preds = %sw.bb.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

if.end.i.i42:                                     ; preds = %sw.bb.i41
  %call1.i.i = tail call ptr @mlxsw_sp_lower_get(ptr noundef nonnull %call.i.i) #12
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i42.if.end10.thread_crit_edge, label %if.end4.i.i

if.end.i.i42.if.end10.thread_crit_edge:           ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

if.end4.i.i:                                      ; preds = %if.end.i.i42
  %handled.i.i43 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %74 = ptrtoint ptr %handled.i.i43 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %handled.i.i43, align 4
  %bridge.i.i44 = getelementptr inbounds %struct.mlxsw_sp, ptr %call1.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %bridge.i.i44 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bridge.i.i44, align 4
  %bridges_list.i.i.i45 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %76, i32 0, i32 4
  br label %for.cond.i.i.i49

for.cond.i.i.i49:                                 ; preds = %for.body.i.i.i52.for.cond.i.i.i49_crit_edge, %if.end4.i.i
  %.pn.in.i.i.i46 = phi ptr [ %bridges_list.i.i.i45, %if.end4.i.i ], [ %.pn.i.i.i47, %for.body.i.i.i52.for.cond.i.i.i49_crit_edge ]
  %77 = ptrtoint ptr %.pn.in.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i.i.i47 = load ptr, ptr %.pn.in.i.i.i46, align 4
  %cmp.not.i.i.i48 = icmp eq ptr %.pn.i.i.i47, %bridges_list.i.i.i45
  br i1 %cmp.not.i.i.i48, label %for.cond.i.i.i49.if.end10.thread_crit_edge, label %for.body.i.i.i52

for.cond.i.i.i49.if.end10.thread_crit_edge:       ; preds = %for.cond.i.i.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

for.body.i.i.i52:                                 ; preds = %for.cond.i.i.i49
  %bridge_device.0.i.i.i50 = getelementptr i8, ptr %.pn.i.i.i47, i32 -4
  %78 = ptrtoint ptr %bridge_device.0.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bridge_device.0.i.i.i50, align 4
  %cmp2.i.i.i51 = icmp eq ptr %79, %call.i.i
  br i1 %cmp2.i.i.i51, label %mlxsw_sp_bridge_device_find.exit.i.i54, label %for.body.i.i.i52.for.cond.i.i.i49_crit_edge

for.body.i.i.i52.for.cond.i.i.i49_crit_edge:      ; preds = %for.body.i.i.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i49

mlxsw_sp_bridge_device_find.exit.i.i54:           ; preds = %for.body.i.i.i52
  %bridge_device.0.i.i.i50.le = getelementptr i8, ptr %.pn.i.i.i47, i32 -4
  %tobool6.not.i.i = icmp eq ptr %bridge_device.0.i.i.i50.le, null
  br i1 %tobool6.not.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i54.if.end10.thread_crit_edge, label %if.end8.i.i

mlxsw_sp_bridge_device_find.exit.i.i54.if.end10.thread_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

if.end8.i.i:                                      ; preds = %mlxsw_sp_bridge_device_find.exit.i.i54
  %vlan_enabled.i.i55 = getelementptr i8, ptr %.pn.i.i.i47, i32 24
  %80 = ptrtoint ptr %vlan_enabled.i.i55 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i.i56 = load i8, ptr %vlan_enabled.i.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i56)
  %tobool9.not.i.i57 = icmp sgt i8 %bf.load.i.i56, -1
  br i1 %tobool9.not.i.i57, label %if.end8.i.i.if.end10.thread_crit_edge, label %if.end11.i.i62

if.end8.i.i.if.end10.thread_crit_edge:            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

if.end11.i.i62:                                   ; preds = %if.end8.i.i
  %vid.i.i58 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %71, i32 0, i32 2
  %81 = ptrtoint ptr %vid.i.i58 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vid.i.i58, align 2
  %vni1.i.i.i = getelementptr i8, ptr %1, i32 13796
  %83 = ptrtoint ptr %vni1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vni1.i.i.i, align 4
  %state.i.i.i.i59 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %85 = ptrtoint ptr %state.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %state.i.i.i.i59, align 4
  %and1.i.i.i.i.i60 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i60)
  %tobool.i.not.i.i.i61 = icmp eq i32 %and1.i.i.i.i.i60, 0
  br i1 %tobool.i.not.i.i.i61, label %if.end11.i.i62.if.end10.thread_crit_edge, label %if.end.i.i.i

if.end11.i.i62.if.end10.thread_crit_edge:         ; preds = %if.end11.i.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

if.end.i.i.i:                                     ; preds = %if.end11.i.i62
  %call3.i.i.i = tail call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef nonnull %call1.i.i, i32 noundef %84) #12
  %tobool.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end10.thread_crit_edge, label %if.end5.i.i.i

if.end.i.i.i.if.end10.thread_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %call6.i.i.i = tail call zeroext i16 @mlxsw_sp_fid_8021q_vid(ptr noundef nonnull %call3.i.i.i) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %call6.i.i.i, i16 %82)
  %cmp.not.i23.i.i = icmp eq i16 %call6.i.i.i, %82
  br i1 %cmp.not.i23.i.i, label %if.end10.i.i.i, label %if.end5.i.i.i.out.i.i.i_crit_edge

if.end5.i.i.i.out.i.i.i_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i

if.end10.i.i.i:                                   ; preds = %if.end5.i.i.i
  %87 = ptrtoint ptr %vni1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vni1.i.i.i, align 4
  %call1.i.i.i.i63 = tail call ptr @mlxsw_sp_fid_lookup_by_vni(ptr noundef nonnull %call1.i.i, i32 noundef %88) #12
  %tobool.not.i.i.i.i64 = icmp eq ptr %call1.i.i.i.i63, null
  br i1 %tobool.not.i.i.i.i64, label %if.end10.i.i.i.out.i.i.i_crit_edge, label %if.end.i.i.i.i65

if.end10.i.i.i.out.i.i.i_crit_edge:               ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i

if.end.i.i.i.i65:                                 ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_nve_fid_disable(ptr noundef nonnull %call1.i.i, ptr noundef nonnull %call1.i.i.i.i63) #12
  tail call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i.i.i.i63) #12
  tail call void @mlxsw_sp_fid_put(ptr noundef nonnull %call1.i.i.i.i63) #12
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.end.i.i.i.i65, %if.end10.i.i.i.out.i.i.i_crit_edge, %if.end5.i.i.i.out.i.i.i_crit_edge
  tail call void @mlxsw_sp_fid_put(ptr noundef nonnull %call3.i.i.i) #12
  br label %if.end10.thread

if.end10:                                         ; preds = %netif_is_vxlan.exit36.if.end10_crit_edge, %sw.bb5.if.end10_crit_edge
  %call9 = tail call i32 @switchdev_handle_port_obj_del(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @mlxsw_sp_port_dev_check, ptr noundef nonnull @mlxsw_sp_port_obj_del) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not.i66 = icmp eq i32 %call9, 0
  %sub.i67 = sub i32 1, %call9
  %or.i68 = or i32 %sub.i67, 32768
  br i1 %tobool.not.i66, label %if.end10.if.end10.thread_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.if.end10.thread_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end10.if.end10.thread_crit_edge, %out.i.i.i, %if.end.i.i.i.if.end10.thread_crit_edge, %if.end11.i.i62.if.end10.thread_crit_edge, %if.end8.i.i.if.end10.thread_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i54.if.end10.thread_crit_edge, %for.cond.i.i.i49.if.end10.thread_crit_edge, %if.end.i.i42.if.end10.thread_crit_edge, %sw.bb.i41.if.end10.thread_crit_edge, %if.then7.if.end10.thread_crit_edge
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @mlxsw_sp_port_dev_check, ptr noundef nonnull @mlxsw_sp_port_attr_set) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not.i70 = icmp eq i32 %call13, 0
  %sub.i71 = sub i32 1, %call13
  %or.i72 = or i32 %sub.i71, 32768
  %retval.0.i73 = select i1 %tobool.not.i70, i32 1, i32 %or.i72
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %if.end10.thread, %if.end10.cleanup_crit_edge, %if.end.thread, %if.end.cleanup_crit_edge, %err_vxlan_join.i.i.i, %do.end41.i.i.i, %if.then8.i.i.i, %do.body.i.i.i.cleanup_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i.cleanup_crit_edge, %for.cond.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i73, %sw.bb12 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.thread ], [ %or.i, %if.end.cleanup_crit_edge ], [ 1, %if.end10.thread ], [ %or.i68, %if.end10.cleanup_crit_edge ], [ 32791, %do.body.i.i.i.cleanup_crit_edge ], [ 32791, %if.then8.i.i.i ], [ %phi.bo88, %err_vxlan_join.i.i.i ], [ 32791, %do.end41.i.i.i ], [ 32791, %mlxsw_sp_bridge_device_find.exit.i.i.cleanup_crit_edge ], [ 32791, %for.cond.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_obj_add(ptr noundef %dev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj, ptr noundef %extack) #1 align 64 {
entry:
  %proto.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags.i, align 4
  %conv.i = zext i16 %4 to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %mlxsw_sp6.i = getelementptr i8, ptr %dev, i32 2312
  %5 = ptrtoint ptr %mlxsw_sp6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mlxsw_sp6.i, align 8
  %orig_dev7.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %7 = ptrtoint ptr %orig_dev7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %orig_dev7.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %10, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end19.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %11 = and i16 %4, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool11.not.i = icmp eq i16 %11, 0
  br i1 %tobool11.not.i, label %if.then.i.mlxsw_sp_port_vlans_add.exit_crit_edge, label %land.lhs.true.i

if.then.i.mlxsw_sp_port_vlans_add.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlans_add.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %call12.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef %8) #12
  br i1 %call12.i, label %if.then14.i, label %land.lhs.true.i.mlxsw_sp_port_vlans_add.exit_crit_edge

land.lhs.true.i.mlxsw_sp_port_vlans_add.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlans_add.exit

if.then14.i:                                      ; preds = %land.lhs.true.i
  %call.i.i = tail call zeroext i16 @mlxsw_sp_rif_vid(ptr noundef %6, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.i = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then14.i.mlxsw_sp_port_vlans_add.exit_crit_edge, label %if.end.i.i

if.then14.i.mlxsw_sp_port_vlans_add.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlans_add.exit

if.end.i.i:                                       ; preds = %if.then14.i
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 4
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.not.i.i = icmp eq i16 %14, 0
  %vid8.i.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %15 = ptrtoint ptr %vid8.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vid8.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %call.i.i)
  %cmp11.i.i = icmp eq i16 %16, %call.i.i
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  br i1 %cmp11.i.i, label %if.then2.i.i.mlxsw_sp_port_vlans_add.exit_crit_edge, label %if.then2.i.i.if.end.i_crit_edge

if.then2.i.i.if.end.i_crit_edge:                  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then2.i.i.mlxsw_sp_port_vlans_add.exit_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlans_add.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  br i1 %cmp11.i.i, label %if.else.i.i.if.end.i_crit_edge, label %if.else.i.i.mlxsw_sp_port_vlans_add.exit_crit_edge

if.else.i.i.mlxsw_sp_port_vlans_add.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlans_add.exit

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i.if.end.i_crit_edge, %if.then2.i.i.if.end.i_crit_edge
  %.str.100.sink.i.i = phi ptr [ @.str.99, %if.then2.i.i.if.end.i_crit_edge ], [ @.str.100, %if.else.i.i.if.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull %.str.100.sink.i.i) #16
  br label %mlxsw_sp_port_vlans_add.exit

if.end19.i:                                       ; preds = %sw.bb
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %6, i32 0, i32 9
  %17 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge.i, align 4
  %call.i71.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %8) #12
  %tobool.not.i72.i = icmp eq ptr %call.i71.i, null
  br i1 %tobool.not.i72.i, label %if.end19.i.do.end.i_crit_edge, label %if.end.i73.i

if.end19.i.do.end.i_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end.i73.i:                                     ; preds = %if.end19.i
  %bridges_list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %18, i32 0, i32 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i73.i
  %.pn.in.i.i.i = phi ptr [ %bridges_list.i.i.i, %if.end.i73.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %bridges_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do.end.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do.end.i_crit_edge:                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %bridge_device.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %20 = ptrtoint ptr %bridge_device.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bridge_device.0.i.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %21, %call.i71.i
  br i1 %cmp2.i.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

mlxsw_sp_bridge_device_find.exit.i.i:             ; preds = %for.body.i.i.i
  %bridge_device.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %tobool2.not.i.i = icmp eq ptr %bridge_device.0.i.i.i.le, null
  br i1 %tobool2.not.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i.do.end.i_crit_edge, label %if.end4.i.i

mlxsw_sp_bridge_device_find.exit.i.i.do.end.i_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end4.i.i:                                      ; preds = %mlxsw_sp_bridge_device_find.exit.i.i
  %ports_list.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 8
  br label %for.cond.i13.i.i

for.cond.i13.i.i:                                 ; preds = %for.body.i15.i.i.for.cond.i13.i.i_crit_edge, %if.end4.i.i
  %.pn.in.i10.i.i = phi ptr [ %ports_list.i.i.i, %if.end4.i.i ], [ %.pn.i11.i.i, %for.body.i15.i.i.for.cond.i13.i.i_crit_edge ]
  %22 = ptrtoint ptr %.pn.in.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i11.i.i = load ptr, ptr %.pn.in.i10.i.i, align 4
  %cmp.not.i12.i.i = icmp eq ptr %.pn.i11.i.i, %ports_list.i.i.i
  br i1 %cmp.not.i12.i.i, label %for.cond.i13.i.i.do.end.i_crit_edge, label %for.body.i15.i.i

for.cond.i13.i.i.do.end.i_crit_edge:              ; preds = %for.cond.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.i15.i.i:                                 ; preds = %for.cond.i13.i.i
  %bridge_port.0.i.i.i = getelementptr i8, ptr %.pn.i11.i.i, i32 -8
  %23 = ptrtoint ptr %bridge_port.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge_port.0.i.i.i, align 4
  %cmp2.i14.i.i = icmp eq ptr %24, %8
  br i1 %cmp2.i14.i.i, label %mlxsw_sp_bridge_port_find.exit.i, label %for.body.i15.i.i.for.cond.i13.i.i_crit_edge

for.body.i15.i.i.for.cond.i13.i.i_crit_edge:      ; preds = %for.body.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i.i

mlxsw_sp_bridge_port_find.exit.i:                 ; preds = %for.body.i15.i.i
  %bridge_port.0.i.i.i.le = getelementptr i8, ptr %.pn.i11.i.i, i32 -8
  %tobool21.not.i = icmp eq ptr %bridge_port.0.i.i.i.le, null
  br i1 %tobool21.not.i, label %mlxsw_sp_bridge_port_find.exit.i.do.end.i_crit_edge, label %if.end46.i, !prof !296

mlxsw_sp_bridge_port_find.exit.i.do.end.i_crit_edge: ; preds = %mlxsw_sp_bridge_port_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %mlxsw_sp_bridge_port_find.exit.i.do.end.i_crit_edge, %for.cond.i13.i.i.do.end.i_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i.do.end.i_crit_edge, %for.cond.i.i.i.do.end.i_crit_edge, %if.end19.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1247, i32 noundef 9, ptr noundef null) #12
  br label %mlxsw_sp_port_vlans_add.exit

if.end46.i:                                       ; preds = %mlxsw_sp_bridge_port_find.exit.i
  %bridge_device.i = getelementptr i8, ptr %.pn.i11.i.i, i32 -4
  %25 = ptrtoint ptr %bridge_device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bridge_device.i, align 4
  %vlan_enabled.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %vlan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %vlan_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool47.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool47.not.i, label %if.end46.i.mlxsw_sp_port_vlans_add.exit_crit_edge, label %if.end49.i

if.end46.i.mlxsw_sp_port_vlans_add.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlans_add.exit

if.end49.i:                                       ; preds = %if.end46.i
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %28 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid.i, align 2
  br i1 %tobool4.not.i, label %if.else.i.i.i, label %if.end49.i.mlxsw_sp_port_pvid_determine.exit.i.i_crit_edge

if.end49.i.mlxsw_sp_port_pvid_determine.exit.i.i_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_pvid_determine.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  %pvid.i.i.i = getelementptr i8, ptr %dev, i32 2320
  %30 = ptrtoint ptr %pvid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pvid.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %29)
  %cmp.i.i.i = icmp eq i16 %31, %29
  %..i.i.i = select i1 %cmp.i.i.i, i16 0, i16 %31
  br label %mlxsw_sp_port_pvid_determine.exit.i.i

mlxsw_sp_port_pvid_determine.exit.i.i:            ; preds = %if.else.i.i.i, %if.end49.i.mlxsw_sp_port_pvid_determine.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %29, %if.end49.i.mlxsw_sp_port_pvid_determine.exit.i.i_crit_edge ], [ %..i.i.i, %if.else.i.i.i ]
  %pvid2.i.i = getelementptr i8, ptr %dev, i32 2320
  %32 = ptrtoint ptr %pvid2.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pvid2.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i.i) #12
  %34 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %proto.i.i, align 2, !annotation !295
  %vlans_list.i.i.i = getelementptr i8, ptr %dev, i32 3296
  br label %for.cond.i.i76.i

for.cond.i.i76.i:                                 ; preds = %for.body.i.i77.i.for.cond.i.i76.i_crit_edge, %mlxsw_sp_port_pvid_determine.exit.i.i
  %mlxsw_sp_port_vlan.0.in.i.i.i = phi ptr [ %vlans_list.i.i.i, %mlxsw_sp_port_pvid_determine.exit.i.i ], [ %mlxsw_sp_port_vlan.0.i.i.i, %for.body.i.i77.i.for.cond.i.i76.i_crit_edge ]
  %35 = ptrtoint ptr %mlxsw_sp_port_vlan.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %mlxsw_sp_port_vlan.0.i.i.i = load ptr, ptr %mlxsw_sp_port_vlan.0.in.i.i.i, align 4
  %cmp.not.i.i75.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i.i.i, %vlans_list.i.i.i
  br i1 %cmp.not.i.i75.i, label %for.cond.i.i76.i.if.then7.critedge.i.i_crit_edge, label %for.body.i.i77.i

for.cond.i.i76.i.if.then7.critedge.i.i_crit_edge: ; preds = %for.cond.i.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.critedge.i.i

for.body.i.i77.i:                                 ; preds = %for.cond.i.i76.i
  %vid2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.0.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %vid2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vid2.i.i.i, align 4
  %cmp4.i.i.i = icmp eq i16 %37, %29
  br i1 %cmp4.i.i.i, label %mlxsw_sp_port_vlan_find_by_vid.exit.i.i, label %for.body.i.i77.i.for.cond.i.i76.i_crit_edge

for.body.i.i77.i.for.cond.i.i76.i_crit_edge:      ; preds = %for.body.i.i77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i76.i

mlxsw_sp_port_vlan_find_by_vid.exit.i.i:          ; preds = %for.body.i.i77.i
  %tobool4.not.i.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i.i.i, null
  br i1 %tobool4.not.i.i, label %mlxsw_sp_port_vlan_find_by_vid.exit.i.i.if.then7.critedge.i.i_crit_edge, label %land.lhs.true.i.i

mlxsw_sp_port_vlan_find_by_vid.exit.i.i.if.then7.critedge.i.i_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.critedge.i.i

land.lhs.true.i.i:                                ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit.i.i
  %bridge_port5.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.0.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %bridge_port5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bridge_port5.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %39, %bridge_port.0.i.i.i.le
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end13.i.i_crit_edge, label %land.lhs.true.i.i.mlxsw_sp_bridge_port_vlan_add.exit.i_crit_edge

land.lhs.true.i.i.mlxsw_sp_bridge_port_vlan_add.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_port_vlan_add.exit.i

land.lhs.true.i.i.if.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then7.critedge.i.i:                            ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit.i.i.if.then7.critedge.i.i_crit_edge, %for.cond.i.i76.i.if.then7.critedge.i.i_crit_edge
  %call8.i.i = tail call ptr @mlxsw_sp_port_vlan_create(ptr noundef %add.ptr.i, i16 noundef zeroext %29) #12
  %cmp.i59.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59.i.i, label %if.then10.i.i, label %if.then7.critedge.i.i.if.end13.i.i_crit_edge

if.then7.critedge.i.i.if.end13.i.i_crit_edge:     ; preds = %if.then7.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.then7.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %call8.i.i to i32
  br label %mlxsw_sp_bridge_port_vlan_add.exit.i

if.end13.i.i:                                     ; preds = %if.then7.critedge.i.i.if.end13.i.i_crit_edge, %land.lhs.true.i.i.if.end13.i.i_crit_edge
  %mlxsw_sp_port_vlan.0.i.i = phi ptr [ %call8.i.i, %if.then7.critedge.i.i.if.end13.i.i_crit_edge ], [ %mlxsw_sp_port_vlan.0.i.i.i, %land.lhs.true.i.i.if.end13.i.i_crit_edge ]
  %call15.i.i = tail call i32 @mlxsw_sp_port_vlan_set(ptr noundef %add.ptr.i, i16 noundef zeroext %29, i16 noundef zeroext %29, i1 noundef zeroext true, i1 noundef zeroext %tobool.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end13.i.i.err_port_vlan_set.i.i_crit_edge

if.end13.i.i.err_port_vlan_set.i.i_crit_edge:     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_port_vlan_set.i.i

if.end18.i.i:                                     ; preds = %if.end13.i.i
  %41 = ptrtoint ptr %bridge_device.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bridge_device.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call19.i.i = call i32 @br_vlan_get_proto(ptr noundef %44, ptr noundef nonnull %proto.i.i) #12
  %45 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %proto.i.i, align 2
  %call20.i.i = call i32 @mlxsw_sp_port_pvid_set(ptr noundef %add.ptr.i, i16 noundef zeroext %retval.0.i.i.i, i16 noundef zeroext %46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end18.i.i.err_port_pvid_set.i.i_crit_edge

if.end18.i.i.err_port_pvid_set.i.i_crit_edge:     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_port_pvid_set.i.i

if.end23.i.i:                                     ; preds = %if.end18.i.i
  %call24.i.i = call fastcc i32 @mlxsw_sp_port_vlan_bridge_join(ptr noundef %mlxsw_sp_port_vlan.0.i.i, ptr noundef nonnull %bridge_port.0.i.i.i.le, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end23.i.i.mlxsw_sp_bridge_port_vlan_add.exit.i_crit_edge, label %err_port_vlan_bridge_join.i.i

if.end23.i.i.mlxsw_sp_bridge_port_vlan_add.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_bridge_port_vlan_add.exit.i

err_port_vlan_bridge_join.i.i:                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %proto.i.i, align 2
  %call28.i.i = call i32 @mlxsw_sp_port_pvid_set(ptr noundef %add.ptr.i, i16 noundef zeroext %33, i16 noundef zeroext %48) #12
  br label %err_port_pvid_set.i.i

err_port_pvid_set.i.i:                            ; preds = %err_port_vlan_bridge_join.i.i, %if.end18.i.i.err_port_pvid_set.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call20.i.i, %if.end18.i.i.err_port_pvid_set.i.i_crit_edge ], [ %call24.i.i, %err_port_vlan_bridge_join.i.i ]
  %call29.i.i = call i32 @mlxsw_sp_port_vlan_set(ptr noundef %add.ptr.i, i16 noundef zeroext %29, i16 noundef zeroext %29, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %err_port_vlan_set.i.i

err_port_vlan_set.i.i:                            ; preds = %err_port_pvid_set.i.i, %if.end13.i.i.err_port_vlan_set.i.i_crit_edge
  %err.1.i.i = phi i32 [ %call15.i.i, %if.end13.i.i.err_port_vlan_set.i.i_crit_edge ], [ %err.0.i.i, %err_port_pvid_set.i.i ]
  call void @mlxsw_sp_port_vlan_destroy(ptr noundef %mlxsw_sp_port_vlan.0.i.i) #12
  br label %mlxsw_sp_bridge_port_vlan_add.exit.i

mlxsw_sp_bridge_port_vlan_add.exit.i:             ; preds = %err_port_vlan_set.i.i, %if.end23.i.i.mlxsw_sp_bridge_port_vlan_add.exit.i_crit_edge, %if.then10.i.i, %land.lhs.true.i.i.mlxsw_sp_bridge_port_vlan_add.exit.i_crit_edge
  %retval.0.i78.i = phi i32 [ %err.1.i.i, %err_port_vlan_set.i.i ], [ %40, %if.then10.i.i ], [ -17, %land.lhs.true.i.i.mlxsw_sp_bridge_port_vlan_add.exit.i_crit_edge ], [ 0, %if.end23.i.i.mlxsw_sp_bridge_port_vlan_add.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i.i) #12
  br label %mlxsw_sp_port_vlans_add.exit

mlxsw_sp_port_vlans_add.exit:                     ; preds = %mlxsw_sp_bridge_port_vlan_add.exit.i, %if.end46.i.mlxsw_sp_port_vlans_add.exit_crit_edge, %do.end.i, %if.end.i, %if.else.i.i.mlxsw_sp_port_vlans_add.exit_crit_edge, %if.then2.i.i.mlxsw_sp_port_vlans_add.exit_crit_edge, %if.then14.i.mlxsw_sp_port_vlans_add.exit_crit_edge, %land.lhs.true.i.mlxsw_sp_port_vlans_add.exit_crit_edge, %if.then.i.mlxsw_sp_port_vlans_add.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %retval.0.i78.i, %mlxsw_sp_bridge_port_vlan_add.exit.i ], [ 0, %if.end46.i.mlxsw_sp_port_vlans_add.exit_crit_edge ], [ -16, %if.end.i ], [ -95, %land.lhs.true.i.mlxsw_sp_port_vlans_add.exit_crit_edge ], [ -95, %if.then.i.mlxsw_sp_port_vlans_add.exit_crit_edge ], [ -95, %if.then14.i.mlxsw_sp_port_vlans_add.exit_crit_edge ], [ -95, %if.else.i.i.mlxsw_sp_port_vlans_add.exit_crit_edge ], [ -95, %if.then2.i.i.mlxsw_sp_port_vlans_add.exit_crit_edge ]
  %49 = ptrtoint ptr %mlxsw_sp6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mlxsw_sp6.i, align 8
  call void @mlxsw_sp_span_respin(ptr noundef %50) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %mlxsw_sp1.i = getelementptr i8, ptr %dev, i32 2312
  %51 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mlxsw_sp1.i, align 8
  %orig_dev2.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %53 = ptrtoint ptr %orig_dev2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %orig_dev2.i, align 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  %bridge.i11 = getelementptr inbounds %struct.mlxsw_sp, ptr %52, i32 0, i32 9
  %57 = ptrtoint ptr %bridge.i11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bridge.i11, align 4
  %call.i.i12 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %54) #12
  %tobool.not.i.i13 = icmp eq ptr %call.i.i12, null
  br i1 %tobool.not.i.i13, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i.i15

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i.i15:                                     ; preds = %sw.bb2
  %bridges_list.i.i.i14 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %58, i32 0, i32 4
  br label %for.cond.i.i.i19

for.cond.i.i.i19:                                 ; preds = %for.body.i.i.i22.for.cond.i.i.i19_crit_edge, %if.end.i.i15
  %.pn.in.i.i.i16 = phi ptr [ %bridges_list.i.i.i14, %if.end.i.i15 ], [ %.pn.i.i.i17, %for.body.i.i.i22.for.cond.i.i.i19_crit_edge ]
  %59 = ptrtoint ptr %.pn.in.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i.i.i17 = load ptr, ptr %.pn.in.i.i.i16, align 4
  %cmp.not.i.i.i18 = icmp eq ptr %.pn.i.i.i17, %bridges_list.i.i.i14
  br i1 %cmp.not.i.i.i18, label %for.cond.i.i.i19.sw.epilog_crit_edge, label %for.body.i.i.i22

for.cond.i.i.i19.sw.epilog_crit_edge:             ; preds = %for.cond.i.i.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i.i22:                                 ; preds = %for.cond.i.i.i19
  %bridge_device.0.i.i.i20 = getelementptr i8, ptr %.pn.i.i.i17, i32 -4
  %60 = ptrtoint ptr %bridge_device.0.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bridge_device.0.i.i.i20, align 4
  %cmp2.i.i.i21 = icmp eq ptr %61, %call.i.i12
  br i1 %cmp2.i.i.i21, label %mlxsw_sp_bridge_device_find.exit.i.i25, label %for.body.i.i.i22.for.cond.i.i.i19_crit_edge

for.body.i.i.i22.for.cond.i.i.i19_crit_edge:      ; preds = %for.body.i.i.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i19

mlxsw_sp_bridge_device_find.exit.i.i25:           ; preds = %for.body.i.i.i22
  %bridge_device.0.i.i.i20.le = getelementptr i8, ptr %.pn.i.i.i17, i32 -4
  %tobool2.not.i.i24 = icmp eq ptr %bridge_device.0.i.i.i20.le, null
  br i1 %tobool2.not.i.i24, label %mlxsw_sp_bridge_device_find.exit.i.i25.sw.epilog_crit_edge, label %if.end4.i.i27

mlxsw_sp_bridge_device_find.exit.i.i25.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end4.i.i27:                                    ; preds = %mlxsw_sp_bridge_device_find.exit.i.i25
  %ports_list.i.i.i26 = getelementptr i8, ptr %.pn.i.i.i17, i32 8
  br label %for.cond.i13.i.i31

for.cond.i13.i.i31:                               ; preds = %for.body.i15.i.i34.for.cond.i13.i.i31_crit_edge, %if.end4.i.i27
  %.pn.in.i10.i.i28 = phi ptr [ %ports_list.i.i.i26, %if.end4.i.i27 ], [ %.pn.i11.i.i29, %for.body.i15.i.i34.for.cond.i13.i.i31_crit_edge ]
  %62 = ptrtoint ptr %.pn.in.i10.i.i28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn.i11.i.i29 = load ptr, ptr %.pn.in.i10.i.i28, align 4
  %cmp.not.i12.i.i30 = icmp eq ptr %.pn.i11.i.i29, %ports_list.i.i.i26
  br i1 %cmp.not.i12.i.i30, label %for.cond.i13.i.i31.sw.epilog_crit_edge, label %for.body.i15.i.i34

for.cond.i13.i.i31.sw.epilog_crit_edge:           ; preds = %for.cond.i13.i.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i15.i.i34:                               ; preds = %for.cond.i13.i.i31
  %bridge_port.0.i.i.i32 = getelementptr i8, ptr %.pn.i11.i.i29, i32 -8
  %63 = ptrtoint ptr %bridge_port.0.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bridge_port.0.i.i.i32, align 4
  %cmp2.i14.i.i33 = icmp eq ptr %64, %54
  br i1 %cmp2.i14.i.i33, label %mlxsw_sp_bridge_port_find.exit.i36, label %for.body.i15.i.i34.for.cond.i13.i.i31_crit_edge

for.body.i15.i.i34.for.cond.i13.i.i31_crit_edge:  ; preds = %for.body.i15.i.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i.i31

mlxsw_sp_bridge_port_find.exit.i36:               ; preds = %for.body.i15.i.i34
  %bridge_port.0.i.i.i32.le = getelementptr i8, ptr %.pn.i11.i.i29, i32 -8
  %tobool.not.i = icmp eq ptr %bridge_port.0.i.i.i32.le, null
  br i1 %tobool.not.i, label %mlxsw_sp_bridge_port_find.exit.i36.sw.epilog_crit_edge, label %if.end.i38

mlxsw_sp_bridge_port_find.exit.i36.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_port_find.exit.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i38:                                       ; preds = %mlxsw_sp_bridge_port_find.exit.i36
  %bridge_device4.i = getelementptr i8, ptr %.pn.i11.i.i29, i32 -4
  %65 = ptrtoint ptr %bridge_device4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bridge_device4.i, align 4
  %vid.i37 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 2
  %67 = ptrtoint ptr %vid.i37 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vid.i37, align 2
  %vlans_list.i.i = getelementptr i8, ptr %dev, i32 3296
  %vlan_enabled.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %66, i32 0, i32 4
  %69 = ptrtoint ptr %vlans_list.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %mlxsw_sp_port_vlan.027.i.i = load ptr, ptr %vlans_list.i.i, align 4
  %cmp.not28.i.i = icmp eq ptr %mlxsw_sp_port_vlan.027.i.i, %vlans_list.i.i
  br i1 %cmp.not28.i.i, label %if.end.i38.sw.epilog_crit_edge, label %if.end.i38.for.body.i.i_crit_edge

if.end.i38.for.body.i.i_crit_edge:                ; preds = %if.end.i38
  br label %for.body.i.i

if.end.i38.sw.epilog_crit_edge:                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i38.for.body.i.i_crit_edge
  %mlxsw_sp_port_vlan.029.i.i = phi ptr [ %mlxsw_sp_port_vlan.0.i.i41, %for.inc.i.i.for.body.i.i_crit_edge ], [ %mlxsw_sp_port_vlan.027.i.i, %if.end.i38.for.body.i.i_crit_edge ]
  %bridge_port.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %bridge_port.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bridge_port.i.i, align 4
  %tobool.not.i62.i = icmp eq ptr %71, null
  br i1 %tobool.not.i62.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i63.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i63.i:                                     ; preds = %for.body.i.i
  %bridge_device3.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %bridge_device3.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bridge_device3.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %73, %66
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.end.i63.i.for.inc.i.i_crit_edge

if.end.i63.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %if.end.i63.i
  %74 = ptrtoint ptr %vlan_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i.i = load i8, ptr %vlan_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool7.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool7.not.i.i, label %if.end6.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge, label %land.lhs.true.i.i40

if.end6.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlan_find_by_bridge.exit.i

land.lhs.true.i.i40:                              ; preds = %if.end6.i.i
  %vid8.i.i39 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %vid8.i.i39 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vid8.i.i39, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %68)
  %cmp11.not.i.i = icmp eq i16 %76, %68
  br i1 %cmp11.not.i.i, label %land.lhs.true.i.i40.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge, label %land.lhs.true.i.i40.for.inc.i.i_crit_edge

land.lhs.true.i.i40.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i40.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge: ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlan_find_by_bridge.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i40.for.inc.i.i_crit_edge, %if.end.i63.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %77 = ptrtoint ptr %mlxsw_sp_port_vlan.029.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %mlxsw_sp_port_vlan.0.i.i41 = load ptr, ptr %mlxsw_sp_port_vlan.029.i.i, align 4
  %cmp.not.i.i42 = icmp eq ptr %mlxsw_sp_port_vlan.0.i.i41, %vlans_list.i.i
  br i1 %cmp.not.i.i42, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

mlxsw_sp_port_vlan_find_by_bridge.exit.i:         ; preds = %land.lhs.true.i.i40.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge, %if.end6.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge
  %tobool6.not.i = icmp eq ptr %mlxsw_sp_port_vlan.029.i.i, null
  br i1 %tobool6.not.i, label %mlxsw_sp_port_vlan_find_by_bridge.exit.i.sw.epilog_crit_edge, label %if.end8.i

mlxsw_sp_port_vlan_find_by_bridge.exit.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.i:                                        ; preds = %mlxsw_sp_port_vlan_find_by_bridge.exit.i
  %fid.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %fid.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fid.i, align 4
  %call9.i = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %79) #12
  %addr.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1
  %mids_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %66, i32 0, i32 3
  %80 = ptrtoint ptr %mids_list.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %mid.017.i.i = load ptr, ptr %mids_list.i.i, align 4
  %cmp.not18.i.i = icmp eq ptr %mid.017.i.i, %mids_list.i.i
  br i1 %cmp.not18.i.i, label %if.end8.i.if.then12.i_crit_edge, label %for.body.lr.ph.i.i

if.end8.i.if.then12.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

for.body.lr.ph.i.i:                               ; preds = %if.end8.i
  %81 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr.i, align 4
  %add.ptr1.i.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %83 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body.i65.i

for.body.i65.i:                                   ; preds = %for.inc.i68.i.for.body.i65.i_crit_edge, %for.body.lr.ph.i.i
  %mid.019.i.i = phi ptr [ %mid.017.i.i, %for.body.lr.ph.i.i ], [ %mid.0.i.i, %for.inc.i68.i.for.body.i65.i_crit_edge ]
  %addr2.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %addr2.i.i, align 4
  %xor.i.i.i = xor i32 %86, %82
  %add.ptr.i.i.i = getelementptr %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 1, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %88, %84
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i43 = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i43, label %land.lhs.true.i66.i, label %for.body.i65.i.for.inc.i68.i_crit_edge

for.body.i65.i.for.inc.i68.i_crit_edge:           ; preds = %for.body.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i68.i

land.lhs.true.i66.i:                              ; preds = %for.body.i65.i
  %fid3.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %fid3.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %fid3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %call9.i)
  %cmp5.i.i = icmp eq i16 %90, %call9.i
  br i1 %cmp5.i.i, label %__mlxsw_sp_mc_get.exit.i, label %land.lhs.true.i66.i.for.inc.i68.i_crit_edge

land.lhs.true.i66.i.for.inc.i68.i_crit_edge:      ; preds = %land.lhs.true.i66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i68.i

for.inc.i68.i:                                    ; preds = %land.lhs.true.i66.i.for.inc.i68.i_crit_edge, %for.body.i65.i.for.inc.i68.i_crit_edge
  %91 = ptrtoint ptr %mid.019.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %mid.0.i.i = load ptr, ptr %mid.019.i.i, align 4
  %cmp.not.i67.i = icmp eq ptr %mid.0.i.i, %mids_list.i.i
  br i1 %cmp.not.i67.i, label %for.inc.i68.i.if.then12.i_crit_edge, label %for.inc.i68.i.for.body.i65.i_crit_edge

for.inc.i68.i.for.body.i65.i_crit_edge:           ; preds = %for.inc.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i65.i

for.inc.i68.i.if.then12.i_crit_edge:              ; preds = %for.inc.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

__mlxsw_sp_mc_get.exit.i:                         ; preds = %land.lhs.true.i66.i
  %tobool11.not.i44 = icmp eq ptr %mid.019.i.i, null
  br i1 %tobool11.not.i44, label %__mlxsw_sp_mc_get.exit.i.if.then12.i_crit_edge, label %__mlxsw_sp_mc_get.exit.i.if.end19.i48_crit_edge

__mlxsw_sp_mc_get.exit.i.if.end19.i48_crit_edge:  ; preds = %__mlxsw_sp_mc_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i48

__mlxsw_sp_mc_get.exit.i.if.then12.i_crit_edge:   ; preds = %__mlxsw_sp_mc_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

if.then12.i:                                      ; preds = %__mlxsw_sp_mc_get.exit.i.if.then12.i_crit_edge, %for.inc.i68.i.if.then12.i_crit_edge, %if.end8.i.if.then12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not.i70.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i70.i, label %if.then12.i.if.then17.i_crit_edge, label %if.end.i71.i

if.then12.i.if.then17.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

if.end.i71.i:                                     ; preds = %if.then12.i
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %52, i32 0, i32 1
  %93 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core.i.i, align 4
  %call1.i.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %94) #12
  %call2.i.i = tail call ptr @bitmap_zalloc(i32 noundef %call1.i.i, i32 noundef 3264) #12
  %ports_in_mid.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %call7.i.i.i.i, i32 0, i32 5
  %95 = ptrtoint ptr %ports_in_mid.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call2.i.i, ptr %ports_in_mid.i.i, align 4
  %tobool4.not.i.i45 = icmp eq ptr %call2.i.i, null
  br i1 %tobool4.not.i.i45, label %if.end.i71.i.err_ports_in_mid_alloc.i.i_crit_edge, label %if.end6.i75.i

if.end.i71.i.err_ports_in_mid_alloc.i.i_crit_edge: ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_ports_in_mid_alloc.i.i

if.end6.i75.i:                                    ; preds = %if.end.i71.i
  %addr7.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %call7.i.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr.i, align 4
  %98 = ptrtoint ptr %addr7.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %addr7.i.i, align 8
  %add.ptr.i.i72.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %99 = ptrtoint ptr %add.ptr.i.i72.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr.i.i72.i, align 2
  %add.ptr1.i.i73.i = getelementptr %struct.mlxsw_sp_mid, ptr %call7.i.i.i.i, i32 0, i32 1, i32 4
  %101 = ptrtoint ptr %add.ptr1.i.i73.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %add.ptr1.i.i73.i, align 4
  %fid8.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %call7.i.i.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %fid8.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %call9.i, ptr %fid8.i.i, align 2
  %in_hw.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %call7.i.i.i.i, i32 0, i32 4
  %103 = ptrtoint ptr %in_hw.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %in_hw.i.i, align 2
  %104 = ptrtoint ptr %vlan_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i74.i = load i8, ptr %vlan_enabled.i.i, align 4
  %105 = and i8 %bf.load.i74.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool9.not.i.i = icmp eq i8 %105, 0
  br i1 %tobool9.not.i.i, label %if.end6.i75.i.out.i.i_crit_edge, label %if.end11.i.i

if.end6.i75.i.out.i.i_crit_edge:                  ; preds = %if.end6.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end11.i.i:                                     ; preds = %if.end6.i75.i
  %call12.i.i = tail call fastcc zeroext i1 @mlxsw_sp_mc_write_mdb_entry(ptr noundef %52, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %66) #12
  br i1 %call12.i.i, label %if.end11.i.i.out.i.i_crit_edge, label %err_write_mdb_entry.i.i

if.end11.i.i.out.i.i_crit_edge:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

out.i.i:                                          ; preds = %if.end11.i.i.out.i.i_crit_edge, %if.end6.i75.i.out.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %66, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %107, ptr noundef %mids_list.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %out.i.i.if.end19.i48_crit_edge

out.i.i.if.end19.i48_crit_edge:                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i48

if.end.i.i.i.i:                                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %109 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %mids_list.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev3.i.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %call7.i.i.i.i, ptr %107, align 4
  br label %if.end19.i48

err_write_mdb_entry.i.i:                          ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %ports_in_mid.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ports_in_mid.i.i, align 4
  tail call void @bitmap_free(ptr noundef %113) #12
  br label %err_ports_in_mid_alloc.i.i

err_ports_in_mid_alloc.i.i:                       ; preds = %err_write_mdb_entry.i.i, %if.end.i71.i.err_ports_in_mid_alloc.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %if.then17.i

if.then17.i:                                      ; preds = %err_ports_in_mid_alloc.i.i, %if.then12.i.if.then17.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.101) #16
  br label %sw.epilog

if.end19.i48:                                     ; preds = %if.end.i.i.i.i, %out.i.i.if.end19.i48_crit_edge, %__mlxsw_sp_mc_get.exit.i.if.end19.i48_crit_edge
  %mid.0.i = phi ptr [ %mid.019.i.i, %__mlxsw_sp_mc_get.exit.i.if.end19.i48_crit_edge ], [ %call7.i.i.i.i, %out.i.i.if.end19.i48_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ]
  %local_port.i = getelementptr i8, ptr %dev, i32 2316
  %114 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %local_port.i, align 4
  %conv.i46 = zext i16 %115 to i32
  %ports_in_mid.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.0.i, i32 0, i32 5
  %116 = ptrtoint ptr %ports_in_mid.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ports_in_mid.i, align 4
  tail call void @_set_bit(i32 noundef %conv.i46, ptr noundef %117) #12
  %118 = ptrtoint ptr %vlan_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load.i47 = load i8, ptr %vlan_enabled.i.i, align 4
  %119 = and i8 %bf.load.i47, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool20.not.i = icmp eq i8 %119, 0
  br i1 %tobool20.not.i, label %if.end19.i48.sw.epilog_crit_edge, label %if.end22.i

if.end19.i48.sw.epilog_crit_edge:                 ; preds = %if.end19.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end22.i:                                       ; preds = %if.end19.i48
  %mrouter.i = getelementptr i8, ptr %.pn.i11.i.i29, i32 28
  %120 = ptrtoint ptr %mrouter.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %mrouter.i, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool23.not.i = icmp eq i8 %121, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end22.i.sw.epilog_crit_edge

if.end22.i.sw.epilog_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end25.i:                                       ; preds = %if.end22.i
  %mid26.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.0.i, i32 0, i32 3
  %122 = ptrtoint ptr %mid26.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %mid26.i, align 4
  %124 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %126 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %126, i32 noundef 3264, i32 noundef 288) #15
  %tobool.not.i78.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i78.i, label %if.end25.i.if.then29.i_crit_edge, label %mlxsw_sp_port_smid_set.exit.i

if.end25.i.if.then29.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

mlxsw_sp_port_smid_set.exit.i:                    ; preds = %if.end25.i
  %127 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %local_port.i, align 4
  tail call fastcc void @mlxsw_reg_smid2_pack(ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext %123, i16 noundef zeroext %128, i1 noundef zeroext true) #12
  %core.i79.i = getelementptr inbounds %struct.mlxsw_sp, ptr %125, i32 0, i32 1
  %129 = ptrtoint ptr %core.i79.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %core.i79.i, align 4
  %call3.i.i = tail call i32 @mlxsw_reg_write(ptr noundef %130, ptr noundef nonnull @mlxsw_reg_smid2, ptr noundef nonnull %call7.i.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool28.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool28.not.i, label %mlxsw_sp_port_smid_set.exit.i.sw.epilog_crit_edge, label %mlxsw_sp_port_smid_set.exit.i.if.then29.i_crit_edge

mlxsw_sp_port_smid_set.exit.i.if.then29.i_crit_edge: ; preds = %mlxsw_sp_port_smid_set.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

mlxsw_sp_port_smid_set.exit.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_port_smid_set.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then29.i:                                      ; preds = %mlxsw_sp_port_smid_set.exit.i.if.then29.i_crit_edge, %if.end25.i.if.then29.i_crit_edge
  %retval.0.i8192.i = phi i32 [ %call3.i.i, %mlxsw_sp_port_smid_set.exit.i.if.then29.i_crit_edge ], [ -12, %if.end25.i.if.then29.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.102) #16
  %call31.i = tail call fastcc i32 @mlxsw_sp_port_remove_from_mid(ptr noundef %add.ptr.i, ptr noundef nonnull %mid.0.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then29.i, %mlxsw_sp_port_smid_set.exit.i.sw.epilog_crit_edge, %if.end22.i.sw.epilog_crit_edge, %if.end19.i48.sw.epilog_crit_edge, %if.then17.i, %mlxsw_sp_port_vlan_find_by_bridge.exit.i.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge, %if.end.i38.sw.epilog_crit_edge, %mlxsw_sp_bridge_port_find.exit.i36.sw.epilog_crit_edge, %for.cond.i13.i.i31.sw.epilog_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i25.sw.epilog_crit_edge, %for.cond.i.i.i19.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %mlxsw_sp_port_vlans_add.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %mlxsw_sp_port_vlans_add.exit ], [ -95, %entry.sw.epilog_crit_edge ], [ %retval.0.i8192.i, %if.then29.i ], [ -12, %if.then17.i ], [ 0, %mlxsw_sp_bridge_port_find.exit.i36.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_port_vlan_find_by_bridge.exit.i.sw.epilog_crit_edge ], [ 0, %if.end19.i48.sw.epilog_crit_edge ], [ 0, %if.end22.i.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_port_smid_set.exit.i.sw.epilog_crit_edge ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_bridge_device_find.exit.i.i25.sw.epilog_crit_edge ], [ 0, %if.end.i38.sw.epilog_crit_edge ], [ 0, %for.inc.i.i.sw.epilog_crit_edge ], [ 0, %for.cond.i13.i.i31.sw.epilog_crit_edge ], [ 0, %for.cond.i.i.i19.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_obj_del(ptr noundef %dev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj) #1 align 64 {
entry:
  %proto.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %orig_dev2.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %3 = ptrtoint ptr %orig_dev2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %orig_dev2.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %6, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %mlxsw_sp1.i = getelementptr i8, ptr %dev, i32 2312
  %7 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mlxsw_sp1.i, align 8
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bridge.i, align 4
  %call.i.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %4) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end.i
  %bridges_list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %10, i32 0, i32 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i.i = phi ptr [ %bridges_list.i.i.i, %if.end.i.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %bridges_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do.end.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do.end.i_crit_edge:                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %bridge_device.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %12 = ptrtoint ptr %bridge_device.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge_device.0.i.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %13, %call.i.i
  br i1 %cmp2.i.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

mlxsw_sp_bridge_device_find.exit.i.i:             ; preds = %for.body.i.i.i
  %bridge_device.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %tobool2.not.i.i = icmp eq ptr %bridge_device.0.i.i.i.le, null
  br i1 %tobool2.not.i.i, label %mlxsw_sp_bridge_device_find.exit.i.i.do.end.i_crit_edge, label %if.end4.i.i

mlxsw_sp_bridge_device_find.exit.i.i.do.end.i_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end4.i.i:                                      ; preds = %mlxsw_sp_bridge_device_find.exit.i.i
  %ports_list.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 8
  br label %for.cond.i13.i.i

for.cond.i13.i.i:                                 ; preds = %for.body.i15.i.i.for.cond.i13.i.i_crit_edge, %if.end4.i.i
  %.pn.in.i10.i.i = phi ptr [ %ports_list.i.i.i, %if.end4.i.i ], [ %.pn.i11.i.i, %for.body.i15.i.i.for.cond.i13.i.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i11.i.i = load ptr, ptr %.pn.in.i10.i.i, align 4
  %cmp.not.i12.i.i = icmp eq ptr %.pn.i11.i.i, %ports_list.i.i.i
  br i1 %cmp.not.i12.i.i, label %for.cond.i13.i.i.do.end.i_crit_edge, label %for.body.i15.i.i

for.cond.i13.i.i.do.end.i_crit_edge:              ; preds = %for.cond.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.i15.i.i:                                 ; preds = %for.cond.i13.i.i
  %bridge_port.0.i.i.i = getelementptr i8, ptr %.pn.i11.i.i, i32 -8
  %15 = ptrtoint ptr %bridge_port.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bridge_port.0.i.i.i, align 4
  %cmp2.i14.i.i = icmp eq ptr %16, %4
  br i1 %cmp2.i14.i.i, label %mlxsw_sp_bridge_port_find.exit.i, label %for.body.i15.i.i.for.cond.i13.i.i_crit_edge

for.body.i15.i.i.for.cond.i13.i.i_crit_edge:      ; preds = %for.body.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i.i

mlxsw_sp_bridge_port_find.exit.i:                 ; preds = %for.body.i15.i.i
  %bridge_port.0.i.i.i.le = getelementptr i8, ptr %.pn.i11.i.i, i32 -8
  %tobool.not.i = icmp eq ptr %bridge_port.0.i.i.i.le, null
  br i1 %tobool.not.i, label %mlxsw_sp_bridge_port_find.exit.i.do.end.i_crit_edge, label %if.end28.i, !prof !296

mlxsw_sp_bridge_port_find.exit.i.do.end.i_crit_edge: ; preds = %mlxsw_sp_bridge_port_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %mlxsw_sp_bridge_port_find.exit.i.do.end.i_crit_edge, %for.cond.i13.i.i.do.end.i_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i.do.end.i_crit_edge, %for.cond.i.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1928, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

if.end28.i:                                       ; preds = %mlxsw_sp_bridge_port_find.exit.i
  %bridge_device.i = getelementptr i8, ptr %.pn.i11.i.i, i32 -4
  %17 = ptrtoint ptr %bridge_device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge_device.i, align 4
  %vlan_enabled.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %vlan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %vlan_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool29.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool29.not.i, label %if.end28.i.sw.epilog_crit_edge, label %if.end31.i

if.end28.i.sw.epilog_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end31.i:                                       ; preds = %if.end28.i
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %20 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid.i, align 2
  %pvid1.i.i = getelementptr i8, ptr %dev, i32 2320
  %22 = ptrtoint ptr %pvid1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pvid1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %21)
  %cmp.i.i = icmp eq i16 %23, %21
  %spec.select.i.i = select i1 %cmp.i.i, i16 0, i16 %23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i.i) #12
  %24 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %proto.i.i, align 2, !annotation !295
  %vlans_list.i.i.i = getelementptr i8, ptr %dev, i32 3296
  br label %for.cond.i.i41.i

for.cond.i.i41.i:                                 ; preds = %for.body.i.i42.i.for.cond.i.i41.i_crit_edge, %if.end31.i
  %mlxsw_sp_port_vlan.0.in.i.i.i = phi ptr [ %vlans_list.i.i.i, %if.end31.i ], [ %mlxsw_sp_port_vlan.0.i.i.i, %for.body.i.i42.i.for.cond.i.i41.i_crit_edge ]
  %25 = ptrtoint ptr %mlxsw_sp_port_vlan.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %mlxsw_sp_port_vlan.0.i.i.i = load ptr, ptr %mlxsw_sp_port_vlan.0.in.i.i.i, align 4
  %cmp.not.i.i40.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i.i.i, %vlans_list.i.i.i
  br i1 %cmp.not.i.i40.i, label %for.cond.i.i41.i.do.end.i.i_crit_edge, label %for.body.i.i42.i

for.cond.i.i41.i.do.end.i.i_crit_edge:            ; preds = %for.cond.i.i41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

for.body.i.i42.i:                                 ; preds = %for.cond.i.i41.i
  %vid2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.0.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %vid2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vid2.i.i.i, align 4
  %cmp4.i.i.i = icmp eq i16 %27, %21
  br i1 %cmp4.i.i.i, label %mlxsw_sp_port_vlan_find_by_vid.exit.i.i, label %for.body.i.i42.i.for.cond.i.i41.i_crit_edge

for.body.i.i42.i.for.cond.i.i41.i_crit_edge:      ; preds = %for.body.i.i42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i41.i

mlxsw_sp_port_vlan_find_by_vid.exit.i.i:          ; preds = %for.body.i.i42.i
  %tobool.not.i43.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i.i.i, null
  br i1 %tobool.not.i43.i, label %mlxsw_sp_port_vlan_find_by_vid.exit.i.i.do.end.i.i_crit_edge, label %if.end29.i.i, !prof !296

mlxsw_sp_port_vlan_find_by_vid.exit.i.i.do.end.i.i_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit.i.i.do.end.i.i_crit_edge, %for.cond.i.i41.i.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1907, i32 noundef 9, ptr noundef null) #12
  br label %mlxsw_sp_bridge_port_vlan_del.exit.i

if.end29.i.i:                                     ; preds = %mlxsw_sp_port_vlan_find_by_vid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_port_vlan_bridge_leave(ptr noundef nonnull %mlxsw_sp_port_vlan.0.i.i.i) #12
  %28 = ptrtoint ptr %bridge_device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bridge_device.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call30.i.i = call i32 @br_vlan_get_proto(ptr noundef %31, ptr noundef nonnull %proto.i.i) #12
  %32 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %proto.i.i, align 2
  %call31.i.i = call i32 @mlxsw_sp_port_pvid_set(ptr noundef %add.ptr.i, i16 noundef zeroext %spec.select.i.i, i16 noundef zeroext %33) #12
  %call32.i.i = call i32 @mlxsw_sp_port_vlan_set(ptr noundef %add.ptr.i, i16 noundef zeroext %21, i16 noundef zeroext %21, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @mlxsw_sp_port_vlan_destroy(ptr noundef nonnull %mlxsw_sp_port_vlan.0.i.i.i) #12
  br label %mlxsw_sp_bridge_port_vlan_del.exit.i

mlxsw_sp_bridge_port_vlan_del.exit.i:             ; preds = %if.end29.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i.i) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %mlxsw_sp1.i11 = getelementptr i8, ptr %dev, i32 2312
  %34 = ptrtoint ptr %mlxsw_sp1.i11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mlxsw_sp1.i11, align 8
  %orig_dev2.i12 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %36 = ptrtoint ptr %orig_dev2.i12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %orig_dev2.i12, align 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %bridge.i13 = getelementptr inbounds %struct.mlxsw_sp, ptr %35, i32 0, i32 9
  %40 = ptrtoint ptr %bridge.i13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bridge.i13, align 4
  %call.i.i14 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %37) #12
  %tobool.not.i.i15 = icmp eq ptr %call.i.i14, null
  br i1 %tobool.not.i.i15, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i.i17

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i.i17:                                     ; preds = %sw.bb2
  %bridges_list.i.i.i16 = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %41, i32 0, i32 4
  br label %for.cond.i.i.i21

for.cond.i.i.i21:                                 ; preds = %for.body.i.i.i24.for.cond.i.i.i21_crit_edge, %if.end.i.i17
  %.pn.in.i.i.i18 = phi ptr [ %bridges_list.i.i.i16, %if.end.i.i17 ], [ %.pn.i.i.i19, %for.body.i.i.i24.for.cond.i.i.i21_crit_edge ]
  %42 = ptrtoint ptr %.pn.in.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i.i.i19 = load ptr, ptr %.pn.in.i.i.i18, align 4
  %cmp.not.i.i.i20 = icmp eq ptr %.pn.i.i.i19, %bridges_list.i.i.i16
  br i1 %cmp.not.i.i.i20, label %for.cond.i.i.i21.sw.epilog_crit_edge, label %for.body.i.i.i24

for.cond.i.i.i21.sw.epilog_crit_edge:             ; preds = %for.cond.i.i.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i.i24:                                 ; preds = %for.cond.i.i.i21
  %bridge_device.0.i.i.i22 = getelementptr i8, ptr %.pn.i.i.i19, i32 -4
  %43 = ptrtoint ptr %bridge_device.0.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bridge_device.0.i.i.i22, align 4
  %cmp2.i.i.i23 = icmp eq ptr %44, %call.i.i14
  br i1 %cmp2.i.i.i23, label %mlxsw_sp_bridge_device_find.exit.i.i27, label %for.body.i.i.i24.for.cond.i.i.i21_crit_edge

for.body.i.i.i24.for.cond.i.i.i21_crit_edge:      ; preds = %for.body.i.i.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i21

mlxsw_sp_bridge_device_find.exit.i.i27:           ; preds = %for.body.i.i.i24
  %bridge_device.0.i.i.i22.le = getelementptr i8, ptr %.pn.i.i.i19, i32 -4
  %tobool2.not.i.i26 = icmp eq ptr %bridge_device.0.i.i.i22.le, null
  br i1 %tobool2.not.i.i26, label %mlxsw_sp_bridge_device_find.exit.i.i27.sw.epilog_crit_edge, label %if.end4.i.i29

mlxsw_sp_bridge_device_find.exit.i.i27.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end4.i.i29:                                    ; preds = %mlxsw_sp_bridge_device_find.exit.i.i27
  %ports_list.i.i.i28 = getelementptr i8, ptr %.pn.i.i.i19, i32 8
  br label %for.cond.i13.i.i33

for.cond.i13.i.i33:                               ; preds = %for.body.i15.i.i36.for.cond.i13.i.i33_crit_edge, %if.end4.i.i29
  %.pn.in.i10.i.i30 = phi ptr [ %ports_list.i.i.i28, %if.end4.i.i29 ], [ %.pn.i11.i.i31, %for.body.i15.i.i36.for.cond.i13.i.i33_crit_edge ]
  %45 = ptrtoint ptr %.pn.in.i10.i.i30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i11.i.i31 = load ptr, ptr %.pn.in.i10.i.i30, align 4
  %cmp.not.i12.i.i32 = icmp eq ptr %.pn.i11.i.i31, %ports_list.i.i.i28
  br i1 %cmp.not.i12.i.i32, label %for.cond.i13.i.i33.sw.epilog_crit_edge, label %for.body.i15.i.i36

for.cond.i13.i.i33.sw.epilog_crit_edge:           ; preds = %for.cond.i13.i.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i15.i.i36:                               ; preds = %for.cond.i13.i.i33
  %bridge_port.0.i.i.i34 = getelementptr i8, ptr %.pn.i11.i.i31, i32 -8
  %46 = ptrtoint ptr %bridge_port.0.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bridge_port.0.i.i.i34, align 4
  %cmp2.i14.i.i35 = icmp eq ptr %47, %37
  br i1 %cmp2.i14.i.i35, label %mlxsw_sp_bridge_port_find.exit.i39, label %for.body.i15.i.i36.for.cond.i13.i.i33_crit_edge

for.body.i15.i.i36.for.cond.i13.i.i33_crit_edge:  ; preds = %for.body.i15.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i13.i.i33

mlxsw_sp_bridge_port_find.exit.i39:               ; preds = %for.body.i15.i.i36
  %bridge_port.0.i.i.i34.le = getelementptr i8, ptr %.pn.i11.i.i31, i32 -8
  %tobool.not.i38 = icmp eq ptr %bridge_port.0.i.i.i34.le, null
  br i1 %tobool.not.i38, label %mlxsw_sp_bridge_port_find.exit.i39.sw.epilog_crit_edge, label %if.end.i41

mlxsw_sp_bridge_port_find.exit.i39.sw.epilog_crit_edge: ; preds = %mlxsw_sp_bridge_port_find.exit.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i41:                                       ; preds = %mlxsw_sp_bridge_port_find.exit.i39
  %bridge_device4.i = getelementptr i8, ptr %.pn.i11.i.i31, i32 -4
  %48 = ptrtoint ptr %bridge_device4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bridge_device4.i, align 4
  %vid.i40 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 2
  %50 = ptrtoint ptr %vid.i40 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vid.i40, align 2
  %vlans_list.i.i = getelementptr i8, ptr %dev, i32 3296
  %vlan_enabled.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %49, i32 0, i32 4
  %52 = ptrtoint ptr %vlans_list.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %mlxsw_sp_port_vlan.027.i.i = load ptr, ptr %vlans_list.i.i, align 4
  %cmp.not28.i.i = icmp eq ptr %mlxsw_sp_port_vlan.027.i.i, %vlans_list.i.i
  br i1 %cmp.not28.i.i, label %if.end.i41.sw.epilog_crit_edge, label %if.end.i41.for.body.i.i_crit_edge

if.end.i41.for.body.i.i_crit_edge:                ; preds = %if.end.i41
  br label %for.body.i.i

if.end.i41.sw.epilog_crit_edge:                   ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i41.for.body.i.i_crit_edge
  %mlxsw_sp_port_vlan.029.i.i = phi ptr [ %mlxsw_sp_port_vlan.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %mlxsw_sp_port_vlan.027.i.i, %if.end.i41.for.body.i.i_crit_edge ]
  %bridge_port.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %bridge_port.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bridge_port.i.i, align 4
  %tobool.not.i32.i = icmp eq ptr %54, null
  br i1 %tobool.not.i32.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i33.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i33.i:                                     ; preds = %for.body.i.i
  %bridge_device3.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %bridge_device3.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bridge_device3.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %56, %49
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.end.i33.i.for.inc.i.i_crit_edge

if.end.i33.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %if.end.i33.i
  %57 = ptrtoint ptr %vlan_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i = load i8, ptr %vlan_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool7.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool7.not.i.i, label %if.end6.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlan_find_by_bridge.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6.i.i
  %vid8.i.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %vid8.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vid8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %51)
  %cmp11.not.i.i = icmp eq i16 %59, %51
  br i1 %cmp11.not.i.i, label %land.lhs.true.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_port_vlan_find_by_bridge.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i33.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %60 = ptrtoint ptr %mlxsw_sp_port_vlan.029.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %mlxsw_sp_port_vlan.0.i.i = load ptr, ptr %mlxsw_sp_port_vlan.029.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i.i, %vlans_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

mlxsw_sp_port_vlan_find_by_bridge.exit.i:         ; preds = %land.lhs.true.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge, %if.end6.i.i.mlxsw_sp_port_vlan_find_by_bridge.exit.i_crit_edge
  %tobool6.not.i = icmp eq ptr %mlxsw_sp_port_vlan.029.i.i, null
  br i1 %tobool6.not.i, label %mlxsw_sp_port_vlan_find_by_bridge.exit.i.sw.epilog_crit_edge, label %if.end8.i

mlxsw_sp_port_vlan_find_by_bridge.exit.i.sw.epilog_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end8.i:                                        ; preds = %mlxsw_sp_port_vlan_find_by_bridge.exit.i
  %fid.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.029.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %fid.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fid.i, align 4
  %call9.i = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %62) #12
  %mids_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %49, i32 0, i32 3
  %63 = ptrtoint ptr %mids_list.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %mid.017.i.i = load ptr, ptr %mids_list.i.i, align 4
  %cmp.not18.i.i = icmp eq ptr %mid.017.i.i, %mids_list.i.i
  br i1 %cmp.not18.i.i, label %if.end8.i.if.then12.i_crit_edge, label %for.body.lr.ph.i.i

if.end8.i.if.then12.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

for.body.lr.ph.i.i:                               ; preds = %if.end8.i
  %addr.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1
  %64 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr.i, align 4
  %add.ptr1.i.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body.i35.i

for.body.i35.i:                                   ; preds = %for.inc.i38.i.for.body.i35.i_crit_edge, %for.body.lr.ph.i.i
  %mid.019.i.i = phi ptr [ %mid.017.i.i, %for.body.lr.ph.i.i ], [ %mid.0.i.i, %for.inc.i38.i.for.body.i35.i_crit_edge ]
  %addr2.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr2.i.i, align 4
  %xor.i.i.i = xor i32 %69, %65
  %add.ptr.i.i.i = getelementptr %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 1, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %71, %67
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i36.i, label %for.body.i35.i.for.inc.i38.i_crit_edge

for.body.i35.i.for.inc.i38.i_crit_edge:           ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i38.i

land.lhs.true.i36.i:                              ; preds = %for.body.i35.i
  %fid3.i.i = getelementptr inbounds %struct.mlxsw_sp_mid, ptr %mid.019.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %fid3.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %fid3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %call9.i)
  %cmp5.i.i = icmp eq i16 %73, %call9.i
  br i1 %cmp5.i.i, label %__mlxsw_sp_mc_get.exit.i, label %land.lhs.true.i36.i.for.inc.i38.i_crit_edge

land.lhs.true.i36.i.for.inc.i38.i_crit_edge:      ; preds = %land.lhs.true.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i38.i

for.inc.i38.i:                                    ; preds = %land.lhs.true.i36.i.for.inc.i38.i_crit_edge, %for.body.i35.i.for.inc.i38.i_crit_edge
  %74 = ptrtoint ptr %mid.019.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %mid.0.i.i = load ptr, ptr %mid.019.i.i, align 4
  %cmp.not.i37.i = icmp eq ptr %mid.0.i.i, %mids_list.i.i
  br i1 %cmp.not.i37.i, label %for.inc.i38.i.if.then12.i_crit_edge, label %for.inc.i38.i.for.body.i35.i_crit_edge

for.inc.i38.i.for.body.i35.i_crit_edge:           ; preds = %for.inc.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i35.i

for.inc.i38.i.if.then12.i_crit_edge:              ; preds = %for.inc.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

__mlxsw_sp_mc_get.exit.i:                         ; preds = %land.lhs.true.i36.i
  %tobool11.not.i = icmp eq ptr %mid.019.i.i, null
  br i1 %tobool11.not.i, label %__mlxsw_sp_mc_get.exit.i.if.then12.i_crit_edge, label %if.end13.i

__mlxsw_sp_mc_get.exit.i.if.then12.i_crit_edge:   ; preds = %__mlxsw_sp_mc_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

if.then12.i:                                      ; preds = %__mlxsw_sp_mc_get.exit.i.if.then12.i_crit_edge, %for.inc.i38.i.if.then12.i_crit_edge, %if.end8.i.if.then12.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.103) #16
  br label %sw.epilog

if.end13.i:                                       ; preds = %__mlxsw_sp_mc_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call fastcc i32 @__mlxsw_sp_port_mdb_del(ptr noundef %add.ptr.i, ptr noundef nonnull %bridge_port.0.i.i.i34.le, ptr noundef nonnull %mid.019.i.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13.i, %if.then12.i, %mlxsw_sp_port_vlan_find_by_bridge.exit.i.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge, %if.end.i41.sw.epilog_crit_edge, %mlxsw_sp_bridge_port_find.exit.i39.sw.epilog_crit_edge, %for.cond.i13.i.i33.sw.epilog_crit_edge, %mlxsw_sp_bridge_device_find.exit.i.i27.sw.epilog_crit_edge, %for.cond.i.i.i21.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %mlxsw_sp_bridge_port_vlan_del.exit.i, %if.end28.i.sw.epilog_crit_edge, %do.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -22, %do.end.i ], [ 0, %mlxsw_sp_bridge_port_vlan_del.exit.i ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end28.i.sw.epilog_crit_edge ], [ %call14.i, %if.end13.i ], [ -22, %if.then12.i ], [ 0, %mlxsw_sp_bridge_port_find.exit.i39.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_port_vlan_find_by_bridge.exit.i.sw.epilog_crit_edge ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ 0, %mlxsw_sp_bridge_device_find.exit.i.i27.sw.epilog_crit_edge ], [ 0, %if.end.i41.sw.epilog_crit_edge ], [ 0, %for.inc.i.i.sw.epilog_crit_edge ], [ 0, %for.cond.i13.i.i33.sw.epilog_crit_edge ], [ 0, %for.cond.i.i.i21.sw.epilog_crit_edge ]
  %mlxsw_sp = getelementptr i8, ptr %dev, i32 2312
  %75 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mlxsw_sp, align 8
  call void @mlxsw_sp_span_respin(ptr noundef %76) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_rif_vid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_port_vlan_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_vlan_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_port_vlan_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_fdb_notify_mac_process(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %sfn_pl, i32 noundef %rec_index, i1 noundef zeroext %adding) unnamed_addr #1 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i32 @mlxsw_core_max_ports(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #12
  %2 = call ptr @memset(ptr %mac, i32 255, i32 6)
  %conv.i.i.i.i = and i32 %rec_index, 65535
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 18
  %arrayidx.i.i.i = getelementptr i8, ptr %sfn_pl, i32 %add42.i.i.i.i
  %3 = call ptr @memcpy(ptr %mac, ptr %arrayidx.i.i.i, i32 6)
  %mul.i.i.i18.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i20.i = add nuw nsw i32 %mul.i.i.i18.i, 24
  %div.i16.i.i.i = lshr exact i32 %add42.i.i.i20.i, 2
  %arrayidx.i.i21.i = getelementptr i32, ptr %sfn_pl, i32 %div.i16.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i21.i, align 4
  %conv2.i = trunc i32 %5 to i16
  %mul.i.i.i44.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i46.i = add nuw nsw i32 %mul.i.i.i44.i, 28
  %div.i16.i.i47.i = lshr exact i32 %add42.i.i.i46.i, 2
  %arrayidx.i.i48.i = getelementptr i32, ptr %sfn_pl, i32 %div.i16.i.i47.i
  %6 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i48.i, align 4
  %and4.i.i54.i = and i32 %7, 65535
  %conv5.i = trunc i32 %7 to i16
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %and4.i.i54.i)
  %cmp.not = icmp ugt i32 %call, %and4.i.i54.i
  br i1 %cmp.not, label %if.end40, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b128 = load i1, ptr @mlxsw_sp_fdb_notify_mac_process.__already_done, align 1
  br i1 %.b128, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !293

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp_fdb_notify_mac_process.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2633, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end40:                                         ; preds = %entry
  %8 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mlxsw_sp, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %and4.i.i54.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %11, null
  br i1 %tobool41.not, label %do.body43, label %if.end53

do.body43:                                        ; preds = %if.end40
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_fdb_notify_mac_process._rs, ptr noundef nonnull @__func__.mlxsw_sp_fdb_notify_mac_process) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body43.do_fdb_op_crit_edge, label %do.end49

do.body43.do_fdb_op_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_fdb_op

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %12 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.115) #16
  br label %do_fdb_op

if.end53:                                         ; preds = %if.end40
  %call54 = tail call zeroext i1 @mlxsw_sp_fid_is_dummy(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv2.i) #12
  br i1 %call54, label %if.end53.do_fdb_op_crit_edge, label %if.end56

if.end53.do_fdb_op_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_fdb_op

if.end56:                                         ; preds = %if.end53
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %vlans_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %mlxsw_sp_port_vlan.019.i = load ptr, ptr %vlans_list.i, align 4
  %cmp.not20.i = icmp eq ptr %mlxsw_sp_port_vlan.019.i, %vlans_list.i
  br i1 %cmp.not20.i, label %if.end56.if.then59_crit_edge, label %if.end56.for.body.i_crit_edge

if.end56.for.body.i_crit_edge:                    ; preds = %if.end56
  br label %for.body.i

if.end56.if.then59_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end56.for.body.i_crit_edge
  %mlxsw_sp_port_vlan.021.i = phi ptr [ %mlxsw_sp_port_vlan.0.i, %cleanup.i.for.body.i_crit_edge ], [ %mlxsw_sp_port_vlan.019.i, %if.end56.for.body.i_crit_edge ]
  %fid2.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.021.i, i32 0, i32 2
  %17 = ptrtoint ptr %fid2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fid2.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %land.lhs.true.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef nonnull %18) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i, i16 %conv2.i)
  %cmp4.i = icmp eq i16 %call.i, %conv2.i
  br i1 %cmp4.i, label %mlxsw_sp_port_vlan_find_by_fid.exit, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %19 = ptrtoint ptr %mlxsw_sp_port_vlan.021.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %mlxsw_sp_port_vlan.0.i = load ptr, ptr %mlxsw_sp_port_vlan.021.i, align 4
  %cmp.not.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i, %vlans_list.i
  br i1 %cmp.not.i, label %cleanup.i.if.then59_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup.i.if.then59_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

mlxsw_sp_port_vlan_find_by_fid.exit:              ; preds = %land.lhs.true.i
  %tobool58.not = icmp eq ptr %mlxsw_sp_port_vlan.021.i, null
  br i1 %tobool58.not, label %mlxsw_sp_port_vlan_find_by_fid.exit.if.then59_crit_edge, label %if.end61

mlxsw_sp_port_vlan_find_by_fid.exit.if.then59_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_fid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

if.then59:                                        ; preds = %mlxsw_sp_port_vlan_find_by_fid.exit.if.then59_crit_edge, %cleanup.i.if.then59_crit_edge, %if.end56.if.then59_crit_edge
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.116) #16
  br label %do_fdb_op

if.end61:                                         ; preds = %mlxsw_sp_port_vlan_find_by_fid.exit
  %bridge_port62 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.021.i, i32 0, i32 4
  %22 = ptrtoint ptr %bridge_port62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bridge_port62, align 4
  %tobool63.not = icmp eq ptr %23, null
  br i1 %tobool63.not, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.117) #16
  br label %do_fdb_op

if.end66:                                         ; preds = %if.end61
  %bridge_device67 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %bridge_device67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bridge_device67, align 4
  %vlan_enabled = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %vlan_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool69.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool69.not, label %if.end66.do_fdb_op_crit_edge, label %cond.true

if.end66.do_fdb_op_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_fdb_op

cond.true:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %vid70 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.021.i, i32 0, i32 3
  %29 = ptrtoint ptr %vid70 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid70, align 4
  br label %do_fdb_op

do_fdb_op:                                        ; preds = %cond.true, %if.end66.do_fdb_op_crit_edge, %if.then64, %if.then59, %if.end53.do_fdb_op_crit_edge, %do.end49, %do.body43.do_fdb_op_crit_edge
  %bridge_port.0 = phi ptr [ %23, %if.end66.do_fdb_op_crit_edge ], [ %23, %cond.true ], [ inttoptr (i32 -1 to ptr), %if.end53.do_fdb_op_crit_edge ], [ null, %if.then64 ], [ inttoptr (i32 -1 to ptr), %if.then59 ], [ inttoptr (i32 -1 to ptr), %do.end49 ], [ inttoptr (i32 -1 to ptr), %do.body43.do_fdb_op_crit_edge ]
  %vid.0 = phi i16 [ 0, %if.end66.do_fdb_op_crit_edge ], [ %30, %cond.true ], [ -1, %if.end53.do_fdb_op_crit_edge ], [ -1, %if.then64 ], [ -1, %if.then59 ], [ -1, %do.end49 ], [ -1, %do.body43.do_fdb_op_crit_edge ]
  %do_notification.0.off0 = phi i1 [ true, %if.end66.do_fdb_op_crit_edge ], [ true, %cond.true ], [ false, %if.end53.do_fdb_op_crit_edge ], [ false, %if.then64 ], [ false, %if.then59 ], [ false, %do.end49 ], [ false, %do.body43.do_fdb_op_crit_edge ]
  %adding.addr.0.off0 = phi i1 [ %adding, %if.end66.do_fdb_op_crit_edge ], [ %adding, %cond.true ], [ false, %if.end53.do_fdb_op_crit_edge ], [ false, %if.then64 ], [ false, %if.then59 ], [ false, %do.end49 ], [ false, %do.body43.do_fdb_op_crit_edge ]
  %call3.i = call fastcc i32 @__mlxsw_sp_port_fdb_uc_op(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv5.i, ptr noundef nonnull %mac, i16 noundef zeroext %conv2.i, i1 noundef zeroext %adding.addr.0.off0, i32 noundef 0, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool76.not = icmp eq i32 %call3.i, 0
  br i1 %tobool76.not, label %if.end90, label %do.body78

do.body78:                                        ; preds = %do_fdb_op
  %call79 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_fdb_notify_mac_process._rs.118, ptr noundef nonnull @__func__.mlxsw_sp_fdb_notify_mac_process) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %do.end84

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info85 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %31 = ptrtoint ptr %bus_info85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus_info85, align 4
  %dev86 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.120) #16
  br label %cleanup

if.end90:                                         ; preds = %do_fdb_op
  br i1 %do_notification.0.off0, label %if.end93, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end93:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %cond96 = select i1 %adding.addr.0.off0, i32 1, i32 2
  %35 = ptrtoint ptr %bridge_port.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bridge_port.0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #12
  %37 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %addr.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mac, ptr %addr.i, align 4
  %vid1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %39 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %vid.0, ptr %vid1.i, align 4
  %offloaded2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %bf.shl.i = select i1 %adding.addr.0.off0, i8 32, i8 0
  %40 = ptrtoint ptr %offloaded2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.shl.i, ptr %offloaded2.i, align 2
  %call.i130 = call i32 @call_switchdev_notifiers(i32 noundef %cond96, ptr noundef %36, ptr noundef nonnull %info.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end90.cleanup_crit_edge, %do.end84, %do.body78.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_fdb_notify_mac_lag_process(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %sfn_pl, i32 noundef %rec_index, i1 noundef zeroext %adding) unnamed_addr #1 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #12
  %0 = call ptr @memset(ptr %mac, i32 255, i32 6)
  %conv.i.i.i.i = and i32 %rec_index, 65535
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 18
  %arrayidx.i.i.i = getelementptr i8, ptr %sfn_pl, i32 %add42.i.i.i.i
  %1 = call ptr @memcpy(ptr %mac, ptr %arrayidx.i.i.i, i32 6)
  %mul.i.i.i18.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i20.i = add nuw nsw i32 %mul.i.i.i18.i, 24
  %div.i16.i.i.i = lshr exact i32 %add42.i.i.i20.i, 2
  %arrayidx.i.i21.i = getelementptr i32, ptr %sfn_pl, i32 %div.i16.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i21.i, align 4
  %conv2.i = trunc i32 %3 to i16
  %mul.i.i.i44.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i46.i = add nuw nsw i32 %mul.i.i.i44.i, 28
  %div.i16.i.i47.i = lshr exact i32 %add42.i.i.i46.i, 2
  %arrayidx.i.i48.i = getelementptr i32, ptr %sfn_pl, i32 %div.i16.i.i47.i
  %4 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i48.i, align 4
  %6 = trunc i32 %5 to i16
  %conv5.i = and i16 %6, 1023
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i, align 4
  %call.i = tail call i64 @mlxsw_core_res_get(ptr noundef %8, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp12.not.i = icmp eq i64 %call.i, 0
  br i1 %cmp12.not.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %conv2.i89 = trunc i32 %i.013.i to i8
  %9 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core.i, align 4
  %call.i.i = tail call zeroext i16 @mlxsw_core_lag_mapping_get(ptr noundef %10, i16 noundef zeroext %conv5.i, i8 noundef zeroext %conv2.i89) #12
  %11 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mlxsw_sp, align 4
  %idxprom.i.i = zext i16 %call.i.i to i32
  %arrayidx.i.i = getelementptr ptr, ptr %12, i32 %idxprom.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %lagged.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %lagged.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %lagged.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool1.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %if.end7

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.013.i, 1
  %conv.i90 = sext i32 %inc.i to i64
  %cmp.i = icmp ugt i64 %call.i, %conv.i90
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body_crit_edge

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body:                                          ; preds = %for.inc.i.do.body_crit_edge, %entry.do.body_crit_edge
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_fdb_notify_mac_lag_process._rs, ptr noundef nonnull @__func__.mlxsw_sp_fdb_notify_mac_lag_process) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body.do_fdb_op_crit_edge, label %do.end

do.body.do_fdb_op_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_fdb_op

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %16 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.127) #16
  br label %do_fdb_op

if.end7:                                          ; preds = %land.lhs.true.i.i
  %call8 = tail call zeroext i1 @mlxsw_sp_fid_is_dummy(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv2.i) #12
  br i1 %call8, label %if.end7.do_fdb_op_crit_edge, label %if.end10

if.end7.do_fdb_op_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_fdb_op

if.end10:                                         ; preds = %if.end7
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %14, i32 0, i32 11
  %20 = ptrtoint ptr %vlans_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %mlxsw_sp_port_vlan.019.i = load ptr, ptr %vlans_list.i, align 4
  %cmp.not20.i = icmp eq ptr %mlxsw_sp_port_vlan.019.i, %vlans_list.i
  br i1 %cmp.not20.i, label %if.end10.if.then13_crit_edge, label %if.end10.for.body.i91_crit_edge

if.end10.for.body.i91_crit_edge:                  ; preds = %if.end10
  br label %for.body.i91

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

for.body.i91:                                     ; preds = %cleanup.i.for.body.i91_crit_edge, %if.end10.for.body.i91_crit_edge
  %mlxsw_sp_port_vlan.021.i = phi ptr [ %mlxsw_sp_port_vlan.0.i, %cleanup.i.for.body.i91_crit_edge ], [ %mlxsw_sp_port_vlan.019.i, %if.end10.for.body.i91_crit_edge ]
  %fid2.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.021.i, i32 0, i32 2
  %21 = ptrtoint ptr %fid2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fid2.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %for.body.i91.cleanup.i_crit_edge, label %land.lhs.true.i

for.body.i91.cleanup.i_crit_edge:                 ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %for.body.i91
  %call.i92 = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef nonnull %22) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i92, i16 %conv2.i)
  %cmp4.i = icmp eq i16 %call.i92, %conv2.i
  br i1 %cmp4.i, label %mlxsw_sp_port_vlan_find_by_fid.exit, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %for.body.i91.cleanup.i_crit_edge
  %23 = ptrtoint ptr %mlxsw_sp_port_vlan.021.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %mlxsw_sp_port_vlan.0.i = load ptr, ptr %mlxsw_sp_port_vlan.021.i, align 4
  %cmp.not.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i, %vlans_list.i
  br i1 %cmp.not.i, label %cleanup.i.if.then13_crit_edge, label %cleanup.i.for.body.i91_crit_edge

cleanup.i.for.body.i91_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i91

cleanup.i.if.then13_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

mlxsw_sp_port_vlan_find_by_fid.exit:              ; preds = %land.lhs.true.i
  %fid2.i.le = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.021.i, i32 0, i32 2
  %tobool12.not = icmp eq ptr %mlxsw_sp_port_vlan.021.i, null
  br i1 %tobool12.not, label %mlxsw_sp_port_vlan_find_by_fid.exit.if.then13_crit_edge, label %if.end15

mlxsw_sp_port_vlan_find_by_fid.exit.if.then13_crit_edge: ; preds = %mlxsw_sp_port_vlan_find_by_fid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %mlxsw_sp_port_vlan_find_by_fid.exit.if.then13_crit_edge, %cleanup.i.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.116) #16
  br label %do_fdb_op

if.end15:                                         ; preds = %mlxsw_sp_port_vlan_find_by_fid.exit
  %bridge_port16 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.021.i, i32 0, i32 4
  %26 = ptrtoint ptr %bridge_port16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bridge_port16, align 4
  %tobool17.not = icmp eq ptr %27, null
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.117) #16
  br label %do_fdb_op

if.end20:                                         ; preds = %if.end15
  %bridge_device21 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %bridge_device21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bridge_device21, align 4
  %vlan_enabled = getelementptr inbounds %struct.mlxsw_sp_bridge_device, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %vlan_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool22.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool22.not, label %if.end20.cond.end_crit_edge, label %cond.true

if.end20.cond.end_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %vid23 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.021.i, i32 0, i32 3
  %33 = ptrtoint ptr %vid23 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vid23, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end20.cond.end_crit_edge
  %cond = phi i16 [ %34, %cond.true ], [ 0, %if.end20.cond.end_crit_edge ]
  %35 = ptrtoint ptr %fid2.i.le to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fid2.i.le, align 4
  %call27 = tail call zeroext i1 @mlxsw_sp_fid_lag_vid_valid(ptr noundef %36) #12
  br i1 %call27, label %cond.true29, label %cond.end.do_fdb_op_crit_edge

cond.end.do_fdb_op_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_fdb_op

cond.true29:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %vid30 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.021.i, i32 0, i32 3
  %37 = ptrtoint ptr %vid30 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid30, align 4
  br label %do_fdb_op

do_fdb_op:                                        ; preds = %cond.true29, %cond.end.do_fdb_op_crit_edge, %if.then18, %if.then13, %if.end7.do_fdb_op_crit_edge, %do.end, %do.body.do_fdb_op_crit_edge
  %adding.addr.0.off0 = phi i1 [ %adding, %cond.end.do_fdb_op_crit_edge ], [ %adding, %cond.true29 ], [ false, %if.end7.do_fdb_op_crit_edge ], [ false, %do.body.do_fdb_op_crit_edge ], [ false, %do.end ], [ false, %if.then18 ], [ false, %if.then13 ]
  %bridge_port.0 = phi ptr [ %27, %cond.end.do_fdb_op_crit_edge ], [ %27, %cond.true29 ], [ inttoptr (i32 -1 to ptr), %if.end7.do_fdb_op_crit_edge ], [ inttoptr (i32 -1 to ptr), %do.body.do_fdb_op_crit_edge ], [ inttoptr (i32 -1 to ptr), %do.end ], [ null, %if.then18 ], [ inttoptr (i32 -1 to ptr), %if.then13 ]
  %lag_vid.0 = phi i16 [ 0, %cond.end.do_fdb_op_crit_edge ], [ %38, %cond.true29 ], [ 0, %if.end7.do_fdb_op_crit_edge ], [ 0, %do.body.do_fdb_op_crit_edge ], [ 0, %do.end ], [ 0, %if.then18 ], [ 0, %if.then13 ]
  %vid.0 = phi i16 [ %cond, %cond.end.do_fdb_op_crit_edge ], [ %cond, %cond.true29 ], [ -1, %if.end7.do_fdb_op_crit_edge ], [ -1, %do.body.do_fdb_op_crit_edge ], [ -1, %do.end ], [ -1, %if.then18 ], [ -1, %if.then13 ]
  %do_notification.0.off0 = phi i1 [ true, %cond.end.do_fdb_op_crit_edge ], [ true, %cond.true29 ], [ false, %if.end7.do_fdb_op_crit_edge ], [ false, %do.body.do_fdb_op_crit_edge ], [ false, %do.end ], [ false, %if.then18 ], [ false, %if.then13 ]
  %call38 = call fastcc i32 @mlxsw_sp_port_fdb_uc_lag_op(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv5.i, ptr noundef nonnull %mac, i16 noundef zeroext %conv2.i, i16 noundef zeroext %lag_vid.0, i1 noundef zeroext %adding.addr.0.off0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end53, label %do.body41

do.body41:                                        ; preds = %do_fdb_op
  %call42 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_fdb_notify_mac_lag_process._rs.128, ptr noundef nonnull @__func__.mlxsw_sp_fdb_notify_mac_lag_process) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.cleanup_crit_edge, label %do.end47

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info48 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %39 = ptrtoint ptr %bus_info48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus_info48, align 4
  %dev49 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.120) #16
  br label %cleanup

if.end53:                                         ; preds = %do_fdb_op
  br i1 %do_notification.0.off0, label %if.end56, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end56:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %cond59 = select i1 %adding.addr.0.off0, i32 1, i32 2
  %43 = ptrtoint ptr %bridge_port.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bridge_port.0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #12
  %45 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %addr.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %mac, ptr %addr.i, align 4
  %vid1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %47 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %vid.0, ptr %vid1.i, align 4
  %offloaded2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %bf.shl.i = select i1 %adding.addr.0.off0, i8 32, i8 0
  %48 = ptrtoint ptr %offloaded2.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %bf.shl.i, ptr %offloaded2.i, align 2
  %call.i93 = call i32 @call_switchdev_notifiers(i32 noundef %cond59, ptr noundef %44, ptr noundef nonnull %info.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end53.cleanup_crit_edge, %do.end47, %do.body41.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_fdb_notify_mac_uc_tunnel_process(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %sfn_pl, i32 noundef %rec_index, i1 noundef zeroext %adding) unnamed_addr #1 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %info.i.i = alloca %struct.switchdev_notifier_vxlan_fdb_info, align 4
  %nve_ifindex.i = alloca i32, align 4
  %addr = alloca %union.mlxsw_sp_l3addr, align 4
  %mac = alloca [6 x i8], align 4
  %vni = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #12
  %0 = call ptr @memset(ptr %addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #12
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %2 = call ptr @memset(ptr %mac, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vni) #12
  %3 = ptrtoint ptr %vni to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %vni, align 4, !annotation !295
  %conv.i.i.i.i = and i32 %rec_index, 65535
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 18
  %arrayidx.i.i.i = getelementptr i8, ptr %sfn_pl, i32 %add42.i.i.i.i
  %4 = call ptr @memcpy(ptr %mac, ptr %arrayidx.i.i.i, i32 6)
  %mul.i.i.i25.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i27.i = add nuw nsw i32 %mul.i.i.i25.i, 24
  %div.i16.i.i.i = lshr exact i32 %add42.i.i.i27.i, 2
  %arrayidx.i.i28.i = getelementptr i32, ptr %sfn_pl, i32 %div.i16.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i28.i, align 4
  %conv2.i = trunc i32 %6 to i16
  %mul.i.i.i51.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i53.i = add nuw nsw i32 %mul.i.i.i51.i, 24
  %div.i16.i.i54.i = lshr exact i32 %add42.i.i.i53.i, 2
  %arrayidx.i.i55.i = getelementptr i32, ptr %sfn_pl, i32 %div.i16.i.i54.i
  %7 = ptrtoint ptr %arrayidx.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i55.i, align 4
  %mul.i.i.i86.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i88.i = add nuw nsw i32 %mul.i.i.i86.i, 28
  %div.i16.i.i89.i = lshr exact i32 %add42.i.i.i88.i, 2
  %arrayidx.i.i90.i = getelementptr i32, ptr %sfn_pl, i32 %div.i16.i.i89.i
  %9 = ptrtoint ptr %arrayidx.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i90.i, align 4
  %mul.i.i.i121.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add42.i.i.i123.i = add nuw nsw i32 %mul.i.i.i121.i, 28
  %div.i16.i.i124.i = lshr exact i32 %add42.i.i.i123.i, 2
  %arrayidx.i.i125.i = getelementptr i32, ptr %sfn_pl, i32 %div.i16.i.i124.i
  %11 = ptrtoint ptr %arrayidx.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i125.i, align 4
  %shr.i.i127.i = lshr i32 %12, 27
  %and4.i.i131.i = and i32 %shr.i.i127.i, 1
  %call = tail call ptr @mlxsw_sp_fid_lookup_by_index(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv2.i) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_fid_lookup_crit_edge, label %if.end

entry.err_fid_lookup_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fid_lookup

if.end:                                           ; preds = %entry
  %and4.i.i96.i = and i32 %10, 16777215
  %shr.i.i57.i = and i32 %8, -16777216
  %or.i = or i32 %and4.i.i96.i, %shr.i.i57.i
  %call1 = call i32 @mlxsw_sp_nve_learned_ip_resolve(ptr noundef %mlxsw_sp, i32 noundef %or.i, i32 noundef %and4.i.i131.i, ptr noundef nonnull %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_ip_resolve_crit_edge

if.end.err_ip_resolve_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_ip_resolve

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nve_ifindex.i) #12
  %13 = ptrtoint ptr %nve_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %nve_ifindex.i, align 4, !annotation !295
  %call.i = call i32 @mlxsw_sp_fid_nve_ifindex(ptr noundef nonnull %call, ptr noundef nonnull %nve_ifindex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge

if.end4.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

if.end.i:                                         ; preds = %if.end4
  %call1.i = call i32 @mlxsw_sp_fid_vni(ptr noundef nonnull %call, ptr noundef nonnull %vni) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge

if.end.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %14 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core.i.i, align 4
  %call.i.i.i = call ptr @priv_to_devlink(ptr noundef %15) #12
  %call1.i.i.i = call ptr @devlink_net(ptr noundef %call.i.i.i) #12
  %16 = ptrtoint ptr %nve_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nve_ifindex.i, align 4
  %call6.i = call ptr @__dev_get_by_index(ptr noundef %call1.i.i.i, i32 noundef %17) #12
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, label %if.end9.i

if.end4.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

if.end9.i:                                        ; preds = %if.end4.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 6
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end9.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, label %if.end12.i

if.end9.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

if.end12.i:                                       ; preds = %if.end9.i
  br i1 %adding, label %land.lhs.true.i, label %if.end12.i.if.end25.i_crit_edge

if.end12.i.if.end25.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %call14.i = call zeroext i1 @br_port_flag_is_set(ptr noundef nonnull %call6.i, i32 noundef 32) #12
  br i1 %call14.i, label %land.lhs.true18.critedge.i, label %land.lhs.true.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge

land.lhs.true.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

land.lhs.true18.critedge.i:                       ; preds = %land.lhs.true.i
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 136
  %20 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %land.lhs.true18.critedge.i.if.end25.i_crit_edge, label %netif_is_vxlan.exit.i

land.lhs.true18.critedge.i.if.end25.i_crit_edge:  ; preds = %land.lhs.true18.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

netif_is_vxlan.exit.i:                            ; preds = %land.lhs.true18.critedge.i
  %kind.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kind.i.i, align 4
  %call.i.i = call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then20.i, label %netif_is_vxlan.exit.i.if.end25.i_crit_edge

netif_is_vxlan.exit.i.if.end25.i_crit_edge:       ; preds = %netif_is_vxlan.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then20.i:                                      ; preds = %netif_is_vxlan.exit.i
  %flags.i = getelementptr i8, ptr %call6.i, i32 13820
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %if.then20.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, label %if.then20.i.if.end25.i_crit_edge

if.then20.i.if.end25.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then20.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

if.end25.i:                                       ; preds = %if.then20.i.if.end25.i_crit_edge, %netif_is_vxlan.exit.i.if.end25.i_crit_edge, %land.lhs.true18.critedge.i.if.end25.i_crit_edge, %if.end12.i.if.end25.i_crit_edge
  %call26.i = call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %call6.i) #12
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end25.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, label %if.end29.i

if.end25.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

if.end29.i:                                       ; preds = %if.end25.i
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 9
  %26 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bridge.i, align 4
  %bridges_list.i.i = getelementptr inbounds %struct.mlxsw_sp_bridge, ptr %27, i32 0, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end29.i
  %.pn.in.i.i = phi ptr [ %bridges_list.i.i, %if.end29.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %28 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %bridges_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bridge_device.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %29 = ptrtoint ptr %bridge_device.0.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bridge_device.0.i.i, align 4
  %cmp2.i.i = icmp eq ptr %30, %call26.i
  br i1 %cmp2.i.i, label %mlxsw_sp_bridge_device_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

mlxsw_sp_bridge_device_find.exit.i:               ; preds = %for.body.i.i
  %bridge_device.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool31.not.i = icmp eq ptr %bridge_device.0.i.i.le, null
  br i1 %tobool31.not.i, label %mlxsw_sp_bridge_device_find.exit.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, label %if.end9

mlxsw_sp_bridge_device_find.exit.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge: ; preds = %mlxsw_sp_bridge_device_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread

__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread: ; preds = %mlxsw_sp_bridge_device_find.exit.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, %for.cond.i.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, %if.end25.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, %if.then20.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, %land.lhs.true.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, %if.end9.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, %if.end4.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, %if.end.i.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge, %if.end4.__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nve_ifindex.i) #12
  br label %err_ip_resolve

if.end9:                                          ; preds = %mlxsw_sp_bridge_device_find.exit.i
  %ops.i = getelementptr i8, ptr %.pn.i.i, i32 28
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %fid_vid.i = getelementptr inbounds %struct.mlxsw_sp_bridge_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %fid_vid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fid_vid.i, align 4
  %call34.i = call zeroext i16 %34(ptr noundef nonnull %bridge_device.0.i.i.le, ptr noundef nonnull %call) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nve_ifindex.i) #12
  %call12 = call fastcc i32 @mlxsw_sp_port_fdb_tunnel_uc_op(ptr noundef %mlxsw_sp, ptr noundef nonnull %mac, i16 noundef zeroext %conv2.i, i32 noundef %and4.i.i131.i, ptr noundef nonnull %addr, i1 noundef zeroext %adding, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.err_ip_resolve_crit_edge

if.end9.err_ip_resolve_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_ip_resolve

if.end15:                                         ; preds = %if.end9
  %35 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vni, align 4
  %rtnl_link_ops.i.i46 = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 136
  %37 = ptrtoint ptr %rtnl_link_ops.i.i46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtnl_link_ops.i.i46, align 4
  %tobool.not.i.i47 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i47, label %if.end15.mlxsw_sp_fdb_nve_call_notifiers.exit_crit_edge, label %netif_is_vxlan.exit.i51

if.end15.mlxsw_sp_fdb_nve_call_notifiers.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_fdb_nve_call_notifiers.exit

netif_is_vxlan.exit.i51:                          ; preds = %if.end15
  %kind.i.i48 = getelementptr inbounds %struct.rtnl_link_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %kind.i.i48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %kind.i.i48, align 4
  %call.i.i49 = call i32 @strcmp(ptr noundef %40, ptr noundef nonnull dereferenceable(6) @.str.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool2.not.i.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %tobool2.not.i.i50, label %if.then.i, label %netif_is_vxlan.exit.i51.mlxsw_sp_fdb_nve_call_notifiers.exit_crit_edge

netif_is_vxlan.exit.i51.mlxsw_sp_fdb_nve_call_notifiers.exit_crit_edge: ; preds = %netif_is_vxlan.exit.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_fdb_nve_call_notifiers.exit

if.then.i:                                        ; preds = %netif_is_vxlan.exit.i51
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %info.i.i) #12
  %41 = call ptr @memset(ptr %info.i.i, i32 255, i32 68)
  %remote_ip.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 1
  %42 = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %trunc.not = icmp eq i32 %42, 0
  br i1 %trunc.not, label %sw.bb.i.i.i, label %sw.bb1.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %remote_ip.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %remote_ip.i.i, align 4
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr, align 4
  %sin_addr.i.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 1, i32 0, i32 2
  %46 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sin_addr.i.i.i, align 4
  br label %mlxsw_sp_fdb_vxlan_call_notifiers.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %remote_ip.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 10, ptr %remote_ip.i.i, align 4
  %sin6_addr.i.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 1, i32 0, i32 3
  %48 = call ptr @memcpy(ptr %sin6_addr.i.i.i, ptr %addr, i32 16)
  br label %mlxsw_sp_fdb_vxlan_call_notifiers.exit.i

mlxsw_sp_fdb_vxlan_call_notifiers.exit.i:         ; preds = %sw.bb1.i.i.i, %sw.bb.i.i.i
  %cond.i.i = select i1 %adding, i32 10, i32 11
  %frombool.i.i = zext i1 %adding to i8
  %dst_port.i.i = getelementptr i8, ptr %call6.i, i32 13808
  %49 = ptrtoint ptr %dst_port.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dst_port.i.i, align 4
  %remote_port.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %remote_port.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %remote_port.i.i, align 4
  %remote_vni.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %remote_vni.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %36, ptr %remote_vni.i.i, align 4
  %remote_ifindex.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %remote_ifindex.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %remote_ifindex.i.i, align 4
  %eth_addr.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mac, align 4
  %56 = ptrtoint ptr %eth_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %eth_addr.i.i, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %1, align 4
  %add.ptr1.i.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 5, i32 4
  %59 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %add.ptr1.i.i.i, align 4
  %vni1.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %vni1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %36, ptr %vni1.i.i, align 4
  %offloaded.i.i = getelementptr inbounds %struct.switchdev_notifier_vxlan_fdb_info, ptr %info.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %offloaded.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool.i.i, ptr %offloaded.i.i, align 4
  %call5.i.i = call i32 @call_switchdev_notifiers(i32 noundef %cond.i.i, ptr noundef nonnull %call6.i, ptr noundef nonnull %info.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %info.i.i) #12
  br label %mlxsw_sp_fdb_nve_call_notifiers.exit

mlxsw_sp_fdb_nve_call_notifiers.exit:             ; preds = %mlxsw_sp_fdb_vxlan_call_notifiers.exit.i, %netif_is_vxlan.exit.i51.mlxsw_sp_fdb_nve_call_notifiers.exit_crit_edge, %if.end15.mlxsw_sp_fdb_nve_call_notifiers.exit_crit_edge
  %cond = select i1 %adding, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #12
  %62 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %addr.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %63 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %mac, ptr %addr.i, align 4
  %vid1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %64 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %call34.i, ptr %vid1.i, align 4
  %offloaded2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %bf.shl.i = select i1 %adding, i8 32, i8 0
  %65 = ptrtoint ptr %offloaded2.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %bf.shl.i, ptr %offloaded2.i, align 2
  %call.i53 = call i32 @call_switchdev_notifiers(i32 noundef %cond, ptr noundef nonnull %call6.i, ptr noundef nonnull %info.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #12
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call) #12
  br label %cleanup

err_ip_resolve:                                   ; preds = %if.end9.err_ip_resolve_crit_edge, %__mlxsw_sp_fdb_notify_mac_uc_tunnel_process.exit.thread, %if.end.err_ip_resolve_crit_edge
  call void @mlxsw_sp_fid_put(ptr noundef nonnull %call) #12
  br label %err_fid_lookup

err_fid_lookup:                                   ; preds = %err_ip_resolve, %entry.err_fid_lookup_crit_edge
  %call22 = call fastcc i32 @mlxsw_sp_port_fdb_tunnel_uc_op(ptr noundef %mlxsw_sp, ptr noundef nonnull %mac, i16 noundef zeroext %conv2.i, i32 noundef %and4.i.i131.i, ptr noundef nonnull %addr, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %err_fid_lookup, %mlxsw_sp_fdb_nve_call_notifiers.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vni) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_fid_is_dummy(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_fid_lag_vid_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_fid_lookup_by_index(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_nve_learned_ip_resolve(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_fid_nve_ifindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_port_flag_is_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_net(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_schedule_dw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !105, !106, !107, !109, !111, !112, !114, !116, !117, !119, !120, !122, !123, !125, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !216, !217, !218, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !239, !240, !241, !242, !243, !245, !247, !249, !250, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !265, !266, !267, !269, !270, !271, !273, !274, !276, !277, !279, !280, !282}
!llvm.named.register.sp = !{!283}
!llvm.module.flags = !{!284, !285, !286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 1118, i32 6}
!2 = !{ptr @mlxsw_sp_switchdev_notifier, !3, !"mlxsw_sp_switchdev_notifier", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3381, i32 23}
!4 = !{ptr @mlxsw_sp1_switchdev_ops, !5, !"mlxsw_sp1_switchdev_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3695, i32 37}
!6 = !{ptr @mlxsw_sp2_switchdev_ops, !7, !"mlxsw_sp2_switchdev_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3704, i32 37}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/net/vxlan.h", i32 420, i32 43}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__mlxsw_item_offset._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @__mlxsw_item_offset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1130, i32 1}
!18 = distinct !{null, !17, !"mlxsw_reg_sfdf_flush_type_item", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1138, i32 1}
!21 = distinct !{null, !20, !"mlxsw_reg_sfdf_flush_static_item", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1152, i32 1}
!24 = distinct !{null, !23, !"mlxsw_reg_sfdf_fid_item", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1164, i32 1}
!27 = distinct !{null, !26, !"mlxsw_reg_sfdf_port_fid_system_port_item", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1097, i32 1}
!30 = !{ptr @mlxsw_reg_sfdf, !29, !"mlxsw_reg_sfdf", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 213, i32 1}
!33 = distinct !{null, !32, !"mlxsw_reg_sfd_op_item", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 222, i32 1}
!36 = distinct !{null, !35, !"mlxsw_reg_sfd_record_locator_item", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 231, i32 1}
!39 = distinct !{null, !38, !"mlxsw_reg_sfd_num_rec_item", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 245, i32 1}
!42 = distinct !{null, !41, !"mlxsw_reg_sfd_rec_swid_item", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 259, i32 1}
!45 = distinct !{null, !44, !"mlxsw_reg_sfd_rec_type_item", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 293, i32 1}
!48 = distinct !{null, !47, !"mlxsw_reg_sfd_rec_mac_item", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 313, i32 1}
!51 = distinct !{null, !50, !"mlxsw_reg_sfd_rec_action_item", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 277, i32 1}
!54 = distinct !{null, !53, !"mlxsw_reg_sfd_rec_policy_item", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 322, i32 1}
!57 = distinct !{null, !56, !"mlxsw_reg_sfd_uc_sub_port_item", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 335, i32 1}
!60 = distinct !{null, !59, !"mlxsw_reg_sfd_uc_fid_vid_item", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 342, i32 1}
!63 = distinct !{null, !62, !"mlxsw_reg_sfd_uc_system_port_item", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 173, i32 1}
!66 = !{ptr @mlxsw_reg_sfd, !65, !"mlxsw_reg_sfd", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 1951, i32 20}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 1956, i32 19}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 433, i32 1}
!73 = distinct !{null, !72, !"mlxsw_reg_sfd_mc_pgi_item", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 441, i32 1}
!76 = distinct !{null, !75, !"mlxsw_reg_sfd_mc_fid_vid_item", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 450, i32 1}
!79 = distinct !{null, !78, !"mlxsw_reg_sfd_mc_mid_item", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2101, i32 1}
!82 = distinct !{null, !81, !"mlxsw_reg_smid2_swid_item", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2108, i32 1}
!85 = distinct !{null, !84, !"mlxsw_reg_smid2_mid_item", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 215, i32 3}
!88 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @__mlxsw_item_bit_array_offset._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @__mlxsw_item_bit_array_offset._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2114, i32 1}
!93 = distinct !{null, !92, !"mlxsw_reg_smid2_port_item", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2120, i32 1}
!96 = distinct !{null, !95, !"mlxsw_reg_smid2_port_mask_item", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2095, i32 1}
!99 = !{ptr @mlxsw_reg_smid2, !98, !"mlxsw_reg_smid2", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 221, i32 3}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mlxsw_sp_bridge_device_create._entry, !101, !"_entry", i1 false, i1 false}
!106 = !{ptr @mlxsw_sp_bridge_device_create._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @mlxsw_sp_bridge_device_create.__msg, !108, !"__msg", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 222, i32 3}
!109 = !{ptr @mlxsw_sp_switchdev_event.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3341, i32 3}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mlxsw_sp_switchdev_event.__key.58, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3358, i32 3}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 141, i32 1}
!116 = distinct !{null, !115, !"mlxsw_reg_sfdat_swid_item", i1 false, i1 false}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 150, i32 1}
!119 = distinct !{null, !118, !"mlxsw_reg_sfdat_age_time_item", i1 false, i1 false}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 135, i32 1}
!122 = !{ptr @mlxsw_reg_sfdat, !121, !"mlxsw_reg_sfdat", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 771, i32 33}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 786, i32 33}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 471, i32 1}
!129 = distinct !{null, !128, !"mlxsw_reg_sfd_uc_tunnel_uip_msb_item", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 500, i32 1}
!132 = distinct !{null, !131, !"mlxsw_reg_sfd_uc_tunnel_uip_lsb_item", i1 false, i1 false}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 478, i32 1}
!135 = distinct !{null, !134, !"mlxsw_reg_sfd_uc_tunnel_fid_item", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 490, i32 1}
!138 = distinct !{null, !137, !"mlxsw_reg_sfd_uc_tunnel_protocol_item", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 379, i32 1}
!141 = distinct !{null, !140, !"mlxsw_reg_sfd_uc_lag_sub_port_item", i1 false, i1 false}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 392, i32 1}
!144 = distinct !{null, !143, !"mlxsw_reg_sfd_uc_lag_fid_vid_item", i1 false, i1 false}
!145 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 399, i32 1}
!147 = distinct !{null, !146, !"mlxsw_reg_sfd_uc_lag_lag_vid_item", i1 false, i1 false}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 406, i32 1}
!150 = distinct !{null, !149, !"mlxsw_reg_sfd_uc_lag_lag_id_item", i1 false, i1 false}
!151 = !{ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg, !152, !"__msg", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3273, i32 3}
!153 = !{ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.82, !154, !"__msg", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3278, i32 3}
!155 = !{ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.83, !156, !"__msg", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3282, i32 3}
!157 = !{ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.84, !158, !"__msg", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3286, i32 3}
!159 = !{ptr @mlxsw_sp_switchdev_vxlan_work_prepare.__msg.85, !160, !"__msg", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3290, i32 3}
!161 = !{ptr @mlxsw_sp1_bridge_8021ad_ops, !162, !"mlxsw_sp1_bridge_8021ad_ops", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2399, i32 41}
!163 = !{ptr @mlxsw_sp_bridge_vlan_aware_port_join.__msg, !164, !"__msg", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2063, i32 3}
!165 = !{ptr @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg, !166, !"__msg", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2129, i32 3}
!167 = !{ptr @mlxsw_sp_bridge_vlan_aware_vxlan_join.__msg.86, !168, !"__msg", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2134, i32 3}
!169 = !{ptr @mlxsw_sp2_bridge_8021ad_ops, !170, !"mlxsw_sp2_bridge_8021ad_ops", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2446, i32 41}
!171 = !{ptr @mlxsw_sp_bridge_8021q_ops, !172, !"mlxsw_sp_bridge_8021q_ops", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2208, i32 41}
!173 = !{ptr @mlxsw_sp_bridge_8021d_ops, !174, !"mlxsw_sp_bridge_8021d_ops", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2348, i32 41}
!175 = !{ptr @mlxsw_sp_bridge_8021d_port_join.__msg, !176, !"__msg", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2250, i32 3}
!177 = !{ptr @mlxsw_sp_bridge_8021d_vxlan_join.__msg, !178, !"__msg", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2297, i32 3}
!179 = !{ptr @mlxsw_sp_bridge_8021d_vxlan_join.__msg.87, !180, !"__msg", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2302, i32 3}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3651, i32 3}
!183 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mlxsw_sp_fdb_init._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @mlxsw_sp_fdb_init._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3657, i32 3}
!188 = !{ptr @mlxsw_sp_fdb_init._entry.90, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @mlxsw_sp_fdb_init._entry_ptr.92, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3664, i32 3}
!192 = !{ptr @mlxsw_sp_fdb_init._entry.93, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @mlxsw_sp_fdb_init._entry_ptr.95, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @mlxsw_sp_fdb_init.__key, !195, !"__key", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3668, i32 2}
!196 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @mlxsw_sp_fdb_init.__key.97, !195, !"__key", i1 false, i1 false}
!198 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @mlxsw_sp_switchdev_blocking_notifier, !200, !"mlxsw_sp_switchdev_blocking_notifier", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3633, i32 30}
!201 = !{ptr @mlxsw_sp_switchdev_vxlan_vlan_add.__msg, !202, !"__msg", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 3405, i32 3}
!203 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 1211, i32 23}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 1216, i32 23}
!207 = !{ptr @.str.101, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 1804, i32 20}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 1818, i32 19}
!211 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 1988, i32 19}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2926, i32 4}
!215 = !{ptr @mlxsw_sp_fdb_notify_work._rs, !214, !"_rs", i1 false, i1 false}
!216 = !{ptr @__func__.mlxsw_sp_fdb_notify_work, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @mlxsw_sp_fdb_notify_work._entry, !214, !"_entry", i1 false, i1 false}
!219 = !{ptr @mlxsw_sp_fdb_notify_work._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 569, i32 1}
!222 = distinct !{null, !221, !"mlxsw_reg_sfn_swid_item", i1 false, i1 false}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 575, i32 1}
!225 = distinct !{null, !224, !"mlxsw_reg_sfn_end_item", i1 false, i1 false}
!226 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 585, i32 1}
!228 = distinct !{null, !227, !"mlxsw_reg_sfn_num_rec_item", i1 false, i1 false}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 563, i32 1}
!231 = !{ptr @mlxsw_reg_sfn, !230, !"mlxsw_reg_sfn", i1 false, i1 false}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 621, i32 1}
!234 = distinct !{null, !233, !"mlxsw_reg_sfn_rec_type_item", i1 false, i1 false}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2633, i32 6}
!237 = !{ptr @mlxsw_sp_fdb_notify_mac_process._rs, !238, !"_rs", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2637, i32 3}
!239 = !{ptr @__func__.mlxsw_sp_fdb_notify_mac_process, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @mlxsw_sp_fdb_notify_mac_process._entry, !238, !"_entry", i1 false, i1 false}
!242 = !{ptr @mlxsw_sp_fdb_notify_mac_process._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2646, i32 34}
!245 = !{ptr @.str.117, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2652, i32 34}
!247 = !{ptr @mlxsw_sp_fdb_notify_mac_process._rs.118, !248, !"_rs", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2663, i32 3}
!249 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @mlxsw_sp_fdb_notify_mac_process._entry.119, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @mlxsw_sp_fdb_notify_mac_process._entry_ptr.121, !248, !"_entry_ptr", i1 false, i1 false}
!252 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 628, i32 1}
!254 = distinct !{null, !253, !"mlxsw_reg_sfn_rec_mac_item", i1 false, i1 false}
!255 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 643, i32 1}
!257 = distinct !{null, !256, !"mlxsw_reg_sfn_mac_fid_item", i1 false, i1 false}
!258 = !{ptr @.str.125, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 650, i32 1}
!260 = distinct !{null, !259, !"mlxsw_reg_sfn_mac_system_port_item", i1 false, i1 false}
!261 = !{ptr @mlxsw_sp_fdb_notify_mac_lag_process._rs, !262, !"_rs", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2699, i32 3}
!263 = !{ptr @__func__.mlxsw_sp_fdb_notify_mac_lag_process, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry, !262, !"_entry", i1 false, i1 false}
!266 = !{ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @mlxsw_sp_fdb_notify_mac_lag_process._rs.128, !268, !"_rs", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_switchdev.c", i32 2727, i32 3}
!269 = !{ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry.129, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @mlxsw_sp_fdb_notify_mac_lag_process._entry_ptr.130, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.131, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 666, i32 1}
!273 = distinct !{null, !272, !"mlxsw_reg_sfn_mac_lag_lag_id_item", i1 false, i1 false}
!274 = !{ptr @.str.133, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 684, i32 1}
!276 = distinct !{null, !275, !"mlxsw_reg_sfn_uc_tunnel_uip_msb_item", i1 false, i1 false}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 705, i32 1}
!279 = distinct !{null, !278, !"mlxsw_reg_sfn_uc_tunnel_uip_lsb_item", i1 false, i1 false}
!280 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 696, i32 1}
!282 = distinct !{null, !281, !"mlxsw_reg_sfn_uc_tunnel_protocol_item", i1 false, i1 false}
!283 = !{!"sp"}
!284 = !{i32 1, !"wchar_size", i32 2}
!285 = !{i32 1, !"min_enum_size", i32 4}
!286 = !{i32 8, !"branch-target-enforcement", i32 0}
!287 = !{i32 8, !"sign-return-address", i32 0}
!288 = !{i32 8, !"sign-return-address-all", i32 0}
!289 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!290 = !{i32 7, !"uwtable", i32 1}
!291 = !{i32 7, !"frame-pointer", i32 2}
!292 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!293 = !{!"branch_weights", i32 2000, i32 1}
!294 = !{i8 0, i8 2}
!295 = !{!"auto-init"}
!296 = !{!"branch_weights", i32 1, i32 2000}
!297 = !{i64 703604, i64 703665}
!298 = !{i64 706336}
!299 = !{i64 706621}
!300 = distinct !{!300, !301}
!301 = !{!"llvm.loop.peeled.count", i32 1}
