; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp_span_entry_ops = type { i8, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_span_ops = type { ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mlxsw_sp_span_trigger_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_span = type { %struct.work_struct, ptr, ptr, ptr, i32, %struct.list_head, %struct.mutex, %struct.list_head, i16, %struct.refcount_struct, %struct.atomic_t, i32, [0 x %struct.mlxsw_sp_span_entry] }
%struct.mlxsw_sp_span_entry = type { ptr, ptr, %struct.mlxsw_sp_span_parms, %struct.refcount_struct, i32 }
%struct.mlxsw_sp_span_parms = type { ptr, i32, [6 x i8], [6 x i8], %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, i16, i16, i8, i32 }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
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
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.mlxsw_sp_span_agent_parms = type { ptr, i16, i8, i32 }
%struct.mlxsw_sp_hdroom = type { i32, %struct.anon.166, %struct.anon.167, %struct.anon.168, i32, i32 }
%struct.anon.166 = type { [8 x %struct.mlxsw_sp_hdroom_prio] }
%struct.mlxsw_sp_hdroom_prio = type { i8, i8, i8, i8 }
%struct.anon.167 = type { [10 x %struct.mlxsw_sp_hdroom_buf] }
%struct.mlxsw_sp_hdroom_buf = type { i32, i32, i32, i8 }
%struct.anon.168 = type { i32, i32, i8 }
%struct.mlxsw_sp_span_analyzed_port = type { %struct.list_head, %struct.refcount_struct, i16, i8 }
%struct.mlxsw_sp_span_trigger_entry = type { %struct.list_head, ptr, ptr, %struct.refcount_struct, i16, i32, %struct.mlxsw_sp_span_trigger_parms }
%struct.mlxsw_sp_span_trigger_parms = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
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
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.58, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.58 = type { %struct.in6_addr }
%struct.bridge_vlan_info = type { i16, i16 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.team_port = type { ptr, %struct.hlist_node, %struct.list_head, ptr, i32, i8, %struct.anon.182, %struct.anon.183, i8, i8, %struct.anon.184, ptr, i32, i16, %struct.list_head, %struct.callback_head, [0 x i32] }
%struct.anon.182 = type { i8, i32, i8 }
%struct.anon.183 = type { i8, i8 }
%struct.anon.184 = type { [32 x i8], i32 }
%struct.slave = type { ptr, ptr, i32, i32, i32, [16 x i32], i8, i8, i8, i8, i32, i32, i32, i16, [32 x i8], ptr, %struct.tlb_slave_info, ptr, %struct.delayed_work, %struct.kobject, %struct.rtnl_link_stats64 }
%struct.tlb_slave_info = type { i32, i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.__ip6_tnl_parm = type { [16 x i8], i32, i8, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i32, i32, i32, i8, i8, i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }

@mlxsw_sp_span_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&span->analyzed_ports_lock\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&span->work)\00", [33 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_fini.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_fini.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_entry_ops_nop = internal constant { %struct.mlxsw_sp_span_entry_ops, [44 x i8] } { %struct.mlxsw_sp_span_entry_ops { i8 0, ptr null, ptr @mlxsw_sp_span_entry_nop_parms, ptr @mlxsw_sp_span_entry_nop_configure, ptr @mlxsw_sp_span_entry_nop_deconfigure }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_agent_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_agent_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1080, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot mirror to requested destination\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlxsw_sp_span_agent_get\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_agent_get._entry_ptr = internal global ptr @mlxsw_sp_span_agent_get._entry, section ".printk_index", align 4
@mlxsw_sp_span_agent_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_agent_put.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_analyzed_port_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_agent_bind.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_agent_unbind.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_agent_unbind.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_agent_unbind.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_trigger_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_trigger_enable.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_trigger_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_trigger_disable.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_trigger_is_ingress.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_span_ops = dso_local constant { %struct.mlxsw_sp_span_ops, [24 x i8] } { %struct.mlxsw_sp_span_ops { ptr @mlxsw_sp1_span_init, ptr @mlxsw_sp1_span_policer_id_base_set }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp2_span_ops = dso_local constant { %struct.mlxsw_sp_span_ops, [24 x i8] } { %struct.mlxsw_sp_span_ops { ptr @mlxsw_sp2_span_init, ptr @mlxsw_sp2_span_policer_id_base_set }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp3_span_ops = dso_local constant { %struct.mlxsw_sp_span_ops, [24 x i8] } { %struct.mlxsw_sp_span_ops { ptr @mlxsw_sp2_span_init, ptr @mlxsw_sp2_span_policer_id_base_set }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_sp_span_entry_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 786, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Cannot mirror to a port which belongs to a different mlxsw instance\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlxsw_sp_span_entry_configure\00", [34 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_entry_configure._entry_ptr = internal global ptr @mlxsw_sp_span_entry_configure._entry, section ".printk_index", align 4
@mlxsw_sp_span_entry_configure._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 793, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to offload mirror\0A\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_entry_configure._entry_ptr.19 = internal global ptr @mlxsw_sp_span_entry_configure._entry.17, section ".printk_index", align 4
@mlxsw_sp_span_trigger_ops_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_span_entry_ops_arr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @mlxsw_sp1_span_entry_ops_cpu, ptr @mlxsw_sp_span_entry_ops_phys, ptr @mlxsw_sp_span_entry_ops_gretap4, ptr @mlxsw_sp_span_entry_ops_gretap6, ptr @mlxsw_sp_span_entry_ops_vlan], [44 x i8] zeroinitializer }, align 32
@mlxsw_sp1_span_entry_ops_cpu = internal constant { %struct.mlxsw_sp_span_entry_ops, [44 x i8] } { %struct.mlxsw_sp_span_entry_ops { i8 1, ptr @mlxsw_sp1_span_cpu_can_handle, ptr @mlxsw_sp1_span_entry_cpu_parms, ptr @mlxsw_sp1_span_entry_cpu_configure, ptr @mlxsw_sp1_span_entry_cpu_deconfigure }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp1_span_trigger_ops_arr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlxsw_sp_span_trigger_port_ops, ptr @mlxsw_sp1_span_trigger_global_ops], [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_entry_ops_phys = internal constant { %struct.mlxsw_sp_span_entry_ops, [44 x i8] } { %struct.mlxsw_sp_span_entry_ops { i8 1, ptr @mlxsw_sp_port_dev_check, ptr @mlxsw_sp_span_entry_phys_parms, ptr @mlxsw_sp_span_entry_phys_configure, ptr @mlxsw_sp_span_entry_phys_deconfigure }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_entry_ops_gretap4 = internal constant { %struct.mlxsw_sp_span_entry_ops, [44 x i8] } { %struct.mlxsw_sp_span_entry_ops { i8 0, ptr @netif_is_gretap, ptr @mlxsw_sp_span_entry_gretap4_parms, ptr @mlxsw_sp_span_entry_gretap4_configure, ptr @mlxsw_sp_span_entry_gretap4_deconfigure }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_entry_ops_gretap6 = internal constant { %struct.mlxsw_sp_span_entry_ops, [44 x i8] } { %struct.mlxsw_sp_span_entry_ops { i8 0, ptr @netif_is_ip6gretap, ptr @mlxsw_sp_span_entry_gretap6_parms, ptr @mlxsw_sp_span_entry_gretap6_configure, ptr @mlxsw_sp_span_entry_gretap6_deconfigure }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_span_entry_ops_vlan = internal constant { %struct.mlxsw_sp_span_entry_ops, [44 x i8] } { %struct.mlxsw_sp_span_entry_ops { i8 0, ptr @mlxsw_sp_span_vlan_can_handle, ptr @mlxsw_sp_span_entry_vlan_parms, ptr @mlxsw_sp_span_entry_vlan_configure, ptr @mlxsw_sp_span_entry_vlan_deconfigure }, [44 x i8] zeroinitializer }, align 32
@mlxsw_reg_mpat = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28646, i16 120, ptr @.str.41 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 35, ptr null, ptr null }, align 1
@.str.20 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_mpat_pa_id\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_mpat_system_port\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_mpat_e\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mpat_qos\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_mpat_be\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_mpat_span_type\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_mpat_session_id\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_mpat_pide\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mpat_pid\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpat\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gretap\00", [25 x i8] zeroinitializer }, align 32
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@mlxsw_sp_span_gretap4_route.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@team_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_team.h\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bond_is_active_slave_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/bonding.h\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_mpat_eth_rspan_vid\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_mpat_eth_rspan_version\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_mpat_eth_rspan_tp\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_mpat_eth_rspan_ttl\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_mpat_eth_rspan_protocol\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_mpat_eth_rspan_sip4\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_mpat_eth_rspan_dip4\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6gretap\00", [22 x i8] zeroinitializer }, align 32
@nd_tbl = external dso_local global %struct.neigh_table, align 4
@mlxsw_sp_span_gretap6_route.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_span_trigger_port_ops = internal constant { %struct.mlxsw_sp_span_trigger_ops, [44 x i8] } { %struct.mlxsw_sp_span_trigger_ops { ptr @mlxsw_sp_span_trigger_port_bind, ptr @mlxsw_sp_span_trigger_port_unbind, ptr @mlxsw_sp_span_trigger_port_matches, ptr @mlxsw_sp_span_trigger_port_enable, ptr @mlxsw_sp_span_trigger_port_disable }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp1_span_trigger_global_ops = internal constant { %struct.mlxsw_sp_span_trigger_ops, [44 x i8] } { %struct.mlxsw_sp_span_trigger_ops { ptr @mlxsw_sp1_span_trigger_global_bind, ptr @mlxsw_sp1_span_trigger_global_unbind, ptr @mlxsw_sp1_span_trigger_global_matches, ptr @mlxsw_sp1_span_trigger_global_enable, ptr @mlxsw_sp1_span_trigger_global_disable }, [44 x i8] zeroinitializer }, align 32
@__mlxsw_sp_span_trigger_port_bind.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_reg_mpar = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28645, i16 12, ptr @.str.80 }, [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_mpar_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_mpar_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_mpar_enable\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mpar_i_e\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_mpar_pa_id\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_mpar_probability_rate\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpar\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp1_span_trigger_global_matches.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp2_span_entry_ops_arr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @mlxsw_sp2_span_entry_ops_cpu, ptr @mlxsw_sp_span_entry_ops_phys, ptr @mlxsw_sp_span_entry_ops_gretap4, ptr @mlxsw_sp_span_entry_ops_gretap6, ptr @mlxsw_sp_span_entry_ops_vlan], [44 x i8] zeroinitializer }, align 32
@mlxsw_sp2_span_entry_ops_cpu = internal constant { %struct.mlxsw_sp_span_entry_ops, [44 x i8] } { %struct.mlxsw_sp_span_entry_ops { i8 1, ptr @mlxsw_sp2_span_cpu_can_handle, ptr @mlxsw_sp2_span_entry_cpu_parms, ptr @mlxsw_sp2_span_entry_cpu_configure, ptr @mlxsw_sp2_span_entry_cpu_deconfigure }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp2_span_trigger_ops_arr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlxsw_sp_span_trigger_port_ops, ptr @mlxsw_sp2_span_trigger_global_ops], [24 x i8] zeroinitializer }, align 32
@mlxsw_sp2_span_trigger_global_ops = internal constant { %struct.mlxsw_sp_span_trigger_ops, [44 x i8] } { %struct.mlxsw_sp_span_trigger_ops { ptr @mlxsw_sp2_span_trigger_global_bind, ptr @mlxsw_sp2_span_trigger_global_unbind, ptr @mlxsw_sp2_span_trigger_global_matches, ptr @mlxsw_sp2_span_trigger_global_enable, ptr @mlxsw_sp2_span_trigger_global_disable }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp2_span_trigger_global_bind.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_reg_mpagr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28535, i16 12, ptr @.str.87 }, [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_mpagr_trigger\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_mpagr_pa_id\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_mpagr_probability_rate\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mpagr\00", [26 x i8] zeroinitializer }, align 32
@__mlxsw_sp2_span_trigger_global_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_reg_momte = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28531, i16 16, ptr @.str.94 }, [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_momte_local_port\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_momte_lp_msb\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_momte_type\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"momte\00", [26 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry = internal constant %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.22, i32 216, ptr null, ptr null }, align 1
@.str.95 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,element_size=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__mlxsw_item_bit_array_offset\00", [34 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry_ptr = internal global ptr @__mlxsw_item_bit_array_offset._entry, section ".printk_index", align 4
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_momte_tclass_en\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_reg_mogcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28538, i16 32, ptr @.str.98 }, [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mogcr\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_mogcr_mirroring_pid_base\00", [35 x i8] zeroinitializer }, align 32
@switch.table.mlxsw_sp_span_agent_bind = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.mlxsw_sp2_span_trigger_global_bind = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 2, i32 6], [20 x i8] zeroinitializer }, align 32
@switch.table.__mlxsw_sp2_span_trigger_global_enable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49, i32 32, i32 96], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 96, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 111, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 128, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [28 x i8] c"mlxsw_sp_span_entry_ops_nop\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 768, i32 45 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1076, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1080, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"mlxsw_sp1_span_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1693, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"mlxsw_sp2_span_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1733, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant [19 x i8] c"mlxsw_sp3_span_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1738, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 785, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 793, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [29 x i8] c"mlxsw_sp1_span_entry_ops_arr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 682, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant [29 x i8] c"mlxsw_sp1_span_entry_ops_cpu\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 159, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant [31 x i8] c"mlxsw_sp1_span_trigger_ops_arr\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1344, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [29 x i8] c"mlxsw_sp_span_entry_ops_phys\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 219, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_span_entry_ops_gretap4\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 511, i32 45 }
@___asan_gen_.177 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_span_entry_ops_gretap6\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 615, i32 32 }
@___asan_gen_.180 = private unnamed_addr constant [29 x i8] c"mlxsw_sp_span_entry_ops_vlan\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 674, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mpat\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 33, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10038, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10051, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10057, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10068, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10078, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10102, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10045, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10108, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10114, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10032, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 43, i32 43 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 695, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"../include/linux/if_team.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 75, i32 9 }
@___asan_gen_.241 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 723, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [25 x i8] c"../include/net/bonding.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 444, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10124, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10138, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10150, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10171, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10165, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10190, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10183, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"../include/net/gre.h\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 49, i32 43 }
@___asan_gen_.270 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_span_trigger_port_ops\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1286, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant [34 x i8] c"mlxsw_sp1_span_trigger_global_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1335, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mpar\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10262, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10280, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10273, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10286, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10297, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10256, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant [29 x i8] c"mlxsw_sp2_span_entry_ops_arr\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 736, i32 33 }
@___asan_gen_.303 = private unnamed_addr constant [29 x i8] c"mlxsw_sp2_span_entry_ops_cpu\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 727, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant [31 x i8] c"mlxsw_sp2_span_trigger_ops_arr\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1467, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant [34 x i8] c"mlxsw_sp2_span_trigger_global_ops\00", align 1
@___asan_gen_.310 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1458, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_mpagr\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10978, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10984, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10994, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10961, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_momte\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 11020, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 11037, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 11014, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 215, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 11045, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_mogcr\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10925, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 10951, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [38 x i8] c"switch.table.mlxsw_sp_span_agent_bind\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [48 x i8] c"switch.table.mlxsw_sp2_span_trigger_global_bind\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [52 x i8] c"switch.table.__mlxsw_sp2_span_trigger_global_enable\00", align 1
@llvm.compiler.used = appending global [96 x ptr] [ptr @__mlxsw_item_bit_array_offset._entry, ptr @__mlxsw_item_bit_array_offset._entry_ptr, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_span_agent_get._entry, ptr @mlxsw_sp_span_agent_get._entry_ptr, ptr @mlxsw_sp_span_entry_configure._entry, ptr @mlxsw_sp_span_entry_configure._entry.17, ptr @mlxsw_sp_span_entry_configure._entry_ptr, ptr @mlxsw_sp_span_entry_configure._entry_ptr.19, ptr @mlxsw_sp_span_init.__key, ptr @.str, ptr @mlxsw_sp_span_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @mlxsw_sp_span_entry_ops_nop, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mlxsw_sp1_span_ops, ptr @mlxsw_sp2_span_ops, ptr @mlxsw_sp3_span_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @mlxsw_sp1_span_entry_ops_arr, ptr @mlxsw_sp1_span_entry_ops_cpu, ptr @mlxsw_sp1_span_trigger_ops_arr, ptr @mlxsw_sp_span_entry_ops_phys, ptr @mlxsw_sp_span_entry_ops_gretap4, ptr @mlxsw_sp_span_entry_ops_gretap6, ptr @mlxsw_sp_span_entry_ops_vlan, ptr @mlxsw_reg_mpat, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @mlxsw_sp_span_trigger_port_ops, ptr @mlxsw_sp1_span_trigger_global_ops, ptr @mlxsw_reg_mpar, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @mlxsw_sp2_span_entry_ops_arr, ptr @mlxsw_sp2_span_entry_ops_cpu, ptr @mlxsw_sp2_span_trigger_ops_arr, ptr @mlxsw_sp2_span_trigger_global_ops, ptr @mlxsw_reg_mpagr, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @mlxsw_reg_momte, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @mlxsw_reg_mogcr, ptr @.str.98, ptr @.str.99, ptr @switch.table.mlxsw_sp_span_agent_bind, ptr @switch.table.mlxsw_sp2_span_trigger_global_bind, ptr @switch.table.__mlxsw_sp2_span_trigger_global_enable], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_entry_ops_nop to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_agent_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_span_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_span_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp3_span_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_entry_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_entry_configure._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_span_entry_ops_arr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_span_entry_ops_cpu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_span_trigger_ops_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_entry_ops_phys to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_entry_ops_gretap4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_entry_ops_gretap6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_entry_ops_vlan to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mpat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_span_trigger_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_span_trigger_global_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mpar to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_span_entry_ops_arr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_span_entry_ops_cpu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_span_trigger_ops_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_span_trigger_global_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mpagr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_momte to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mogcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlxsw_sp_span_agent_bind to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlxsw_sp2_span_trigger_global_bind to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__mlxsw_sp2_span_trigger_global_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_span_init(ptr noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #17
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call2 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %3, i32 noundef 11) #17
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call4 = tail call i64 @mlxsw_core_res_get(ptr noundef %5, i32 noundef 11) #17
  %conv = trunc i64 %call4 to i32
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv, i32 80) #17
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 184) #17
  %retval.0.i = select i1 %7, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #20
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %policer_id_base_ref_count = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %policer_id_base_ref_count, i32 noundef 4) #17
  %9 = ptrtoint ptr %policer_id_base_ref_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %policer_id_base_ref_count, align 4
  %entries_count9 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %entries_count9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %entries_count9, align 4
  %active_entries_count = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count, i32 noundef 4) #17
  %11 = ptrtoint ptr %active_entries_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %active_entries_count, align 16
  %analyzed_ports_lock = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %analyzed_ports_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlxsw_sp_span_init.__key) #17
  %analyzed_ports_list = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %analyzed_ports_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %analyzed_ports_list, ptr %analyzed_ports_list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %analyzed_ports_list, ptr %prev.i, align 64
  %trigger_entries_list = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %trigger_entries_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %trigger_entries_list, ptr %trigger_entries_list, align 32
  %prev.i64 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %trigger_entries_list, ptr %prev.i64, align 4
  %mlxsw_sp10 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %call9.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %mlxsw_sp10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mlxsw_sp, ptr %mlxsw_sp10, align 4
  %span11 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %17 = ptrtoint ptr %span11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %span11, align 4
  %18 = ptrtoint ptr %entries_count9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entries_count9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp67 = icmp sgt i32 %19, 0
  br i1 %cmp67, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %20 = phi ptr [ %23, %for.body.for.body_crit_edge ], [ %call9.i.i, %if.end8.for.body_crit_edge ]
  %i.068 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %id = getelementptr %struct.mlxsw_sp_span, ptr %20, i32 0, i32 12, i32 %i.068, i32 4
  %21 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.068, ptr %id, align 4
  %inc = add nuw nsw i32 %i.068, 1
  %22 = ptrtoint ptr %span11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %span11, align 4
  %entries_count13 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %entries_count13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries_count13, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %span_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 38
  %26 = ptrtoint ptr %span_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %span_ops, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call16 = tail call i32 %29(ptr noundef %mlxsw_sp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %err_init

if.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @devlink_resource_occ_get_register(ptr noundef %call, i64 noundef 9, ptr noundef nonnull @mlxsw_sp_span_occ_get, ptr noundef %mlxsw_sp) #17
  tail call void @__init_work(ptr noundef nonnull %call9.i.i, i32 noundef 0) #17
  %30 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %call9.i.i, align 128
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call9.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlxsw_sp_span_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry24 = getelementptr inbounds %struct.work_struct, ptr %call9.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i65 = getelementptr inbounds %struct.work_struct, ptr %call9.i.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry24, ptr %prev.i65, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call9.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mlxsw_sp_span_respin_work, ptr %func, align 4
  br label %cleanup

err_init:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %span11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %span11, align 4
  %analyzed_ports_lock29 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %35, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %analyzed_ports_lock29) #17
  %36 = ptrtoint ptr %span11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %span11, align 4
  tail call void @kfree(ptr noundef %37) #17
  br label %cleanup

cleanup:                                          ; preds = %err_init, %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %err_init ], [ 0, %if.end19 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_register(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_span_occ_get(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span, align 4
  %active_entries_count = getelementptr inbounds %struct.mlxsw_sp_span, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_entries_count, i32 noundef 4) #17
  %2 = ptrtoint ptr %active_entries_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %active_entries_count, align 4
  %conv = sext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_span_respin_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %sparms = alloca %struct.mlxsw_sp_span_parms, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 4
  tail call void @rtnl_lock() #17
  %span2 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %span2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %span2, align 4
  %entries_count31 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %entries_count31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries_count31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp32 = icmp sgt i32 %5, 0
  br i1 %cmp32, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %.fca.1.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 7
  %.fca.8.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 8
  %.fca.9.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 9
  %.fca.10.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 10
  %.fca.11.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 11
  %.fca.12.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 12
  %.fca.13.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 13
  %.fca.14.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 14
  %.fca.15.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 15
  %bus_info11.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %3, %for.body.lr.ph ], [ %68, %cleanup.for.body_crit_edge ]
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sparms) #17
  %7 = call ptr @memset(ptr %sparms, i32 0, i32 64)
  %ref_count = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #17
  %8 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %for.body
  %ops = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %parms_set = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %parms_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parms_set, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call8 = call i32 %15(ptr noundef %1, ptr noundef %17, ptr noundef nonnull %sparms) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %parms = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %sparms, ptr noundef dereferenceable(64) %parms, i32 64) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  %18 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parms, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then14.mlxsw_sp_span_entry_deconfigure.exit_crit_edge, label %if.then.i

if.then14.mlxsw_sp_span_entry_deconfigure.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_deconfigure.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %deconfigure.i = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %deconfigure.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %deconfigure.i, align 4
  call void %23(ptr noundef %arrayidx) #17
  br label %mlxsw_sp_span_entry_deconfigure.exit

mlxsw_sp_span_entry_deconfigure.exit:             ; preds = %if.then.i, %if.then14.mlxsw_sp_span_entry_deconfigure.exit_crit_edge
  %24 = ptrtoint ptr %sparms to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load = load i32, ptr %sparms, align 4
  %.fca.0.insert = insertvalue [16 x i32] poison, i32 %.fca.0.load, 0
  %25 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [16 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %26 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [16 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %27 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [16 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %28 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [16 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %29 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [16 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %30 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [16 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %31 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [16 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %32 = ptrtoint ptr %.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.8.load = load i32, ptr %.fca.8.gep, align 4
  %.fca.8.insert = insertvalue [16 x i32] %.fca.7.insert, i32 %.fca.8.load, 8
  %33 = ptrtoint ptr %.fca.9.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.9.load = load i32, ptr %.fca.9.gep, align 4
  %.fca.9.insert = insertvalue [16 x i32] %.fca.8.insert, i32 %.fca.9.load, 9
  %34 = ptrtoint ptr %.fca.10.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %.fca.10.load = load i32, ptr %.fca.10.gep, align 4
  %.fca.10.insert = insertvalue [16 x i32] %.fca.9.insert, i32 %.fca.10.load, 10
  %35 = ptrtoint ptr %.fca.11.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %.fca.11.load = load i32, ptr %.fca.11.gep, align 4
  %.fca.11.insert = insertvalue [16 x i32] %.fca.10.insert, i32 %.fca.11.load, 11
  %36 = ptrtoint ptr %.fca.12.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.12.load = load i32, ptr %.fca.12.gep, align 4
  %.fca.12.insert = insertvalue [16 x i32] %.fca.11.insert, i32 %.fca.12.load, 12
  %37 = ptrtoint ptr %.fca.13.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.13.load = load i32, ptr %.fca.13.gep, align 4
  %.fca.13.insert = insertvalue [16 x i32] %.fca.12.insert, i32 %.fca.13.load, 13
  %38 = ptrtoint ptr %.fca.14.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.14.load = load i32, ptr %.fca.14.gep, align 4
  %.fca.14.insert = insertvalue [16 x i32] %.fca.13.insert, i32 %.fca.14.load, 14
  %39 = ptrtoint ptr %.fca.15.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.15.load = load i32, ptr %.fca.15.gep, align 4
  %.fca.15.insert = insertvalue [16 x i32] %.fca.14.insert, i32 %.fca.15.load, 15
  %40 = inttoptr i32 %.fca.0.load to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.0.load)
  %tobool.not.i28 = icmp eq i32 %.fca.0.load, 0
  br i1 %tobool.not.i28, label %mlxsw_sp_span_entry_deconfigure.exit.mlxsw_sp_span_entry_configure.exit_crit_edge, label %if.end.i

mlxsw_sp_span_entry_deconfigure.exit.mlxsw_sp_span_entry_configure.exit_crit_edge: ; preds = %mlxsw_sp_span_entry_deconfigure.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_configure.exit

if.end.i:                                         ; preds = %mlxsw_sp_span_entry_deconfigure.exit
  %mlxsw_sp2.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %mlxsw_sp2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mlxsw_sp2.i, align 8
  %cmp.not.i = icmp eq ptr %42, %1
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.set_parms.sink.split.i_crit_edge

if.end.i.set_parms.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_parms.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %configure.i = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %configure.i, align 4
  %call.i = call i32 %46(ptr noundef %arrayidx, [16 x i32] %.fca.15.insert) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.mlxsw_sp_span_entry_configure.exit_crit_edge, label %if.end5.i.set_parms.sink.split.i_crit_edge

if.end5.i.set_parms.sink.split.i_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_parms.sink.split.i

if.end5.i.mlxsw_sp_span_entry_configure.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_configure.exit

set_parms.sink.split.i:                           ; preds = %if.end5.i.set_parms.sink.split.i_crit_edge, %if.end.i.set_parms.sink.split.i_crit_edge
  %.str.18.sink.i = phi ptr [ @.str.15, %if.end.i.set_parms.sink.split.i_crit_edge ], [ @.str.18, %if.end5.i.set_parms.sink.split.i_crit_edge ]
  %47 = ptrtoint ptr %bus_info11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus_info11.i, align 4
  %dev12.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev12.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull %.str.18.sink.i) #22
  br label %mlxsw_sp_span_entry_configure.exit

mlxsw_sp_span_entry_configure.exit:               ; preds = %set_parms.sink.split.i, %if.end5.i.mlxsw_sp_span_entry_configure.exit_crit_edge, %mlxsw_sp_span_entry_deconfigure.exit.mlxsw_sp_span_entry_configure.exit_crit_edge
  %sparms.sroa.0.0.i = phi ptr [ %40, %if.end5.i.mlxsw_sp_span_entry_configure.exit_crit_edge ], [ null, %mlxsw_sp_span_entry_deconfigure.exit.mlxsw_sp_span_entry_configure.exit_crit_edge ], [ null, %set_parms.sink.split.i ]
  %51 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sparms.sroa.0.0.i, ptr %parms, align 4
  %sparms.sroa.7.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 1
  %52 = ptrtoint ptr %sparms.sroa.7.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.fca.1.load, ptr %sparms.sroa.7.0.parms.sroa_idx.i, align 4
  %sparms.sroa.9.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 2
  %53 = ptrtoint ptr %sparms.sroa.9.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.fca.2.load, ptr %sparms.sroa.9.0.parms.sroa_idx.i, align 4
  %sparms.sroa.11.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 2, i32 4
  %54 = ptrtoint ptr %sparms.sroa.11.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.fca.3.load, ptr %sparms.sroa.11.0.parms.sroa_idx.i, align 4
  %sparms.sroa.13.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 3, i32 2
  %55 = ptrtoint ptr %sparms.sroa.13.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.fca.4.load, ptr %sparms.sroa.13.0.parms.sroa_idx.i, align 4
  %sparms.sroa.15.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 4
  %56 = ptrtoint ptr %sparms.sroa.15.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.fca.5.load, ptr %sparms.sroa.15.0.parms.sroa_idx.i, align 4
  %sparms.sroa.17.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 4, i32 0, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %sparms.sroa.17.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.fca.6.load, ptr %sparms.sroa.17.0.parms.sroa_idx.i, align 4
  %sparms.sroa.19.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 4, i32 0, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %sparms.sroa.19.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.fca.7.load, ptr %sparms.sroa.19.0.parms.sroa_idx.i, align 4
  %sparms.sroa.21.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 4, i32 0, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %sparms.sroa.21.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.fca.8.load, ptr %sparms.sroa.21.0.parms.sroa_idx.i, align 4
  %sparms.sroa.23.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 5
  %60 = ptrtoint ptr %sparms.sroa.23.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.fca.9.load, ptr %sparms.sroa.23.0.parms.sroa_idx.i, align 4
  %sparms.sroa.25.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 5, i32 0, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %sparms.sroa.25.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.fca.10.load, ptr %sparms.sroa.25.0.parms.sroa_idx.i, align 4
  %sparms.sroa.27.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 5, i32 0, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %sparms.sroa.27.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.fca.11.load, ptr %sparms.sroa.27.0.parms.sroa_idx.i, align 4
  %sparms.sroa.29.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 5, i32 0, i32 0, i32 0, i32 3
  %63 = ptrtoint ptr %sparms.sroa.29.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.fca.12.load, ptr %sparms.sroa.29.0.parms.sroa_idx.i, align 4
  %sparms.sroa.31.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 6
  %64 = ptrtoint ptr %sparms.sroa.31.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.fca.13.load, ptr %sparms.sroa.31.0.parms.sroa_idx.i, align 4
  %sparms.sroa.33.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 8
  %65 = ptrtoint ptr %sparms.sroa.33.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.fca.14.load, ptr %sparms.sroa.33.0.parms.sroa_idx.i, align 4
  %sparms.sroa.35.0.parms.sroa_idx.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.033, i32 2, i32 9
  %66 = ptrtoint ptr %sparms.sroa.35.0.parms.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.fca.15.load, ptr %sparms.sroa.35.0.parms.sroa_idx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_span_entry_configure.exit, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sparms) #17
  %inc = add nuw nsw i32 %i.033, 1
  %67 = ptrtoint ptr %span2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %span2, align 4
  %entries_count = getelementptr inbounds %struct.mlxsw_sp_span, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %entries_count, align 4
  %cmp = icmp slt i32 %inc, %70
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @rtnl_unlock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_span_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #17
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %2 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %span, align 4
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %3) #17
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call, i64 noundef 9) #17
  %4 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %span, align 4
  %trigger_entries_list = getelementptr inbounds %struct.mlxsw_sp_span, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %trigger_entries_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %trigger_entries_list, align 4
  %cmp.i.not = icmp eq ptr %7, %trigger_entries_list
  br i1 %cmp.i.not, label %entry.if.end32_crit_edge, label %land.rhs

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %.b111 = load i1, ptr @mlxsw_sp_span_fini.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.end32_crit_edge, label %if.then, !prof !257

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_fini.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 9, ptr noundef null) #17
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %8 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %span, align 4
  %analyzed_ports_list = getelementptr inbounds %struct.mlxsw_sp_span, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %analyzed_ports_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %analyzed_ports_list, align 4
  %cmp.i112.not = icmp eq ptr %11, %analyzed_ports_list
  br i1 %cmp.i112.not, label %if.end32.if.end90_crit_edge, label %land.rhs52

if.end32.if.end90_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end90

land.rhs52:                                       ; preds = %if.end32
  %.b109110 = load i1, ptr @mlxsw_sp_span_fini.__already_done.4, align 1
  br i1 %.b109110, label %land.rhs52.if.end90_crit_edge, label %if.then63, !prof !257

land.rhs52.if.end90_crit_edge:                    ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end90

if.then63:                                        ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_fini.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 129, i32 noundef 9, ptr noundef null) #17
  br label %if.end90

if.end90:                                         ; preds = %if.then63, %land.rhs52.if.end90_crit_edge, %if.end32.if.end90_crit_edge
  %12 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %span, align 4
  %analyzed_ports_lock = getelementptr inbounds %struct.mlxsw_sp_span, ptr %13, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %analyzed_ports_lock) #17
  %14 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %span, align 4
  tail call void @kfree(ptr noundef %15) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_unregister(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_span_entry_find_by_port(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef readnone %to_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %0 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span, align 4
  %entries_count13 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %entries_count13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entries_count13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.cleanup4_crit_edge

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup4

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %10, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ref_count = getelementptr %struct.mlxsw_sp_span, ptr %4, i32 0, i32 12, i32 %i.015, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #17
  %5 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.mlxsw_sp_span, ptr %4, i32 0, i32 12, i32 %i.015
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %8, %to_dev
  br i1 %cmp3, label %land.lhs.true.cleanup4_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true.cleanup4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup4

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %9 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %span, align 4
  %entries_count = getelementptr inbounds %struct.mlxsw_sp_span, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entries_count, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup4_crit_edge

for.inc.cleanup4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup4

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup4:                                         ; preds = %for.inc.cleanup4_crit_edge, %land.lhs.true.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup4_crit_edge ], [ %arrayidx, %land.lhs.true.cleanup4_crit_edge ], [ null, %for.inc.cleanup4_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_span_entry_invalidate(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %span_entry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parms.i = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 2
  %0 = ptrtoint ptr %parms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parms.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mlxsw_sp_span_entry_deconfigure.exit_crit_edge, label %if.then.i

entry.mlxsw_sp_span_entry_deconfigure.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_deconfigure.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %deconfigure.i = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %deconfigure.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %deconfigure.i, align 4
  tail call void %5(ptr noundef %span_entry) #17
  br label %mlxsw_sp_span_entry_deconfigure.exit

mlxsw_sp_span_entry_deconfigure.exit:             ; preds = %if.then.i, %entry.mlxsw_sp_span_entry_deconfigure.exit_crit_edge
  %ops = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mlxsw_sp_span_entry_ops_nop, ptr %ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_span_respin(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %0 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span, align 4
  %active_entries_count = getelementptr inbounds %struct.mlxsw_sp_span, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_entries_count, i32 noundef 4) #17
  %2 = ptrtoint ptr %active_entries_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %active_entries_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %span, align 4
  %call2 = tail call zeroext i1 @mlxsw_core_schedule_work(ptr noundef %5) #17
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_schedule_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_span_agent_get(ptr noundef %mlxsw_sp, ptr nocapture noundef writeonly %p_span_id, ptr nocapture noundef readonly %parms) local_unnamed_addr #0 align 64 {
entry:
  %sparms = alloca %struct.mlxsw_sp_span_parms, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parms, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sparms) #17
  %2 = call ptr @memset(ptr %sparms, i32 255, i32 64)
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b76 = load i1, ptr @mlxsw_sp_span_agent_get.__already_done, align 1
  br i1 %.b76, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !257

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_agent_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1076, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1076) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %span1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %3 = ptrtoint ptr %span1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %span1.i, align 4
  %span_entry_ops_arr_size.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %span_entry_ops_arr_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %span_entry_ops_arr_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11.not.i = icmp eq i32 %6, 0
  br i1 %cmp11.not.i, label %if.end30.do.end43_crit_edge, label %for.body.lr.ph.i

if.end30.do.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end43

for.body.lr.ph.i:                                 ; preds = %if.end30
  %span_entry_ops_arr.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %4, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %span_entry_ops_arr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %span_entry_ops_arr.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %i.012.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %can_handle.i = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %can_handle.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %can_handle.i, align 4
  %call.i = tail call zeroext i1 %12(ptr noundef %1) #17
  br i1 %call.i, label %mlxsw_sp_span_entry_ops.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %13 = ptrtoint ptr %span_entry_ops_arr_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %span_entry_ops_arr_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end43_crit_edge

for.inc.i.do.end43_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end43

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

mlxsw_sp_span_entry_ops.exit:                     ; preds = %for.body.i
  %15 = ptrtoint ptr %span_entry_ops_arr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %span_entry_ops_arr.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %16, i32 %i.012.i
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i, align 4
  %tobool39.not = icmp eq ptr %18, null
  br i1 %tobool39.not, label %mlxsw_sp_span_entry_ops.exit.do.end43_crit_edge, label %if.end44

mlxsw_sp_span_entry_ops.exit.do.end43_crit_edge:  ; preds = %mlxsw_sp_span_entry_ops.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end43

do.end43:                                         ; preds = %mlxsw_sp_span_entry_ops.exit.do.end43_crit_edge, %for.inc.i.do.end43_crit_edge, %if.end30.do.end43_crit_edge
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %19 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.6) #22
  br label %cleanup

if.end44:                                         ; preds = %mlxsw_sp_span_entry_ops.exit
  %23 = call ptr @memset(ptr %sparms, i32 0, i32 64)
  %parms_set = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %parms_set to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parms_set, align 4
  %call45 = call i32 %25(ptr noundef %mlxsw_sp, ptr noundef %1, ptr noundef nonnull %sparms) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %policer_id = getelementptr inbounds %struct.mlxsw_sp_span_agent_parms, ptr %parms, i32 0, i32 1
  %26 = ptrtoint ptr %policer_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %policer_id, align 4
  %policer_id49 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparms, i32 0, i32 7
  %28 = ptrtoint ptr %policer_id49 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %policer_id49, align 2
  %policer_enable = getelementptr inbounds %struct.mlxsw_sp_span_agent_parms, ptr %parms, i32 0, i32 2
  %29 = ptrtoint ptr %policer_enable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %policer_enable, align 2, !range !256
  %policer_enable51 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparms, i32 0, i32 8
  %31 = ptrtoint ptr %policer_enable51 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %policer_enable51, align 4
  %session_id = getelementptr inbounds %struct.mlxsw_sp_span_agent_parms, ptr %parms, i32 0, i32 3
  %32 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %session_id, align 4
  %session_id53 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparms, i32 0, i32 9
  %34 = ptrtoint ptr %session_id53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %session_id53, align 4
  %35 = ptrtoint ptr %sparms to i32
  call void @__asan_load4_noabort(i32 %35)
  %.fca.0.load = load i32, ptr %sparms, align 4
  %.fca.0.insert = insertvalue [16 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 1
  %36 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [16 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 2
  %37 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [16 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 3
  %38 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [16 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 4
  %39 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [16 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 5
  %40 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [16 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 6
  %41 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [16 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 7
  %42 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [16 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %.fca.8.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 8
  %43 = ptrtoint ptr %.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.8.load = load i32, ptr %.fca.8.gep, align 4
  %.fca.8.insert = insertvalue [16 x i32] %.fca.7.insert, i32 %.fca.8.load, 8
  %.fca.9.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 9
  %44 = ptrtoint ptr %.fca.9.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.9.load = load i32, ptr %.fca.9.gep, align 4
  %.fca.9.insert = insertvalue [16 x i32] %.fca.8.insert, i32 %.fca.9.load, 9
  %.fca.10.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 10
  %45 = ptrtoint ptr %.fca.10.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.10.load = load i32, ptr %.fca.10.gep, align 4
  %.fca.10.insert = insertvalue [16 x i32] %.fca.9.insert, i32 %.fca.10.load, 10
  %.fca.11.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 11
  %46 = ptrtoint ptr %.fca.11.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.11.load = load i32, ptr %.fca.11.gep, align 4
  %.fca.11.insert = insertvalue [16 x i32] %.fca.10.insert, i32 %.fca.11.load, 11
  %.fca.12.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 12
  %47 = ptrtoint ptr %.fca.12.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.12.load = load i32, ptr %.fca.12.gep, align 4
  %.fca.12.insert = insertvalue [16 x i32] %.fca.11.insert, i32 %.fca.12.load, 12
  %.fca.13.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 13
  %48 = ptrtoint ptr %.fca.13.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %.fca.13.load = load i32, ptr %.fca.13.gep, align 4
  %.fca.13.insert = insertvalue [16 x i32] %.fca.12.insert, i32 %.fca.13.load, 13
  %.fca.14.load = load i32, ptr %policer_enable51, align 4
  %.fca.14.insert = insertvalue [16 x i32] %.fca.13.insert, i32 %.fca.14.load, 14
  %.fca.15.insert = insertvalue [16 x i32] %.fca.14.insert, i32 %33, 15
  %sparms.sroa.28.52.extract.trunc.i = trunc i32 %.fca.13.load to i16
  %sparms.sroa.29.56.extract.shift.i = lshr i32 %.fca.14.load, 24
  %sparms.sroa.29.56.extract.trunc.i = trunc i32 %sparms.sroa.29.56.extract.shift.i to i8
  %49 = ptrtoint ptr %span1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %span1.i, align 4
  %entries_count37.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %entries_count37.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %entries_count37.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp38.i.i = icmp sgt i32 %52, 0
  br i1 %cmp38.i.i, label %if.end48.for.body.i.i_crit_edge, label %if.end48.if.end.i_crit_edge

if.end48.if.end.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end48.for.body.i.i_crit_edge:                  ; preds = %if.end48
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end48.for.body.i.i_crit_edge
  %53 = phi ptr [ %65, %for.inc.i.i.for.body.i.i_crit_edge ], [ %50, %if.end48.for.body.i.i_crit_edge ]
  %i.039.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end48.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_span, ptr %53, i32 0, i32 12, i32 %i.039.i.i
  %ref_count.i.i = getelementptr %struct.mlxsw_sp_span, ptr %53, i32 0, i32 12, i32 %i.039.i.i, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i.i, i32 noundef 4) #17
  %54 = ptrtoint ptr %ref_count.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %ref_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp3.i.i = icmp eq ptr %57, %1
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %policer_enable.i.i = getelementptr %struct.mlxsw_sp_span, ptr %53, i32 0, i32 12, i32 %i.039.i.i, i32 2, i32 8
  %58 = ptrtoint ptr %policer_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %policer_enable.i.i, align 4, !range !256
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %sparms.sroa.29.56.extract.trunc.i)
  %cmp9.i.i = icmp eq i8 %59, %sparms.sroa.29.56.extract.trunc.i
  br i1 %cmp9.i.i, label %land.lhs.true11.i.i, label %land.lhs.true4.i.i.for.inc.i.i_crit_edge

land.lhs.true4.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true4.i.i
  %policer_id.i.i = getelementptr %struct.mlxsw_sp_span, ptr %53, i32 0, i32 12, i32 %i.039.i.i, i32 2, i32 7
  %60 = ptrtoint ptr %policer_id.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %policer_id.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %sparms.sroa.28.52.extract.trunc.i)
  %cmp16.i.i = icmp eq i16 %61, %sparms.sroa.28.52.extract.trunc.i
  br i1 %cmp16.i.i, label %land.lhs.true18.i.i, label %land.lhs.true11.i.i.for.inc.i.i_crit_edge

land.lhs.true11.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true18.i.i:                              ; preds = %land.lhs.true11.i.i
  %session_id.i.i = getelementptr %struct.mlxsw_sp_span, ptr %53, i32 0, i32 12, i32 %i.039.i.i, i32 2, i32 9
  %62 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %session_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %33)
  %cmp21.i.i = icmp eq i32 %63, %33
  br i1 %cmp21.i.i, label %mlxsw_sp_span_entry_find_by_parms.exit.i, label %land.lhs.true18.i.i.for.inc.i.i_crit_edge

land.lhs.true18.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true18.i.i.for.inc.i.i_crit_edge, %land.lhs.true11.i.i.for.inc.i.i_crit_edge, %land.lhs.true4.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %64 = ptrtoint ptr %span1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %span1.i, align 4
  %entries_count.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %entries_count.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %entries_count.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %67
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

mlxsw_sp_span_entry_find_by_parms.exit.i:         ; preds = %land.lhs.true18.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_span_entry_find_by_parms.exit.i.if.end.i_crit_edge, label %if.then.i77

mlxsw_sp_span_entry_find_by_parms.exit.i.if.end.i_crit_edge: ; preds = %mlxsw_sp_span_entry_find_by_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i77:                                      ; preds = %mlxsw_sp_span_entry_find_by_parms.exit.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #17
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #17, !srcloc !258
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i77.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !259

if.then.i77.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i77
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %69 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %.not.i.i.i.i = icmp sgt i32 %69, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end57_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !257

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end57_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i77.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i77.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i) #17
  br label %if.end57

if.end.i:                                         ; preds = %mlxsw_sp_span_entry_find_by_parms.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.end48.if.end.i_crit_edge
  %70 = ptrtoint ptr %span1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %span1.i, align 4
  %entries_count44.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %entries_count44.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %entries_count44.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp45.i.i = icmp sgt i32 %73, 0
  br i1 %cmp45.i.i, label %if.end.i.for.body.i10.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.for.body.i10.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.inc.i14.i.for.body.i10.i_crit_edge, %if.end.i.for.body.i10.i_crit_edge
  %74 = phi ptr [ %78, %for.inc.i14.i.for.body.i10.i_crit_edge ], [ %71, %if.end.i.for.body.i10.i_crit_edge ]
  %i.046.i.i = phi i32 [ %inc.i11.i, %for.inc.i14.i.for.body.i10.i_crit_edge ], [ 0, %if.end.i.for.body.i10.i_crit_edge ]
  %ref_count.i7.i = getelementptr %struct.mlxsw_sp_span, ptr %74, i32 0, i32 12, i32 %i.046.i.i, i32 3
  %call.i.i.i.i8.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i7.i, i32 noundef 4) #17
  %75 = ptrtoint ptr %ref_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %ref_count.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i9.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i9.i, label %for.end.i.i, label %for.inc.i14.i

for.inc.i14.i:                                    ; preds = %for.body.i10.i
  %inc.i11.i = add nuw nsw i32 %i.046.i.i, 1
  %77 = ptrtoint ptr %span1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %span1.i, align 4
  %entries_count.i12.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %78, i32 0, i32 11
  %79 = ptrtoint ptr %entries_count.i12.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %entries_count.i12.i, align 4
  %cmp.i13.i = icmp slt i32 %inc.i11.i, %80
  br i1 %cmp.i13.i, label %for.inc.i14.i.for.body.i10.i_crit_edge, label %for.inc.i14.i.cleanup_crit_edge

for.inc.i14.i.cleanup_crit_edge:                  ; preds = %for.inc.i14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc.i14.i.for.body.i10.i_crit_edge:           ; preds = %for.inc.i14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i10.i

for.end.i.i:                                      ; preds = %for.body.i10.i
  %81 = ptrtoint ptr %span1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %span1.i, align 4
  %arrayidx4.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i
  %tobool5.not.i.i = icmp eq ptr %arrayidx4.i.i, null
  br i1 %tobool5.not.i.i, label %for.end.i.i.cleanup_crit_edge, label %if.end7.i.i

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.end.i.i
  %83 = and i32 %.fca.14.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool8.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool8.not.i.i, label %if.end7.i.i.if.end15.i.i_crit_edge, label %if.then9.i.i

if.end7.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  %mlxsw_sp1.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %mlxsw_sp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mlxsw_sp1.i.i.i, align 4
  %policer_id_base_ref_count.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %82, i32 0, i32 9
  %call.i.i.i.i.i15.i = call zeroext i1 @__kasan_check_read(ptr noundef %policer_id_base_ref_count.i.i.i, i32 noundef 4) #17
  %86 = ptrtoint ptr %policer_id_base_ref_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %policer_id_base_ref_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i.i, label %if.end12.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then9.i.i
  %policer_id_base2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %82, i32 0, i32 8
  %88 = ptrtoint ptr %policer_id_base2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %policer_id_base2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %89, i16 %sparms.sroa.28.52.extract.trunc.i)
  %cmp.i.i.i = icmp ugt i16 %89, %sparms.sroa.28.52.extract.trunc.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.then.i.i.i
  %conv3.i.i.i = zext i16 %89 to i32
  %conv.i.i.i = and i32 %.fca.13.load, 65535
  %entries_count.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %82, i32 0, i32 11
  %90 = ptrtoint ptr %entries_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %entries_count.i.i.i, align 4
  %add.i.i.i = add i32 %91, %conv3.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv.i.i.i)
  %cmp8.not.i.i.i = icmp sgt i32 %add.i.i.i, %conv.i.i.i
  br i1 %cmp8.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %policer_id_base_ref_count.i.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %policer_id_base_ref_count.i.i.i, i32 1, i32 3, i32 1) #17
  %92 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %policer_id_base_ref_count.i.i.i, ptr %policer_id_base_ref_count.i.i.i, i32 1, ptr elementtype(i32) %policer_id_base_ref_count.i.i.i) #17, !srcloc !258
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !259

if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %93 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %.not.i.i.i.i.i.i = icmp sgt i32 %93, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end15.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !257

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end15.i.i_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %policer_id_base_ref_count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #17
  br label %if.end15.i.i

if.end12.i.i.i:                                   ; preds = %if.then9.i.i
  %cond.i.i.i = and i16 %sparms.sroa.28.52.extract.trunc.i, -2
  %span_ops.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %85, i32 0, i32 38
  %94 = ptrtoint ptr %span_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %span_ops.i.i.i, align 4
  %policer_id_base_set.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %policer_id_base_set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %policer_id_base_set.i.i.i, align 4
  %call19.i.i.i = call i32 %97(ptr noundef %85, i16 noundef zeroext %cond.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %if.end22.i.i.i, label %if.end12.i.i.i.cleanup_crit_edge

if.end12.i.i.i.cleanup_crit_edge:                 ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end22.i.i.i:                                   ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %policer_id_base23.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %82, i32 0, i32 8
  %98 = ptrtoint ptr %policer_id_base23.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %cond.i.i.i, ptr %policer_id_base23.i.i.i, align 4
  %call.i.i.i41.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %policer_id_base_ref_count.i.i.i, i32 noundef 4) #17
  %99 = ptrtoint ptr %policer_id_base_ref_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 1, ptr %policer_id_base_ref_count.i.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end22.i.i.i, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end15.i.i_crit_edge, %if.end7.i.i.if.end15.i.i_crit_edge
  %100 = ptrtoint ptr %span1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %span1.i, align 4
  %active_entries_count.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %101, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %active_entries_count.i.i, i32 1, i32 3, i32 1) #17
  %102 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_entries_count.i.i, ptr %active_entries_count.i.i, i32 1, ptr elementtype(i32) %active_entries_count.i.i) #17, !srcloc !260
  %ops17.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 1
  %103 = ptrtoint ptr %ops17.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %18, ptr %ops17.i.i, align 4
  %ref_count18.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 3
  %call.i.i.i35.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count18.i.i, i32 noundef 4) #17
  %104 = ptrtoint ptr %ref_count18.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 1, ptr %ref_count18.i.i, align 4
  %105 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %1, ptr %arrayidx4.i.i, align 4
  %106 = inttoptr i32 %.fca.0.load to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.0.load)
  %tobool.not.i36.i.i = icmp eq i32 %.fca.0.load, 0
  br i1 %tobool.not.i36.i.i, label %if.end15.i.i.mlxsw_sp_span_entry_configure.exit.i.i_crit_edge, label %if.end.i37.i.i

if.end15.i.i.mlxsw_sp_span_entry_configure.exit.i.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_configure.exit.i.i

if.end.i37.i.i:                                   ; preds = %if.end15.i.i
  %mlxsw_sp2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %mlxsw_sp2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mlxsw_sp2.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %108, %mlxsw_sp
  br i1 %cmp.not.i.i.i, label %if.end5.i.i.i, label %if.end.i37.i.i.set_parms.sink.split.i.i.i_crit_edge

if.end.i37.i.i.set_parms.sink.split.i.i.i_crit_edge: ; preds = %if.end.i37.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_parms.sink.split.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i37.i.i
  %109 = ptrtoint ptr %ops17.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops17.i.i, align 4
  %configure.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %configure.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %configure.i.i.i, align 4
  %call.i.i.i = call i32 %112(ptr noundef nonnull %arrayidx4.i.i, [16 x i32] %.fca.15.insert) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end5.i.i.i.mlxsw_sp_span_entry_configure.exit.i.i_crit_edge, label %if.end5.i.i.i.set_parms.sink.split.i.i.i_crit_edge

if.end5.i.i.i.set_parms.sink.split.i.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_parms.sink.split.i.i.i

if.end5.i.i.i.mlxsw_sp_span_entry_configure.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_configure.exit.i.i

set_parms.sink.split.i.i.i:                       ; preds = %if.end5.i.i.i.set_parms.sink.split.i.i.i_crit_edge, %if.end.i37.i.i.set_parms.sink.split.i.i.i_crit_edge
  %.str.18.sink.i.i.i = phi ptr [ @.str.15, %if.end.i37.i.i.set_parms.sink.split.i.i.i_crit_edge ], [ @.str.18, %if.end5.i.i.i.set_parms.sink.split.i.i.i_crit_edge ]
  %bus_info11.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %113 = ptrtoint ptr %bus_info11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus_info11.i.i.i, align 4
  %dev12.i.i.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %dev12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev12.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull %.str.18.sink.i.i.i) #22
  br label %mlxsw_sp_span_entry_configure.exit.i.i

mlxsw_sp_span_entry_configure.exit.i.i:           ; preds = %set_parms.sink.split.i.i.i, %if.end5.i.i.i.mlxsw_sp_span_entry_configure.exit.i.i_crit_edge, %if.end15.i.i.mlxsw_sp_span_entry_configure.exit.i.i_crit_edge
  %sparms.sroa.0.0.i.i.i = phi ptr [ %106, %if.end5.i.i.i.mlxsw_sp_span_entry_configure.exit.i.i_crit_edge ], [ null, %if.end15.i.i.mlxsw_sp_span_entry_configure.exit.i.i_crit_edge ], [ null, %set_parms.sink.split.i.i.i ]
  %parms.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2
  %117 = ptrtoint ptr %parms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %sparms.sroa.0.0.i.i.i, ptr %parms.i.i.i, align 4
  %sparms.sroa.7.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 1
  %118 = ptrtoint ptr %sparms.sroa.7.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %.fca.1.load, ptr %sparms.sroa.7.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.9.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 2
  %119 = ptrtoint ptr %sparms.sroa.9.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.fca.2.load, ptr %sparms.sroa.9.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.11.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 2, i32 4
  %120 = ptrtoint ptr %sparms.sroa.11.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.fca.3.load, ptr %sparms.sroa.11.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.13.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 3, i32 2
  %121 = ptrtoint ptr %sparms.sroa.13.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %.fca.4.load, ptr %sparms.sroa.13.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.15.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 4
  %122 = ptrtoint ptr %sparms.sroa.15.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %.fca.5.load, ptr %sparms.sroa.15.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.17.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 4, i32 0, i32 0, i32 0, i32 1
  %123 = ptrtoint ptr %sparms.sroa.17.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.fca.6.load, ptr %sparms.sroa.17.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.19.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 4, i32 0, i32 0, i32 0, i32 2
  %124 = ptrtoint ptr %sparms.sroa.19.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.fca.7.load, ptr %sparms.sroa.19.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.21.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 4, i32 0, i32 0, i32 0, i32 3
  %125 = ptrtoint ptr %sparms.sroa.21.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %.fca.8.load, ptr %sparms.sroa.21.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.23.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 5
  %126 = ptrtoint ptr %sparms.sroa.23.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %.fca.9.load, ptr %sparms.sroa.23.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.25.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 5, i32 0, i32 0, i32 0, i32 1
  %127 = ptrtoint ptr %sparms.sroa.25.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %.fca.10.load, ptr %sparms.sroa.25.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.27.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 5, i32 0, i32 0, i32 0, i32 2
  %128 = ptrtoint ptr %sparms.sroa.27.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %.fca.11.load, ptr %sparms.sroa.27.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.29.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 5, i32 0, i32 0, i32 0, i32 3
  %129 = ptrtoint ptr %sparms.sroa.29.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %.fca.12.load, ptr %sparms.sroa.29.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.31.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 6
  %130 = ptrtoint ptr %sparms.sroa.31.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.fca.13.load, ptr %sparms.sroa.31.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.33.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 8
  %131 = ptrtoint ptr %sparms.sroa.33.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %.fca.14.load, ptr %sparms.sroa.33.0.parms.sroa_idx.i.i.i, align 4
  %sparms.sroa.35.0.parms.sroa_idx.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %82, i32 0, i32 12, i32 %i.046.i.i, i32 2, i32 9
  %132 = ptrtoint ptr %sparms.sroa.35.0.parms.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %33, ptr %sparms.sroa.35.0.parms.sroa_idx.i.i.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %mlxsw_sp_span_entry_configure.exit.i.i, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end57_crit_edge
  %retval.0.i78 = phi ptr [ %arrayidx.i.i, %if.else.i.i.i.i.if.end57_crit_edge ], [ %arrayidx.i.i, %if.end15.sink.split.i.i.i.i ], [ %arrayidx4.i.i, %mlxsw_sp_span_entry_configure.exit.i.i ]
  %id = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %retval.0.i78, i32 0, i32 4
  %133 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %id, align 4
  %135 = ptrtoint ptr %p_span_id to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %p_span_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end12.i.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge, %for.end.i.i.cleanup_crit_edge, %for.inc.i14.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end43
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -95, %do.end43 ], [ %call45, %if.end44.cleanup_crit_edge ], [ -105, %for.end.i.i.cleanup_crit_edge ], [ -105, %if.then.i.i.i.cleanup_crit_edge ], [ -105, %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ -105, %if.end12.i.i.i.cleanup_crit_edge ], [ -105, %if.end.i.cleanup_crit_edge ], [ -105, %for.inc.i14.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sparms) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_span_agent_put(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %span_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b106 = load i1, ptr @mlxsw_sp_span_agent_put.__already_done, align 1
  br i1 %.b106, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !257

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_agent_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1105, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1105) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %span.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %0 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span.i, align 4
  %entries_count14.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %entries_count14.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entries_count14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.i = icmp sgt i32 %3, 0
  br i1 %cmp15.i, label %if.end29.for.body.i_crit_edge, label %if.end29.land.rhs48_crit_edge

if.end29.land.rhs48_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs48

if.end29.for.body.i_crit_edge:                    ; preds = %if.end29
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29.for.body.i_crit_edge
  %4 = phi ptr [ %10, %for.inc.i.for.body.i_crit_edge ], [ %1, %if.end29.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end29.for.body.i_crit_edge ]
  %ref_count.i = getelementptr %struct.mlxsw_sp_span, ptr %4, i32 0, i32 12, i32 %i.016.i, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i, i32 noundef 4) #17
  %5 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr %struct.mlxsw_sp_span, ptr %4, i32 0, i32 12, i32 %i.016.i, i32 4
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %span_id)
  %cmp2.i = icmp eq i32 %8, %span_id
  br i1 %cmp2.i, label %mlxsw_sp_span_entry_find_by_id.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %9 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %span.i, align 4
  %entries_count.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %entries_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entries_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.land.rhs48_crit_edge

for.inc.i.land.rhs48_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs48

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

mlxsw_sp_span_entry_find_by_id.exit:              ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.mlxsw_sp_span, ptr %4, i32 0, i32 12, i32 %i.016.i
  %tobool39.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool39.not, label %mlxsw_sp_span_entry_find_by_id.exit.land.rhs48_crit_edge, label %if.end96

mlxsw_sp_span_entry_find_by_id.exit.land.rhs48_crit_edge: ; preds = %mlxsw_sp_span_entry_find_by_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs48

land.rhs48:                                       ; preds = %mlxsw_sp_span_entry_find_by_id.exit.land.rhs48_crit_edge, %for.inc.i.land.rhs48_crit_edge, %if.end29.land.rhs48_crit_edge
  %.b104105 = load i1, ptr @mlxsw_sp_span_agent_put.__already_done.10, align 1
  br i1 %.b104105, label %land.rhs48.cleanup_crit_edge, label %if.then59, !prof !257

land.rhs48.cleanup_crit_edge:                     ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_agent_put.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1108, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end96:                                         ; preds = %mlxsw_sp_span_entry_find_by_id.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !261
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #17
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #17, !srcloc !262
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !257

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !263
  %parms.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %4, i32 0, i32 12, i32 %i.016.i, i32 2
  %14 = ptrtoint ptr %parms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parms.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.then.i.mlxsw_sp_span_entry_deconfigure.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.mlxsw_sp_span_entry_deconfigure.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_deconfigure.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %ops.i.i.i = getelementptr %struct.mlxsw_sp_span, ptr %4, i32 0, i32 12, i32 %i.016.i, i32 1
  %16 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i.i, align 4
  %deconfigure.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %deconfigure.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %deconfigure.i.i.i, align 4
  tail call void %19(ptr noundef nonnull %arrayidx.le.i) #17
  br label %mlxsw_sp_span_entry_deconfigure.exit.i.i

mlxsw_sp_span_entry_deconfigure.exit.i.i:         ; preds = %if.then.i.i.i, %if.then.i.mlxsw_sp_span_entry_deconfigure.exit.i.i_crit_edge
  %20 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %span.i, align 4
  %active_entries_count.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %21, i32 0, i32 10
  %call.i.i.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %active_entries_count.i.i, i32 1, i32 3, i32 1) #17
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_entries_count.i.i, ptr %active_entries_count.i.i, i32 1, ptr elementtype(i32) %active_entries_count.i.i) #17, !srcloc !264
  %policer_enable.i.i = getelementptr %struct.mlxsw_sp_span, ptr %4, i32 0, i32 12, i32 %i.016.i, i32 2, i32 8
  %23 = ptrtoint ptr %policer_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %policer_enable.i.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %mlxsw_sp_span_entry_deconfigure.exit.i.i.cleanup_crit_edge, label %if.then.i.i

mlxsw_sp_span_entry_deconfigure.exit.i.i.cleanup_crit_edge: ; preds = %mlxsw_sp_span_entry_deconfigure.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i.i:                                      ; preds = %mlxsw_sp_span_entry_deconfigure.exit.i.i
  %25 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %span.i, align 4
  %policer_id_base_ref_count.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %26, i32 0, i32 9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %policer_id_base_ref_count.i.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !261
  tail call void @llvm.prefetch.p0(ptr %policer_id_base_ref_count.i.i.i, i32 1, i32 3, i32 1) #17
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %policer_id_base_ref_count.i.i.i, ptr %policer_id_base_ref_count.i.i.i, i32 1, ptr elementtype(i32) %policer_id_base_ref_count.i.i.i) #17, !srcloc !262
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !257

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %policer_id_base_ref_count.i.i.i, i32 noundef 3) #17
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !263
  %policer_id_base.i.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %26, i32 0, i32 8
  %28 = ptrtoint ptr %policer_id_base.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %policer_id_base.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %mlxsw_sp_span_entry_deconfigure.exit.i.i.cleanup_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then59, %land.rhs48.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %ingress) local_unnamed_addr #0 align 64 {
entry:
  %hdroom.i.i.i = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %span, align 4
  %analyzed_ports_lock = getelementptr inbounds %struct.mlxsw_sp_span, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %analyzed_ports_lock, i32 noundef 0) #17
  %6 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %span, align 4
  %analyzed_ports_list.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %analyzed_ports_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %analyzed_port.022.i = load ptr, ptr %analyzed_ports_list.i, align 4
  %cmp.not23.i = icmp eq ptr %analyzed_port.022.i, %analyzed_ports_list.i
  br i1 %cmp.not23.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %9 = zext i1 %ingress to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %analyzed_port.024.i = phi ptr [ %analyzed_port.022.i, %for.body.lr.ph.i ], [ %analyzed_port.0.i, %for.inc.i.for.body.i_crit_edge ]
  %local_port2.i = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %analyzed_port.024.i, i32 0, i32 2
  %10 = ptrtoint ptr %local_port2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %local_port2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %3)
  %cmp4.i = icmp eq i16 %11, %3
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ingress6.i = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %analyzed_port.024.i, i32 0, i32 3
  %12 = ptrtoint ptr %ingress6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ingress6.i, align 2, !range !256
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %9)
  %cmp10.i = icmp eq i8 %13, %9
  br i1 %cmp10.i, label %mlxsw_sp_span_analyzed_port_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %analyzed_port.024.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %analyzed_port.0.i = load ptr, ptr %analyzed_port.024.i, align 4
  %cmp.not.i = icmp eq ptr %analyzed_port.0.i, %analyzed_ports_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

mlxsw_sp_span_analyzed_port_find.exit:            ; preds = %land.lhs.true.i
  %tobool4.not = icmp eq ptr %analyzed_port.024.i, null
  br i1 %tobool4.not, label %mlxsw_sp_span_analyzed_port_find.exit.if.end_crit_edge, label %if.then

mlxsw_sp_span_analyzed_port_find.exit.if.end_crit_edge: ; preds = %mlxsw_sp_span_analyzed_port_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %mlxsw_sp_span_analyzed_port_find.exit
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %analyzed_port.024.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #17
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #17, !srcloc !258
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !259

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.out_unlock_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !257

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.out_unlock_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i) #17
  br label %out_unlock

if.end:                                           ; preds = %mlxsw_sp_span_analyzed_port_find.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 16) #23
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then9_crit_edge, label %if.end.i

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9

if.end.i:                                         ; preds = %if.end
  %frombool.i = zext i1 %ingress to i8
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #17
  %18 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %ref_count.i, align 8
  %19 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %local_port2, align 4
  %local_port2.i23 = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %local_port2.i23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %local_port2.i23, align 4
  %ingress4.i = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %ingress4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool.i, ptr %ingress4.i, align 2
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %7, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %24, ptr noundef %analyzed_ports_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %analyzed_ports_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i, ptr %24, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  br i1 %ingress, label %list_add_tail.exit.i.mlxsw_sp_span_analyzed_port_create.exit_crit_edge, label %if.then7.i

list_add_tail.exit.i.mlxsw_sp_span_analyzed_port_create.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_analyzed_port_create.exit

if.then7.i:                                       ; preds = %list_add_tail.exit.i
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom.i.i.i) #17
  %hdroom1.i.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %29 = ptrtoint ptr %hdroom1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdroom1.i.i.i, align 8
  %31 = call ptr @memcpy(ptr %hdroom.i.i.i, ptr %30, i32 216)
  %enable2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i.i, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %enable2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %enable2.i.i.i, align 4
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom.i.i.i) #17
  %call.i.i26.i = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %tobool9.not.i = icmp eq i32 %call.i.i26.i, 0
  br i1 %tobool9.not.i, label %if.then7.i.mlxsw_sp_span_analyzed_port_create.exit_crit_edge, label %err_buffer_update.i

if.then7.i.mlxsw_sp_span_analyzed_port_create.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_analyzed_port_create.exit

err_buffer_update.i:                              ; preds = %if.then7.i
  %call.i.i27.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #17
  br i1 %call.i.i27.i, label %if.end.i.i28.i, label %err_buffer_update.i.list_del.exit.i_crit_edge

err_buffer_update.i.list_del.exit.i_crit_edge:    ; preds = %err_buffer_update.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i28.i:                                   ; preds = %err_buffer_update.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i28.i, %err_buffer_update.i.list_del.exit.i_crit_edge
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i29.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i29.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i29.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  %41 = inttoptr i32 %call.i.i26.i to ptr
  br label %mlxsw_sp_span_analyzed_port_create.exit

mlxsw_sp_span_analyzed_port_create.exit:          ; preds = %list_del.exit.i, %if.then7.i.mlxsw_sp_span_analyzed_port_create.exit_crit_edge, %list_add_tail.exit.i.mlxsw_sp_span_analyzed_port_create.exit_crit_edge
  %retval.0.i25 = phi ptr [ %41, %list_del.exit.i ], [ %call7.i.i.i, %if.then7.i.mlxsw_sp_span_analyzed_port_create.exit_crit_edge ], [ %call7.i.i.i, %list_add_tail.exit.i.mlxsw_sp_span_analyzed_port_create.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlxsw_sp_span_analyzed_port_create.exit.if.then9_crit_edge, label %mlxsw_sp_span_analyzed_port_create.exit.out_unlock_crit_edge

mlxsw_sp_span_analyzed_port_create.exit.out_unlock_crit_edge: ; preds = %mlxsw_sp_span_analyzed_port_create.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

mlxsw_sp_span_analyzed_port_create.exit.if.then9_crit_edge: ; preds = %mlxsw_sp_span_analyzed_port_create.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9

if.then9:                                         ; preds = %mlxsw_sp_span_analyzed_port_create.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %retval.0.i2530 = phi ptr [ %retval.0.i25, %mlxsw_sp_span_analyzed_port_create.exit.if.then9_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then9_crit_edge ]
  %42 = ptrtoint ptr %retval.0.i2530 to i32
  br label %out_unlock

out_unlock:                                       ; preds = %if.then9, %mlxsw_sp_span_analyzed_port_create.exit.out_unlock_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.out_unlock_crit_edge
  %err.0 = phi i32 [ %42, %if.then9 ], [ 0, %mlxsw_sp_span_analyzed_port_create.exit.out_unlock_crit_edge ], [ 0, %if.else.i.i.i.out_unlock_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ]
  %43 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %span, align 4
  %analyzed_ports_lock13 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %44, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %analyzed_ports_lock13) #17
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_span_analyzed_port_put(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %ingress) local_unnamed_addr #0 align 64 {
entry:
  %hdroom.i.i.i = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %span, align 4
  %analyzed_ports_lock = getelementptr inbounds %struct.mlxsw_sp_span, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %analyzed_ports_lock, i32 noundef 0) #17
  %6 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %span, align 4
  %analyzed_ports_list.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %analyzed_ports_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %analyzed_port.022.i = load ptr, ptr %analyzed_ports_list.i, align 4
  %cmp.not23.i = icmp eq ptr %analyzed_port.022.i, %analyzed_ports_list.i
  br i1 %cmp.not23.i, label %entry.land.rhs_crit_edge, label %for.body.lr.ph.i

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

for.body.lr.ph.i:                                 ; preds = %entry
  %9 = zext i1 %ingress to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %analyzed_port.024.i = phi ptr [ %analyzed_port.022.i, %for.body.lr.ph.i ], [ %analyzed_port.0.i, %for.inc.i.for.body.i_crit_edge ]
  %local_port2.i = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %analyzed_port.024.i, i32 0, i32 2
  %10 = ptrtoint ptr %local_port2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %local_port2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %3)
  %cmp4.i = icmp eq i16 %11, %3
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ingress6.i = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %analyzed_port.024.i, i32 0, i32 3
  %12 = ptrtoint ptr %ingress6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ingress6.i, align 2, !range !256
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %9)
  %cmp10.i = icmp eq i8 %13, %9
  br i1 %cmp10.i, label %mlxsw_sp_span_analyzed_port_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %analyzed_port.024.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %analyzed_port.0.i = load ptr, ptr %analyzed_port.024.i, align 4
  %cmp.not.i = icmp eq ptr %analyzed_port.0.i, %analyzed_ports_list.i
  br i1 %cmp.not.i, label %for.inc.i.land.rhs_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.land.rhs_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

mlxsw_sp_span_analyzed_port_find.exit:            ; preds = %land.lhs.true.i
  %ingress6.i.le = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %analyzed_port.024.i, i32 0, i32 3
  %tobool4.not = icmp eq ptr %analyzed_port.024.i, null
  br i1 %tobool4.not, label %mlxsw_sp_span_analyzed_port_find.exit.land.rhs_crit_edge, label %if.end44.critedge

mlxsw_sp_span_analyzed_port_find.exit.land.rhs_crit_edge: ; preds = %mlxsw_sp_span_analyzed_port_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

land.rhs:                                         ; preds = %mlxsw_sp_span_analyzed_port_find.exit.land.rhs_crit_edge, %for.inc.i.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b58 = load i1, ptr @mlxsw_sp_span_analyzed_port_put.__already_done, align 1
  br i1 %.b58, label %land.rhs.out_unlock_crit_edge, label %if.then, !prof !257

land.rhs.out_unlock_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_analyzed_port_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1202, i32 noundef 9, ptr noundef null) #17
  br label %out_unlock

if.end44.critedge:                                ; preds = %mlxsw_sp_span_analyzed_port_find.exit
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_span_analyzed_port, ptr %analyzed_port.024.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !261
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #17
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #17, !srcloc !262
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end47, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end44.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.out_unlock_crit_edge, label %if.then10.i.i.i, !prof !257

if.end5.i.i.i.out_unlock_crit_edge:               ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #17
  br label %out_unlock

if.end47:                                         ; preds = %if.end44.critedge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !263
  %16 = ptrtoint ptr %ingress6.i.le to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ingress6.i.le, align 2, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end47.if.end.i_crit_edge

if.end47.if.end.i_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom.i.i.i) #17
  %hdroom1.i.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %18 = ptrtoint ptr %hdroom1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdroom1.i.i.i, align 8
  %20 = call ptr @memcpy(ptr %hdroom.i.i.i, ptr %19, i32 216)
  %enable2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i.i, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %enable2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %enable2.i.i.i, align 4
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom.i.i.i) #17
  %call.i.i.i = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom.i.i.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end47.if.end.i_crit_edge
  %call.i.i3.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %analyzed_port.024.i) #17
  br i1 %call.i.i3.i, label %if.end.i.i.i, label %if.end.i.mlxsw_sp_span_analyzed_port_destroy.exit_crit_edge

if.end.i.mlxsw_sp_span_analyzed_port_destroy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_analyzed_port_destroy.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %analyzed_port.024.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %analyzed_port.024.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %analyzed_port.024.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %mlxsw_sp_span_analyzed_port_destroy.exit

mlxsw_sp_span_analyzed_port_destroy.exit:         ; preds = %if.end.i.i.i, %if.end.i.mlxsw_sp_span_analyzed_port_destroy.exit_crit_edge
  %28 = ptrtoint ptr %analyzed_port.024.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %analyzed_port.024.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %analyzed_port.024.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef nonnull %analyzed_port.024.i) #17
  br label %out_unlock

out_unlock:                                       ; preds = %mlxsw_sp_span_analyzed_port_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.out_unlock_crit_edge, %if.then, %land.rhs.out_unlock_crit_edge
  %30 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %span, align 4
  %analyzed_ports_lock49 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %31, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %analyzed_ports_lock49) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_span_agent_bind(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %trigger, ptr noundef %mlxsw_sp_port, ptr nocapture noundef readonly %parms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b74 = load i1, ptr @mlxsw_sp_span_agent_bind.__already_done, align 1
  br i1 %.b74, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !257

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_agent_bind.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1566, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1566) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parms, align 4
  %span.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %2 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %span.i, align 4
  %entries_count14.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %entries_count14.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries_count14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.i = icmp sgt i32 %5, 0
  br i1 %cmp15.i, label %if.end29.for.body.i_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end29.for.body.i_crit_edge:                    ; preds = %if.end29
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29.for.body.i_crit_edge
  %6 = phi ptr [ %12, %for.inc.i.for.body.i_crit_edge ], [ %3, %if.end29.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end29.for.body.i_crit_edge ]
  %ref_count.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.016.i, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i, i32 noundef 4) #17
  %7 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.016.i, i32 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp2.i = icmp eq i32 %10, %1
  br i1 %cmp2.i, label %mlxsw_sp_span_entry_find_by_id.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %11 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %span.i, align 4
  %entries_count.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %entries_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entries_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %14
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

mlxsw_sp_span_entry_find_by_id.exit:              ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.016.i
  %tobool38.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool38.not, label %mlxsw_sp_span_entry_find_by_id.exit.cleanup_crit_edge, label %if.end40

mlxsw_sp_span_entry_find_by_id.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_span_entry_find_by_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %mlxsw_sp_span_entry_find_by_id.exit
  %15 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %span.i, align 4
  %trigger_entries_list.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %16, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i75.for.cond.i_crit_edge, %if.end40
  %trigger_entry.0.in.i = phi ptr [ %trigger_entries_list.i, %if.end40 ], [ %trigger_entry.0.i, %for.body.i75.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %trigger_entry.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %trigger_entry.0.i = load ptr, ptr %trigger_entry.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %trigger_entry.0.i, %trigger_entries_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end52_crit_edge, label %for.body.i75

for.cond.i.if.end52_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

for.body.i75:                                     ; preds = %for.cond.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %matches.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %matches.i, align 4
  %call.i = tail call zeroext i1 %21(ptr noundef %trigger_entry.0.i, i32 noundef %trigger, ptr noundef %mlxsw_sp_port) #17
  br i1 %call.i, label %mlxsw_sp_span_trigger_entry_find.exit, label %for.body.i75.for.cond.i_crit_edge

for.body.i75.for.cond.i_crit_edge:                ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

mlxsw_sp_span_trigger_entry_find.exit:            ; preds = %for.body.i75
  %tobool42.not = icmp eq ptr %trigger_entry.0.i, null
  br i1 %tobool42.not, label %mlxsw_sp_span_trigger_entry_find.exit.if.end52_crit_edge, label %if.then43

mlxsw_sp_span_trigger_entry_find.exit.if.end52_crit_edge: ; preds = %mlxsw_sp_span_trigger_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then43:                                        ; preds = %mlxsw_sp_span_trigger_entry_find.exit
  %parms44 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 6
  %22 = ptrtoint ptr %parms44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parms44, align 4
  %24 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %parms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not = icmp eq i32 %23, %25
  br i1 %cmp.not, label %lor.lhs.false, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then43
  %probability_rate = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %probability_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %probability_rate, align 4
  %probability_rate48 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_parms, ptr %parms, i32 0, i32 1
  %28 = ptrtoint ptr %probability_rate48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %probability_rate48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp49.not = icmp eq i32 %27, %29
  br i1 %cmp49.not, label %if.end51, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #17
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #17, !srcloc !258
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end51.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !259

if.end51.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end51
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !257

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end51.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end51.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i) #17
  br label %cleanup

if.end52:                                         ; preds = %mlxsw_sp_span_trigger_entry_find.exit.if.end52_crit_edge, %for.cond.i.if.end52_crit_edge
  %32 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %span.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 36) #23
  %tobool.not.i76 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i76, label %if.end52.if.then56_crit_edge, label %if.end.i

if.end52.if.then56_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then56

if.end.i:                                         ; preds = %if.end52
  %ref_count.i77 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i77, i32 noundef 4) #17
  %35 = ptrtoint ptr %ref_count.i77 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %ref_count.i77, align 8
  %tobool2.not.i = icmp eq ptr %mlxsw_sp_port, null
  br i1 %tobool2.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %36 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %local_port.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %37, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %local_port4.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %call7.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %local_port4.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %cond.i, ptr %local_port4.i, align 4
  %trigger5.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %call7.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %trigger5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %trigger, ptr %trigger5.i, align 8
  %parms6.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %call7.i.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %parms to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %parms, align 4
  %42 = ptrtoint ptr %parms6.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %parms6.i, align 4
  %span7.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %call7.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %span7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %33, ptr %span7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %trigger)
  %44 = icmp ult i32 %trigger, 5
  br i1 %44, label %switch.lookup, label %land.end.i.i

land.end.i.i:                                     ; preds = %cond.end.i
  %.b40.i.i = load i1, ptr @mlxsw_sp_span_trigger_ops_set.__already_done, align 1
  br i1 %.b40.i.i, label %land.end.i.i.mlxsw_sp_span_trigger_ops_set.exit.i_crit_edge, label %if.then.i.i, !prof !257

land.end.i.i.mlxsw_sp_span_trigger_ops_set.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_trigger_ops_set.exit.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_trigger_ops_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1490, i32 noundef 9, ptr noundef null) #17
  br label %mlxsw_sp_span_trigger_ops_set.exit.i

switch.lookup:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mlxsw_sp_span_agent_bind, i32 0, i32 %trigger
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  %span_trigger_ops_arr.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %33, i32 0, i32 2
  %46 = ptrtoint ptr %span_trigger_ops_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %span_trigger_ops_arr.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %47, i32 %switch.load
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %call7.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %ops.i.i, align 4
  br label %mlxsw_sp_span_trigger_ops_set.exit.i

mlxsw_sp_span_trigger_ops_set.exit.i:             ; preds = %switch.lookup, %if.then.i.i, %land.end.i.i.mlxsw_sp_span_trigger_ops_set.exit.i_crit_edge
  %trigger_entries_list.i79 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %33, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %33, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %52, ptr noundef %trigger_entries_list.i79) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %mlxsw_sp_span_trigger_ops_set.exit.i.list_add_tail.exit.i_crit_edge

mlxsw_sp_span_trigger_ops_set.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %mlxsw_sp_span_trigger_ops_set.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %mlxsw_sp_span_trigger_ops_set.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %trigger_entries_list.i79, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call7.i.i.i, ptr %52, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %mlxsw_sp_span_trigger_ops_set.exit.i.list_add_tail.exit.i_crit_edge
  %ops.i80 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %call7.i.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %ops.i80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i80, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call8.i = tail call i32 %60(ptr noundef nonnull %call7.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %list_add_tail.exit.i.mlxsw_sp_span_trigger_entry_create.exit_crit_edge, label %err_trigger_entry_bind.i

list_add_tail.exit.i.mlxsw_sp_span_trigger_entry_create.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_trigger_entry_create.exit

err_trigger_entry_bind.i:                         ; preds = %list_add_tail.exit.i
  %call.i.i30.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #17
  br i1 %call.i.i30.i, label %if.end.i.i31.i, label %err_trigger_entry_bind.i.list_del.exit.i_crit_edge

err_trigger_entry_bind.i.list_del.exit.i_crit_edge: ; preds = %err_trigger_entry_bind.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i31.i:                                   ; preds = %err_trigger_entry_bind.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i.i, align 4
  %63 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i31.i, %err_trigger_entry_bind.i.list_del.exit.i_crit_edge
  %67 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i32.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i32.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i32.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  %69 = inttoptr i32 %call8.i to ptr
  br label %mlxsw_sp_span_trigger_entry_create.exit

mlxsw_sp_span_trigger_entry_create.exit:          ; preds = %list_del.exit.i, %list_add_tail.exit.i.mlxsw_sp_span_trigger_entry_create.exit_crit_edge
  %retval.0.i81 = phi ptr [ %69, %list_del.exit.i ], [ %call7.i.i.i, %list_add_tail.exit.i.mlxsw_sp_span_trigger_entry_create.exit_crit_edge ]
  %cmp.i82 = icmp ugt ptr %retval.0.i81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %mlxsw_sp_span_trigger_entry_create.exit.if.then56_crit_edge, label %mlxsw_sp_span_trigger_entry_create.exit.cleanup_crit_edge

mlxsw_sp_span_trigger_entry_create.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_span_trigger_entry_create.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

mlxsw_sp_span_trigger_entry_create.exit.if.then56_crit_edge: ; preds = %mlxsw_sp_span_trigger_entry_create.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then56

if.then56:                                        ; preds = %mlxsw_sp_span_trigger_entry_create.exit.if.then56_crit_edge, %if.end52.if.then56_crit_edge
  %retval.0.i8189 = phi ptr [ %retval.0.i81, %mlxsw_sp_span_trigger_entry_create.exit.if.then56_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end52.if.then56_crit_edge ]
  %70 = ptrtoint ptr %retval.0.i8189 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %mlxsw_sp_span_trigger_entry_create.exit.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %mlxsw_sp_span_entry_find_by_id.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mlxsw_sp_span_entry_find_by_id.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then43.cleanup_crit_edge ], [ %70, %if.then56 ], [ 0, %mlxsw_sp_span_trigger_entry_create.exit.cleanup_crit_edge ], [ 0, %if.else.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ -22, %if.end29.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_span_agent_unbind(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %trigger, ptr noundef %mlxsw_sp_port, ptr nocapture noundef readonly %parms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b175 = load i1, ptr @mlxsw_sp_span_agent_unbind.__already_done, align 1
  br i1 %.b175, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !257

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_agent_unbind.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1601, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1601) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parms, align 4
  %span.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %2 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %span.i, align 4
  %entries_count14.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %entries_count14.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries_count14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.i = icmp sgt i32 %5, 0
  br i1 %cmp15.i, label %if.end29.for.body.i_crit_edge, label %if.end29.land.rhs48_crit_edge

if.end29.land.rhs48_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs48

if.end29.for.body.i_crit_edge:                    ; preds = %if.end29
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29.for.body.i_crit_edge
  %6 = phi ptr [ %12, %for.inc.i.for.body.i_crit_edge ], [ %3, %if.end29.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end29.for.body.i_crit_edge ]
  %ref_count.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.016.i, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i, i32 noundef 4) #17
  %7 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.016.i, i32 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp2.i = icmp eq i32 %10, %1
  br i1 %cmp2.i, label %mlxsw_sp_span_entry_find_by_id.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %11 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %span.i, align 4
  %entries_count.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %entries_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entries_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %14
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.land.rhs48_crit_edge

for.inc.i.land.rhs48_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs48

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

mlxsw_sp_span_entry_find_by_id.exit:              ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.mlxsw_sp_span, ptr %6, i32 0, i32 12, i32 %i.016.i
  %tobool39.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool39.not, label %mlxsw_sp_span_entry_find_by_id.exit.land.rhs48_crit_edge, label %if.end96

mlxsw_sp_span_entry_find_by_id.exit.land.rhs48_crit_edge: ; preds = %mlxsw_sp_span_entry_find_by_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs48

land.rhs48:                                       ; preds = %mlxsw_sp_span_entry_find_by_id.exit.land.rhs48_crit_edge, %for.inc.i.land.rhs48_crit_edge, %if.end29.land.rhs48_crit_edge
  %.b171174 = load i1, ptr @mlxsw_sp_span_agent_unbind.__already_done.11, align 1
  br i1 %.b171174, label %land.rhs48.cleanup_crit_edge, label %if.then59, !prof !257

land.rhs48.cleanup_crit_edge:                     ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_agent_unbind.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1604, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end96:                                         ; preds = %mlxsw_sp_span_entry_find_by_id.exit
  %15 = ptrtoint ptr %span.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %span.i, align 4
  %trigger_entries_list.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %16, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i178.for.cond.i_crit_edge, %if.end96
  %trigger_entry.0.in.i = phi ptr [ %trigger_entries_list.i, %if.end96 ], [ %trigger_entry.0.i, %for.body.i178.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %trigger_entry.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %trigger_entry.0.i = load ptr, ptr %trigger_entry.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %trigger_entry.0.i, %trigger_entries_list.i
  br i1 %cmp.not.i, label %for.cond.i.land.rhs108_crit_edge, label %for.body.i178

for.cond.i.land.rhs108_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs108

for.body.i178:                                    ; preds = %for.cond.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %matches.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %matches.i, align 4
  %call.i = tail call zeroext i1 %21(ptr noundef %trigger_entry.0.i, i32 noundef %trigger, ptr noundef %mlxsw_sp_port) #17
  br i1 %call.i, label %mlxsw_sp_span_trigger_entry_find.exit, label %for.body.i178.for.cond.i_crit_edge

for.body.i178.for.cond.i_crit_edge:               ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

mlxsw_sp_span_trigger_entry_find.exit:            ; preds = %for.body.i178
  %ops.i.le = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 2
  %tobool99.not = icmp eq ptr %trigger_entry.0.i, null
  br i1 %tobool99.not, label %mlxsw_sp_span_trigger_entry_find.exit.land.rhs108_crit_edge, label %if.end156

mlxsw_sp_span_trigger_entry_find.exit.land.rhs108_crit_edge: ; preds = %mlxsw_sp_span_trigger_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs108

land.rhs108:                                      ; preds = %mlxsw_sp_span_trigger_entry_find.exit.land.rhs108_crit_edge, %for.cond.i.land.rhs108_crit_edge
  %.b172173 = load i1, ptr @mlxsw_sp_span_agent_unbind.__already_done.12, align 1
  br i1 %.b172173, label %land.rhs108.cleanup_crit_edge, label %if.then119, !prof !257

land.rhs108.cleanup_crit_edge:                    ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then119:                                       ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_agent_unbind.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1610, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end156:                                        ; preds = %mlxsw_sp_span_trigger_entry_find.exit
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !261
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #17
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #17, !srcloc !262
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end159, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !257

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #17
  br label %cleanup

if.end159:                                        ; preds = %if.end156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !263
  %23 = ptrtoint ptr %ops.i.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.le, align 4
  %unbind.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %unbind.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unbind.i, align 4
  tail call void %26(ptr noundef nonnull %trigger_entry.0.i) #17
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %trigger_entry.0.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end159.mlxsw_sp_span_trigger_entry_destroy.exit_crit_edge

if.end159.mlxsw_sp_span_trigger_entry_destroy.exit_crit_edge: ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_trigger_entry_destroy.exit

if.end.i.i.i:                                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %trigger_entry.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %trigger_entry.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trigger_entry.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %mlxsw_sp_span_trigger_entry_destroy.exit

mlxsw_sp_span_trigger_entry_destroy.exit:         ; preds = %if.end.i.i.i, %if.end159.mlxsw_sp_span_trigger_entry_destroy.exit_crit_edge
  %33 = ptrtoint ptr %trigger_entry.0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %trigger_entry.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %trigger_entry.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %trigger_entry.0.i) #17
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_span_trigger_entry_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %if.then119, %land.rhs108.cleanup_crit_edge, %if.then59, %land.rhs48.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_span_trigger_enable(ptr noundef %mlxsw_sp_port, i32 noundef %trigger, i8 noundef zeroext %tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b110 = load i1, ptr @mlxsw_sp_span_trigger_enable.__already_done, align 1
  br i1 %.b110, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !257

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_trigger_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1625, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1625) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %span, align 4
  %trigger_entries_list.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %3, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end30
  %trigger_entry.0.in.i = phi ptr [ %trigger_entries_list.i, %if.end30 ], [ %trigger_entry.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %trigger_entry.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %trigger_entry.0.i = load ptr, ptr %trigger_entry.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %trigger_entry.0.i, %trigger_entries_list.i
  br i1 %cmp.not.i, label %for.cond.i.land.rhs49_crit_edge, label %for.body.i

for.cond.i.land.rhs49_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs49

for.body.i:                                       ; preds = %for.cond.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %matches.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %matches.i, align 4
  %call.i = tail call zeroext i1 %8(ptr noundef %trigger_entry.0.i, i32 noundef %trigger, ptr noundef %mlxsw_sp_port) #17
  br i1 %call.i, label %mlxsw_sp_span_trigger_entry_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

mlxsw_sp_span_trigger_entry_find.exit:            ; preds = %for.body.i
  %tobool40.not = icmp eq ptr %trigger_entry.0.i, null
  br i1 %tobool40.not, label %mlxsw_sp_span_trigger_entry_find.exit.land.rhs49_crit_edge, label %if.end97

mlxsw_sp_span_trigger_entry_find.exit.land.rhs49_crit_edge: ; preds = %mlxsw_sp_span_trigger_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs49

land.rhs49:                                       ; preds = %mlxsw_sp_span_trigger_entry_find.exit.land.rhs49_crit_edge, %for.cond.i.land.rhs49_crit_edge
  %.b108109 = load i1, ptr @mlxsw_sp_span_trigger_enable.__already_done.13, align 1
  br i1 %.b108109, label %land.rhs49.cleanup_crit_edge, label %if.then60, !prof !257

land.rhs49.cleanup_crit_edge:                     ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then60:                                        ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_trigger_enable.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1630, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end97:                                         ; preds = %mlxsw_sp_span_trigger_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ops.i.le = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %ops.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.le, align 4
  %enable = getelementptr inbounds %struct.mlxsw_sp_span_trigger_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enable, align 4
  %call98 = tail call i32 %12(ptr noundef nonnull %trigger_entry.0.i, ptr noundef %mlxsw_sp_port, i8 noundef zeroext %tc) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then60, %land.rhs49.cleanup_crit_edge
  %retval.0 = phi i32 [ %call98, %if.end97 ], [ -22, %if.then60 ], [ -22, %land.rhs49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_span_trigger_disable(ptr noundef %mlxsw_sp_port, i32 noundef %trigger, i8 noundef zeroext %tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b109 = load i1, ptr @mlxsw_sp_span_trigger_disable.__already_done, align 1
  br i1 %.b109, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !257

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_trigger_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1642, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1642) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %span, align 4
  %trigger_entries_list.i = getelementptr inbounds %struct.mlxsw_sp_span, ptr %3, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end30
  %trigger_entry.0.in.i = phi ptr [ %trigger_entries_list.i, %if.end30 ], [ %trigger_entry.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %trigger_entry.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %trigger_entry.0.i = load ptr, ptr %trigger_entry.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %trigger_entry.0.i, %trigger_entries_list.i
  br i1 %cmp.not.i, label %for.cond.i.land.rhs49_crit_edge, label %for.body.i

for.cond.i.land.rhs49_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs49

for.body.i:                                       ; preds = %for.cond.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %matches.i = getelementptr inbounds %struct.mlxsw_sp_span_trigger_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %matches.i, align 4
  %call.i = tail call zeroext i1 %8(ptr noundef %trigger_entry.0.i, i32 noundef %trigger, ptr noundef %mlxsw_sp_port) #17
  br i1 %call.i, label %mlxsw_sp_span_trigger_entry_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

mlxsw_sp_span_trigger_entry_find.exit:            ; preds = %for.body.i
  %tobool40.not = icmp eq ptr %trigger_entry.0.i, null
  br i1 %tobool40.not, label %mlxsw_sp_span_trigger_entry_find.exit.land.rhs49_crit_edge, label %if.end97

mlxsw_sp_span_trigger_entry_find.exit.land.rhs49_crit_edge: ; preds = %mlxsw_sp_span_trigger_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs49

land.rhs49:                                       ; preds = %mlxsw_sp_span_trigger_entry_find.exit.land.rhs49_crit_edge, %for.cond.i.land.rhs49_crit_edge
  %.b107108 = load i1, ptr @mlxsw_sp_span_trigger_disable.__already_done.14, align 1
  br i1 %.b107108, label %land.rhs49.cleanup_crit_edge, label %if.then60, !prof !257

land.rhs49.cleanup_crit_edge:                     ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then60:                                        ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_trigger_disable.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1647, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end97:                                         ; preds = %mlxsw_sp_span_trigger_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ops.i.le = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %ops.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.le, align 4
  %disable = getelementptr inbounds %struct.mlxsw_sp_span_trigger_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disable, align 4
  tail call void %12(ptr noundef nonnull %trigger_entry.0.i, ptr noundef %mlxsw_sp_port, i8 noundef zeroext %tc) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then60, %land.rhs49.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_span_trigger_is_ingress(i32 noundef %trigger) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %trigger)
  %0 = icmp ult i32 %trigger, 5
  br i1 %0, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b36 = load i1, ptr @mlxsw_sp_span_trigger_is_ingress.__already_done, align 1
  br i1 %.b36, label %land.end.return_crit_edge, label %if.then, !prof !257

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_trigger_is_ingress.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1665, i32 noundef 9, ptr noundef null) #17
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.cast = trunc i32 %trigger to i5
  %switch.downshift = lshr i5 13, %switch.cast
  %1 = and i5 %switch.downshift, 1
  %2 = sext i5 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.masked = icmp ne i5 %1, 0
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %land.end.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ false, %land.end.return_crit_edge ], [ %switch.masked, %switch.lookup ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_span_init(ptr nocapture noundef readonly %mlxsw_sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlxsw_sp1_span_entry_ops_arr, align 4
  %cmp.not = icmp eq ptr %0, @mlxsw_sp1_span_entry_ops_cpu
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !257

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1677, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %1 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %span, align 4
  %span_trigger_ops_arr = getelementptr inbounds %struct.mlxsw_sp_span, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %span_trigger_ops_arr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlxsw_sp1_span_trigger_ops_arr, ptr %span_trigger_ops_arr, align 4
  %4 = load ptr, ptr %span, align 4
  %span_entry_ops_arr = getelementptr inbounds %struct.mlxsw_sp_span, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %span_entry_ops_arr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlxsw_sp1_span_entry_ops_arr, ptr %span_entry_ops_arr, align 4
  %6 = load ptr, ptr %span, align 4
  %span_entry_ops_arr_size = getelementptr inbounds %struct.mlxsw_sp_span, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %span_entry_ops_arr_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %span_entry_ops_arr_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_span_policer_id_base_set(ptr nocapture noundef readnone %mlxsw_sp, i16 noundef zeroext %policer_id_base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_span_init(ptr nocapture noundef readonly %mlxsw_sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlxsw_sp2_span_entry_ops_arr, align 4
  %cmp.not = icmp eq ptr %0, @mlxsw_sp2_span_entry_ops_cpu
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !257

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1706, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %span = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 22
  %1 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %span, align 4
  %span_trigger_ops_arr = getelementptr inbounds %struct.mlxsw_sp_span, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %span_trigger_ops_arr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlxsw_sp2_span_trigger_ops_arr, ptr %span_trigger_ops_arr, align 4
  %4 = load ptr, ptr %span, align 4
  %span_entry_ops_arr = getelementptr inbounds %struct.mlxsw_sp_span, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %span_entry_ops_arr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlxsw_sp2_span_entry_ops_arr, ptr %span_entry_ops_arr, align 4
  %6 = load ptr, ptr %span, align 4
  %span_entry_ops_arr_size = getelementptr inbounds %struct.mlxsw_sp_span, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %span_entry_ops_arr_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %span_entry_ops_arr_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_span_policer_id_base_set(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %policer_id_base) #0 align 64 {
entry:
  %mogcr_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mogcr_pl) #17
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = call ptr @memset(ptr %mogcr_pl, i32 255, i32 32)
  %1 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %2, ptr noundef nonnull @mlxsw_reg_mogcr, ptr noundef nonnull %mogcr_pl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_mogcr_mirroring_pid_base_set.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

mlxsw_reg_mogcr_mirroring_pid_base_set.exit:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = and i16 %policer_id_base, 16383
  %and6.i.i = zext i16 %3 to i32
  %arrayidx.i.i = getelementptr inbounds i32, ptr %mogcr_pl, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %5, -16384
  %or.i.i = or i32 %and7.i.i, %and6.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call4 = call i32 @mlxsw_reg_write(ptr noundef %7, ptr noundef nonnull @mlxsw_reg_mogcr, ptr noundef nonnull %mogcr_pl) #17
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_mogcr_mirroring_pid_base_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %mlxsw_reg_mogcr_mirroring_pid_base_set.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mogcr_pl) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_nop_parms(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %to_dev, ptr nocapture noundef writeonly %sparmsp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sparmsp, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_nop_configure(ptr nocapture noundef readnone %span_entry, [16 x i32] %sparms.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_span_entry_nop_deconfigure(ptr nocapture noundef %span_entry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_hdroom_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_phys_parms(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %to_dev, ptr nocapture noundef writeonly %sparmsp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %to_dev, i32 2304
  %0 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr.i, ptr %sparmsp, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_phys_configure(ptr nocapture noundef readonly %span_entry, [16 x i32] %sparms.coerce) #0 align 64 {
entry:
  %mpat_pl = alloca [120 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sparms.coerce.fca.0.extract = extractvalue [16 x i32] %sparms.coerce, 0
  %0 = inttoptr i32 %sparms.coerce.fca.0.extract to ptr
  %sparms.coerce.fca.14.extract = extractvalue [16 x i32] %sparms.coerce, 14
  %sparms.coerce.fca.15.extract = extractvalue [16 x i32] %sparms.coerce, 15
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp2, align 8
  %local_port3 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %local_port3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %local_port3, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mpat_pl) #17
  %5 = call ptr @memset(ptr %mpat_pl, i32 255, i32 120)
  %id = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %conv = trunc i32 %7 to i8
  call fastcc void @mlxsw_reg_mpat_pack(ptr noundef nonnull %mpat_pl, i8 noundef zeroext %conv, i16 noundef zeroext %4, i1 noundef zeroext true, i32 noundef 0)
  %spec.select.i.i = shl i32 %sparms.coerce.fca.15.extract, 24
  %and6.i.i = and i32 %spec.select.i.i, 251658240
  %8 = ptrtoint ptr %mpat_pl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mpat_pl, align 4
  %and7.i.i = and i32 %9, -251658241
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %mpat_pl, align 4
  %10 = lshr i32 %sparms.coerce.fca.14.extract, 9
  %spec.select.i.i29 = and i32 %10, 32768
  %arrayidx.i.i35 = getelementptr inbounds i32, ptr %mpat_pl, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i35, align 4
  %and7.i.i37 = and i32 %12, -49152
  %or.i.i38 = or i32 %spec.select.i.i29, %and7.i.i37
  %sparms.coerce.fca.13.extract = extractvalue [16 x i32] %sparms.coerce, 13
  %and6.i.i62 = and i32 %sparms.coerce.fca.13.extract, 16383
  %arrayidx.i.i63 = getelementptr inbounds i32, ptr %mpat_pl, i32 3
  %or.i.i66 = or i32 %and6.i.i62, %or.i.i38
  %13 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i66, ptr %arrayidx.i.i63, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %15, ptr noundef nonnull @mlxsw_reg_mpat, ptr noundef nonnull %mpat_pl) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mpat_pl) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_span_entry_phys_deconfigure(ptr nocapture noundef readonly %span_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_span_entry_deconfigure_common(ptr noundef %span_entry, i32 noundef 0)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_mpat_pack(ptr nocapture noundef %payload, i8 noundef zeroext %pa_id, i16 noundef zeroext %system_port, i1 noundef zeroext %e, i32 noundef %span_type) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = call ptr @memset(ptr %payload, i32 0, i32 120)
  %conv1 = zext i8 %pa_id to i32
  %spec.select.i.i = shl i32 %conv1, 28
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, 268369920
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %conv2 = zext i16 %system_port to i32
  %or.i.i37 = or i32 %or.i.i, %conv2
  store i32 %or.i.i37, ptr %payload, align 4
  %spec.select.i.i56 = select i1 %e, i32 -2147483648, i32 0
  %arrayidx.i.i62 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i62, align 4
  %and7.i.i64 = and i32 %4, 2046820336
  %or.i.i65 = or i32 %spec.select.i.i56, %and7.i.i64
  %or.i.i120 = or i32 %or.i.i65, 100663296
  %and6.i.i144 = and i32 %span_type, 15
  %arrayidx.i.i145 = getelementptr i32, ptr %payload, i32 1
  %or.i.i148 = or i32 %and6.i.i144, %or.i.i120
  %5 = ptrtoint ptr %arrayidx.i.i145 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i148, ptr %arrayidx.i.i145, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_span_entry_deconfigure_common(ptr nocapture noundef readonly %span_entry, i32 noundef %span_type) unnamed_addr #0 align 64 {
entry:
  %mpat_pl = alloca [120 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %parms = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 2
  %0 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parms, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp2, align 8
  %local_port3 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %local_port3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %local_port3, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mpat_pl) #17
  %6 = call ptr @memset(ptr %mpat_pl, i32 255, i32 120)
  %id = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv = trunc i32 %8 to i8
  call fastcc void @mlxsw_reg_mpat_pack(ptr noundef nonnull %mpat_pl, i8 noundef zeroext %conv, i16 noundef zeroext %5, i1 noundef zeroext false, i32 noundef %span_type)
  %session_id = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 2, i32 9
  %9 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %session_id, align 4
  %spec.select.i.i = shl i32 %10, 24
  %and6.i.i = and i32 %spec.select.i.i, 251658240
  %11 = ptrtoint ptr %mpat_pl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mpat_pl, align 4
  %and7.i.i = and i32 %12, -251658241
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %mpat_pl, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_mpat, ptr noundef nonnull %mpat_pl) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mpat_pl) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @netif_is_gretap(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %kind = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(7) @.str.42) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2.not, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_gretap4_parms(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %to_dev, ptr nocapture noundef writeonly %sparmsp) #0 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  %tmp38.i = alloca %struct.ip_tunnel_parm, align 4
  %tparm = alloca %struct.ip_tunnel_parm, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tparm) #17
  %0 = call ptr @memset(ptr %tparm, i32 255, i32 52)
  call void @mlxsw_sp_ipip_netdev_parms4(ptr nonnull sret(%struct.ip_tunnel_parm) align 4 %tparm, ptr noundef %to_dev) #17
  %saddr1 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %tparm, i32 0, i32 6, i32 8
  %1 = ptrtoint ptr %saddr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %saddr1, align 4
  %daddr3 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %tparm, i32 0, i32 6, i32 9
  %3 = ptrtoint ptr %daddr3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %daddr3, align 4
  %tos = getelementptr inbounds %struct.ip_tunnel_parm, ptr %tparm, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tos, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %ttl = getelementptr inbounds %struct.ip_tunnel_parm, ptr %tparm, i32 0, i32 6, i32 5
  %8 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  %flags = getelementptr inbounds %struct.net_device, ptr %to_dev, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and8 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %tparm, i32 0, i32 2
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool11.not = icmp eq i16 %13, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %o_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %tparm, i32 0, i32 3
  %14 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %o_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool14.not = icmp ne i16 %15, 0
  %brmerge = select i1 %tobool14.not, i1 true, i1 %tobool6.not
  %brmerge84 = select i1 %brmerge, i1 true, i1 %tobool.not
  br i1 %brmerge84, label %lor.lhs.false12.if.then_crit_edge, label %lor.lhs.false20

lor.lhs.false12.if.then_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false20:                                  ; preds = %lor.lhs.false12
  %.fca.0.insert46 = insertvalue [4 x i32] poison, i32 %4, 0
  %.fca.1.insert49 = insertvalue [4 x i32] %.fca.0.insert46, i32 -1, 1
  %.fca.2.insert52 = insertvalue [4 x i32] %.fca.1.insert49, i32 -1, 2
  %.fca.3.insert55 = insertvalue [4 x i32] %.fca.2.insert52, i32 -1, 3
  %call = call zeroext i1 @mlxsw_sp_l3addr_is_zero([4 x i32] %.fca.3.insert55) #17
  br i1 %call, label %lor.lhs.false20.if.then_crit_edge, label %if.end

lor.lhs.false20.if.then_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false20.if.then_crit_edge, %lor.lhs.false12.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %16 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sparmsp, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #17
  %call1.i = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.if.end30.i_crit_edge

if.end.if.end30.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.end
  %.b76.i = load i1, ptr @mlxsw_sp_span_gretap4_route.__already_done, align 1
  br i1 %.b76.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i, !prof !257

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_gretap4_route.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 423, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 423) #17
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end30.i_crit_edge, %if.end.if.end30.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tmp38.i) #17
  call void @mlxsw_sp_ipip_netdev_parms4(ptr nonnull sret(%struct.ip_tunnel_parm) align 4 %tmp38.i, ptr noundef %to_dev) #17
  %parms.sroa.4.0.tmp38.sroa_idx.i = getelementptr inbounds i8, ptr %tmp38.i, i32 16
  %17 = ptrtoint ptr %parms.sroa.4.0.tmp38.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %parms.sroa.4.0.copyload.i = load i32, ptr %parms.sroa.4.0.tmp38.sroa_idx.i, align 4
  %parms.sroa.571.0.tmp38.sroa_idx.i = getelementptr inbounds i8, ptr %tmp38.i, i32 41
  %18 = ptrtoint ptr %parms.sroa.571.0.tmp38.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %parms.sroa.571.0.copyload.i = load i8, ptr %parms.sroa.571.0.tmp38.sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tmp38.i) #17
  %fwmark.i = getelementptr i8, ptr %to_dev, i32 2476
  %19 = ptrtoint ptr %fwmark.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fwmark.i, align 4
  %21 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  %22 = ptrtoint ptr %fl4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %parms.sroa.4.0.copyload.i, ptr %fl4.i, align 8
  %daddr1.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %23 = ptrtoint ptr %daddr1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %4, ptr %daddr1.i.i, align 4
  %saddr2.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 1
  %24 = ptrtoint ptr %saddr2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %2, ptr %saddr2.i.i, align 8
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 5
  %25 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %parms.sroa.571.0.copyload.i, ptr %flowic_proto.i.i, align 2
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 2
  %26 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %flowic_mark.i.i, align 8
  %net.i = getelementptr i8, ptr %to_dev, i32 2324
  %27 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i, align 4
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef %28, ptr noundef nonnull %fl4.i, ptr noundef null) #17
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end30.i.mlxsw_sp_span_gretap4_route.exit_crit_edge, label %if.end42.i

if.end30.i.mlxsw_sp_span_gretap4_route.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_gretap4_route.exit

if.end42.i:                                       ; preds = %if.end30.i
  %rt_type.i = getelementptr inbounds %struct.rtable, ptr %call.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %rt_type.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %cmp.not.i = icmp eq i16 %30, 1
  br i1 %cmp.not.i, label %if.end46.i, label %if.end42.i.out.i_crit_edge

if.end42.i.out.i_crit_edge:                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end46.i:                                       ; preds = %if.end42.i
  %31 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i.i, align 4
  %33 = ptrtoint ptr %saddr2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saddr2.i.i, align 8
  %rt_gw_family.i = getelementptr inbounds %struct.rtable, ptr %call.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %rt_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rt_gw_family.i, align 4
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i8 %36, label %if.end46.i.out.i_crit_edge [
    i8 2, label %if.then51.i
    i8 10, label %if.then56.i
  ]

if.end46.i.out.i_crit_edge:                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.then51.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = getelementptr inbounds %struct.rtable, ptr %call.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %.pre88 = insertvalue [4 x i32] poison, i32 %40, 0
  %.pre = insertvalue [4 x i32] %.pre88, i32 -1, 1
  %.pre89 = insertvalue [4 x i32] %.pre, i32 -1, 2
  %.pre90 = insertvalue [4 x i32] %.pre89, i32 -1, 3
  br label %out.i

if.then56.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

out.i:                                            ; preds = %if.then56.i, %if.then51.i, %if.end46.i.out.i_crit_edge, %if.end42.i.out.i_crit_edge
  %.pre87.pre-phi = phi [4 x i32] [ %.fca.3.insert55, %if.then56.i ], [ %.pre90, %if.then51.i ], [ %.fca.3.insert55, %if.end46.i.out.i_crit_edge ], [ %.fca.3.insert55, %if.end42.i.out.i_crit_edge ]
  %saddr.sroa.0.0 = phi i32 [ %34, %if.then56.i ], [ %34, %if.then51.i ], [ %34, %if.end46.i.out.i_crit_edge ], [ %2, %if.end42.i.out.i_crit_edge ]
  %dev.0.i = phi ptr [ null, %if.then56.i ], [ %32, %if.then51.i ], [ %32, %if.end46.i.out.i_crit_edge ], [ null, %if.end42.i.out.i_crit_edge ]
  call void @dst_release(ptr noundef %call.i.i) #17
  br label %mlxsw_sp_span_gretap4_route.exit

mlxsw_sp_span_gretap4_route.exit:                 ; preds = %out.i, %if.end30.i.mlxsw_sp_span_gretap4_route.exit_crit_edge
  %.fca.3.insert.pre-phi = phi [4 x i32] [ %.fca.3.insert55, %if.end30.i.mlxsw_sp_span_gretap4_route.exit_crit_edge ], [ %.pre87.pre-phi, %out.i ]
  %saddr.sroa.0.1 = phi i32 [ %2, %if.end30.i.mlxsw_sp_span_gretap4_route.exit_crit_edge ], [ %saddr.sroa.0.0, %out.i ]
  %retval.0.i = phi ptr [ null, %if.end30.i.mlxsw_sp_span_gretap4_route.exit_crit_edge ], [ %dev.0.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #17
  %41 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ttl, align 4
  %.fca.0.insert71 = insertvalue [4 x i32] poison, i32 %saddr.sroa.0.1, 0
  %.fca.1.insert74 = insertvalue [4 x i32] %.fca.0.insert71, i32 -1, 1
  %.fca.2.insert77 = insertvalue [4 x i32] %.fca.1.insert74, i32 -1, 2
  %.fca.3.insert80 = insertvalue [4 x i32] %.fca.2.insert77, i32 -1, 3
  call fastcc void @mlxsw_sp_span_entry_tunnel_parms_common(ptr noundef %retval.0.i, [4 x i32] %.fca.3.insert80, [4 x i32] %.fca.3.insert55, [4 x i32] %.fca.3.insert.pre-phi, i8 noundef zeroext %42, ptr noundef nonnull @arp_tbl, ptr noundef %sparmsp)
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_span_gretap4_route.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tparm) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_gretap4_configure(ptr nocapture noundef readonly %span_entry, [16 x i32] %sparms.coerce) #0 align 64 {
entry:
  %sparms = alloca %struct.mlxsw_sp_span_parms, align 4
  %mpat_pl = alloca [120 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sparms.coerce.fca.0.extract = extractvalue [16 x i32] %sparms.coerce, 0
  %0 = ptrtoint ptr %sparms to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sparms.coerce.fca.0.extract, ptr %sparms, align 4
  %sparms.coerce.fca.1.extract = extractvalue [16 x i32] %sparms.coerce, 1
  %sparms.coerce.fca.1.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 1
  %1 = ptrtoint ptr %sparms.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sparms.coerce.fca.1.extract, ptr %sparms.coerce.fca.1.gep, align 4
  %sparms.coerce.fca.2.extract = extractvalue [16 x i32] %sparms.coerce, 2
  %sparms.coerce.fca.2.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 2
  %2 = ptrtoint ptr %sparms.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sparms.coerce.fca.2.extract, ptr %sparms.coerce.fca.2.gep, align 4
  %sparms.coerce.fca.3.extract = extractvalue [16 x i32] %sparms.coerce, 3
  %sparms.coerce.fca.3.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 3
  %3 = ptrtoint ptr %sparms.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sparms.coerce.fca.3.extract, ptr %sparms.coerce.fca.3.gep, align 4
  %sparms.coerce.fca.4.extract = extractvalue [16 x i32] %sparms.coerce, 4
  %sparms.coerce.fca.4.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 4
  %4 = ptrtoint ptr %sparms.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sparms.coerce.fca.4.extract, ptr %sparms.coerce.fca.4.gep, align 4
  %sparms.coerce.fca.5.extract = extractvalue [16 x i32] %sparms.coerce, 5
  %sparms.coerce.fca.5.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 5
  %5 = ptrtoint ptr %sparms.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sparms.coerce.fca.5.extract, ptr %sparms.coerce.fca.5.gep, align 4
  %sparms.coerce.fca.6.extract = extractvalue [16 x i32] %sparms.coerce, 6
  %sparms.coerce.fca.6.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 6
  %6 = ptrtoint ptr %sparms.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sparms.coerce.fca.6.extract, ptr %sparms.coerce.fca.6.gep, align 4
  %sparms.coerce.fca.7.extract = extractvalue [16 x i32] %sparms.coerce, 7
  %sparms.coerce.fca.7.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 7
  %7 = ptrtoint ptr %sparms.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sparms.coerce.fca.7.extract, ptr %sparms.coerce.fca.7.gep, align 4
  %sparms.coerce.fca.8.extract = extractvalue [16 x i32] %sparms.coerce, 8
  %sparms.coerce.fca.8.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 8
  %8 = ptrtoint ptr %sparms.coerce.fca.8.gep to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sparms.coerce.fca.8.extract, ptr %sparms.coerce.fca.8.gep, align 4
  %sparms.coerce.fca.9.extract = extractvalue [16 x i32] %sparms.coerce, 9
  %sparms.coerce.fca.9.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 9
  %9 = ptrtoint ptr %sparms.coerce.fca.9.gep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sparms.coerce.fca.9.extract, ptr %sparms.coerce.fca.9.gep, align 4
  %sparms.coerce.fca.10.extract = extractvalue [16 x i32] %sparms.coerce, 10
  %sparms.coerce.fca.10.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 10
  %10 = ptrtoint ptr %sparms.coerce.fca.10.gep to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sparms.coerce.fca.10.extract, ptr %sparms.coerce.fca.10.gep, align 4
  %sparms.coerce.fca.11.extract = extractvalue [16 x i32] %sparms.coerce, 11
  %sparms.coerce.fca.11.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 11
  %11 = ptrtoint ptr %sparms.coerce.fca.11.gep to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sparms.coerce.fca.11.extract, ptr %sparms.coerce.fca.11.gep, align 4
  %sparms.coerce.fca.12.extract = extractvalue [16 x i32] %sparms.coerce, 12
  %sparms.coerce.fca.12.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 12
  %12 = ptrtoint ptr %sparms.coerce.fca.12.gep to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sparms.coerce.fca.12.extract, ptr %sparms.coerce.fca.12.gep, align 4
  %sparms.coerce.fca.13.extract = extractvalue [16 x i32] %sparms.coerce, 13
  %sparms.coerce.fca.13.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 13
  %13 = ptrtoint ptr %sparms.coerce.fca.13.gep to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sparms.coerce.fca.13.extract, ptr %sparms.coerce.fca.13.gep, align 4
  %sparms.coerce.fca.14.extract = extractvalue [16 x i32] %sparms.coerce, 14
  %sparms.coerce.fca.14.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 14
  %14 = ptrtoint ptr %sparms.coerce.fca.14.gep to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sparms.coerce.fca.14.extract, ptr %sparms.coerce.fca.14.gep, align 4
  %sparms.coerce.fca.15.extract = extractvalue [16 x i32] %sparms.coerce, 15
  %sparms.coerce.fca.15.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 15
  %15 = ptrtoint ptr %sparms.coerce.fca.15.gep to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sparms.coerce.fca.15.extract, ptr %sparms.coerce.fca.15.gep, align 4
  %16 = inttoptr i32 %sparms.coerce.fca.0.extract to ptr
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mlxsw_sp2, align 8
  %local_port3 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %local_port3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %local_port3, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mpat_pl) #17
  %21 = call ptr @memset(ptr %mpat_pl, i32 255, i32 120)
  %id = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %conv = trunc i32 %23 to i8
  call fastcc void @mlxsw_reg_mpat_pack(ptr noundef nonnull %mpat_pl, i8 noundef zeroext %conv, i16 noundef zeroext %20, i1 noundef zeroext true, i32 noundef 3)
  %24 = ptrtoint ptr %sparms.coerce.fca.14.gep to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sparms.coerce.fca.14.gep, align 4, !range !256
  %26 = zext i8 %25 to i32
  %spec.select.i.i = shl nuw nsw i32 %26, 15
  %arrayidx.i.i = getelementptr inbounds i32, ptr %mpat_pl, i32 3
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %28, -32769
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %policer_id = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparms, i32 0, i32 7
  %29 = ptrtoint ptr %policer_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %policer_id, align 2
  %31 = and i16 %30, 16383
  %and6.i.i42 = zext i16 %31 to i32
  %arrayidx.i.i43 = getelementptr inbounds i32, ptr %mpat_pl, i32 3
  %and7.i.i45 = and i32 %or.i.i, -16384
  %or.i.i46 = or i32 %and7.i.i45, %and6.i.i42
  %32 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i46, ptr %arrayidx.i.i43, align 4
  %33 = ptrtoint ptr %sparms.coerce.fca.13.gep to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sparms.coerce.fca.13.gep, align 4
  %35 = and i16 %34, 4095
  %and6.i.i.i = zext i16 %35 to i32
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mpat_pl, i32 6
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %37, -4096
  %or.i.i.i = or i32 %and7.i.i.i, %and6.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool12 = icmp ne i16 %34, 0
  call fastcc void @mlxsw_reg_mpat_eth_rspan_l2_pack(ptr noundef nonnull %mpat_pl, ptr noundef %sparms.coerce.fca.2.gep, i1 noundef zeroext %tobool12)
  %38 = ptrtoint ptr %sparms.coerce.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sparms.coerce.fca.1.gep, align 4
  %smac = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparms, i32 0, i32 3
  %40 = ptrtoint ptr %sparms.coerce.fca.9.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sparms.coerce.fca.9.gep, align 4
  %42 = ptrtoint ptr %sparms.coerce.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sparms.coerce.fca.5.gep, align 4
  %conv.i47 = shl i32 %39, 4
  %spec.select.i.i.i66 = and i32 %conv.i47, 4080
  %arrayidx.i.i.i72 = getelementptr inbounds i32, ptr %mpat_pl, i32 7
  %44 = ptrtoint ptr %arrayidx.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i72, align 4
  %and7.i.i.i74 = and i32 %45, -4081
  %or.i.i.i75 = or i32 %spec.select.i.i.i66, %and7.i.i.i74
  store i32 %or.i.i.i75, ptr %arrayidx.i.i.i72, align 4
  %arrayidx.i.i8.i = getelementptr inbounds i8, ptr %mpat_pl, i32 34
  %46 = call ptr @memcpy(ptr %arrayidx.i.i8.i, ptr %smac, i32 6)
  %arrayidx.i.i32.i = getelementptr inbounds i32, ptr %mpat_pl, i32 6
  %47 = ptrtoint ptr %arrayidx.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i32.i, align 4
  %and7.i.i34.i = and i32 %48, -251658241
  store i32 %and7.i.i34.i, ptr %arrayidx.i.i32.i, align 4
  %arrayidx.i.i59.i = getelementptr inbounds i32, ptr %mpat_pl, i32 23
  %49 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %41, ptr %arrayidx.i.i59.i, align 4
  %arrayidx.i.i87.i = getelementptr inbounds i32, ptr %mpat_pl, i32 19
  %50 = ptrtoint ptr %arrayidx.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %43, ptr %arrayidx.i.i87.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %18, i32 0, i32 1
  %51 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %52, ptr noundef nonnull @mlxsw_reg_mpat, ptr noundef nonnull %mpat_pl) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mpat_pl) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_span_entry_gretap4_deconfigure(ptr nocapture noundef readonly %span_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_span_entry_deconfigure_common(ptr noundef %span_entry, i32 noundef 3)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_ipip_netdev_parms4(ptr sret(%struct.ip_tunnel_parm) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_l3addr_is_zero([4 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_span_entry_tunnel_parms_common(ptr noundef %edev, [4 x i32] %saddr.coerce, [4 x i32] %daddr.coerce, [4 x i32] %gw.coerce, i8 noundef zeroext %ttl, ptr noundef %tbl, ptr nocapture noundef writeonly %sparmsp) unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  %vinfo.i.i = alloca %struct.bridge_vlan_info, align 2
  %vid.i.i = alloca i16, align 2
  %gw = alloca %union.mlxsw_sp_l3addr, align 4
  %dmac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr.coerce.fca.0.extract = extractvalue [4 x i32] %saddr.coerce, 0
  %saddr.coerce.fca.1.extract = extractvalue [4 x i32] %saddr.coerce, 1
  %saddr.coerce.fca.2.extract = extractvalue [4 x i32] %saddr.coerce, 2
  %saddr.coerce.fca.3.extract = extractvalue [4 x i32] %saddr.coerce, 3
  %daddr.coerce.fca.0.extract = extractvalue [4 x i32] %daddr.coerce, 0
  %daddr.coerce.fca.1.extract = extractvalue [4 x i32] %daddr.coerce, 1
  %daddr.coerce.fca.2.extract = extractvalue [4 x i32] %daddr.coerce, 2
  %daddr.coerce.fca.3.extract = extractvalue [4 x i32] %daddr.coerce, 3
  %gw.coerce.fca.0.extract = extractvalue [4 x i32] %gw.coerce, 0
  %0 = ptrtoint ptr %gw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %gw.coerce.fca.0.extract, ptr %gw, align 4
  %gw.coerce.fca.1.extract = extractvalue [4 x i32] %gw.coerce, 1
  %gw.coerce.fca.1.gep = getelementptr inbounds [4 x i32], ptr %gw, i32 0, i32 1
  %1 = ptrtoint ptr %gw.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %gw.coerce.fca.1.extract, ptr %gw.coerce.fca.1.gep, align 4
  %gw.coerce.fca.2.extract = extractvalue [4 x i32] %gw.coerce, 2
  %gw.coerce.fca.2.gep = getelementptr inbounds [4 x i32], ptr %gw, i32 0, i32 2
  %2 = ptrtoint ptr %gw.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %gw.coerce.fca.2.extract, ptr %gw.coerce.fca.2.gep, align 4
  %gw.coerce.fca.3.extract = extractvalue [4 x i32] %gw.coerce, 3
  %gw.coerce.fca.3.gep = getelementptr inbounds [4 x i32], ptr %gw, i32 0, i32 3
  %3 = ptrtoint ptr %gw.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %gw.coerce.fca.3.extract, ptr %gw.coerce.fca.3.gep, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dmac) #17
  %4 = call ptr @memset(ptr %dmac, i32 255, i32 6)
  %call = tail call zeroext i1 @mlxsw_sp_l3addr_is_zero([4 x i32] %gw.coerce) #17
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %gw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %daddr.coerce.fca.0.extract, ptr %gw, align 4
  %6 = ptrtoint ptr %gw.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %daddr.coerce.fca.1.extract, ptr %gw.coerce.fca.1.gep, align 4
  %7 = ptrtoint ptr %gw.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %daddr.coerce.fca.2.extract, ptr %gw.coerce.fca.2.gep, align 4
  %8 = ptrtoint ptr %gw.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %daddr.coerce.fca.3.extract, ptr %gw.coerce.fca.3.gep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %edev, null
  br i1 %tobool.not, label %if.end.unoffloadable_crit_edge, label %lor.lhs.false

if.end.unoffloadable_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

lor.lhs.false:                                    ; preds = %if.end
  %call.i = call ptr @neigh_lookup(ptr noundef %tbl, ptr noundef nonnull %gw, ptr noundef nonnull %edev) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %lor.lhs.false.if.end5.i_crit_edge

lor.lhs.false.if.end5.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.i

if.then.i:                                        ; preds = %lor.lhs.false
  %call.i.i = call ptr @__neigh_create(ptr noundef %tbl, ptr noundef nonnull %gw, ptr noundef nonnull %edev, i1 noundef zeroext true) #17
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.unoffloadable_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.i

if.then.i.unoffloadable_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %lor.lhs.false.if.end5.i_crit_edge
  %neigh.0.i = phi ptr [ %call.i, %lor.lhs.false.if.end5.i_crit_edge ], [ %call.i.i, %if.then.i.if.end5.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %used.i.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 10
  %10 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %used.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.not.i.i.i = icmp eq i32 %11, %9
  br i1 %cmp.not.i.i.i, label %if.end5.i.if.end.i.i.i_crit_edge, label %do.body5.i.i.i

if.end5.i.if.end.i.i.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i

do.body5.i.i.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %9, ptr %used.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.body5.i.i.i, %if.end5.i.if.end.i.i.i_crit_edge
  %nud_state.i.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 12
  %13 = ptrtoint ptr %nud_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nud_state.i.i.i, align 8
  %15 = and i8 %14, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i.i, label %if.then11.i.i.i, label %if.end.i.i.i.neigh_event_send.exit.i_crit_edge

if.end.i.i.i.neigh_event_send.exit.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %neigh_event_send.exit.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = call i32 @__neigh_event_send(ptr noundef %neigh.0.i, ptr noundef null, i1 noundef zeroext true) #17
  br label %neigh_event_send.exit.i

neigh_event_send.exit.i:                          ; preds = %if.then11.i.i.i, %if.end.i.i.i.neigh_event_send.exit.i_crit_edge
  %lock.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %lock.i) #17
  %16 = ptrtoint ptr %nud_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nud_state.i.i.i, align 8
  %18 = and i8 %17, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not.i = icmp eq i8 %18, 0
  br i1 %tobool7.not.i, label %neigh_event_send.exit.i.if.end10.i_crit_edge, label %land.lhs.true.i

neigh_event_send.exit.i.if.end10.i_crit_edge:     ; preds = %neigh_event_send.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %neigh_event_send.exit.i
  %dead.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 14
  %19 = ptrtoint ptr %dead.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dead.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not.i = icmp eq i8 %20, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %ha.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 18
  %21 = call ptr @memcpy(ptr %dmac, ptr %ha.i, i32 6)
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end10.i_crit_edge, %neigh_event_send.exit.i.if.end10.i_crit_edge
  %tobool13.not = phi i1 [ true, %if.then9.i ], [ false, %land.lhs.true.i.if.end10.i_crit_edge ], [ false, %neigh_event_send.exit.i.if.end10.i_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock.i) #17
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !261
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #17
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #17, !srcloc !262
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mlxsw_sp_span_dmac.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !257

if.end5.i.i.i.i.i.mlxsw_sp_span_dmac.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_dmac.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #17
  br label %mlxsw_sp_span_dmac.exit

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !263
  call void @neigh_destroy(ptr noundef %neigh.0.i) #17
  br label %mlxsw_sp_span_dmac.exit

mlxsw_sp_span_dmac.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mlxsw_sp_span_dmac.exit_crit_edge
  br i1 %tobool13.not, label %if.end15, label %mlxsw_sp_span_dmac.exit.unoffloadable_crit_edge

mlxsw_sp_span_dmac.exit.unoffloadable_crit_edge:  ; preds = %mlxsw_sp_span_dmac.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end15:                                         ; preds = %mlxsw_sp_span_dmac.exit
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %edev, i32 0, i32 15
  %23 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %24, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %call.i1 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef nonnull %edev) #17
  %call1.i = call ptr @vlan_dev_real_dev(ptr noundef nonnull %edev) #17
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %vid.0 = phi i16 [ %call.i1, %if.then17 ], [ 0, %if.end15.if.end19_crit_edge ]
  %edev.addr.0 = phi ptr [ %call1.i, %if.then17 ], [ %edev, %if.end15.if.end19_crit_edge ]
  %priv_flags.i2 = getelementptr inbounds %struct.net_device, ptr %edev.addr.0, i32 0, i32 15
  %25 = ptrtoint ptr %priv_flags.i2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %priv_flags.i2, align 16
  %and.i3 = and i64 %26, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i3)
  %tobool.i4.not = icmp eq i64 %and.i3, 0
  br i1 %tobool.i4.not, label %if.end19.if.end27_crit_edge, label %if.then21

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then21:                                        ; preds = %if.end19
  %call.i5 = call zeroext i1 @br_vlan_enabled(ptr noundef %edev.addr.0) #17
  br i1 %call.i5, label %if.then.i6, label %if.else.i

if.then.i6:                                       ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo.i.i) #17
  %27 = ptrtoint ptr %vinfo.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %vinfo.i.i, align 2, !annotation !265
  %28 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %28, align 2, !annotation !265
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid.i.i) #17
  %30 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %vid.0, ptr %vid.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid.0)
  %tobool.not.i.i = icmp eq i16 %vid.0, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i6.lor.lhs.false.i.i_crit_edge

if.then.i6.lor.lhs.false.i.i_crit_edge:           ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i6
  %call.i.i7 = call i32 @br_vlan_get_pvid(ptr noundef %edev.addr.0, ptr noundef nonnull %vid.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %tobool1.not.i.i = icmp eq i32 %call.i.i7, 0
  br i1 %tobool1.not.i.i, label %if.end23.i.i, label %do.end.i.i, !prof !257

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 270, i32 noundef 9, ptr noundef null) #17
  br label %mlxsw_sp_span_entry_bridge_8021q.exit.i

if.end23.i.i:                                     ; preds = %land.lhs.true.i.i
  %31 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %.pr.i.i = load i16, ptr %vid.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i.i)
  %tobool24.not.i.i = icmp eq i16 %.pr.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end23.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, label %if.end23.i.i.lor.lhs.false.i.i_crit_edge

if.end23.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i.i

if.end23.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_bridge_8021q.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end23.i.i.lor.lhs.false.i.i_crit_edge, %if.then.i6.lor.lhs.false.i.i_crit_edge
  %32 = phi i16 [ %.pr.i.i, %if.end23.i.i.lor.lhs.false.i.i_crit_edge ], [ %vid.0, %if.then.i6.lor.lhs.false.i.i_crit_edge ]
  %call25.i.i = call i32 @br_vlan_get_info(ptr noundef %edev.addr.0, i16 noundef zeroext %32, ptr noundef nonnull %vinfo.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %lor.lhs.false27.i.i, label %lor.lhs.false.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge

lor.lhs.false.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_bridge_8021q.exit.i

lor.lhs.false27.i.i:                              ; preds = %lor.lhs.false.i.i
  %33 = ptrtoint ptr %vinfo.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vinfo.i.i, align 2
  %35 = and i16 %34, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool28.not.i.i = icmp eq i16 %35, 0
  br i1 %tobool28.not.i.i, label %lor.lhs.false27.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, label %if.end30.i.i

lor.lhs.false27.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge: ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_bridge_8021q.exit.i

if.end30.i.i:                                     ; preds = %lor.lhs.false27.i.i
  %36 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vid.i.i, align 2
  %call31.i.i = call ptr @br_fdb_find_port(ptr noundef %edev.addr.0, ptr noundef nonnull %dmac, i16 noundef zeroext %37) #17
  %tobool32.not.i.i = icmp eq ptr %call31.i.i, null
  br i1 %tobool32.not.i.i, label %if.end30.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, label %if.end34.i.i

if.end30.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_bridge_8021q.exit.i

if.end34.i.i:                                     ; preds = %if.end30.i.i
  %38 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid.i.i, align 2
  %call35.i.i = call i32 @br_vlan_get_info(ptr noundef nonnull %call31.i.i, i16 noundef zeroext %39, ptr noundef nonnull %vinfo.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end38.i.i, label %if.end34.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge

if.end34.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_bridge_8021q.exit.i

if.end38.i.i:                                     ; preds = %if.end34.i.i
  %40 = ptrtoint ptr %vinfo.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vinfo.i.i, align 2
  %42 = and i16 %41, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool42.not.i.i = icmp eq i16 %42, 0
  br i1 %tobool42.not.i.i, label %if.else.i.i, label %if.end38.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge

if.end38.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_bridge_8021q.exit.i

if.else.i.i:                                      ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vid.i.i, align 2
  br label %mlxsw_sp_span_entry_bridge_8021q.exit.i

mlxsw_sp_span_entry_bridge_8021q.exit.i:          ; preds = %if.else.i.i, %if.end38.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, %if.end34.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, %if.end30.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, %lor.lhs.false27.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, %lor.lhs.false.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, %if.end23.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge, %do.end.i.i
  %vid.1 = phi i16 [ 0, %if.end23.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ %vid.0, %lor.lhs.false27.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ %vid.0, %if.end30.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ %vid.0, %if.end34.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ %vid.0, %lor.lhs.false.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ 0, %do.end.i.i ], [ %44, %if.else.i.i ], [ 0, %if.end38.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ null, %if.end23.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ null, %lor.lhs.false27.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ null, %if.end30.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ null, %if.end34.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ], [ null, %do.end.i.i ], [ %call31.i.i, %if.else.i.i ], [ %call31.i.i, %if.end38.i.i.mlxsw_sp_span_entry_bridge_8021q.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i.i) #17
  br label %if.end4.i

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid.0)
  %tobool.not.i8 = icmp eq i16 %vid.0, 0
  br i1 %tobool.not.i8, label %if.then2.i, label %if.else.i.unoffloadable_crit_edge

if.else.i.unoffloadable_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i33.i = call ptr @br_fdb_find_port(ptr noundef %edev.addr.0, ptr noundef nonnull %dmac, i16 noundef zeroext 0) #17
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %mlxsw_sp_span_entry_bridge_8021q.exit.i
  %vid.2 = phi i16 [ %vid.1, %mlxsw_sp_span_entry_bridge_8021q.exit.i ], [ 0, %if.then2.i ]
  %dev.0.i = phi ptr [ %retval.0.i.i, %mlxsw_sp_span_entry_bridge_8021q.exit.i ], [ %call.i33.i, %if.then2.i ]
  %tobool5.not.i = icmp eq ptr %dev.0.i, null
  br i1 %tobool5.not.i, label %if.end4.i.unoffloadable_crit_edge, label %if.end7.i

if.end4.i.unoffloadable_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end7.i:                                        ; preds = %if.end4.i
  %call8.i = call ptr @mlxsw_sp_port_dev_lower_find(ptr noundef nonnull %dev.0.i) #17
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end7.i.unoffloadable_crit_edge, label %if.end11.i

if.end7.i.unoffloadable_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end11.i:                                       ; preds = %if.end7.i
  %mlxsw_sp.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %call8.i, i32 0, i32 2
  %45 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mlxsw_sp.i, align 8
  %bridge.i = getelementptr inbounds %struct.mlxsw_sp, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bridge.i, align 4
  %call12.i = call ptr @mlxsw_sp_bridge_port_find(ptr noundef %48, ptr noundef nonnull %dev.0.i) #17
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end11.i.unoffloadable_crit_edge, label %if.end15.i

if.end11.i.unoffloadable_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = call zeroext i8 @mlxsw_sp_bridge_port_stp_state(ptr noundef nonnull %call12.i) #17
  %call17.i = call i32 @mlxsw_sp_stp_spms_state(i8 noundef zeroext %call16.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call17.i)
  %cmp.not.i = icmp eq i32 %call17.i, 3
  br i1 %cmp.not.i, label %if.end15.i.if.end27_crit_edge, label %if.end15.i.unoffloadable_crit_edge

if.end15.i.unoffloadable_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end15.i.if.end27_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.end27:                                         ; preds = %if.end15.i.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  %vid.4 = phi i16 [ %vid.0, %if.end19.if.end27_crit_edge ], [ %vid.2, %if.end15.i.if.end27_crit_edge ]
  %edev.addr.1 = phi ptr [ %edev.addr.0, %if.end19.if.end27_crit_edge ], [ %dev.0.i, %if.end15.i.if.end27_crit_edge ]
  %priv_flags.i10 = getelementptr inbounds %struct.net_device, ptr %edev.addr.1, i32 0, i32 15
  %49 = ptrtoint ptr %priv_flags.i10 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %priv_flags.i10, align 16
  %and.i11 = and i64 %50, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i11)
  %tobool.i12.not = icmp eq i64 %and.i11, 0
  br i1 %tobool.i12.not, label %if.end27.if.end36_crit_edge, label %if.then29

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid.4)
  %tobool30.not = icmp eq i16 %vid.4, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.then29.unoffloadable_crit_edge

if.then29.unoffloadable_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

lor.lhs.false31:                                  ; preds = %if.then29
  %flags = getelementptr inbounds %struct.net_device, ptr %edev.addr.1, i32 0, i32 14
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %and = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %lor.lhs.false31.unoffloadable_crit_edge, label %if.end34

lor.lhs.false31.unoffloadable_crit_edge:          ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end34:                                         ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #19
  %call.i13 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %edev.addr.1) #17
  %call1.i14 = call ptr @vlan_dev_real_dev(ptr noundef %edev.addr.1) #17
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end27.if.end36_crit_edge
  %vid.5 = phi i16 [ %call.i13, %if.end34 ], [ %vid.4, %if.end27.if.end36_crit_edge ]
  %edev.addr.2 = phi ptr [ %call1.i14, %if.end34 ], [ %edev.addr.1, %if.end27.if.end36_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %edev.addr.2, i32 0, i32 14
  %53 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i15 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i15, label %if.end36.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

if.end36.netif_is_lag_master.exit_crit_edge:      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %if.end36
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %edev.addr.2, i32 0, i32 15
  %55 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %56, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.then38_crit_edge

netif_is_bond_master.exit.i.if.then38_crit_edge:  ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then38

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %if.end36.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %edev.addr.2, i32 0, i32 15
  %57 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %58, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %netif_is_lag_master.exit.if.end48_crit_edge, label %netif_is_lag_master.exit.if.then38_crit_edge

netif_is_lag_master.exit.if.then38_crit_edge:     ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then38

netif_is_lag_master.exit.if.end48_crit_edge:      ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

if.then38:                                        ; preds = %netif_is_lag_master.exit.if.then38_crit_edge, %netif_is_bond_master.exit.i.if.then38_crit_edge
  %and40 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then38.unoffloadable_crit_edge, label %if.end43

if.then38.unoffloadable_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end43:                                         ; preds = %if.then38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #17
  %lower.i = getelementptr inbounds %struct.net_device, ptr %edev.addr.2, i32 0, i32 13, i32 1
  %59 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lower.i, align 8
  %61 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %iter.i, align 4
  %call.i16 = call ptr @netdev_lower_get_next(ptr noundef %edev.addr.2, ptr noundef nonnull %iter.i) #17
  %tobool.not13.i = icmp eq ptr %call.i16, null
  br i1 %tobool.not13.i, label %if.end43.mlxsw_sp_span_entry_lag.exit.thread_crit_edge, label %if.end43.for.body.i_crit_edge

if.end43.for.body.i_crit_edge:                    ; preds = %if.end43
  br label %for.body.i

if.end43.mlxsw_sp_span_entry_lag.exit.thread_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_lag.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end43.for.body.i_crit_edge
  %dev.014.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i16, %if.end43.for.body.i_crit_edge ]
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev.014.i, i32 0, i32 6
  %62 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %state.i.i, align 4
  %64 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i17 = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i17, label %land.lhs.true.i18, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i18:                                ; preds = %for.body.i
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.014.i, i32 0, i32 15
  %65 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %67 = call i32 @llvm.read_register.i32(metadata !246) #17
  %and.i.i.i.i.i.i5.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i5.i.i to ptr
  %preempt_count.i.i.i.i.i6.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i.i6.i.i, align 4
  %add.i.i.i.i7.i.i = add i32 %70, 1
  store volatile i32 %add.i.i.i.i7.i.i, ptr %preempt_count.i.i.i.i.i6.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i8.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %tobool.i.not.i.i, label %if.else.i.i22, label %if.then.i.i19

if.then.i.i19:                                    ; preds = %land.lhs.true.i18
  br i1 %call.i.i8.i.i, label %if.then.i.i19.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i19.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %if.then.i.i19
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i19
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #17
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then.i.i19.rcu_read_lock.exit.i.i.i_crit_edge
  %rx_handler_data.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.014.i, i32 0, i32 95
  %71 = ptrtoint ptr %rx_handler_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %rx_handler_data.i.i.i.i, align 4
  %call.i5.i.i.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i.i)
  %tobool.not.i6.i.i.i = icmp eq i32 %call.i5.i.i.i, 0
  br i1 %tobool.not.i6.i.i.i, label %land.lhs.true.i7.i.i.i, label %rcu_read_lock.exit.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %team_port_get_rcu.exit.i.i.i

land.lhs.true.i7.i.i.i:                           ; preds = %rcu_read_lock.exit.i.i.i
  %call2.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i7.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i7.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %team_port_get_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i7.i.i.i
  %.b9.i.i.i.i = load i1, ptr @team_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i.i.i, label %land.lhs.true4.i.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge, label %if.then.i8.i.i.i

land.lhs.true4.i.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %team_port_get_rcu.exit.i.i.i

if.then.i8.i.i.i:                                 ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @team_port_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 75, ptr noundef nonnull @.str.46) #17
  br label %team_port_get_rcu.exit.i.i.i

team_port_get_rcu.exit.i.i.i:                     ; preds = %if.then.i8.i.i.i, %land.lhs.true4.i.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i7.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.team_port_get_rcu.exit.i.i.i_crit_edge
  %tobool.not.i.i.i20 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i.i20, label %team_port_get_rcu.exit.i.i.i.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i

team_port_get_rcu.exit.i.i.i.cond.end.i.i.i_crit_edge: ; preds = %team_port_get_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %team_port_get_rcu.exit.i.i.i
  %linkup.i.i.i.i = getelementptr inbounds %struct.team_port, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %linkup.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %linkup.i.i.i.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i9.i.i.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i9.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge, label %land.rhs.i.i.i.i

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %index.i.i.i.i.i = getelementptr inbounds %struct.team_port, ptr %72, i32 0, i32 4
  %75 = ptrtoint ptr %index.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp.i.i.i.i.i21 = icmp ne i32 %76, -1
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %land.rhs.i.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge, %team_port_get_rcu.exit.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i1 [ false, %team_port_get_rcu.exit.i.i.i.cond.end.i.i.i_crit_edge ], [ false, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ], [ %cmp.i.i.i.i.i21, %land.rhs.i.i.i.i ]
  %call.i10.i.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i10.i.i.i, label %cond.end.i.i.i.team_port_dev_txable.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i.i

cond.end.i.i.i.team_port_dev_txable.exit.i.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %team_port_dev_txable.exit.i.i

land.lhs.true.i13.i.i.i:                          ; preds = %cond.end.i.i.i
  %call1.i11.i.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i)
  %tobool.not.i12.i.i.i = icmp eq i32 %call1.i11.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i, label %land.lhs.true.i13.i.i.i.team_port_dev_txable.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i.i

land.lhs.true.i13.i.i.i.team_port_dev_txable.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %team_port_dev_txable.exit.i.i

land.lhs.true2.i15.i.i.i:                         ; preds = %land.lhs.true.i13.i.i.i
  %.b4.i14.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i, label %land.lhs.true2.i15.i.i.i.team_port_dev_txable.exit.i.i_crit_edge, label %if.then.i16.i.i.i

land.lhs.true2.i15.i.i.i.team_port_dev_txable.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %team_port_dev_txable.exit.i.i

if.then.i16.i.i.i:                                ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.47) #17
  br label %team_port_dev_txable.exit.i.i

team_port_dev_txable.exit.i.i:                    ; preds = %if.then.i16.i.i.i, %land.lhs.true2.i15.i.i.i.team_port_dev_txable.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.i.team_port_dev_txable.exit.i.i_crit_edge, %cond.end.i.i.i.team_port_dev_txable.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  br label %net_lag_port_dev_txable.exit.i

if.else.i.i22:                                    ; preds = %land.lhs.true.i18
  br i1 %call.i.i8.i.i, label %if.else.i.i22.rcu_read_lock.exit.i16.i.i_crit_edge, label %land.lhs.true.i.i11.i.i

if.else.i.i22.rcu_read_lock.exit.i16.i.i_crit_edge: ; preds = %if.else.i.i22
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i16.i.i

land.lhs.true.i.i11.i.i:                          ; preds = %if.else.i.i22
  %call1.i.i9.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i9.i.i)
  %tobool.not.i.i10.i.i = icmp eq i32 %call1.i.i9.i.i, 0
  br i1 %tobool.not.i.i10.i.i, label %land.lhs.true.i.i11.i.i.rcu_read_lock.exit.i16.i.i_crit_edge, label %land.lhs.true2.i.i13.i.i

land.lhs.true.i.i11.i.i.rcu_read_lock.exit.i16.i.i_crit_edge: ; preds = %land.lhs.true.i.i11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i16.i.i

land.lhs.true2.i.i13.i.i:                         ; preds = %land.lhs.true.i.i11.i.i
  %.b4.i.i12.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i12.i.i, label %land.lhs.true2.i.i13.i.i.rcu_read_lock.exit.i16.i.i_crit_edge, label %if.then.i.i14.i.i

land.lhs.true2.i.i13.i.i.rcu_read_lock.exit.i16.i.i_crit_edge: ; preds = %land.lhs.true2.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i16.i.i

if.then.i.i14.i.i:                                ; preds = %land.lhs.true2.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #17
  br label %rcu_read_lock.exit.i16.i.i

rcu_read_lock.exit.i16.i.i:                       ; preds = %if.then.i.i14.i.i, %land.lhs.true2.i.i13.i.i.rcu_read_lock.exit.i16.i.i_crit_edge, %land.lhs.true.i.i11.i.i.rcu_read_lock.exit.i16.i.i_crit_edge, %if.else.i.i22.rcu_read_lock.exit.i16.i.i_crit_edge
  %rx_handler_data.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev.014.i, i32 0, i32 95
  %77 = ptrtoint ptr %rx_handler_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %rx_handler_data.i.i.i, align 4
  %call.i.i.i23 = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i23)
  %tobool.not.i15.i.i = icmp eq i32 %call.i.i.i23, 0
  br i1 %tobool.not.i15.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i16.i.i.do.end7.i.i.i_crit_edge

rcu_read_lock.exit.i16.i.i.do.end7.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @bond_is_active_slave_dev.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end7.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @bond_is_active_slave_dev.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 444, ptr noundef nonnull @.str.46) #17
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end7.i.i.i_crit_edge, %rcu_read_lock.exit.i16.i.i.do.end7.i.i.i_crit_edge
  %backup.i.i.i.i.i = getelementptr inbounds %struct.slave, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %backup.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i.i.i.i.i = load i8, ptr %backup.i.i.i.i.i, align 2
  %call.i13.i.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i13.i.i.i, label %do.end7.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge, label %land.lhs.true.i16.i.i.i

do.end7.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge: ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bond_is_active_slave_dev.exit.i.i

land.lhs.true.i16.i.i.i:                          ; preds = %do.end7.i.i.i
  %call1.i14.i.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i.i.i)
  %tobool.not.i15.i.i.i = icmp eq i32 %call1.i14.i.i.i, 0
  br i1 %tobool.not.i15.i.i.i, label %land.lhs.true.i16.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge, label %land.lhs.true2.i18.i.i.i

land.lhs.true.i16.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge: ; preds = %land.lhs.true.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bond_is_active_slave_dev.exit.i.i

land.lhs.true2.i18.i.i.i:                         ; preds = %land.lhs.true.i16.i.i.i
  %.b4.i17.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i.i.i, label %land.lhs.true2.i18.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge, label %if.then.i19.i.i.i

land.lhs.true2.i18.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i18.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bond_is_active_slave_dev.exit.i.i

if.then.i19.i.i.i:                                ; preds = %land.lhs.true2.i18.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.47) #17
  br label %bond_is_active_slave_dev.exit.i.i

bond_is_active_slave_dev.exit.i.i:                ; preds = %if.then.i19.i.i.i, %land.lhs.true2.i18.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge, %land.lhs.true.i16.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge, %do.end7.i.i.i.bond_is_active_slave_dev.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i)
  %tobool.not.i12.i17.i.i = icmp sgt i8 %bf.load.i.i.i.i.i, -1
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !266
  br label %net_lag_port_dev_txable.exit.i

net_lag_port_dev_txable.exit.i:                   ; preds = %bond_is_active_slave_dev.exit.i.i, %team_port_dev_txable.exit.i.i
  %retval.0.i.i24 = phi i1 [ %cond.i.i.i, %team_port_dev_txable.exit.i.i ], [ %tobool.not.i12.i17.i.i, %bond_is_active_slave_dev.exit.i.i ]
  %80 = call i32 @llvm.read_register.i32(metadata !246) #17
  %and.i.i.i.i.i20.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i20.i.i.i to ptr
  %preempt_count.i.i.i.i21.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i21.i.i.i, align 4
  %sub.i.i.i.i18.i.i = add i32 %83, -1
  store volatile i32 %sub.i.i.i.i18.i.i, ptr %preempt_count.i.i.i.i21.i.i.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %retval.0.i.i24, label %land.lhs.true3.i, label %net_lag_port_dev_txable.exit.i.for.inc.i_crit_edge

net_lag_port_dev_txable.exit.i.for.inc.i_crit_edge: ; preds = %net_lag_port_dev_txable.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true3.i:                                 ; preds = %net_lag_port_dev_txable.exit.i
  %call4.i = call zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef nonnull %dev.014.i) #17
  br i1 %call4.i, label %mlxsw_sp_span_entry_lag.exit, label %land.lhs.true3.i.for.inc.i_crit_edge

land.lhs.true3.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true3.i.for.inc.i_crit_edge, %net_lag_port_dev_txable.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call5.i = call ptr @netdev_lower_get_next(ptr noundef %edev.addr.2, ptr noundef nonnull %iter.i) #17
  %tobool.not.i25 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i25, label %for.inc.i.mlxsw_sp_span_entry_lag.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.mlxsw_sp_span_entry_lag.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_entry_lag.exit.thread

mlxsw_sp_span_entry_lag.exit.thread:              ; preds = %for.inc.i.mlxsw_sp_span_entry_lag.exit.thread_crit_edge, %if.end43.mlxsw_sp_span_entry_lag.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #17
  br label %unoffloadable

mlxsw_sp_span_entry_lag.exit:                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #17
  br label %if.end48

if.end48:                                         ; preds = %mlxsw_sp_span_entry_lag.exit, %netif_is_lag_master.exit.if.end48_crit_edge
  %edev.addr.3 = phi ptr [ %dev.014.i, %mlxsw_sp_span_entry_lag.exit ], [ %edev.addr.2, %netif_is_lag_master.exit.if.end48_crit_edge ]
  %call49 = call zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef %edev.addr.3) #17
  br i1 %call49, label %if.end51, label %if.end48.unoffloadable_crit_edge

if.end48.unoffloadable_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %unoffloadable

if.end51:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %edev.addr.3, i32 2304
  %84 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i, ptr %sparmsp, align 4
  %conv53 = zext i8 %ttl to i32
  %ttl54 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 1
  %85 = ptrtoint ptr %ttl54 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv53, ptr %ttl54, align 4
  %dmac55 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 2
  %86 = call ptr @memcpy(ptr %dmac55, ptr %dmac, i32 6)
  %smac = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 3
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %edev.addr.3, i32 0, i32 86
  %87 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_addr, align 64
  %89 = call ptr @memcpy(ptr %smac, ptr %88, i32 6)
  %saddr59 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 5
  %90 = ptrtoint ptr %saddr59 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %saddr.coerce.fca.0.extract, ptr %saddr59, align 4
  %saddr.sroa.2.0.saddr59.sroa_idx = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %91 = ptrtoint ptr %saddr.sroa.2.0.saddr59.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %saddr.coerce.fca.1.extract, ptr %saddr.sroa.2.0.saddr59.sroa_idx, align 4
  %saddr.sroa.3.0.saddr59.sroa_idx = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %92 = ptrtoint ptr %saddr.sroa.3.0.saddr59.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %saddr.coerce.fca.2.extract, ptr %saddr.sroa.3.0.saddr59.sroa_idx, align 4
  %saddr.sroa.4.0.saddr59.sroa_idx = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 5, i32 0, i32 0, i32 0, i32 3
  %93 = ptrtoint ptr %saddr.sroa.4.0.saddr59.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %saddr.coerce.fca.3.extract, ptr %saddr.sroa.4.0.saddr59.sroa_idx, align 4
  %daddr60 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 4
  %94 = ptrtoint ptr %daddr60 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %daddr.coerce.fca.0.extract, ptr %daddr60, align 4
  %daddr.sroa.3.0.daddr60.sroa_idx = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %daddr.sroa.3.0.daddr60.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %daddr.coerce.fca.1.extract, ptr %daddr.sroa.3.0.daddr60.sroa_idx, align 4
  %daddr.sroa.4.0.daddr60.sroa_idx = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %96 = ptrtoint ptr %daddr.sroa.4.0.daddr60.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %daddr.coerce.fca.2.extract, ptr %daddr.sroa.4.0.daddr60.sroa_idx, align 4
  %daddr.sroa.5.0.daddr60.sroa_idx = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 4, i32 0, i32 0, i32 0, i32 3
  %97 = ptrtoint ptr %daddr.sroa.5.0.daddr60.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %daddr.coerce.fca.3.extract, ptr %daddr.sroa.5.0.daddr60.sroa_idx, align 4
  %vid61 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 6
  %98 = ptrtoint ptr %vid61 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %vid.5, ptr %vid61, align 4
  br label %cleanup

unoffloadable:                                    ; preds = %if.end48.unoffloadable_crit_edge, %mlxsw_sp_span_entry_lag.exit.thread, %if.then38.unoffloadable_crit_edge, %lor.lhs.false31.unoffloadable_crit_edge, %if.then29.unoffloadable_crit_edge, %if.end15.i.unoffloadable_crit_edge, %if.end11.i.unoffloadable_crit_edge, %if.end7.i.unoffloadable_crit_edge, %if.end4.i.unoffloadable_crit_edge, %if.else.i.unoffloadable_crit_edge, %mlxsw_sp_span_dmac.exit.unoffloadable_crit_edge, %if.then.i.unoffloadable_crit_edge, %if.end.unoffloadable_crit_edge
  %99 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %sparmsp, align 4
  br label %cleanup

cleanup:                                          ; preds = %unoffloadable, %if.end51
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dmac) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_port_dev_lower_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_bridge_port_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlxsw_sp_bridge_port_stp_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_stp_spms_state(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_pvid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_info(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_fdb_find_port(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_mpat_eth_rspan_l2_pack(ptr nocapture noundef %payload, ptr nocapture noundef readonly %mac, i1 noundef zeroext %tp) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 4
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %1, 3932160
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i4 = getelementptr i8, ptr %payload, i32 18
  %2 = call ptr @memcpy(ptr %arrayidx.i.i4, ptr %mac, i32 6)
  %spec.select.i.i23 = select i1 %tp, i32 65536, i32 0
  %arrayidx.i.i29 = getelementptr i32, ptr %payload, i32 6
  %3 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i29, align 4
  %and7.i.i31 = and i32 %4, -65537
  %or.i.i32 = or i32 %spec.select.i.i23, %and7.i.i31
  store i32 %or.i.i32, ptr %arrayidx.i.i29, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @netif_is_ip6gretap(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %kind = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.65) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2.not, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_gretap6_parms(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %to_dev, ptr nocapture noundef writeonly %sparmsp) #0 align 64 {
entry:
  %fl6.i = alloca %struct.flowi6, align 8
  %tparm = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %tparm) #17
  %0 = call ptr @memset(ptr %tparm, i32 255, i32 88)
  call void @mlxsw_sp_ipip_netdev_parms6(ptr nonnull sret(%struct.__ip6_tnl_parm) align 4 %tparm, ptr noundef %to_dev) #17
  %flags = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 7
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %laddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 8
  %3 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %saddr.sroa.0.0.copyload = load i32, ptr %laddr, align 4
  %saddr.sroa.6.0.laddr.sroa_idx = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 8, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %saddr.sroa.6.0.laddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %saddr.sroa.6.0.copyload = load i32, ptr %saddr.sroa.6.0.laddr.sroa_idx, align 4
  %saddr.sroa.8.0.laddr.sroa_idx = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 8, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %saddr.sroa.8.0.laddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %saddr.sroa.8.0.copyload = load i32, ptr %saddr.sroa.8.0.laddr.sroa_idx, align 4
  %saddr.sroa.10.0.laddr.sroa_idx = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 8, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %saddr.sroa.10.0.laddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %saddr.sroa.10.0.copyload = load i32, ptr %saddr.sroa.10.0.laddr.sroa_idx, align 4
  %raddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 9
  %7 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %daddr.sroa.0.0.copyload = load i32, ptr %raddr, align 4
  %daddr.sroa.7.0.raddr.sroa_idx = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 9, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %daddr.sroa.7.0.raddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %daddr.sroa.7.0.copyload = load i32, ptr %daddr.sroa.7.0.raddr.sroa_idx, align 4
  %daddr.sroa.10.0.raddr.sroa_idx = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 9, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %daddr.sroa.10.0.raddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %daddr.sroa.10.0.copyload = load i32, ptr %daddr.sroa.10.0.raddr.sroa_idx, align 4
  %daddr.sroa.13.0.raddr.sroa_idx = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 9, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %daddr.sroa.13.0.raddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %daddr.sroa.13.0.copyload = load i32, ptr %daddr.sroa.13.0.raddr.sroa_idx, align 4
  %hop_limit = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 4
  %11 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hop_limit, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not = icmp eq i8 %12, 0
  %flags3 = getelementptr inbounds %struct.net_device, ptr %to_dev, i32 0, i32 14
  %13 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags3, align 8
  %and4 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_flags = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 10
  %15 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.not = icmp eq i16 %16, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %o_flags = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %tparm, i32 0, i32 11
  %17 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %o_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool9.not = icmp ne i16 %18, 0
  %brmerge = select i1 %tobool9.not, i1 true, i1 %tobool1.not
  %brmerge82 = select i1 %brmerge, i1 true, i1 %tobool.not
  br i1 %brmerge82, label %lor.lhs.false7.if.then_crit_edge, label %lor.lhs.false15

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false15:                                  ; preds = %lor.lhs.false7
  %.fca.0.insert40 = insertvalue [4 x i32] poison, i32 %daddr.sroa.0.0.copyload, 0
  %.fca.1.insert43 = insertvalue [4 x i32] %.fca.0.insert40, i32 %daddr.sroa.7.0.copyload, 1
  %.fca.2.insert46 = insertvalue [4 x i32] %.fca.1.insert43, i32 %daddr.sroa.10.0.copyload, 2
  %.fca.3.insert49 = insertvalue [4 x i32] %.fca.2.insert46, i32 %daddr.sroa.13.0.copyload, 3
  %call = call zeroext i1 @mlxsw_sp_l3addr_is_zero([4 x i32] %.fca.3.insert49) #17
  br i1 %call, label %lor.lhs.false15.if.then_crit_edge, label %if.end

lor.lhs.false15.if.then_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false15.if.then_crit_edge, %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %19 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sparmsp, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false15
  %add.ptr.i.i = getelementptr i8, ptr %to_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #17
  %fl.i = getelementptr i8, ptr %to_dev, i32 2408
  %20 = call ptr @memcpy(ptr %fl6.i, ptr %fl.i, i32 88)
  %call1.i = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.if.end30.i_crit_edge

if.end.if.end30.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.end
  %.b63.i = load i1, ptr @mlxsw_sp_span_gretap6_route.__already_done, align 1
  br i1 %.b63.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i, !prof !257

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp_span_gretap6_route.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 532, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 532) #17
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end30.i_crit_edge, %if.end.if.end30.i_crit_edge
  %fwmark.i = getelementptr i8, ptr %to_dev, i32 2396
  %21 = ptrtoint ptr %fwmark.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fwmark.i, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 2
  %23 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %flowic_mark.i, align 8
  %saddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  %call38.i = call i32 @ip6_tnl_xmit_ctl(ptr noundef %add.ptr.i.i, ptr noundef %saddr.i, ptr noundef %daddr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge, label %if.end41.i

if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlxsw_sp_span_gretap6_route.exit

if.end41.i:                                       ; preds = %if.end30.i
  %net.i = getelementptr i8, ptr %to_dev, i32 2316
  %24 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i, align 4
  %call.i.i = call ptr @ip6_route_output_flags(ptr noundef %25, ptr noundef null, ptr noundef nonnull %fl6.i, i32 noundef 0) #17
  %tobool43.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool43.not.i, label %if.end41.i.out.i_crit_edge, label %lor.lhs.false.i

if.end41.i.out.i_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

lor.lhs.false.i:                                  ; preds = %if.end41.i
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %call.i.i, i32 0, i32 15
  %26 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool44.not.i = icmp eq i16 %27, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %lor.lhs.false.i.out.i_crit_edge

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end46.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i.i, align 4
  %30 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %saddr.sroa.0.0.copyload83 = load i32, ptr %saddr.i, align 8
  %saddr.sroa.6.0.saddr.i.sroa_idx = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %saddr.sroa.6.0.saddr.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %saddr.sroa.6.0.copyload84 = load i32, ptr %saddr.sroa.6.0.saddr.i.sroa_idx, align 4
  %saddr.sroa.8.0.saddr.i.sroa_idx = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %saddr.sroa.8.0.saddr.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %saddr.sroa.8.0.copyload85 = load i32, ptr %saddr.sroa.8.0.saddr.i.sroa_idx, align 8
  %saddr.sroa.10.0.saddr.i.sroa_idx = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %saddr.sroa.10.0.saddr.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %saddr.sroa.10.0.copyload86 = load i32, ptr %saddr.sroa.10.0.saddr.i.sroa_idx, align 4
  %rt6i_gateway.i = getelementptr inbounds %struct.rt6_info, ptr %call.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %rt6i_gateway.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %gw.sroa.0.0.copyload = load i32, ptr %rt6i_gateway.i, align 4
  %gw.sroa.6.0.rt6i_gateway.i.sroa_idx = getelementptr inbounds %struct.rt6_info, ptr %call.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %gw.sroa.6.0.rt6i_gateway.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %gw.sroa.6.0.copyload = load i32, ptr %gw.sroa.6.0.rt6i_gateway.i.sroa_idx, align 4
  %gw.sroa.9.0.rt6i_gateway.i.sroa_idx = getelementptr inbounds %struct.rt6_info, ptr %call.i.i, i32 0, i32 5, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %gw.sroa.9.0.rt6i_gateway.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %gw.sroa.9.0.copyload = load i32, ptr %gw.sroa.9.0.rt6i_gateway.i.sroa_idx, align 4
  %gw.sroa.12.0.rt6i_gateway.i.sroa_idx = getelementptr inbounds %struct.rt6_info, ptr %call.i.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %37 = ptrtoint ptr %gw.sroa.12.0.rt6i_gateway.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %gw.sroa.12.0.copyload = load i32, ptr %gw.sroa.12.0.rt6i_gateway.i.sroa_idx, align 4
  %.pre90 = insertvalue [4 x i32] poison, i32 %gw.sroa.0.0.copyload, 0
  %.pre = insertvalue [4 x i32] %.pre90, i32 %gw.sroa.6.0.copyload, 1
  %.pre91 = insertvalue [4 x i32] %.pre, i32 %gw.sroa.9.0.copyload, 2
  %.pre92 = insertvalue [4 x i32] %.pre91, i32 %gw.sroa.12.0.copyload, 3
  br label %out.i

out.i:                                            ; preds = %if.end46.i, %lor.lhs.false.i.out.i_crit_edge, %if.end41.i.out.i_crit_edge
  %.pre89.pre-phi = phi [4 x i32] [ %.pre92, %if.end46.i ], [ %.fca.3.insert49, %lor.lhs.false.i.out.i_crit_edge ], [ %.fca.3.insert49, %if.end41.i.out.i_crit_edge ]
  %saddr.sroa.10.0 = phi i32 [ %saddr.sroa.10.0.copyload86, %if.end46.i ], [ %saddr.sroa.10.0.copyload, %lor.lhs.false.i.out.i_crit_edge ], [ %saddr.sroa.10.0.copyload, %if.end41.i.out.i_crit_edge ]
  %saddr.sroa.8.0 = phi i32 [ %saddr.sroa.8.0.copyload85, %if.end46.i ], [ %saddr.sroa.8.0.copyload, %lor.lhs.false.i.out.i_crit_edge ], [ %saddr.sroa.8.0.copyload, %if.end41.i.out.i_crit_edge ]
  %saddr.sroa.6.0 = phi i32 [ %saddr.sroa.6.0.copyload84, %if.end46.i ], [ %saddr.sroa.6.0.copyload, %lor.lhs.false.i.out.i_crit_edge ], [ %saddr.sroa.6.0.copyload, %if.end41.i.out.i_crit_edge ]
  %saddr.sroa.0.0 = phi i32 [ %saddr.sroa.0.0.copyload83, %if.end46.i ], [ %saddr.sroa.0.0.copyload, %lor.lhs.false.i.out.i_crit_edge ], [ %saddr.sroa.0.0.copyload, %if.end41.i.out.i_crit_edge ]
  %dev.0.i = phi ptr [ %29, %if.end46.i ], [ null, %lor.lhs.false.i.out.i_crit_edge ], [ null, %if.end41.i.out.i_crit_edge ]
  call void @dst_release(ptr noundef %call.i.i) #17
  br label %mlxsw_sp_span_gretap6_route.exit

mlxsw_sp_span_gretap6_route.exit:                 ; preds = %out.i, %if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge
  %.fca.3.insert.pre-phi = phi [4 x i32] [ %.fca.3.insert49, %if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge ], [ %.pre89.pre-phi, %out.i ]
  %saddr.sroa.10.1 = phi i32 [ %saddr.sroa.10.0.copyload, %if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge ], [ %saddr.sroa.10.0, %out.i ]
  %saddr.sroa.8.1 = phi i32 [ %saddr.sroa.8.0.copyload, %if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge ], [ %saddr.sroa.8.0, %out.i ]
  %saddr.sroa.6.1 = phi i32 [ %saddr.sroa.6.0.copyload, %if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge ], [ %saddr.sroa.6.0, %out.i ]
  %saddr.sroa.0.1 = phi i32 [ %saddr.sroa.0.0.copyload, %if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge ], [ %saddr.sroa.0.0, %out.i ]
  %retval.0.i = phi ptr [ null, %if.end30.i.mlxsw_sp_span_gretap6_route.exit_crit_edge ], [ %dev.0.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #17
  %38 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hop_limit, align 2
  %.fca.0.insert69 = insertvalue [4 x i32] poison, i32 %saddr.sroa.0.1, 0
  %.fca.1.insert72 = insertvalue [4 x i32] %.fca.0.insert69, i32 %saddr.sroa.6.1, 1
  %.fca.2.insert75 = insertvalue [4 x i32] %.fca.1.insert72, i32 %saddr.sroa.8.1, 2
  %.fca.3.insert78 = insertvalue [4 x i32] %.fca.2.insert75, i32 %saddr.sroa.10.1, 3
  call fastcc void @mlxsw_sp_span_entry_tunnel_parms_common(ptr noundef %retval.0.i, [4 x i32] %.fca.3.insert78, [4 x i32] %.fca.3.insert49, [4 x i32] %.fca.3.insert.pre-phi, i8 noundef zeroext %39, ptr noundef nonnull @nd_tbl, ptr noundef %sparmsp)
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_span_gretap6_route.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %tparm) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_gretap6_configure(ptr nocapture noundef readonly %span_entry, [16 x i32] %sparms.coerce) #0 align 64 {
entry:
  %sip.sroa.0.i = alloca [4 x i32], align 4
  %dip.sroa.0.i = alloca [4 x i32], align 4
  %sparms = alloca %struct.mlxsw_sp_span_parms, align 4
  %mpat_pl = alloca [120 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sparms.coerce.fca.0.extract = extractvalue [16 x i32] %sparms.coerce, 0
  %0 = ptrtoint ptr %sparms to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sparms.coerce.fca.0.extract, ptr %sparms, align 4
  %sparms.coerce.fca.1.extract = extractvalue [16 x i32] %sparms.coerce, 1
  %sparms.coerce.fca.1.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 1
  %1 = ptrtoint ptr %sparms.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sparms.coerce.fca.1.extract, ptr %sparms.coerce.fca.1.gep, align 4
  %sparms.coerce.fca.2.extract = extractvalue [16 x i32] %sparms.coerce, 2
  %sparms.coerce.fca.2.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 2
  %2 = ptrtoint ptr %sparms.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sparms.coerce.fca.2.extract, ptr %sparms.coerce.fca.2.gep, align 4
  %sparms.coerce.fca.3.extract = extractvalue [16 x i32] %sparms.coerce, 3
  %sparms.coerce.fca.3.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 3
  %3 = ptrtoint ptr %sparms.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sparms.coerce.fca.3.extract, ptr %sparms.coerce.fca.3.gep, align 4
  %sparms.coerce.fca.4.extract = extractvalue [16 x i32] %sparms.coerce, 4
  %sparms.coerce.fca.4.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 4
  %4 = ptrtoint ptr %sparms.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sparms.coerce.fca.4.extract, ptr %sparms.coerce.fca.4.gep, align 4
  %sparms.coerce.fca.5.extract = extractvalue [16 x i32] %sparms.coerce, 5
  %sparms.coerce.fca.5.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 5
  %5 = ptrtoint ptr %sparms.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sparms.coerce.fca.5.extract, ptr %sparms.coerce.fca.5.gep, align 4
  %sparms.coerce.fca.6.extract = extractvalue [16 x i32] %sparms.coerce, 6
  %sparms.coerce.fca.6.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 6
  %6 = ptrtoint ptr %sparms.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sparms.coerce.fca.6.extract, ptr %sparms.coerce.fca.6.gep, align 4
  %sparms.coerce.fca.7.extract = extractvalue [16 x i32] %sparms.coerce, 7
  %sparms.coerce.fca.7.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 7
  %7 = ptrtoint ptr %sparms.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sparms.coerce.fca.7.extract, ptr %sparms.coerce.fca.7.gep, align 4
  %sparms.coerce.fca.8.extract = extractvalue [16 x i32] %sparms.coerce, 8
  %sparms.coerce.fca.8.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 8
  %8 = ptrtoint ptr %sparms.coerce.fca.8.gep to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sparms.coerce.fca.8.extract, ptr %sparms.coerce.fca.8.gep, align 4
  %sparms.coerce.fca.9.extract = extractvalue [16 x i32] %sparms.coerce, 9
  %sparms.coerce.fca.9.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 9
  %9 = ptrtoint ptr %sparms.coerce.fca.9.gep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sparms.coerce.fca.9.extract, ptr %sparms.coerce.fca.9.gep, align 4
  %sparms.coerce.fca.10.extract = extractvalue [16 x i32] %sparms.coerce, 10
  %sparms.coerce.fca.10.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 10
  %10 = ptrtoint ptr %sparms.coerce.fca.10.gep to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sparms.coerce.fca.10.extract, ptr %sparms.coerce.fca.10.gep, align 4
  %sparms.coerce.fca.11.extract = extractvalue [16 x i32] %sparms.coerce, 11
  %sparms.coerce.fca.11.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 11
  %11 = ptrtoint ptr %sparms.coerce.fca.11.gep to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sparms.coerce.fca.11.extract, ptr %sparms.coerce.fca.11.gep, align 4
  %sparms.coerce.fca.12.extract = extractvalue [16 x i32] %sparms.coerce, 12
  %sparms.coerce.fca.12.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 12
  %12 = ptrtoint ptr %sparms.coerce.fca.12.gep to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sparms.coerce.fca.12.extract, ptr %sparms.coerce.fca.12.gep, align 4
  %sparms.coerce.fca.13.extract = extractvalue [16 x i32] %sparms.coerce, 13
  %sparms.coerce.fca.13.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 13
  %13 = ptrtoint ptr %sparms.coerce.fca.13.gep to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sparms.coerce.fca.13.extract, ptr %sparms.coerce.fca.13.gep, align 4
  %sparms.coerce.fca.14.extract = extractvalue [16 x i32] %sparms.coerce, 14
  %sparms.coerce.fca.14.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 14
  %14 = ptrtoint ptr %sparms.coerce.fca.14.gep to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sparms.coerce.fca.14.extract, ptr %sparms.coerce.fca.14.gep, align 4
  %sparms.coerce.fca.15.extract = extractvalue [16 x i32] %sparms.coerce, 15
  %sparms.coerce.fca.15.gep = getelementptr inbounds [16 x i32], ptr %sparms, i32 0, i32 15
  %15 = ptrtoint ptr %sparms.coerce.fca.15.gep to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sparms.coerce.fca.15.extract, ptr %sparms.coerce.fca.15.gep, align 4
  %16 = inttoptr i32 %sparms.coerce.fca.0.extract to ptr
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mlxsw_sp2, align 8
  %local_port3 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %local_port3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %local_port3, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mpat_pl) #17
  %21 = call ptr @memset(ptr %mpat_pl, i32 255, i32 120)
  %id = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %conv = trunc i32 %23 to i8
  call fastcc void @mlxsw_reg_mpat_pack(ptr noundef nonnull %mpat_pl, i8 noundef zeroext %conv, i16 noundef zeroext %20, i1 noundef zeroext true, i32 noundef 3)
  %24 = ptrtoint ptr %sparms.coerce.fca.14.gep to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sparms.coerce.fca.14.gep, align 4, !range !256
  %26 = zext i8 %25 to i32
  %spec.select.i.i = shl nuw nsw i32 %26, 15
  %arrayidx.i.i = getelementptr inbounds i32, ptr %mpat_pl, i32 3
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %28, -32769
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %policer_id = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparms, i32 0, i32 7
  %29 = ptrtoint ptr %policer_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %policer_id, align 2
  %31 = and i16 %30, 16383
  %and6.i.i57 = zext i16 %31 to i32
  %arrayidx.i.i58 = getelementptr inbounds i32, ptr %mpat_pl, i32 3
  %and7.i.i60 = and i32 %or.i.i, -16384
  %or.i.i61 = or i32 %and7.i.i60, %and6.i.i57
  %32 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i61, ptr %arrayidx.i.i58, align 4
  %33 = ptrtoint ptr %sparms.coerce.fca.13.gep to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sparms.coerce.fca.13.gep, align 4
  %35 = and i16 %34, 4095
  %and6.i.i.i = zext i16 %35 to i32
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mpat_pl, i32 6
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %37, -4096
  %or.i.i.i = or i32 %and7.i.i.i, %and6.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool12 = icmp ne i16 %34, 0
  call fastcc void @mlxsw_reg_mpat_eth_rspan_l2_pack(ptr noundef nonnull %mpat_pl, ptr noundef %sparms.coerce.fca.2.gep, i1 noundef zeroext %tobool12)
  %38 = ptrtoint ptr %sparms.coerce.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sparms.coerce.fca.1.gep, align 4
  %smac = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparms, i32 0, i32 3
  %40 = ptrtoint ptr %sparms.coerce.fca.9.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.0.load = load i32, ptr %sparms.coerce.fca.9.gep, align 4
  %41 = ptrtoint ptr %sparms.coerce.fca.10.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.1.load = load i32, ptr %sparms.coerce.fca.10.gep, align 4
  %42 = ptrtoint ptr %sparms.coerce.fca.11.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.2.load = load i32, ptr %sparms.coerce.fca.11.gep, align 4
  %43 = ptrtoint ptr %sparms.coerce.fca.12.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.3.load = load i32, ptr %sparms.coerce.fca.12.gep, align 4
  %44 = ptrtoint ptr %sparms.coerce.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.0.load23 = load i32, ptr %sparms.coerce.fca.5.gep, align 4
  %45 = ptrtoint ptr %sparms.coerce.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.1.load26 = load i32, ptr %sparms.coerce.fca.6.gep, align 4
  %46 = ptrtoint ptr %sparms.coerce.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.2.load29 = load i32, ptr %sparms.coerce.fca.7.gep, align 4
  %47 = ptrtoint ptr %sparms.coerce.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.3.load32 = load i32, ptr %sparms.coerce.fca.8.gep, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sip.sroa.0.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dip.sroa.0.i)
  %48 = ptrtoint ptr %sip.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.fca.0.load, ptr %sip.sroa.0.i, align 4
  %sip.sroa.0.i.4.i.4.sip.coerce.fca.1.gep.sroa_idx = getelementptr inbounds i8, ptr %sip.sroa.0.i, i32 4
  %49 = ptrtoint ptr %sip.sroa.0.i.4.i.4.sip.coerce.fca.1.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.fca.1.load, ptr %sip.sroa.0.i.4.i.4.sip.coerce.fca.1.gep.sroa_idx, align 4
  %sip.sroa.0.i.8.i.8.sip.coerce.fca.2.gep.sroa_idx = getelementptr inbounds i8, ptr %sip.sroa.0.i, i32 8
  %50 = ptrtoint ptr %sip.sroa.0.i.8.i.8.sip.coerce.fca.2.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.fca.2.load, ptr %sip.sroa.0.i.8.i.8.sip.coerce.fca.2.gep.sroa_idx, align 4
  %sip.sroa.0.i.12.i.12.sip.coerce.fca.3.gep.sroa_idx = getelementptr inbounds i8, ptr %sip.sroa.0.i, i32 12
  %51 = ptrtoint ptr %sip.sroa.0.i.12.i.12.sip.coerce.fca.3.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.fca.3.load, ptr %sip.sroa.0.i.12.i.12.sip.coerce.fca.3.gep.sroa_idx, align 4
  %52 = ptrtoint ptr %dip.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.fca.0.load23, ptr %dip.sroa.0.i, align 4
  %dip.sroa.0.i.4.i.4.dip.coerce.fca.1.gep.sroa_idx = getelementptr inbounds i8, ptr %dip.sroa.0.i, i32 4
  %53 = ptrtoint ptr %dip.sroa.0.i.4.i.4.dip.coerce.fca.1.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.fca.1.load26, ptr %dip.sroa.0.i.4.i.4.dip.coerce.fca.1.gep.sroa_idx, align 4
  %dip.sroa.0.i.8.i.8.dip.coerce.fca.2.gep.sroa_idx = getelementptr inbounds i8, ptr %dip.sroa.0.i, i32 8
  %54 = ptrtoint ptr %dip.sroa.0.i.8.i.8.dip.coerce.fca.2.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.fca.2.load29, ptr %dip.sroa.0.i.8.i.8.dip.coerce.fca.2.gep.sroa_idx, align 4
  %dip.sroa.0.i.12.i.12.dip.coerce.fca.3.gep.sroa_idx = getelementptr inbounds i8, ptr %dip.sroa.0.i, i32 12
  %55 = ptrtoint ptr %dip.sroa.0.i.12.i.12.dip.coerce.fca.3.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.fca.3.load32, ptr %dip.sroa.0.i.12.i.12.dip.coerce.fca.3.gep.sroa_idx, align 4
  %conv.i62 = shl i32 %39, 4
  %spec.select.i.i.i81 = and i32 %conv.i62, 4080
  %arrayidx.i.i.i87 = getelementptr inbounds i32, ptr %mpat_pl, i32 7
  %56 = ptrtoint ptr %arrayidx.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i87, align 4
  %and7.i.i.i89 = and i32 %57, -4081
  %or.i.i.i90 = or i32 %spec.select.i.i.i81, %and7.i.i.i89
  store i32 %or.i.i.i90, ptr %arrayidx.i.i.i87, align 4
  %arrayidx.i.i11.i = getelementptr inbounds i8, ptr %mpat_pl, i32 34
  %58 = call ptr @memcpy(ptr %arrayidx.i.i11.i, ptr %smac, i32 6)
  %arrayidx.i.i37.i = getelementptr inbounds i32, ptr %mpat_pl, i32 6
  %59 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i37.i, align 4
  %and7.i.i39.i = and i32 %60, -251658241
  %or.i.i40.i = or i32 %and7.i.i39.i, 16777216
  store i32 %or.i.i40.i, ptr %arrayidx.i.i37.i, align 4
  %arrayidx.i.i44.i = getelementptr inbounds i8, ptr %mpat_pl, i32 80
  %61 = call ptr @memcpy(ptr %arrayidx.i.i44.i, ptr %sip.sroa.0.i, i32 16)
  %arrayidx.i.i49.i = getelementptr inbounds i8, ptr %mpat_pl, i32 64
  %62 = call ptr @memcpy(ptr %arrayidx.i.i49.i, ptr %dip.sroa.0.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sip.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dip.sroa.0.i)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %18, i32 0, i32 1
  %63 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %64, ptr noundef nonnull @mlxsw_reg_mpat, ptr noundef nonnull %mpat_pl) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mpat_pl) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_span_entry_gretap6_deconfigure(ptr nocapture noundef readonly %span_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_span_entry_deconfigure_common(ptr noundef %span_entry, i32 noundef 3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_ipip_netdev_parms6(ptr sret(%struct.__ip6_tnl_parm) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_tnl_xmit_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlxsw_sp_span_vlan_can_handle(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call ptr @vlan_dev_real_dev(ptr noundef %dev) #17
  %call2 = tail call zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef %call1) #17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %call2, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_vlan_parms(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %to_dev, ptr nocapture noundef writeonly %sparmsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %to_dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sparmsp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %to_dev) #17
  %call1.i = tail call ptr @vlan_dev_real_dev(ptr noundef %to_dev) #17
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 2304
  %3 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %sparmsp, align 4
  %vid3 = getelementptr inbounds %struct.mlxsw_sp_span_parms, ptr %sparmsp, i32 0, i32 6
  %4 = ptrtoint ptr %vid3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call.i, ptr %vid3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_span_entry_vlan_configure(ptr nocapture noundef readonly %span_entry, [16 x i32] %sparms.coerce) #0 align 64 {
entry:
  %mpat_pl = alloca [120 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sparms.coerce.fca.0.extract = extractvalue [16 x i32] %sparms.coerce, 0
  %0 = inttoptr i32 %sparms.coerce.fca.0.extract to ptr
  %sparms.coerce.fca.13.extract = extractvalue [16 x i32] %sparms.coerce, 13
  %sparms.coerce.fca.14.extract = extractvalue [16 x i32] %sparms.coerce, 14
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp2, align 8
  %local_port3 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %local_port3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %local_port3, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %mpat_pl) #17
  %5 = call ptr @memset(ptr %mpat_pl, i32 255, i32 120)
  %id = getelementptr inbounds %struct.mlxsw_sp_span_entry, ptr %span_entry, i32 0, i32 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %conv = trunc i32 %7 to i8
  call fastcc void @mlxsw_reg_mpat_pack(ptr noundef nonnull %mpat_pl, i8 noundef zeroext %conv, i16 noundef zeroext %4, i1 noundef zeroext true, i32 noundef 1)
  %8 = lshr i32 %sparms.coerce.fca.14.extract, 9
  %spec.select.i.i = and i32 %8, 32768
  %arrayidx.i.i = getelementptr inbounds i32, ptr %mpat_pl, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %10, -49152
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %and6.i.i34 = and i32 %sparms.coerce.fca.13.extract, 16383
  %arrayidx.i.i35 = getelementptr inbounds i32, ptr %mpat_pl, i32 3
  %or.i.i38 = or i32 %and6.i.i34, %or.i.i
  %11 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.i38, ptr %arrayidx.i.i35, align 4
  %sparms.sroa.14.52.extract.shift = lshr i32 %sparms.coerce.fca.13.extract, 16
  %and6.i.i.i = and i32 %sparms.sroa.14.52.extract.shift, 4095
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mpat_pl, i32 6
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %13, -4096
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %15, ptr noundef nonnull @mlxsw_reg_mpat, ptr noundef nonnull %mpat_pl) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %mpat_pl) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_span_entry_vlan_deconfigure(ptr nocapture noundef readonly %span_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_span_entry_deconfigure_common(ptr noundef %span_entry, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp1_span_cpu_can_handle(ptr noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_span_entry_cpu_parms(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %to_dev, ptr nocapture noundef readnone %sparmsp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_span_entry_cpu_configure(ptr nocapture noundef readnone %span_entry, [16 x i32] %sparms.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_span_entry_cpu_deconfigure(ptr nocapture noundef %span_entry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_span_trigger_port_bind(ptr nocapture noundef readonly %trigger_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 1
  %0 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span, align 4
  %call = tail call fastcc i32 @__mlxsw_sp_span_trigger_port_bind(ptr noundef %1, ptr noundef %trigger_entry, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_span_trigger_port_unbind(ptr nocapture noundef readonly %trigger_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 1
  %0 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span, align 4
  %call = tail call fastcc i32 @__mlxsw_sp_span_trigger_port_bind(ptr noundef %1, ptr noundef %trigger_entry, i1 noundef zeroext false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_span_trigger_port_matches(ptr nocapture noundef readonly %trigger_entry, i32 noundef %trigger, ptr nocapture noundef readonly %mlxsw_sp_port) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger1 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 5
  %0 = ptrtoint ptr %trigger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trigger1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %trigger)
  %cmp = icmp eq i32 %1, %trigger
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %local_port = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 4
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port, align 4
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %4 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %local_port2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp4 = icmp eq i16 %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp4, %land.rhs ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_span_trigger_port_enable(ptr nocapture noundef readnone %trigger_entry, ptr nocapture noundef readnone %mlxsw_sp_port, i8 noundef zeroext %tc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_span_trigger_port_disable(ptr nocapture noundef %trigger_entry, ptr nocapture noundef %mlxsw_sp_port, i8 noundef zeroext %tc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_span_trigger_port_bind(ptr nocapture noundef readonly %span, ptr nocapture noundef readonly %trigger_entry, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %mpar_pl = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mpar_pl) #17
  %trigger = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 5
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trigger, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %1, label %land.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b48 = load i1, ptr @__mlxsw_sp_span_trigger_port_bind.__already_done, align 1
  br i1 %.b48, label %land.end.cleanup_crit_edge, label %if.then, !prof !257

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__mlxsw_sp_span_trigger_port_bind.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1230, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %i_e.0 = phi i32 [ 0, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %probability_rate = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %probability_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %probability_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -794967296, i32 %4)
  %cmp = icmp ugt i32 %4, -794967296
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end35

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end35:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %parms = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 6
  %local_port = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 4
  %5 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %local_port, align 4
  %7 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %parms, align 4
  %9 = call ptr @memset(ptr %mpar_pl, i32 0, i32 12)
  %conv1.i = zext i16 %6 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %10 = ptrtoint ptr %mpar_pl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mpar_pl, align 4
  %and7.i.i.i = and i32 %11, -16711729
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %12 = lshr i32 %conv1.i, 4
  %and6.i26.i.i = and i32 %12, 48
  %or.i30.i.i = or i32 %and6.i26.i.i, %or.i.i.i
  store i32 %or.i30.i.i, ptr %mpar_pl, align 4
  %spec.select.i.i27.i = select i1 %enable, i32 -2147483648, i32 0
  %arrayidx.i.i33.i = getelementptr inbounds i32, ptr %mpar_pl, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i33.i, align 4
  %and7.i.i35.i = and i32 %14, 2147483647
  %or.i.i36.i = or i32 %spec.select.i.i27.i, %and7.i.i35.i
  store i32 %or.i.i36.i, ptr %arrayidx.i.i33.i, align 4
  %15 = load i32, ptr %mpar_pl, align 4
  %and7.i.i64.i = and i32 %15, -16
  %or.i.i65.i = or i32 %i_e.0, %and7.i.i64.i
  store i32 %or.i.i65.i, ptr %mpar_pl, align 4
  %and6.i.i90.i = and i32 %8, 15
  %arrayidx.i.i91.i = getelementptr inbounds i32, ptr %mpar_pl, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i91.i, align 4
  %and7.i.i93.i = and i32 %17, -16
  %or.i.i94.i = or i32 %and6.i.i90.i, %and7.i.i93.i
  store i32 %or.i.i94.i, ptr %arrayidx.i.i91.i, align 4
  %arrayidx.i.i120.i = getelementptr inbounds i32, ptr %mpar_pl, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %4, ptr %arrayidx.i.i120.i, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_span, ptr %span, i32 0, i32 1
  %19 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mlxsw_sp, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %22, ptr noundef nonnull @mlxsw_reg_mpar, ptr noundef nonnull %mpar_pl) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %sw.epilog.cleanup_crit_edge, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end35 ], [ -22, %if.then ], [ -22, %land.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mpar_pl) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_span_trigger_global_bind(ptr nocapture noundef readnone %trigger_entry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_span_trigger_global_unbind(ptr nocapture noundef %trigger_entry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlxsw_sp1_span_trigger_global_matches(ptr nocapture noundef readnone %trigger_entry, i32 noundef %trigger, ptr nocapture noundef readnone %mlxsw_sp_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @mlxsw_sp1_span_trigger_global_matches.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !257

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp1_span_trigger_global_matches.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1313, i32 noundef 9, ptr noundef null) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_span_trigger_global_enable(ptr nocapture noundef readnone %trigger_entry, ptr nocapture noundef readnone %mlxsw_sp_port, i8 noundef zeroext %tc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_span_trigger_global_disable(ptr nocapture noundef %trigger_entry, ptr nocapture noundef %mlxsw_sp_port, i8 noundef zeroext %tc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp2_span_cpu_can_handle(ptr noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp2_span_entry_cpu_parms(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readnone %to_dev, ptr nocapture noundef writeonly %sparmsp) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %sparmsp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sparmsp, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_span_entry_cpu_configure(ptr nocapture noundef readonly %span_entry, [16 x i32] %sparms.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_span_entry_phys_configure(ptr noundef %span_entry, [16 x i32] %sparms.coerce)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_span_entry_cpu_deconfigure(ptr nocapture noundef readonly %span_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_span_entry_deconfigure_common(ptr noundef %span_entry, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_span_trigger_global_bind(ptr nocapture noundef readonly %trigger_entry) #0 align 64 {
entry:
  %mpagr_pl = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 1
  %0 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span, align 4
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mpagr_pl) #17
  %trigger2 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 5
  %4 = ptrtoint ptr %trigger2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trigger2, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b51 = load i1, ptr @mlxsw_sp2_span_trigger_global_bind.__already_done, align 1
  br i1 %.b51, label %land.end.cleanup_crit_edge, label %if.then, !prof !257

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlxsw_sp2_span_trigger_global_bind.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1369, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %probability_rate = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %probability_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %probability_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -794967296, i32 %8)
  %cmp = icmp ugt i32 %8, -794967296
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end38

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end38:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mlxsw_sp2_span_trigger_global_bind, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %parms = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 6
  %10 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parms, align 4
  %12 = call ptr @memset(ptr %mpagr_pl, i32 0, i32 12)
  %13 = ptrtoint ptr %mpagr_pl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mpagr_pl, align 4
  %and7.i.i.i = and i32 %14, -16
  %or.i.i.i = or i32 %switch.load, %and7.i.i.i
  store i32 %or.i.i.i, ptr %mpagr_pl, align 4
  %and6.i.i28.i = and i32 %11, 15
  %arrayidx.i.i29.i = getelementptr inbounds i32, ptr %mpagr_pl, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i29.i, align 4
  %and7.i.i31.i = and i32 %16, -16
  %or.i.i32.i = or i32 %and6.i.i28.i, %and7.i.i31.i
  store i32 %or.i.i32.i, ptr %arrayidx.i.i29.i, align 4
  %arrayidx.i.i57.i = getelementptr inbounds i32, ptr %mpagr_pl, i32 2
  %17 = ptrtoint ptr %arrayidx.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %8, ptr %arrayidx.i.i57.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %19, ptr noundef nonnull @mlxsw_reg_mpagr, ptr noundef nonnull %mpagr_pl) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %switch.lookup.cleanup_crit_edge, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end38 ], [ -22, %if.then ], [ -22, %land.end.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mpagr_pl) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp2_span_trigger_global_unbind(ptr nocapture noundef %trigger_entry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp2_span_trigger_global_matches(ptr nocapture noundef readonly %trigger_entry, i32 noundef %trigger, ptr nocapture noundef readnone %mlxsw_sp_port) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger1 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 5
  %0 = ptrtoint ptr %trigger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trigger1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %trigger)
  %cmp = icmp eq i32 %1, %trigger
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_span_trigger_global_enable(ptr nocapture noundef readonly %trigger_entry, ptr nocapture noundef readonly %mlxsw_sp_port, i8 noundef zeroext %tc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mlxsw_sp2_span_trigger_global_enable(ptr noundef %trigger_entry, ptr noundef %mlxsw_sp_port, i8 noundef zeroext %tc, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_span_trigger_global_disable(ptr nocapture noundef readonly %trigger_entry, ptr nocapture noundef readonly %mlxsw_sp_port, i8 noundef zeroext %tc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mlxsw_sp2_span_trigger_global_enable(ptr noundef %trigger_entry, ptr noundef %mlxsw_sp_port, i8 noundef zeroext %tc, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp2_span_trigger_global_enable(ptr nocapture noundef readonly %trigger_entry, ptr nocapture noundef readonly %mlxsw_sp_port, i8 noundef zeroext %tc, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %momte_pl = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 1
  %0 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span, align 4
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_span, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %momte_pl) #17
  %trigger = getelementptr inbounds %struct.mlxsw_sp_span_trigger_entry, ptr %trigger_entry, i32 0, i32 5
  %4 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trigger, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b54 = load i1, ptr @__mlxsw_sp2_span_trigger_global_enable.__already_done, align 1
  br i1 %.b54, label %land.end.cleanup_crit_edge, label %if.then, !prof !257

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__mlxsw_sp2_span_trigger_global_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1421, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.__mlxsw_sp2_span_trigger_global_enable, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %8 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %local_port, align 4
  %10 = call ptr @memset(ptr %momte_pl, i32 0, i32 16)
  %conv1.i = zext i16 %9 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %11 = ptrtoint ptr %momte_pl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %momte_pl, align 4
  %and7.i.i.i = and i32 %12, -16723969
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %13 = shl nuw nsw i32 %conv1.i, 4
  %and6.i26.i.i = and i32 %13, 12288
  %or.i30.i.i = or i32 %and6.i26.i.i, %or.i.i.i
  store i32 %or.i30.i.i, ptr %momte_pl, align 4
  %arrayidx.i.i28.i = getelementptr inbounds i32, ptr %momte_pl, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i28.i, align 4
  %and7.i.i30.i = and i32 %15, -256
  %or.i.i31.i = or i32 %switch.load, %and7.i.i30.i
  store i32 %or.i.i31.i, ptr %arrayidx.i.i28.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %17, ptr noundef nonnull @mlxsw_reg_momte, ptr noundef nonnull %momte_pl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool37.not = icmp eq i32 %call, 0
  br i1 %tobool37.not, label %if.end39, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end39:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %tc to i16
  %conv41.i.i.i = sub nsw i16 63, %conv
  %rem503.i.i.i58 = and i8 %tc, 7
  %18 = lshr i16 %conv41.i.i.i, 3
  %conv60.i.i.i = add nuw nsw i16 %18, 8
  %conv2.i.i = zext i8 %rem503.i.i.i58 to i32
  %shl.i.i = shl i32 1, %conv2.i.i
  %conv5.i.i = zext i1 %enable to i32
  %shl6.i.i = shl nuw i32 %conv5.i.i, %conv2.i.i
  %and10.i.i = and i32 %shl6.i.i, %shl.i.i
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %momte_pl, i32 %idxprom.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %21 = trunc i32 %shl.i.i to i8
  %22 = xor i8 %21, -1
  %conv15.i.i = and i8 %20, %22
  %23 = trunc i32 %and10.i.i to i8
  %conv18.i.i = or i8 %conv15.i.i, %23
  store i8 %conv18.i.i, ptr %arrayidx.i.i, align 1
  %24 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core, align 4
  %call45 = call i32 @mlxsw_reg_write(ptr noundef %25, ptr noundef nonnull @mlxsw_reg_momte, ptr noundef nonnull %momte_pl) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %switch.lookup.cleanup_crit_edge, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end39 ], [ -22, %if.then ], [ -22, %land.end.cleanup_crit_edge ], [ %call, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %momte_pl) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !155, !157, !159, !160, !162, !163, !165, !167, !169, !171, !173, !175, !176, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !197, !199, !201, !203, !205, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !223, !224, !225, !226, !228, !229, !231, !232, !234, !235, !236, !237, !239, !240, !242, !243, !245}
!llvm.named.register.sp = !{!246}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @mlxsw_sp_span_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 96, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlxsw_sp_span_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 111, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 128, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 129, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1076, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1080, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mlxsw_sp_span_agent_get._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlxsw_sp_span_agent_get._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1105, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1108, i32 6}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1202, i32 6}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1566, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1601, i32 2}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1603, i32 6}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1610, i32 6}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1625, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1630, i32 6}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1642, i32 2}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1647, i32 6}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1665, i32 2}
!45 = !{ptr @mlxsw_sp1_span_ops, !46, !"mlxsw_sp1_span_ops", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1693, i32 32}
!47 = !{ptr @mlxsw_sp2_span_ops, !48, !"mlxsw_sp2_span_ops", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1733, i32 32}
!49 = !{ptr @mlxsw_sp3_span_ops, !50, !"mlxsw_sp3_span_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1738, i32 32}
!51 = !{ptr @mlxsw_sp_span_entry_ops_nop, !52, !"mlxsw_sp_span_entry_ops_nop", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 768, i32 45}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 785, i32 3}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mlxsw_sp_span_entry_configure._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mlxsw_sp_span_entry_configure._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 793, i32 3}
!60 = !{ptr @mlxsw_sp_span_entry_configure._entry.17, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mlxsw_sp_span_entry_configure._entry_ptr.19, !59, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1490, i32 3}
!64 = !{ptr @mlxsw_sp1_span_entry_ops_arr, !65, !"mlxsw_sp1_span_entry_ops_arr", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 682, i32 33}
!66 = !{ptr @mlxsw_sp_span_entry_ops_phys, !67, !"mlxsw_sp_span_entry_ops_phys", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 219, i32 32}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__mlxsw_item_offset._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @__mlxsw_item_offset._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10038, i32 1}
!76 = distinct !{null, !75, !"mlxsw_reg_mpat_pa_id_item", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10051, i32 1}
!79 = distinct !{null, !78, !"mlxsw_reg_mpat_system_port_item", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10057, i32 1}
!82 = distinct !{null, !81, !"mlxsw_reg_mpat_e_item", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10068, i32 1}
!85 = distinct !{null, !84, !"mlxsw_reg_mpat_qos_item", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10078, i32 1}
!88 = distinct !{null, !87, !"mlxsw_reg_mpat_be_item", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10102, i32 1}
!91 = distinct !{null, !90, !"mlxsw_reg_mpat_span_type_item", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10045, i32 1}
!94 = distinct !{null, !93, !"mlxsw_reg_mpat_session_id_item", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10108, i32 1}
!97 = distinct !{null, !96, !"mlxsw_reg_mpat_pide_item", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10114, i32 1}
!100 = distinct !{null, !99, !"mlxsw_reg_mpat_pid_item", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10032, i32 1}
!103 = !{ptr @mlxsw_reg_mpat, !102, !"mlxsw_reg_mpat", i1 false, i1 false}
!104 = !{ptr @mlxsw_sp_span_entry_ops_gretap4, !105, !"mlxsw_sp_span_entry_ops_gretap4", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 511, i32 45}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/net/gre.h", i32 43, i32 43}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 423, i32 2}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!112 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../include/linux/if_team.h", i32 75, i32 9}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!120 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/net/bonding.h", i32 444, i32 10}
!123 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10124, i32 1}
!126 = distinct !{null, !125, !"mlxsw_reg_mpat_eth_rspan_vid_item", i1 false, i1 false}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10138, i32 1}
!129 = distinct !{null, !128, !"mlxsw_reg_mpat_eth_rspan_version_item", i1 false, i1 false}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10144, i32 1}
!132 = distinct !{null, !131, !"mlxsw_reg_mpat_eth_rspan_mac_item", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10150, i32 1}
!135 = distinct !{null, !134, !"mlxsw_reg_mpat_eth_rspan_tp_item", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10171, i32 1}
!138 = distinct !{null, !137, !"mlxsw_reg_mpat_eth_rspan_ttl_item", i1 false, i1 false}
!139 = distinct !{null, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10177, i32 1}
!141 = distinct !{null, !140, !"mlxsw_reg_mpat_eth_rspan_smac_item", i1 false, i1 false}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10165, i32 1}
!144 = distinct !{null, !143, !"mlxsw_reg_mpat_eth_rspan_protocol_item", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10190, i32 1}
!147 = distinct !{null, !146, !"mlxsw_reg_mpat_eth_rspan_sip4_item", i1 false, i1 false}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10183, i32 1}
!150 = distinct !{null, !149, !"mlxsw_reg_mpat_eth_rspan_dip4_item", i1 false, i1 false}
!151 = !{ptr @mlxsw_sp_span_entry_ops_gretap6, !152, !"mlxsw_sp_span_entry_ops_gretap6", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 615, i32 32}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/net/gre.h", i32 49, i32 43}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 532, i32 2}
!157 = distinct !{null, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10191, i32 1}
!159 = distinct !{null, !158, !"mlxsw_reg_mpat_eth_rspan_sip6_item", i1 false, i1 false}
!160 = distinct !{null, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10184, i32 1}
!162 = distinct !{null, !161, !"mlxsw_reg_mpat_eth_rspan_dip6_item", i1 false, i1 false}
!163 = !{ptr @mlxsw_sp_span_entry_ops_vlan, !164, !"mlxsw_sp_span_entry_ops_vlan", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 674, i32 32}
!165 = !{ptr @mlxsw_sp1_span_entry_ops_cpu, !166, !"mlxsw_sp1_span_entry_ops_cpu", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 159, i32 32}
!167 = !{ptr @mlxsw_sp1_span_trigger_ops_arr, !168, !"mlxsw_sp1_span_trigger_ops_arr", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1344, i32 1}
!169 = !{ptr @mlxsw_sp_span_trigger_port_ops, !170, !"mlxsw_sp_span_trigger_port_ops", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1286, i32 1}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1230, i32 3}
!173 = !{ptr @.str.68, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10262, i32 1}
!175 = distinct !{null, !174, !"mlxsw_reg_mpar_local_port_item", i1 false, i1 false}
!176 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!177 = distinct !{null, !174, !"mlxsw_reg_mpar_lp_msb_item", i1 false, i1 false}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10280, i32 1}
!180 = distinct !{null, !179, !"mlxsw_reg_mpar_enable_item", i1 false, i1 false}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10273, i32 1}
!183 = distinct !{null, !182, !"mlxsw_reg_mpar_i_e_item", i1 false, i1 false}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10286, i32 1}
!186 = distinct !{null, !185, !"mlxsw_reg_mpar_pa_id_item", i1 false, i1 false}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10297, i32 1}
!189 = distinct !{null, !188, !"mlxsw_reg_mpar_probability_rate_item", i1 false, i1 false}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10256, i32 1}
!192 = !{ptr @mlxsw_reg_mpar, !191, !"mlxsw_reg_mpar", i1 false, i1 false}
!193 = !{ptr @mlxsw_sp1_span_trigger_global_ops, !194, !"mlxsw_sp1_span_trigger_global_ops", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1335, i32 1}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1313, i32 2}
!197 = !{ptr @mlxsw_sp2_span_entry_ops_arr, !198, !"mlxsw_sp2_span_entry_ops_arr", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 736, i32 33}
!199 = !{ptr @mlxsw_sp2_span_entry_ops_cpu, !200, !"mlxsw_sp2_span_entry_ops_cpu", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 727, i32 32}
!201 = !{ptr @mlxsw_sp2_span_trigger_ops_arr, !202, !"mlxsw_sp2_span_trigger_ops_arr", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1467, i32 1}
!203 = !{ptr @mlxsw_sp2_span_trigger_global_ops, !204, !"mlxsw_sp2_span_trigger_global_ops", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1458, i32 1}
!205 = distinct !{null, !206, !"__already_done", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1369, i32 3}
!207 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10978, i32 1}
!209 = distinct !{null, !208, !"mlxsw_reg_mpagr_trigger_item", i1 false, i1 false}
!210 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10984, i32 1}
!212 = distinct !{null, !211, !"mlxsw_reg_mpagr_pa_id_item", i1 false, i1 false}
!213 = !{ptr @.str.85, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10994, i32 1}
!215 = distinct !{null, !214, !"mlxsw_reg_mpagr_probability_rate_item", i1 false, i1 false}
!216 = !{ptr @.str.87, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10961, i32 1}
!218 = !{ptr @mlxsw_reg_mpagr, !217, !"mlxsw_reg_mpagr", i1 false, i1 false}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_span.c", i32 1421, i32 3}
!221 = !{ptr @.str.88, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11020, i32 1}
!223 = distinct !{null, !222, !"mlxsw_reg_momte_local_port_item", i1 false, i1 false}
!224 = !{ptr @.str.90, !222, !"<string literal>", i1 false, i1 false}
!225 = distinct !{null, !222, !"mlxsw_reg_momte_lp_msb_item", i1 false, i1 false}
!226 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11037, i32 1}
!228 = distinct !{null, !227, !"mlxsw_reg_momte_type_item", i1 false, i1 false}
!229 = !{ptr @.str.94, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11014, i32 1}
!231 = !{ptr @mlxsw_reg_momte, !230, !"mlxsw_reg_momte", i1 false, i1 false}
!232 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 215, i32 3}
!234 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @__mlxsw_item_bit_array_offset._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @__mlxsw_item_bit_array_offset._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.97, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11045, i32 1}
!239 = distinct !{null, !238, !"mlxsw_reg_momte_tclass_en_item", i1 false, i1 false}
!240 = !{ptr @.str.98, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10925, i32 1}
!242 = !{ptr @mlxsw_reg_mogcr, !241, !"mlxsw_reg_mogcr", i1 false, i1 false}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10951, i32 1}
!245 = distinct !{null, !244, !"mlxsw_reg_mogcr_mirroring_pid_base_item", i1 false, i1 false}
!246 = !{!"sp"}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i8 0, i8 2}
!257 = !{!"branch_weights", i32 2000, i32 1}
!258 = !{i64 2148535044, i64 2148535076, i64 2148535105, i64 2148535139, i64 2148535170, i64 2148535193}
!259 = !{!"branch_weights", i32 1, i32 2000}
!260 = !{i64 2148533514, i64 2148533540, i64 2148533569, i64 2148533603, i64 2148533634, i64 2148533657}
!261 = !{i64 2148623069}
!262 = !{i64 2148537509, i64 2148537541, i64 2148537570, i64 2148537604, i64 2148537635, i64 2148537658}
!263 = !{i64 2149857289}
!264 = !{i64 2148535979, i64 2148536005, i64 2148536034, i64 2148536068, i64 2148536099, i64 2148536122}
!265 = !{!"auto-init"}
!266 = !{i64 2149639805}
