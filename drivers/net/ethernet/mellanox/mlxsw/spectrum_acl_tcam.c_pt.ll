; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp_acl_profile_ops = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_acl_tcam_pattern = type { ptr, i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_acl_tcam_ops = type { i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_acl_tcam = type { ptr, i32, ptr, i32, i32, %struct.mutex, %struct.list_head, i32, [0 x i32] }
%struct.mlxsw_sp_acl_tcam_vgroup = type { %struct.mlxsw_sp_acl_tcam_group, %struct.list_head, %struct.rhashtable, ptr, i32, i8, %struct.mlxsw_afk_element_usage, i8, ptr, ptr }
%struct.mlxsw_sp_acl_tcam_group = type { ptr, i16, %struct.mutex, %struct.list_head, i32 }
%struct.mlxsw_afk_element_usage = type { [1 x i32] }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.161, %struct.anon.162, %struct.mlxsw_sp_port_mapping, %struct.anon.163, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.165, i32, i32, ptr, i64 }
%struct.anon.161 = type { i8 }
%struct.anon.162 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.163 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.165 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp_acl_tcam_entry = type { ptr, ptr, [0 x i32] }
%struct.mlxsw_sp_acl_tcam_chunk = type { ptr, ptr, [0 x i32] }
%struct.mlxsw_sp_acl_tcam_region = type { ptr, ptr, %struct.list_head, i32, i16, [16 x i8], ptr, ptr, [0 x i32] }
%struct.mlxsw_sp_acl_rule_info = type { i32, %struct.mlxsw_afk_element_values, ptr, i8, i32, i16 }
%struct.mlxsw_afk_element_values = type { %struct.mlxsw_afk_element_usage, %struct.anon.170 }
%struct.anon.170 = type { [64 x i8], [64 x i8] }
%struct.mlxsw_sp_acl_tcam_ventry = type { ptr, %struct.list_head, ptr, ptr }
%struct.mlxsw_sp_acl_tcam_vchunk = type { ptr, ptr, %struct.list_head, %struct.rhash_head, %struct.list_head, i32, ptr, ptr, i32 }
%struct.rhash_head = type { ptr }
%struct.mlxsw_sp_acl_tcam_vregion = type { %struct.mutex, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.anon.179, ptr, i32 }
%struct.anon.179 = type { %struct.delayed_work, %struct.mlxsw_sp_acl_tcam_rehash_ctx }
%struct.mlxsw_sp_acl_tcam_rehash_ctx = type { ptr, i8, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.mlxsw_sp_acl_tcam_mr_ruleset = type { ptr, %struct.mlxsw_sp_acl_tcam_vgroup }

@mlxsw_sp_acl_tcam_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tcam->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_profile_ops_arr = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlxsw_sp_acl_tcam_flower_ops, ptr @mlxsw_sp_acl_tcam_mr_ops], [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_flower_ops = internal constant { %struct.mlxsw_sp_acl_profile_ops, [52 x i8] } { %struct.mlxsw_sp_acl_profile_ops { i32 376, ptr @mlxsw_sp_acl_tcam_flower_ruleset_add, ptr @mlxsw_sp_acl_tcam_flower_ruleset_del, ptr @mlxsw_sp_acl_tcam_flower_ruleset_bind, ptr @mlxsw_sp_acl_tcam_flower_ruleset_unbind, ptr @mlxsw_sp_acl_tcam_flower_ruleset_group_id, i32 20, ptr @mlxsw_sp_acl_tcam_flower_rule_add, ptr @mlxsw_sp_acl_tcam_flower_rule_del, ptr @mlxsw_sp_acl_tcam_flower_rule_action_replace, ptr @mlxsw_sp_acl_tcam_flower_rule_activity_get }, [52 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_mr_ops = internal constant { %struct.mlxsw_sp_acl_profile_ops, [52 x i8] } { %struct.mlxsw_sp_acl_profile_ops { i32 380, ptr @mlxsw_sp_acl_tcam_mr_ruleset_add, ptr @mlxsw_sp_acl_tcam_mr_ruleset_del, ptr @mlxsw_sp_acl_tcam_mr_ruleset_bind, ptr @mlxsw_sp_acl_tcam_mr_ruleset_unbind, ptr @mlxsw_sp_acl_tcam_mr_ruleset_group_id, i32 20, ptr @mlxsw_sp_acl_tcam_mr_rule_add, ptr @mlxsw_sp_acl_tcam_mr_rule_del, ptr @mlxsw_sp_acl_tcam_mr_rule_action_replace, ptr @mlxsw_sp_acl_tcam_mr_rule_activity_get }, [52 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_patterns = internal constant { [2 x %struct.mlxsw_sp_acl_tcam_pattern], [16 x i8] } { [2 x %struct.mlxsw_sp_acl_tcam_pattern] [%struct.mlxsw_sp_acl_tcam_pattern { ptr @mlxsw_sp_acl_tcam_pattern_ipv4, i32 17 }, %struct.mlxsw_sp_acl_tcam_pattern { ptr @mlxsw_sp_acl_tcam_pattern_ipv6, i32 12 }], [16 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_vchunk_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 28, i16 16, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_group_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&group->lock\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_pattern_ipv4 = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22], [60 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_pattern_ipv6 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [48 x i8] zeroinitializer }, align 32
@mlxsw_reg_ppbt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12290, i16 20, ptr @.str.18 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 35, ptr null, ptr null }, align 1
@.str.3 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_ppbt_e\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_ppbt_op\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_ppbt_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_ppbt_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_ppbt_g\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_ppbt_acl_info\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ppbt\00", [27 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_sp_acl_tcam_vregion_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vregion->lock\00", [17 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_vregion_create.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&vregion->rehash.dw)->work)\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_vregion_create.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&vregion->rehash.dw)->timer\00", [34 x i8] zeroinitializer }, align 32
@mlxsw_reg_ptar = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12294, i16 48, ptr @.str.43 }, [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_ptar_op\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_ptar_action_set_type\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_ptar_key_type\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_ptar_region_size\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ptar_region_id\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptar\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_pacl = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12292, i16 112, ptr @.str.49 }, [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pacl_acl_id\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_pacl_v\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pacl\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_pagt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12293, i16 112, ptr @.str.58 }, [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_pagt_acl_group_id\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_pagt_size\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_pagt_multi\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pagt_acl_id\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pagt\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_vregion_rehash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.1, i32 1530, ptr @.str.61, ptr @.str.62 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed get rehash hints\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlxsw_sp_acl_tcam_vregion_rehash\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_vregion_rehash._entry_ptr = internal global ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry, section ".printk_index", align 4
@mlxsw_sp_acl_tcam_vregion_rehash._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.60, ptr @.str.1, i32 1538, ptr @.str.61, ptr @.str.62 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to migrate vregion\0A\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_vregion_rehash._entry_ptr.65 = internal global ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry.63, section ".printk_index", align 4
@__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash = external dso_local global %struct.tracepoint, align 4
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/mlxsw.h\00", [35 x i8] zeroinitializer }, align 32
@trace_mlxsw_sp_acl_tcam_vregion_rehash.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_vregion_migrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.1, i32 1433, ptr @.str.61, ptr @.str.62 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to rollback during vregion migration fail\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlxsw_sp_acl_tcam_vregion_migrate\00", [62 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_tcam_vregion_migrate._entry_ptr = internal global ptr @mlxsw_sp_acl_tcam_vregion_migrate._entry, section ".printk_index", align 4
@__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate = external dso_local global %struct.tracepoint, align 4
@trace_mlxsw_sp_acl_tcam_vregion_migrate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = external dso_local global %struct.tracepoint, align 4
@trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end = external dso_local global %struct.tracepoint, align 4
@trace_mlxsw_sp_acl_tcam_vregion_migrate_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.72 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.73 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.75 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.77 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 41, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 902, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant [34 x i8] c"mlxsw_sp_acl_tcam_profile_ops_arr\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1851, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [29 x i8] c"mlxsw_sp_acl_tcam_flower_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1698, i32 46 }
@___asan_gen_.94 = private unnamed_addr constant [25 x i8] c"mlxsw_sp_acl_tcam_mr_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1836, i32 46 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"mlxsw_sp_acl_tcam_patterns\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1580, i32 47 }
@___asan_gen_.100 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_acl_tcam_vchunk_ht_params\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 256, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 298, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_acl_tcam_pattern_ipv4\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1545, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_acl_tcam_pattern_ipv6\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1565, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_ppbt\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 33, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2356, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2366, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2372, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2380, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2387, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2346, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 695, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 594, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 723, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 828, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 854, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_ptar\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2533, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2540, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2551, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2561, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2568, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2517, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pacl\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2422, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2415, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2408, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pagt\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2472, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2465, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2480, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2486, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2454, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1530, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1538, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [32 x i8] c"../include/trace/events/mlxsw.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 36, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 108, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1433, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 755, i32 10 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_acl_tcam_vregion_migrate._entry, ptr @mlxsw_sp_acl_tcam_vregion_migrate._entry_ptr, ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry, ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry.63, ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry_ptr, ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry_ptr.65, ptr @mlxsw_sp_acl_tcam_init.__key, ptr @.str, ptr @.str.1, ptr @mlxsw_sp_acl_tcam_profile_ops_arr, ptr @mlxsw_sp_acl_tcam_flower_ops, ptr @mlxsw_sp_acl_tcam_mr_ops, ptr @mlxsw_sp_acl_tcam_patterns, ptr @mlxsw_sp_acl_tcam_vchunk_ht_params, ptr @mlxsw_sp_acl_tcam_group_add.__key, ptr @.str.2, ptr @mlxsw_sp_acl_tcam_pattern_ipv4, ptr @mlxsw_sp_acl_tcam_pattern_ipv6, ptr @mlxsw_reg_ppbt, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @mlxsw_sp_acl_tcam_vregion_create.__key, ptr @.str.25, ptr @mlxsw_sp_acl_tcam_vregion_create.__key.26, ptr @.str.27, ptr @mlxsw_sp_acl_tcam_vregion_create.__key.28, ptr @.str.29, ptr @mlxsw_reg_ptar, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.43, ptr @mlxsw_reg_pacl, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @mlxsw_reg_pagt, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_profile_ops_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_flower_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_mr_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_patterns to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_vchunk_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_group_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_pattern_ipv4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_pattern_ipv6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ppbt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_vregion_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_vregion_create.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_vregion_create.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ptar to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pacl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pagt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_tcam_vregion_migrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_tcam_priv_size(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %0 = ptrtoint ptr %acl_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_tcam_ops, align 4
  %priv_size = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priv_size, align 4
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_tcam_init(ptr noundef %mlxsw_sp, ptr noundef %tcam) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %0 = ptrtoint ptr %acl_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_tcam_ops, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlxsw_sp_acl_tcam_init.__key) #14
  %vregion_rehash_intrvl = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 7
  %2 = ptrtoint ptr %vregion_rehash_intrvl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5000, ptr %vregion_rehash_intrvl, align 4
  %vregion_list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 6
  %3 = ptrtoint ptr %vregion_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vregion_list, ptr %vregion_list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vregion_list, ptr %prev.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %6, i32 noundef 20) #14
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %call2 = tail call i64 @mlxsw_core_res_get(ptr noundef %8, i32 noundef 22) #14
  %9 = tail call i64 @llvm.umin.i64(i64 %call, i64 %call2)
  %spec.select = trunc i64 %9 to i32
  %call3 = tail call ptr @bitmap_zalloc(i32 noundef %spec.select, i32 noundef 3264) #14
  %10 = ptrtoint ptr %tcam to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %tcam, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %entry
  %max_regions8 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 1
  %11 = ptrtoint ptr %max_regions8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %max_regions8, align 4
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %call10 = tail call i64 @mlxsw_core_res_get(ptr noundef %13, i32 noundef 23) #14
  %conv11 = trunc i64 %call10 to i32
  %call12 = tail call ptr @bitmap_zalloc(i32 noundef %conv11, i32 noundef 3264) #14
  %used_groups = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 2
  %14 = ptrtoint ptr %used_groups to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %used_groups, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end6.err_alloc_used_groups_crit_edge, label %if.end16

if.end6.err_alloc_used_groups_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_alloc_used_groups

if.end16:                                         ; preds = %if.end6
  %max_groups18 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 3
  %15 = ptrtoint ptr %max_groups18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv11, ptr %max_groups18, align 4
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 4
  %call20 = tail call i64 @mlxsw_core_res_get(ptr noundef %17, i32 noundef 24) #14
  %conv21 = trunc i64 %call20 to i32
  %max_group_size = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 4
  %18 = ptrtoint ptr %max_group_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv21, ptr %max_group_size, align 4
  %init = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 8
  %call22 = tail call i32 %20(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr noundef %tcam) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end16.cleanup_crit_edge, label %err_tcam_init

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_tcam_init:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %used_groups to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %used_groups, align 4
  tail call void @bitmap_free(ptr noundef %22) #14
  br label %err_alloc_used_groups

err_alloc_used_groups:                            ; preds = %err_tcam_init, %if.end6.err_alloc_used_groups_crit_edge
  %err.0 = phi i32 [ %call22, %err_tcam_init ], [ -12, %if.end6.err_alloc_used_groups_crit_edge ]
  %23 = ptrtoint ptr %tcam to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tcam, align 4
  tail call void @bitmap_free(ptr noundef %24) #14
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_used_groups, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_alloc_used_groups ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_tcam_fini(ptr noundef %mlxsw_sp, ptr noundef %tcam) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %0 = ptrtoint ptr %acl_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_tcam_ops, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %lock) #14
  %fini = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 8
  tail call void %3(ptr noundef %mlxsw_sp, ptr noundef %priv) #14
  %used_groups = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 2
  %4 = ptrtoint ptr %used_groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %used_groups, align 4
  tail call void @bitmap_free(ptr noundef %5) #14
  %6 = ptrtoint ptr %tcam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcam, align 4
  tail call void @bitmap_free(ptr noundef %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_tcam_priority_get(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %rulei, ptr nocapture noundef writeonly %priority, i1 noundef zeroext %fillup_priority) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %fillup_priority, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %1, i32 noundef 0) #14
  br i1 %call, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call4 = tail call i64 @mlxsw_core_res_get(ptr noundef %3, i32 noundef 0) #14
  %sub = add i64 %call4, -1
  %4 = ptrtoint ptr %rulei to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rulei, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp.not = icmp ugt i64 %sub, %conv
  br i1 %cmp.not, label %if.end8, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %6 = trunc i64 %sub to i32
  %conv12 = sub i32 %6, %5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %entry.cleanup.sink.split_crit_edge
  %conv12.sink = phi i32 [ %conv12, %if.end8 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv12.sink, ptr %priority, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_tcam_vregion_rehash_intrvl_get(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %tcam) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %0 = ptrtoint ptr %acl_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_tcam_ops, align 4
  %region_rehash_hints_get = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %region_rehash_hints_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region_rehash_hints_get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !187

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 902, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vregion_rehash_intrvl24 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 7
  %4 = ptrtoint ptr %vregion_rehash_intrvl24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vregion_rehash_intrvl24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %5, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_tcam_vregion_rehash_intrvl_set(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %tcam, i32 noundef %val) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %0 = add i32 %val, -3000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2999, i32 %0)
  %1 = icmp ult i32 %0, -2999
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %acl_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %2 = ptrtoint ptr %acl_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl_tcam_ops, align 4
  %region_rehash_hints_get = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %region_rehash_hints_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region_rehash_hints_get, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !187

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 917, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %vregion_rehash_intrvl = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 7
  %6 = ptrtoint ptr %vregion_rehash_intrvl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %vregion_rehash_intrvl, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %vregion_list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 6
  %7 = ptrtoint ptr %vregion_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn56 = load ptr, ptr %vregion_list, align 4
  %cmp29.not57 = icmp eq ptr %.pn56, %vregion_list
  br i1 %cmp29.not57, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn56, %if.end26.for.body_crit_edge ]
  %rehash34 = getelementptr i8, ptr %.pn58, i32 28
  br i1 %tobool.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @mlxsw_core_schedule_dw(ptr noundef %rehash34, i32 noundef 0) #14
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rehash34) #14
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then33
  %8 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp29.not = icmp eq ptr %.pn, %vregion_list
  br i1 %cmp29.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_schedule_dw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_tcam_profile_ops(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %profile) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %profile)
  %cmp = icmp ugt i32 %profile, 1
  br i1 %cmp, label %do.end, label %if.end21, !prof !187

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1862, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [2 x ptr], ptr @mlxsw_sp_acl_tcam_profile_ops_arr, i32 0, i32 %profile
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %1, %if.end21 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_flower_ruleset_add(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %tcam, ptr noundef %ruleset_priv, ptr noundef %tmplt_elusage, ptr noundef %p_min_prio, ptr noundef %p_max_prio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_acl_tcam_vgroup_add(ptr noundef %tcam, ptr noundef %ruleset_priv, ptr noundef %tmplt_elusage, i1 noundef zeroext true, ptr noundef %p_min_prio, ptr noundef %p_max_prio)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_tcam_flower_ruleset_del(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %ruleset_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vchunk_ht.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %ruleset_priv, i32 0, i32 2
  tail call void @rhashtable_destroy(ptr noundef %vchunk_ht.i) #14
  %0 = ptrtoint ptr %ruleset_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset_priv, align 4
  %lock.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %ruleset_priv, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock.i.i) #14
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %ruleset_priv, i32 0, i32 1
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %used_groups.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %used_groups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %used_groups.i.i.i, align 4
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %5, i32 %div2.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %6 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %7, %neg.i.i.i.i
  store i32 %and.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %region_list.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %ruleset_priv, i32 0, i32 3
  %8 = ptrtoint ptr %region_list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %region_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %region_list.i.i
  br i1 %cmp.i.not.i.i, label %entry.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge, label %do.end.i.i, !prof !188

entry.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_group_del.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 9, ptr noundef null) #14
  br label %mlxsw_sp_acl_tcam_group_del.exit.i

mlxsw_sp_acl_tcam_group_del.exit.i:               ; preds = %do.end.i.i, %entry.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge
  %vregion_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %ruleset_priv, i32 0, i32 1
  %10 = ptrtoint ptr %vregion_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %vregion_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %vregion_list.i
  br i1 %cmp.i.not.i, label %mlxsw_sp_acl_tcam_group_del.exit.i.mlxsw_sp_acl_tcam_vgroup_del.exit_crit_edge, label %do.end.i, !prof !188

mlxsw_sp_acl_tcam_group_del.exit.i.mlxsw_sp_acl_tcam_vgroup_del.exit_crit_edge: ; preds = %mlxsw_sp_acl_tcam_group_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vgroup_del.exit

do.end.i:                                         ; preds = %mlxsw_sp_acl_tcam_group_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 359, i32 noundef 9, ptr noundef null) #14
  br label %mlxsw_sp_acl_tcam_vgroup_del.exit

mlxsw_sp_acl_tcam_vgroup_del.exit:                ; preds = %do.end.i, %mlxsw_sp_acl_tcam_group_del.exit.i.mlxsw_sp_acl_tcam_vgroup_del.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_flower_ruleset_bind(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %ruleset_priv, ptr nocapture noundef readonly %mlxsw_sp_port, i1 noundef zeroext %ingress) #2 align 64 {
entry:
  %ppbt_pl.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ppbt_pl.i) #14
  %not.ingress.i = xor i1 %ingress, true
  %cond.i = zext i1 %not.ingress.i to i32
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %0 = call ptr @memset(ptr %ppbt_pl.i, i32 255, i32 20)
  %1 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %local_port.i, align 4
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %ruleset_priv, i32 0, i32 1
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %id.i, align 4
  call fastcc void @mlxsw_reg_ppbt_pack(ptr noundef nonnull %ppbt_pl.i, i32 noundef %cond.i, i32 noundef 0, i16 noundef zeroext %2, i16 noundef zeroext %4) #14
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %5 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_ppbt, ptr noundef nonnull %ppbt_pl.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ppbt_pl.i) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_tcam_flower_ruleset_unbind(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %ruleset_priv, ptr nocapture noundef readonly %mlxsw_sp_port, i1 noundef zeroext %ingress) #2 align 64 {
entry:
  %ppbt_pl.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ppbt_pl.i) #14
  %not.ingress.i = xor i1 %ingress, true
  %cond.i = zext i1 %not.ingress.i to i32
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %0 = call ptr @memset(ptr %ppbt_pl.i, i32 255, i32 20)
  %1 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %local_port.i, align 4
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %ruleset_priv, i32 0, i32 1
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %id.i, align 4
  call fastcc void @mlxsw_reg_ppbt_pack(ptr noundef nonnull %ppbt_pl.i, i32 noundef %cond.i, i32 noundef 1, i16 noundef zeroext %2, i16 noundef zeroext %4) #14
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %5 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_ppbt, ptr noundef nonnull %ppbt_pl.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ppbt_pl.i) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mlxsw_sp_acl_tcam_flower_ruleset_group_id(ptr nocapture noundef readonly %ruleset_priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %ruleset_priv, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id.i, align 4
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_flower_rule_add(ptr noundef %mlxsw_sp, ptr noundef %ruleset_priv, ptr noundef %rule_priv, ptr noundef %rulei) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_acl_tcam_ventry_add(ptr noundef %mlxsw_sp, ptr noundef %ruleset_priv, ptr noundef %rule_priv, ptr noundef %rulei)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_tcam_flower_rule_del(ptr noundef %mlxsw_sp, ptr noundef %rule_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_acl_tcam_ventry_del(ptr noundef %mlxsw_sp, ptr noundef %rule_priv)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_flower_rule_action_replace(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %rule_priv, ptr nocapture noundef readnone %rulei) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_flower_rule_activity_get(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %rule_priv, ptr noundef %activity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule_priv, align 4
  %acl_tcam_ops.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %2 = ptrtoint ptr %acl_tcam_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl_tcam_ops.i.i, align 4
  %entry_activity_get.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %entry_activity_get.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entry_activity_get.i.i, align 4
  %chunk.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %chunk.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chunk.i.i, align 4
  %region.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %region.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %9, i32 0, i32 8
  %priv2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %1, i32 0, i32 2
  %call.i.i = tail call i32 %5(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i, ptr noundef %priv2.i.i, ptr noundef %activity) #14
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_tcam_vgroup_add(ptr noundef %tcam, ptr noundef %vgroup, ptr noundef readonly %tmplt_elusage, i1 noundef zeroext %vregion_rehash_enabled, ptr noundef %p_min_prio, ptr noundef %p_max_prio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %vregion_rehash_enabled to i8
  %patterns1 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 3
  %0 = ptrtoint ptr %patterns1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp_acl_tcam_patterns, ptr %patterns1, align 4
  %patterns_count2 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 4
  %1 = ptrtoint ptr %patterns_count2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %patterns_count2, align 4
  %vregion_rehash_enabled3 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 7
  %2 = ptrtoint ptr %vregion_rehash_enabled3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %vregion_rehash_enabled3, align 4
  %p_min_prio5 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 8
  %3 = ptrtoint ptr %p_min_prio5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %p_min_prio, ptr %p_min_prio5, align 4
  %p_max_prio6 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 9
  %4 = ptrtoint ptr %p_max_prio6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %p_max_prio, ptr %p_max_prio6, align 4
  %tobool7.not = icmp eq ptr %tmplt_elusage, null
  br i1 %tobool7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tmplt_elusage_set = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 5
  %5 = ptrtoint ptr %tmplt_elusage_set to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %tmplt_elusage_set, align 4
  %tmplt_elusage8 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 6
  %6 = ptrtoint ptr %tmplt_elusage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmplt_elusage, align 4
  %8 = ptrtoint ptr %tmplt_elusage8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmplt_elusage8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vregion_list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 1
  %9 = ptrtoint ptr %vregion_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %vregion_list, ptr %vregion_list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vregion_list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %vgroup to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tcam, ptr %vgroup, align 4
  %region_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %vgroup, i32 0, i32 3
  %12 = ptrtoint ptr %region_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %region_list.i, ptr %region_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %vgroup, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %region_list.i, ptr %prev.i.i, align 4
  %used_groups.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 2
  %14 = ptrtoint ptr %used_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %used_groups.i.i, align 4
  %max_groups.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 3
  %16 = ptrtoint ptr %max_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_groups.i.i, align 4
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %15, i32 noundef %17) #14
  %conv1.i.i = and i32 %call.i.i, 65535
  %18 = ptrtoint ptr %max_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_groups.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %19)
  %cmp.i.i = icmp ult i32 %conv1.i.i, %19
  br i1 %cmp.i.i, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %vgroup, i32 0, i32 1
  %conv.i.i = trunc i32 %call.i.i to i16
  %20 = ptrtoint ptr %used_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %used_groups.i.i, align 4
  %rem.i.i.i = and i32 %call.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv1.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %21, i32 %div2.i.i.i
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %23, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i, ptr %id.i, align 2
  %lock.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %vgroup, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlxsw_sp_acl_tcam_group_add.__key) #14
  %vchunk_ht = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2
  %call12 = tail call i32 @rhashtable_init(ptr noundef %vchunk_ht, ptr noundef nonnull @mlxsw_sp_acl_tcam_vchunk_ht_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %err_rhashtable_init

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_rhashtable_init:                              ; preds = %if.end11
  %25 = ptrtoint ptr %vgroup to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vgroup, align 4
  tail call void @mutex_destroy(ptr noundef %lock.i) #14
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %id.i, align 4
  %conv.i.i3 = zext i16 %28 to i32
  %used_groups.i.i4 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %used_groups.i.i4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %used_groups.i.i4, align 4
  %rem.i.i.i5 = and i32 %conv.i.i3, 31
  %shl.i.i.i6 = shl nuw i32 1, %rem.i.i.i5
  %div2.i.i.i7 = lshr i32 %conv.i.i3, 5
  %add.ptr.i.i.i8 = getelementptr i32, ptr %30, i32 %div2.i.i.i7
  %neg.i.i.i = xor i32 %shl.i.i.i6, -1
  %31 = ptrtoint ptr %add.ptr.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i8, align 4
  %and.i.i.i = and i32 %32, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i8, align 4
  %33 = ptrtoint ptr %region_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %region_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %region_list.i
  br i1 %cmp.i.not.i, label %err_rhashtable_init.cleanup_crit_edge, label %do.end.i, !prof !188

err_rhashtable_init.cleanup_crit_edge:            ; preds = %err_rhashtable_init
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %err_rhashtable_init
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %err_rhashtable_init.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ], [ %call12, %err_rhashtable_init.cleanup_crit_edge ], [ %call12, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_ppbt_pack(ptr nocapture noundef %payload, i32 noundef %e, i32 noundef %op, i16 noundef zeroext %local_port, i16 noundef zeroext %acl_info) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memset(ptr %payload, i32 0, i32 20)
  %spec.select.i.i = shl i32 %e, 31
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, 251711487
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %spec.select.i.i26 = shl i32 %op, 28
  %and6.i.i31 = and i32 %spec.select.i.i26, 1879048192
  %or.i.i35 = or i32 %and6.i.i31, %or.i.i
  %conv1 = zext i16 %local_port to i32
  %and.i = shl nuw i32 %conv1, 16
  %spec.select.i.i54 = and i32 %and.i, 16711680
  %or.i.i63 = or i32 %spec.select.i.i54, %or.i.i35
  %3 = shl nuw nsw i32 %conv1, 4
  %and6.i28.i = and i32 %3, 12288
  %or.i32.i = or i32 %and6.i28.i, %or.i.i63
  store i32 %or.i32.i, ptr %payload, align 4
  %arrayidx.i.i87 = getelementptr i32, ptr %payload, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i87, align 4
  %conv2 = zext i16 %acl_info to i32
  %arrayidx.i.i116 = getelementptr i32, ptr %payload, i32 4
  %or.i.i90 = and i32 %5, 2147418112
  %and7.i.i118 = or i32 %or.i.i90, %conv2
  %or.i.i119 = or i32 %and7.i.i118, -2147483648
  %6 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i119, ptr %arrayidx.i.i116, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_tcam_ventry_add(ptr noundef %mlxsw_sp, ptr noundef %vgroup, ptr noundef %ventry, ptr noundef %rulei) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rulei to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rulei, align 4
  %values = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 1
  %call = tail call fastcc ptr @mlxsw_sp_acl_tcam_vchunk_get(ptr noundef %mlxsw_sp, ptr noundef %vgroup, i32 noundef %1, ptr noundef %values)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %vchunk3 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry, i32 0, i32 2
  %3 = ptrtoint ptr %vchunk3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %vchunk3, align 4
  %rulei4 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry, i32 0, i32 3
  %4 = ptrtoint ptr %rulei4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rulei, ptr %rulei4, align 4
  %vregion5 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %vregion5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vregion5, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #14
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %acl_tcam_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %9 = ptrtoint ptr %acl_tcam_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acl_tcam_ops.i, align 4
  %entry_priv_size.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %entry_priv_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entry_priv_size.i, align 4
  %add.i = add i32 %12, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_acl_tcam_entry_create.exit.thread, label %if.end.i

mlxsw_sp_acl_tcam_entry_create.exit.thread:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %ventry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -12 to ptr), ptr %ventry, align 4
  br label %if.then10

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ventry, ptr %call9.i.i.i, align 128
  %chunk4.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %call9.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %chunk4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %8, ptr %chunk4.i, align 4
  %entry_add.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %10, i32 0, i32 14
  %16 = ptrtoint ptr %entry_add.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entry_add.i, align 4
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %8, i32 0, i32 1
  %18 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %region.i, align 4
  %priv.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %19, i32 0, i32 8
  %priv5.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %8, i32 0, i32 2
  %priv7.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %call9.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %rulei4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rulei4, align 4
  %call9.i = tail call i32 %17(ptr noundef %mlxsw_sp, ptr noundef %priv.i, ptr noundef %priv5.i, ptr noundef %priv7.i, ptr noundef %21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.mlxsw_sp_acl_tcam_entry_create.exit_crit_edge, label %err_entry_add.i

if.end.i.mlxsw_sp_acl_tcam_entry_create.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_entry_create.exit

err_entry_add.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #14
  %22 = inttoptr i32 %call9.i to ptr
  br label %mlxsw_sp_acl_tcam_entry_create.exit

mlxsw_sp_acl_tcam_entry_create.exit:              ; preds = %err_entry_add.i, %if.end.i.mlxsw_sp_acl_tcam_entry_create.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %err_entry_add.i ], [ %call9.i.i.i, %if.end.i.mlxsw_sp_acl_tcam_entry_create.exit_crit_edge ]
  %23 = ptrtoint ptr %ventry to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i, ptr %ventry, align 4
  %cmp.i37 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %mlxsw_sp_acl_tcam_entry_create.exit.if.then10_crit_edge, label %if.end14

mlxsw_sp_acl_tcam_entry_create.exit.if.then10_crit_edge: ; preds = %mlxsw_sp_acl_tcam_entry_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.then10:                                        ; preds = %mlxsw_sp_acl_tcam_entry_create.exit.if.then10_crit_edge, %mlxsw_sp_acl_tcam_entry_create.exit.thread
  tail call void @mutex_unlock(ptr noundef %6) #14
  %24 = ptrtoint ptr %ventry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ventry, align 4
  %26 = ptrtoint ptr %25 to i32
  tail call fastcc void @mlxsw_sp_acl_tcam_vchunk_put(ptr noundef %mlxsw_sp, ptr noundef %call)
  br label %cleanup

if.end14:                                         ; preds = %mlxsw_sp_acl_tcam_entry_create.exit
  %list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry, i32 0, i32 1
  %ventry_list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %ventry_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ventry_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end14.list_add_tail.exit_crit_edge
  %33 = ptrtoint ptr %vregion5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vregion5, align 4
  %current_vchunk.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %34, i32 0, i32 9, i32 1, i32 2
  %35 = ptrtoint ptr %current_vchunk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %current_vchunk.i, align 4
  %cmp.i38 = icmp eq ptr %36, %call
  br i1 %cmp.i38, label %if.then.i, label %list_add_tail.exit.mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit_crit_edge

list_add_tail.exit.mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %start_ventry.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %34, i32 0, i32 9, i32 1, i32 3
  %37 = ptrtoint ptr %start_ventry.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %start_ventry.i, align 4
  %stop_ventry.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %34, i32 0, i32 9, i32 1, i32 4
  %38 = ptrtoint ptr %stop_ventry.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %stop_ventry.i, align 4
  br label %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit

mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit: ; preds = %if.then.i, %list_add_tail.exit.mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %6) #14
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit, %if.then10, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %26, %if.then10 ], [ 0, %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxsw_sp_acl_tcam_vchunk_get(ptr noundef %mlxsw_sp, ptr noundef %vgroup, i32 noundef %priority, ptr noundef %elusage) unnamed_addr #2 align 64 {
entry:
  %ptar_pl.i.i.i.i.i = alloca [48 x i8], align 1
  %pacl_pl.i.i.i.i.i = alloca [112 x i8], align 1
  %vregion_elusage.i.i = alloca %struct.mlxsw_afk_element_usage, align 4
  %priority.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priority.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %priority, ptr %priority.addr, align 4
  %vchunk_ht = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2
  %1 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %5 = ptrtoint ptr %vchunk_ht to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %vchunk_ht, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %vchunk_ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 594, ptr noundef nonnull @.str.22) #14
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2, i32 3, i32 3
  %key_offset.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2, i32 3, i32 2
  %key_len.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2, i32 3, i32 1
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %6, %do.end12.i.i.i ], [ %29, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %8, -559038733
  %add36.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i, %priority
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i, i32 14) #14
  %sub39.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #14
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #14
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #14
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #14
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #14
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #14
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %9 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %10, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !188

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %13 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %13, 1
  %14 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !190
  %15 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 369, ptr noundef nonnull @.str.22) #14
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i.i95.i.i.i = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %18 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %for.body.i.i.i.preheader, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i.i

for.body.i.i.i.preheader:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %19 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %20 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %21 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i101.i.i.i = zext i16 %22 to i32
  %23 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %24 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %he.0108.i.i.i = phi ptr [ %26, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %18, %for.body.i.i.i.preheader ]
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %add.ptr.i102.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i, i32 %conv.i101.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i.i, ptr nonnull %priority.addr, i32 %conv3.i.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %__rhashtable_lookup.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %25 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %and.i.i.i.i = and i32 %27, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %18, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %26, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %14
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !191
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %vchunk_ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.23, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 614, ptr noundef nonnull @.str.22) #14
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !188

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  %spec.select = select i1 %tobool.not.i1.i, ptr null, ptr %add.ptr.i100.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %__rhashtable_lookup.exit.i.i, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %spec.select, %__rhashtable_lookup.exit.i.i ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.24) #14
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !192
  %30 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i.i9.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %tobool.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool.not, label %if.end27, label %if.then

if.then:                                          ; preds = %rhashtable_lookup_fast.exit
  %vregion = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %cond.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %vregion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vregion, align 4
  %key_info = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %key_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %key_info, align 4
  %call1 = tail call zeroext i1 @mlxsw_afk_key_info_subset(ptr noundef %37, ptr noundef %elusage) #14
  br i1 %call1, label %if.end26, label %do.end, !prof !188

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1104, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end26:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %cond.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ref_count, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %ref_count, align 4
  br label %cleanup

if.end27:                                         ; preds = %rhashtable_lookup_fast.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %priority)
  %cmp.i = icmp eq i32 %priority, -1
  br i1 %cmp.i, label %if.end27.cleanup_crit_edge, label %if.end.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 44) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i41, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %ventry_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 4
  %41 = ptrtoint ptr %ventry_list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %ventry_list.i, ptr %ventry_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ventry_list.i, ptr %prev.i.i, align 8
  %priority5.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 5
  %43 = ptrtoint ptr %priority5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %priority, ptr %priority5.i, align 4
  %vgroup6.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 6
  %44 = ptrtoint ptr %vgroup6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %vgroup, ptr %vgroup6.i, align 8
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 8
  %45 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %ref_count.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vregion_elusage.i.i) #14
  %46 = ptrtoint ptr %vregion_elusage.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %vregion_elusage.i.i, align 4, !annotation !193
  %vregion_list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 1
  %47 = ptrtoint ptr %vregion_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %pos.059.i.i.i = load ptr, ptr %vregion_list.i.i.i, align 4
  %cmp.i.not60.i.i.i = icmp eq ptr %pos.059.i.i.i, %vregion_list.i.i.i
  br i1 %cmp.i.not60.i.i.i, label %if.end4.i.if.end4.i.i_crit_edge, label %if.end4.i.for.body.i.i.i43_crit_edge

if.end4.i.for.body.i.i.i43_crit_edge:             ; preds = %if.end4.i
  br label %for.body.i.i.i43

if.end4.i.if.end4.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

for.body.i.i.i43:                                 ; preds = %for.inc.i.i.i46.for.body.i.i.i43_crit_edge, %if.end4.i.for.body.i.i.i43_crit_edge
  %pos.061.i.i.i = phi ptr [ %pos.0.i.i.i, %for.inc.i.i.i46.for.body.i.i.i43_crit_edge ], [ %pos.059.i.i.i, %if.end4.i.for.body.i.i.i43_crit_edge ]
  %48 = ptrtoint ptr %pos.061.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pos.061.i.i.i, align 4
  %cmp.not.i.i.i42 = icmp eq ptr %49, %vregion_list.i.i.i
  br i1 %cmp.not.i.i.i42, label %for.body.i.i.i43.if.end11.i.i.i_crit_edge, label %if.then.i.i.i44

for.body.i.i.i43.if.end11.i.i.i_crit_edge:        ; preds = %for.body.i.i.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i.i

if.then.i.i.i44:                                  ; preds = %for.body.i.i.i43
  %vchunk_list.i.i.i.i = getelementptr i8, ptr %49, i32 16
  %50 = ptrtoint ptr %vchunk_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %vchunk_list.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %51, %vchunk_list.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i44.for.inc.i.i.i46_crit_edge, label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i

if.then.i.i.i44.for.inc.i.i.i46_crit_edge:        ; preds = %if.then.i.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i46

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i:        ; preds = %if.then.i.i.i44
  %priority.i.i.i.i = getelementptr i8, ptr %51, i32 20
  %52 = ptrtoint ptr %priority.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %priority.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %priority)
  %cmp9.not.i.i.i = icmp ugt i32 %53, %priority
  br i1 %cmp9.not.i.i.i, label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.if.end11.i.i.i_crit_edge, label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.for.inc.i.i.i46_crit_edge

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.for.inc.i.i.i46_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i46

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.if.end11.i.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.if.end11.i.i.i_crit_edge, %for.body.i.i.i43.if.end11.i.i.i_crit_edge
  %key_info.i.i.i = getelementptr i8, ptr %pos.061.i.i.i, i32 24
  %54 = ptrtoint ptr %key_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %key_info.i.i.i, align 4
  %call12.i.i.i = tail call zeroext i1 @mlxsw_afk_key_info_subset(ptr noundef %55, ptr noundef %elusage) #14
  br i1 %call12.i.i.i, label %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.i.i, label %land.lhs.true.i.i.i45

land.lhs.true.i.i.i45:                            ; preds = %if.end11.i.i.i
  %vchunk_list.i44.i.i.i = getelementptr i8, ptr %pos.061.i.i.i, i32 16
  %56 = ptrtoint ptr %vchunk_list.i44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %vchunk_list.i44.i.i.i, align 4
  %cmp.i.not.i45.i.i.i = icmp eq ptr %57, %vchunk_list.i44.i.i.i
  br i1 %cmp.i.not.i45.i.i.i, label %land.lhs.true.i.i.i45.land.lhs.true19.critedge.i.i.i_crit_edge, label %mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i

land.lhs.true.i.i.i45.land.lhs.true19.critedge.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true19.critedge.i.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i:      ; preds = %land.lhs.true.i.i.i45
  %priority.i46.i.i.i = getelementptr i8, ptr %57, i32 20
  %58 = ptrtoint ptr %priority.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %priority.i46.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %priority)
  %cmp15.i.i.i = icmp ugt i32 %59, %priority
  br i1 %cmp15.i.i.i, label %mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i.if.end4.i.i_crit_edge, label %mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i.land.lhs.true19.critedge.i.i.i_crit_edge

mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i.land.lhs.true19.critedge.i.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true19.critedge.i.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i.if.end4.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

land.lhs.true19.critedge.i.i.i:                   ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i.land.lhs.true19.critedge.i.i.i_crit_edge, %land.lhs.true.i.i.i45.land.lhs.true19.critedge.i.i.i_crit_edge
  %60 = ptrtoint ptr %vchunk_list.i44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %vchunk_list.i44.i.i.i, align 4
  %cmp.i.not.i51.i.i.i = icmp eq ptr %61, %vchunk_list.i44.i.i.i
  br i1 %cmp.i.not.i51.i.i.i, label %land.lhs.true19.critedge.i.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i_crit_edge, label %if.end.i53.i.i.i

land.lhs.true19.critedge.i.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i_crit_edge: ; preds = %land.lhs.true19.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i

if.end.i53.i.i.i:                                 ; preds = %land.lhs.true19.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr i8, ptr %pos.061.i.i.i, i32 20
  %62 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i.i, align 4
  %priority.i52.i.i.i = getelementptr i8, ptr %63, i32 20
  %64 = ptrtoint ptr %priority.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %priority.i52.i.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i

mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i:    ; preds = %if.end.i53.i.i.i, %land.lhs.true19.critedge.i.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i_crit_edge
  %retval.0.i54.i.i.i = phi i32 [ %65, %if.end.i53.i.i.i ], [ 0, %land.lhs.true19.critedge.i.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i54.i.i.i, i32 %priority)
  %cmp21.i.i.i = icmp ult i32 %retval.0.i54.i.i.i, %priority
  br i1 %cmp21.i.i.i, label %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i.for.inc.i.i.i46_crit_edge, label %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i

mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i.for.inc.i.i.i46_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i46

for.inc.i.i.i46:                                  ; preds = %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i.for.inc.i.i.i46_crit_edge, %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.for.inc.i.i.i46_crit_edge, %if.then.i.i.i44.for.inc.i.i.i46_crit_edge
  %66 = ptrtoint ptr %pos.061.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %pos.0.i.i.i = load ptr, ptr %pos.061.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %pos.0.i.i.i, %vregion_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %for.inc.i.i.i46.if.end4.i.i_crit_edge, label %for.inc.i.i.i46.for.body.i.i.i43_crit_edge

for.inc.i.i.i46.for.body.i.i.i43_crit_edge:       ; preds = %for.inc.i.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i43

for.inc.i.i.i46.if.end4.i.i_crit_edge:            ; preds = %for.inc.i.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.i.i:   ; preds = %if.end11.i.i.i
  %add.ptr.le.i.i.i = getelementptr i8, ptr %pos.061.i.i.i, i32 -100
  %tobool.not.i.i47 = icmp eq ptr %add.ptr.le.i.i.i, null
  br i1 %tobool.not.i.i47, label %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.i.i.if.end4.i.i_crit_edge, label %if.end.i.i

mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.i.i.if.end4.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i: ; preds = %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i.i
  %add.ptr.le.i35.i.i = getelementptr i8, ptr %pos.061.i.i.i, i32 -100
  %tobool.not36.i.i = icmp eq ptr %add.ptr.le.i35.i.i, null
  br i1 %tobool.not36.i.i, label %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i.if.end4.i.i_crit_edge, label %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.thread.i_crit_edge

mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.thread.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_get.exit.thread.i

mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i.if.end4.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.end.i.i:                                       ; preds = %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_count.i.i = getelementptr i8, ptr %pos.061.i.i.i, i32 160
  %67 = ptrtoint ptr %ref_count.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ref_count.i.i, align 4
  %inc.i.i = add i32 %68, 1
  store i32 %inc.i.i, ptr %ref_count.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_get.exit.i

if.end4.i.i:                                      ; preds = %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i.if.end4.i.i_crit_edge, %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.i.i.if.end4.i.i_crit_edge, %for.inc.i.i.i46.if.end4.i.i_crit_edge, %mlxsw_sp_acl_tcam_vregion_prio.exit49.i.i.i.if.end4.i.i_crit_edge, %if.end4.i.if.end4.i.i_crit_edge
  %tmplt_elusage_set.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 5
  %69 = ptrtoint ptr %tmplt_elusage_set.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tmplt_elusage_set.i.i.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i.i48 = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i.i48, label %for.cond.preheader.i.i.i, label %if.then.i14.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end4.i.i
  %patterns_count.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 4
  %71 = ptrtoint ptr %patterns_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %patterns_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp58.not.i.i.i = icmp eq i32 %72, 0
  br i1 %cmp58.not.i.i.i, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %patterns.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 3
  %73 = ptrtoint ptr %patterns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %patterns.i.i.i, align 4
  br label %for.body.i15.i.i

if.then.i14.i.i:                                  ; preds = %if.end4.i.i
  %tmplt_elusage.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 6
  %75 = ptrtoint ptr %tmplt_elusage.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tmplt_elusage.i.i.i, align 4
  %77 = ptrtoint ptr %vregion_elusage.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %vregion_elusage.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i14.i.i
  %cmp14.i.i.i.i = phi i1 [ true, %if.then.i14.i.i ], [ %cmp.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %i.013.i.i.i.i = phi i32 [ 0, %if.then.i14.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %div3.i.i.i.i.i = lshr i32 %i.013.i.i.i.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %elusage, i32 %div3.i.i.i.i.i
  %78 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %80 = shl nuw i32 1, %i.013.i.i.i.i
  %81 = and i32 %79, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i.i.i49 = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i.i.i49, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i50

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i50:                          ; preds = %for.body.i.i.i.i
  %82 = ptrtoint ptr %vregion_elusage.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %vregion_elusage.i.i, align 4
  %84 = and i32 %83, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool4.not.i.i.i.i = icmp eq i32 %84, 0
  br i1 %tobool4.not.i.i.i.i, label %land.lhs.true.i.i.i.i50.mlxsw_afk_element_usage_subset.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i50.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i50.for.inc.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i50.mlxsw_afk_element_usage_subset.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_afk_element_usage_subset.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i50.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw nsw i32 %i.013.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.013.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %i.013.i.i.i.i, 24
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 25
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.mlxsw_afk_element_usage_subset.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.mlxsw_afk_element_usage_subset.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_afk_element_usage_subset.exit.i.i.i

mlxsw_afk_element_usage_subset.exit.i.i.i:        ; preds = %for.inc.i.i.i.i.mlxsw_afk_element_usage_subset.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i50.mlxsw_afk_element_usage_subset.exit.i.i.i_crit_edge
  %cmp.lcssa.i.i.i.i = phi i1 [ %cmp.i.i.i.i, %for.inc.i.i.i.i.mlxsw_afk_element_usage_subset.exit.i.i.i_crit_edge ], [ %cmp14.i.i.i.i, %land.lhs.true.i.i.i.i50.mlxsw_afk_element_usage_subset.exit.i.i.i_crit_edge ]
  br i1 %cmp.lcssa.i.i.i.i, label %do.end.i.i.i, label %mlxsw_afk_element_usage_subset.exit.i.i.i.mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i_crit_edge, !prof !187

mlxsw_afk_element_usage_subset.exit.i.i.i.mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i_crit_edge: ; preds = %mlxsw_afk_element_usage_subset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i

do.end.i.i.i:                                     ; preds = %mlxsw_afk_element_usage_subset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 611, i32 noundef 9, ptr noundef null) #14
  br label %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i

for.cond.i.i.i:                                   ; preds = %mlxsw_afk_element_usage_subset.exit57.i.i.i
  %inc.i.i.i = add nuw i32 %i.059.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i.i, %72
  br i1 %exitcond.not.i.i, label %for.cond.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i15.i.i_crit_edge

for.cond.i.i.i.for.body.i15.i.i_crit_edge:        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i15.i.i

for.cond.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.body.i15.i.i:                                 ; preds = %for.cond.i.i.i.for.body.i15.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.059.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i15.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.mlxsw_sp_acl_tcam_pattern, ptr %74, i32 %i.059.i.i.i
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i.i, align 4
  %elements_count.i.i.i = getelementptr %struct.mlxsw_sp_acl_tcam_pattern, ptr %74, i32 %i.059.i.i.i, i32 1
  %87 = ptrtoint ptr %elements_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %elements_count.i.i.i, align 4
  %89 = ptrtoint ptr %vregion_elusage.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %vregion_elusage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp4.not.i.i.i.i = icmp eq i32 %88, 0
  br i1 %cmp4.not.i.i.i.i, label %for.body.i15.i.i.for.body.i48.i.i.i.preheader_crit_edge, label %for.body.i15.i.i.for.body.i42.i.i.i_crit_edge

for.body.i15.i.i.for.body.i42.i.i.i_crit_edge:    ; preds = %for.body.i15.i.i
  br label %for.body.i42.i.i.i

for.body.i15.i.i.for.body.i48.i.i.i.preheader_crit_edge: ; preds = %for.body.i15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i48.i.i.i.preheader

for.body.i42.i.i.i:                               ; preds = %for.body.i42.i.i.i.for.body.i42.i.i.i_crit_edge, %for.body.i15.i.i.for.body.i42.i.i.i_crit_edge
  %i.05.i.i.i.i = phi i32 [ %inc.i40.i.i.i, %for.body.i42.i.i.i.for.body.i42.i.i.i_crit_edge ], [ 0, %for.body.i15.i.i.for.body.i42.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i51 = getelementptr i32, ptr %86, i32 %i.05.i.i.i.i
  %90 = ptrtoint ptr %arrayidx.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i.i.i51, align 4
  %rem.i.i.i.i.i.i = and i32 %91, 31
  %shl.i.i.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i.i.i
  %92 = ptrtoint ptr %vregion_elusage.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vregion_elusage.i.i, align 4
  %or.i.i.i.i.i.i = or i32 %shl.i.i.i.i.i.i, %93
  store i32 %or.i.i.i.i.i.i, ptr %vregion_elusage.i.i, align 4
  %inc.i40.i.i.i = add nuw i32 %i.05.i.i.i.i, 1
  %exitcond.not.i41.i.i.i = icmp eq i32 %inc.i40.i.i.i, %88
  br i1 %exitcond.not.i41.i.i.i, label %for.body.i42.i.i.i.for.body.i48.i.i.i.preheader_crit_edge, label %for.body.i42.i.i.i.for.body.i42.i.i.i_crit_edge

for.body.i42.i.i.i.for.body.i42.i.i.i_crit_edge:  ; preds = %for.body.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i42.i.i.i

for.body.i42.i.i.i.for.body.i48.i.i.i.preheader_crit_edge: ; preds = %for.body.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i48.i.i.i.preheader

for.body.i48.i.i.i.preheader:                     ; preds = %for.body.i42.i.i.i.for.body.i48.i.i.i.preheader_crit_edge, %for.body.i15.i.i.for.body.i48.i.i.i.preheader_crit_edge
  br label %for.body.i48.i.i.i

for.body.i48.i.i.i:                               ; preds = %for.inc.i55.i.i.i.for.body.i48.i.i.i_crit_edge, %for.body.i48.i.i.i.preheader
  %cmp14.i43.i.i.i = phi i1 [ %cmp.i53.i.i.i, %for.inc.i55.i.i.i.for.body.i48.i.i.i_crit_edge ], [ true, %for.body.i48.i.i.i.preheader ]
  %i.013.i44.i.i.i = phi i32 [ %inc.i52.i.i.i, %for.inc.i55.i.i.i.for.body.i48.i.i.i_crit_edge ], [ 0, %for.body.i48.i.i.i.preheader ]
  %div3.i.i45.i.i.i = lshr i32 %i.013.i44.i.i.i, 5
  %arrayidx.i.i46.i.i.i = getelementptr i32, ptr %elusage, i32 %div3.i.i45.i.i.i
  %94 = ptrtoint ptr %arrayidx.i.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %arrayidx.i.i46.i.i.i, align 4
  %96 = shl nuw i32 1, %i.013.i44.i.i.i
  %97 = and i32 %95, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i47.i.i.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i47.i.i.i, label %for.body.i48.i.i.i.for.inc.i55.i.i.i_crit_edge, label %land.lhs.true.i51.i.i.i

for.body.i48.i.i.i.for.inc.i55.i.i.i_crit_edge:   ; preds = %for.body.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i55.i.i.i

land.lhs.true.i51.i.i.i:                          ; preds = %for.body.i48.i.i.i
  %98 = ptrtoint ptr %vregion_elusage.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %vregion_elusage.i.i, align 4
  %100 = and i32 %99, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool4.not.i50.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool4.not.i50.i.i.i, label %land.lhs.true.i51.i.i.i.mlxsw_afk_element_usage_subset.exit57.i.i.i_crit_edge, label %land.lhs.true.i51.i.i.i.for.inc.i55.i.i.i_crit_edge

land.lhs.true.i51.i.i.i.for.inc.i55.i.i.i_crit_edge: ; preds = %land.lhs.true.i51.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i55.i.i.i

land.lhs.true.i51.i.i.i.mlxsw_afk_element_usage_subset.exit57.i.i.i_crit_edge: ; preds = %land.lhs.true.i51.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_afk_element_usage_subset.exit57.i.i.i

for.inc.i55.i.i.i:                                ; preds = %land.lhs.true.i51.i.i.i.for.inc.i55.i.i.i_crit_edge, %for.body.i48.i.i.i.for.inc.i55.i.i.i_crit_edge
  %inc.i52.i.i.i = add nuw nsw i32 %i.013.i44.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.013.i44.i.i.i)
  %cmp.i53.i.i.i = icmp ult i32 %i.013.i44.i.i.i, 24
  %exitcond.not.i54.i.i.i = icmp eq i32 %inc.i52.i.i.i, 25
  br i1 %exitcond.not.i54.i.i.i, label %for.inc.i55.i.i.i.mlxsw_afk_element_usage_subset.exit57.i.i.i_crit_edge, label %for.inc.i55.i.i.i.for.body.i48.i.i.i_crit_edge

for.inc.i55.i.i.i.for.body.i48.i.i.i_crit_edge:   ; preds = %for.inc.i55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i48.i.i.i

for.inc.i55.i.i.i.mlxsw_afk_element_usage_subset.exit57.i.i.i_crit_edge: ; preds = %for.inc.i55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_afk_element_usage_subset.exit57.i.i.i

mlxsw_afk_element_usage_subset.exit57.i.i.i:      ; preds = %for.inc.i55.i.i.i.mlxsw_afk_element_usage_subset.exit57.i.i.i_crit_edge, %land.lhs.true.i51.i.i.i.mlxsw_afk_element_usage_subset.exit57.i.i.i_crit_edge
  %cmp.lcssa.i56.i.i.i = phi i1 [ %cmp.i53.i.i.i, %for.inc.i55.i.i.i.mlxsw_afk_element_usage_subset.exit57.i.i.i_crit_edge ], [ %cmp14.i43.i.i.i, %land.lhs.true.i51.i.i.i.mlxsw_afk_element_usage_subset.exit57.i.i.i_crit_edge ]
  br i1 %cmp.lcssa.i56.i.i.i, label %for.cond.i.i.i, label %mlxsw_afk_element_usage_subset.exit57.i.i.i.mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i_crit_edge

mlxsw_afk_element_usage_subset.exit57.i.i.i.mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i_crit_edge: ; preds = %mlxsw_afk_element_usage_subset.exit57.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %101 = ptrtoint ptr %elusage to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %elusage, align 4
  %103 = ptrtoint ptr %vregion_elusage.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %vregion_elusage.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i

mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i:   ; preds = %for.end.i.i.i, %mlxsw_afk_element_usage_subset.exit57.i.i.i.mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i_crit_edge, %do.end.i.i.i, %mlxsw_afk_element_usage_subset.exit.i.i.i.mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i_crit_edge
  %acl_tcam_ops.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %104 = ptrtoint ptr %acl_tcam_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %acl_tcam_ops.i.i.i, align 4
  %acl.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %106 = ptrtoint ptr %acl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %acl.i.i.i, align 4
  %call.i.i.i52 = tail call ptr @mlxsw_sp_acl_afk(ptr noundef %107) #14
  %108 = ptrtoint ptr %vgroup to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %vgroup, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3520, i32 noundef 264) #19
  %tobool.not.i16.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i16.i.i, label %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.thread.i_crit_edge, label %if.end.i.i.i

mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.thread.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_get.exit.thread.i

if.end.i.i.i:                                     ; preds = %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i
  %vchunk_list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %111 = ptrtoint ptr %vchunk_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %vchunk_list.i.i.i, ptr %vchunk_list.i.i.i, align 4
  %prev.i.i17.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1
  %112 = ptrtoint ptr %prev.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %vchunk_list.i.i.i, ptr %prev.i.i17.i.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @mlxsw_sp_acl_tcam_vregion_create.__key) #14
  %tcam4.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 7
  %113 = ptrtoint ptr %tcam4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %109, ptr %tcam4.i.i.i, align 8
  %mlxsw_sp5.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 10
  %114 = ptrtoint ptr %mlxsw_sp5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %mlxsw_sp, ptr %mlxsw_sp5.i.i.i, align 8
  %vgroup6.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 8
  %115 = ptrtoint ptr %vgroup6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %vgroup, ptr %vgroup6.i.i.i, align 4
  %ref_count.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 11
  %116 = ptrtoint ptr %ref_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %ref_count.i.i.i, align 4
  %call7.i.i92.i = call ptr @mlxsw_afk_key_info_get(ptr noundef %call.i.i.i52, ptr noundef nonnull %vregion_elusage.i.i) #14
  %key_info.i18.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %117 = ptrtoint ptr %key_info.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call7.i.i92.i, ptr %key_info.i18.i.i, align 4
  %cmp.i.i19.i.i = icmp ugt ptr %call7.i.i92.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i19.i.i, label %if.then10.i.i.i, label %if.end13.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %118 = ptrtoint ptr %call7.i.i92.i to i32
  br label %err_key_info_get.i.i.i

if.end13.i.i.i:                                   ; preds = %if.end.i.i.i
  %call14.i.i.i = call fastcc ptr @mlxsw_sp_acl_tcam_region_create(ptr noundef %mlxsw_sp, ptr noundef %109, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef null) #14
  %region.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %region.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call14.i.i.i, ptr %region.i.i.i, align 4
  %cmp.i101.i.i.i = icmp ugt ptr %call14.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101.i.i.i, label %if.then17.i.i.i, label %if.end13.i.i.i.for.cond.i.i.i.i_crit_edge

if.end13.i.i.i.for.cond.i.i.i.i_crit_edge:        ; preds = %if.end13.i.i.i
  br label %for.cond.i.i.i.i

if.then17.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %call14.i.i.i to i32
  br label %err_region_create.i.i.i

for.cond.i.i.i.i:                                 ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.end13.i.i.i.for.cond.i.i.i.i_crit_edge
  %pos.0.in.i.i.i.i = phi ptr [ %pos.0.i.i.i.i, %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i.for.cond.i.i.i.i_crit_edge ], [ %vregion_list.i.i.i, %if.end13.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %121 = ptrtoint ptr %pos.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %pos.0.i.i.i.i = load ptr, ptr %pos.0.in.i.i.i.i, align 4
  %cmp.i.not.i.i20.i.i = icmp eq ptr %pos.0.i.i.i.i, %vregion_list.i.i.i
  br i1 %cmp.i.not.i.i20.i.i, label %for.cond.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.body.i.i21.i.i

for.cond.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i.i

for.body.i.i21.i.i:                               ; preds = %for.cond.i.i.i.i
  %vchunk_list.i.i.i.i.i = getelementptr i8, ptr %pos.0.i.i.i.i, i32 16
  %122 = ptrtoint ptr %vchunk_list.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %vchunk_list.i.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i.i = icmp eq ptr %123, %vchunk_list.i.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i.i, label %for.body.i.i21.i.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

for.body.i.i21.i.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %priority.i.i.i.i.i = getelementptr i8, ptr %123, i32 20
  %124 = ptrtoint ptr %priority.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %priority.i.i.i.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i:      ; preds = %if.end.i.i.i.i.i, %for.body.i.i21.i.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %125, %if.end.i.i.i.i.i ], [ 0, %for.body.i.i21.i.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i_crit_edge ]
  %cmp.i102.i.i.i = icmp ugt i32 %retval.0.i.i.i.i.i, %priority
  br i1 %cmp.i102.i.i.i, label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i.for.end.i.i.i.i_crit_edge, label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i.for.cond.i.i.i.i_crit_edge

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i.for.cond.i.i.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i.for.end.i.i.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.cond.i.i.i.i.for.end.i.i.i.i_crit_edge
  %pos.0.lcssa.i.i.i.i = phi ptr [ %pos.0.i.i.i.i, %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %vregion_list.i.i.i, %for.cond.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  %list.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0.lcssa.i.i.i.i, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i.i, ptr noundef %127, ptr noundef %pos.0.lcssa.i.i.i.i) #14
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %for.end.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge

for.end.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %list.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %129 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %pos.0.lcssa.i.i.i.i, ptr %list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 1
  %130 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev3.i.i.i.i.i.i, align 8
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %list.i.i.i.i, ptr %127, align 4
  br label %list_add_tail.exit.i.i.i.i

list_add_tail.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i.i.i, %for.end.i.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge
  %132 = ptrtoint ptr %region.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %region.i.i.i, align 4
  %call4.i.i.i.i = call fastcc i32 @mlxsw_sp_acl_tcam_group_region_attach(ptr noundef %mlxsw_sp, ptr noundef %vgroup, ptr noundef %133, i32 noundef %priority, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %if.end24.i.i.i, label %err_region_attach.i.i.i.i

err_region_attach.i.i.i.i:                        ; preds = %list_add_tail.exit.i.i.i.i
  %call.i.i20.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i.i) #14
  br i1 %call.i.i20.i.i.i.i, label %if.end.i.i21.i.i.i.i, label %err_region_attach.i.i.i.i.err_vgroup_vregion_attach.i.i.i_crit_edge

err_region_attach.i.i.i.i.err_vgroup_vregion_attach.i.i.i_crit_edge: ; preds = %err_region_attach.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_vgroup_vregion_attach.i.i.i

if.end.i.i21.i.i.i.i:                             ; preds = %err_region_attach.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 1
  %134 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i.i.i.i.i, align 8
  %136 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %list.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i.i.i.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %err_vgroup_vregion_attach.i.i.i

if.end24.i.i.i:                                   ; preds = %list_add_tail.exit.i.i.i.i
  %vregion_rehash_enabled.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 7
  %140 = ptrtoint ptr %vregion_rehash_enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %vregion_rehash_enabled.i.i.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool25.not.i.i.i = icmp eq i8 %141, 0
  br i1 %tobool25.not.i.i.i, label %if.end24.i.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.i_crit_edge, label %land.lhs.true.i22.i.i

if.end24.i.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.i_crit_edge: ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_get.exit.i

land.lhs.true.i22.i.i:                            ; preds = %if.end24.i.i.i
  %region_rehash_hints_get.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %105, i32 0, i32 8
  %142 = ptrtoint ptr %region_rehash_hints_get.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %region_rehash_hints_get.i.i.i, align 4
  %tobool26.not.i.i.i53 = icmp eq ptr %143, null
  br i1 %tobool26.not.i.i.i53, label %land.lhs.true.i22.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.i_crit_edge, label %do.body29.i.i.i

land.lhs.true.i22.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.i_crit_edge: ; preds = %land.lhs.true.i22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_get.exit.i

do.body29.i.i.i:                                  ; preds = %land.lhs.true.i22.i.i
  %rehash.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 9
  call void @__init_work(ptr noundef %rehash.i.i.i, i32 noundef 0) #14
  %144 = ptrtoint ptr %rehash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -64, ptr %rehash.i.i.i, align 8
  %lockdep_map.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @mlxsw_sp_acl_tcam_vregion_create.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry39.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %145 = ptrtoint ptr %entry39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %entry39.i.i.i, ptr %entry39.i.i.i, align 4
  %prev.i103.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 1, i32 1
  %146 = ptrtoint ptr %prev.i103.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %entry39.i.i.i, ptr %prev.i103.i.i.i, align 8
  %func.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 2
  %147 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @mlxsw_sp_acl_tcam_vregion_rehash_work, ptr %func.i.i.i, align 4
  %timer.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 9, i32 0, i32 1
  call void @init_timer_key(ptr noundef %timer.i.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @mlxsw_sp_acl_tcam_vregion_create.__key.28) #14
  %148 = ptrtoint ptr %tcam4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tcam4.i.i.i, align 8
  %vregion_rehash_intrvl.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %149, i32 0, i32 7
  %150 = ptrtoint ptr %vregion_rehash_intrvl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vregion_rehash_intrvl.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i.i23.i.i = icmp eq i32 %151, 0
  br i1 %tobool.not.i.i23.i.i, label %do.body29.i.i.i.mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i

do.body29.i.i.i.mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i_crit_edge: ; preds = %do.body29.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.body29.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %151) #14
  %call1.i.i.i.i = call i32 @mlxsw_core_schedule_dw(ptr noundef %rehash.i.i.i, i32 noundef %call2.i.i.i.i.i) #14
  br label %mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i

mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i: ; preds = %if.else.i.i.i.i.i, %do.body29.i.i.i.mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i_crit_edge
  %lock52.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %109, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock52.i.i.i, i32 noundef 0) #14
  %tlist.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %vregion_list.i24.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %109, i32 0, i32 6
  %prev.i106.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %109, i32 0, i32 6, i32 1
  %152 = ptrtoint ptr %prev.i106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i106.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tlist.i.i.i, ptr noundef %153, ptr noundef %vregion_list.i24.i.i) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i107.i.i.i, label %mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge

mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i.i.i

if.end.i.i107.i.i.i:                              ; preds = %mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %154 = ptrtoint ptr %prev.i106.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %tlist.i.i.i, ptr %prev.i106.i.i.i, align 4
  %155 = ptrtoint ptr %tlist.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %vregion_list.i24.i.i, ptr %tlist.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 1
  %156 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev3.i.i.i.i.i, align 8
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %tlist.i.i.i, ptr %153, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i107.i.i.i, %mlxsw_sp_acl_tcam_vregion_rehash_work_schedule.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock52.i.i.i) #14
  br label %mlxsw_sp_acl_tcam_vregion_get.exit.i

err_vgroup_vregion_attach.i.i.i:                  ; preds = %if.end.i.i21.i.i.i.i, %err_region_attach.i.i.i.i.err_vgroup_vregion_attach.i.i.i_crit_edge
  %158 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i.i, align 4
  %prev.i22.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 1
  %159 = ptrtoint ptr %prev.i22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i22.i.i.i.i, align 8
  %160 = ptrtoint ptr %region.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %region.i.i.i, align 4
  %162 = ptrtoint ptr %acl_tcam_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %acl_tcam_ops.i.i.i, align 4
  %region_fini.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %163, i32 0, i32 6
  %164 = ptrtoint ptr %region_fini.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %region_fini.i.i.i.i, align 4
  %priv.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %161, i32 0, i32 8
  call void %165(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pacl_pl.i.i.i.i.i) #14
  %166 = call ptr @memset(ptr %pacl_pl.i.i.i.i.i, i32 255, i32 112)
  %id.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %161, i32 0, i32 4
  %167 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %id.i.i.i.i.i, align 4
  %tcam_region_info.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %161, i32 0, i32 5
  call fastcc void @mlxsw_reg_pacl_pack(ptr noundef nonnull %pacl_pl.i.i.i.i.i, i16 noundef zeroext %168, i1 noundef zeroext false, ptr noundef %tcam_region_info.i.i.i.i.i) #14
  %core.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %169 = ptrtoint ptr %core.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %core.i.i.i.i.i, align 4
  %call.i.i108.i.i.i = call i32 @mlxsw_reg_write(ptr noundef %170, ptr noundef nonnull @mlxsw_reg_pacl, ptr noundef nonnull %pacl_pl.i.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pacl_pl.i.i.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptar_pl.i.i.i.i.i) #14
  %171 = call ptr @memset(ptr %ptar_pl.i.i.i.i.i, i32 255, i32 48)
  %key_type.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %161, i32 0, i32 3
  %172 = ptrtoint ptr %key_type.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %key_type.i.i.i.i.i, align 4
  %174 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %id.i.i.i.i.i, align 4
  call fastcc void @mlxsw_reg_ptar_pack(ptr noundef nonnull %ptar_pl.i.i.i.i.i, i32 noundef 2, i32 noundef %173, i16 noundef zeroext 0, i16 noundef zeroext %175, ptr noundef %tcam_region_info.i.i.i.i.i) #14
  %176 = ptrtoint ptr %core.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %core.i.i.i.i.i, align 4
  %call.i12.i.i.i.i = call i32 @mlxsw_reg_write(ptr noundef %177, ptr noundef nonnull @mlxsw_reg_ptar, ptr noundef nonnull %ptar_pl.i.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i.i.i.i.i) #14
  %group.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %161, i32 0, i32 1
  %178 = ptrtoint ptr %group.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %group.i.i.i.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %182 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %id.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %183 to i32
  %184 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %181, align 4
  %rem.i.i.i.i25.i.i = and i32 %conv.i.i.i.i.i, 31
  %shl.i.i.i.i26.i.i = shl nuw i32 1, %rem.i.i.i.i25.i.i
  %div2.i.i.i.i27.i.i = lshr i32 %conv.i.i.i.i.i, 5
  %add.ptr.i.i.i.i28.i.i = getelementptr i32, ptr %185, i32 %div2.i.i.i.i27.i.i
  %neg.i.i.i.i.i.i = xor i32 %shl.i.i.i.i26.i.i, -1
  %186 = ptrtoint ptr %add.ptr.i.i.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i.i.i.i28.i.i, align 4
  %and.i.i.i.i.i.i54 = and i32 %187, %neg.i.i.i.i.i.i
  store i32 %and.i.i.i.i.i.i54, ptr %add.ptr.i.i.i.i28.i.i, align 4
  call void @kfree(ptr noundef %161) #14
  br label %err_region_create.i.i.i

err_region_create.i.i.i:                          ; preds = %err_vgroup_vregion_attach.i.i.i, %if.then17.i.i.i
  %err.0.i.i.i = phi i32 [ %120, %if.then17.i.i.i ], [ %call4.i.i.i.i, %err_vgroup_vregion_attach.i.i.i ]
  %188 = ptrtoint ptr %key_info.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %key_info.i18.i.i, align 4
  call void @mlxsw_afk_key_info_put(ptr noundef %189) #14
  br label %err_key_info_get.i.i.i

err_key_info_get.i.i.i:                           ; preds = %err_region_create.i.i.i, %if.then10.i.i.i
  %err.1.i.i.i = phi i32 [ %118, %if.then10.i.i.i ], [ %err.0.i.i.i, %err_region_create.i.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #14
  %190 = inttoptr i32 %err.1.i.i.i to ptr
  br label %mlxsw_sp_acl_tcam_vregion_get.exit.i

mlxsw_sp_acl_tcam_vregion_get.exit.thread.i:      ; preds = %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.thread.i_crit_edge, %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ inttoptr (i32 -95 to ptr), %mlxsw_sp_acl_tcam_vgroup_vregion_find.exit.thread.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.thread.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %mlxsw_sp_acl_tcam_vgroup_use_patterns.exit.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vregion_elusage.i.i) #14
  br label %if.then9.i

mlxsw_sp_acl_tcam_vregion_get.exit.i:             ; preds = %err_key_info_get.i.i.i, %list_add_tail.exit.i.i.i, %land.lhs.true.i22.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.i_crit_edge, %if.end24.i.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.i_crit_edge, %if.end.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.le.i.i.i, %if.end.i.i ], [ %190, %err_key_info_get.i.i.i ], [ %call7.i.i.i.i.i, %list_add_tail.exit.i.i.i ], [ %call7.i.i.i.i.i, %land.lhs.true.i22.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.i_crit_edge ], [ %call7.i.i.i.i.i, %if.end24.i.i.i.mlxsw_sp_acl_tcam_vregion_get.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vregion_elusage.i.i) #14
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlxsw_sp_acl_tcam_vregion_get.exit.i.if.then9.i_crit_edge, label %if.end11.i

mlxsw_sp_acl_tcam_vregion_get.exit.i.if.then9.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9.i

if.then9.i:                                       ; preds = %mlxsw_sp_acl_tcam_vregion_get.exit.i.if.then9.i_crit_edge, %mlxsw_sp_acl_tcam_vregion_get.exit.thread.i
  %retval.0.i136.i = phi ptr [ %retval.0.i.ph.i, %mlxsw_sp_acl_tcam_vregion_get.exit.thread.i ], [ %retval.0.i.i, %mlxsw_sp_acl_tcam_vregion_get.exit.i.if.then9.i_crit_edge ]
  %191 = ptrtoint ptr %retval.0.i136.i to i32
  br label %err_vregion_get.i

if.end11.i:                                       ; preds = %mlxsw_sp_acl_tcam_vregion_get.exit.i
  %vregion12.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 7
  %192 = ptrtoint ptr %vregion12.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %retval.0.i.i, ptr %vregion12.i, align 4
  %ht_node.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 3
  %193 = call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i.i.i.i.i = and i32 %193, -16384
  %194 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %196, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !189
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i.i55 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i.i55, label %if.end11.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i95.i

if.end11.i.rcu_read_lock.exit.i.i.i_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i95.i:                          ; preds = %if.end11.i
  %call1.i.i.i93.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i93.i)
  %tobool.not.i.i.i94.i = icmp eq i32 %call1.i.i.i93.i, 0
  br i1 %tobool.not.i.i.i94.i, label %land.lhs.true.i.i.i95.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i95.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i95.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i56

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i56:                                ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #14
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i56, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i95.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end11.i.rcu_read_lock.exit.i.i.i_crit_edge
  %197 = ptrtoint ptr %vchunk_ht to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile ptr, ptr %vchunk_ht, align 4
  %call.i.i96.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %vchunk_ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96.i)
  %tobool.not.i.i97.i = icmp eq i32 %call.i.i96.i, 0
  br i1 %tobool.not.i.i97.i, label %lor.lhs.false.i.i.i59, label %rcu_read_lock.exit.i.i.i.do.end12.i.i.i63_crit_edge

rcu_read_lock.exit.i.i.i.do.end12.i.i.i63_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i63

lor.lhs.false.i.i.i59:                            ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i57 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i57)
  %tobool6.not.i.i.i58 = icmp eq i32 %call5.i.i.i57, 0
  br i1 %tobool6.not.i.i.i58, label %land.lhs.true.i.i99.i, label %lor.lhs.false.i.i.i59.do.end12.i.i.i63_crit_edge

lor.lhs.false.i.i.i59.do.end12.i.i.i63_crit_edge: ; preds = %lor.lhs.false.i.i.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i63

land.lhs.true.i.i99.i:                            ; preds = %lor.lhs.false.i.i.i59
  %call7.i.i98.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i98.i)
  %tobool8.not.i.i.i60 = icmp eq i32 %call7.i.i98.i, 0
  br i1 %tobool8.not.i.i.i60, label %land.lhs.true.i.i99.i.do.end12.i.i.i63_crit_edge, label %land.lhs.true9.i.i.i61

land.lhs.true.i.i99.i.do.end12.i.i.i63_crit_edge: ; preds = %land.lhs.true.i.i99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i63

land.lhs.true9.i.i.i61:                           ; preds = %land.lhs.true.i.i99.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true9.i.i.i61.do.end12.i.i.i63_crit_edge, label %if.then.i.i100.i

land.lhs.true9.i.i.i61.do.end12.i.i.i63_crit_edge: ; preds = %land.lhs.true9.i.i.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i63

if.then.i.i100.i:                                 ; preds = %land.lhs.true9.i.i.i61
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 715, ptr noundef nonnull @.str.22) #14
  br label %do.end12.i.i.i63

do.end12.i.i.i63:                                 ; preds = %if.then.i.i100.i, %land.lhs.true9.i.i.i61.do.end12.i.i.i63_crit_edge, %land.lhs.true.i.i99.i.do.end12.i.i.i63_crit_edge, %lor.lhs.false.i.i.i59.do.end12.i.i.i63_crit_edge, %rcu_read_lock.exit.i.i.i.do.end12.i.i.i63_crit_edge
  %199 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i101.i = zext i16 %200 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i101.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %ht_node.i, i32 %idx.neg.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 28
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %198, i32 0, i32 2
  %201 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %202, -559038733
  %203 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %204, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i.i, i32 14) #14
  %sub39.i.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #14
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #14
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #14
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #14
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #14
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #14
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %205 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %198, align 128
  %sub.i.i.i.i.i102.i = add i32 %206, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i102.i
  %nest.i.i.i.i62 = getelementptr inbounds %struct.bucket_table, ptr %198, i32 0, i32 1
  %207 = ptrtoint ptr %nest.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %nest.i.i.i.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.not.i4.i.i.i = icmp eq i32 %208, 0
  br i1 %tobool.not.i4.i.i.i, label %cond.false.i7.i.i.i, label %cond.true.i6.i.i.i, !prof !188

cond.true.i6.i.i.i:                               ; preds = %do.end12.i.i.i63
  call void @__sanitizer_cov_trace_pc() #16
  %call.i5.i.i.i = call ptr @rht_bucket_nested_insert(ptr noundef %vchunk_ht, ptr noundef %198, i32 noundef %and.i3.i.i.i.i.i) #14
  br label %rht_bucket_insert.exit.i.i.i

cond.false.i7.i.i.i:                              ; preds = %do.end12.i.i.i63
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i103.i = getelementptr %struct.bucket_table, ptr %198, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_insert.exit.i.i.i

rht_bucket_insert.exit.i.i.i:                     ; preds = %cond.false.i7.i.i.i, %cond.true.i6.i.i.i
  %cond.i8.i.i.i = phi ptr [ %call.i5.i.i.i, %cond.true.i6.i.i.i ], [ %arrayidx.i.i.i103.i, %cond.false.i7.i.i.i ]
  %tobool17.not.i.i.i = icmp eq ptr %cond.i8.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge, label %if.end19.i.i.i

rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_bucket_insert.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i.i

if.end19.i.i.i:                                   ; preds = %rht_bucket_insert.exit.i.i.i
  call fastcc void @rht_lock(ptr noundef %198, ptr noundef nonnull %cond.i8.i.i.i) #14
  %future_tbl.i.i.i64 = getelementptr inbounds %struct.bucket_table, ptr %198, i32 0, i32 5
  %209 = ptrtoint ptr %future_tbl.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile ptr, ptr %future_tbl.i.i.i64, align 4
  %tobool25.not.i.i104.i = icmp eq ptr %210, null
  br i1 %tobool25.not.i.i104.i, label %if.end30.i.i.i, label %if.end19.i.i.i.slow_path.i.i.i_crit_edge, !prof !188

if.end19.i.i.i.slow_path.i.i.i_crit_edge:         ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i.i

slow_path.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, %for.end.i.i106.i.slow_path.i.i.i_crit_edge, %if.end19.i.i.i.slow_path.i.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %198, ptr noundef nonnull %cond.i8.i.i.i) #14
  %call.i10.i.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10.i.i.i, label %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i13.i.i.i

slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %slow_path.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i13.i.i.i:                          ; preds = %slow_path.i.i.i
  %call1.i11.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i)
  %tobool.not.i12.i.i.i = icmp eq i32 %call1.i11.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i, label %land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i15.i.i.i

land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i15.i.i.i:                         ; preds = %land.lhs.true.i13.i.i.i
  %.b4.i14.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i, label %land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i16.i.i.i

land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i.i

if.then.i16.i.i.i:                                ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.24) #14
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i16.i.i.i, %land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !192
  %211 = call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i.i17.i.i.i = and i32 %211, -16384
  %212 = inttoptr i32 %and.i.i.i.i.i17.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i, align 4
  %sub.i.i.i19.i.i.i = add i32 %214, -1
  store volatile i32 %sub.i.i.i19.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call29.i.i.i = call ptr @rhashtable_insert_slow(ptr noundef %vchunk_ht, ptr noundef null, ptr noundef %ht_node.i) #14
  br label %rhashtable_insert_fast.exit.i

if.end30.i.i.i:                                   ; preds = %if.end19.i.i.i
  %call.i20.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %198, i32 noundef %and.i3.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i)
  %tobool.not.i21.i.i.i = icmp eq i32 %call.i20.i.i.i, 0
  br i1 %tobool.not.i21.i.i.i, label %land.lhs.true.i23.i.i.i, label %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge:      ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i23.i.i.i:                          ; preds = %if.end30.i.i.i
  %call1.i22.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i22.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i23.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i24.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i.i

if.then.i24.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 377, ptr noundef nonnull @.str.71) #14
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i24.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %215 = ptrtoint ptr %cond.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cond.i8.i.i.i, align 4
  %217 = ptrtoint ptr %216 to i32
  %and.i.i.i.i.i = and i32 %217, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %218 = ptrtoint ptr %cond.i8.i.i.i to i32
  %or.i.i.i.i.i65 = or i32 %218, 1
  %cond.i.i.i.i.i66 = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i65, i32 %and.i.i.i.i.i
  %and.i63.i.i.i = and i32 %cond.i.i.i.i.i66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i.i)
  %tobool.i.not64.i.i.i = icmp eq i32 %and.i63.i.i.i, 0
  br i1 %tobool.i.not64.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge

rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge:     ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %219 = inttoptr i32 %cond.i.i.i.i.i66 to ptr
  br label %for.body.i.i105.i

for.body.i.i105.i:                                ; preds = %do.end147.i.i.i.for.body.i.i105.i_crit_edge, %for.body.preheader.i.i.i
  %head.066.i.i.i = phi ptr [ %221, %do.end147.i.i.i.for.body.i.i105.i_crit_edge ], [ %219, %for.body.preheader.i.i.i ]
  %elasticity.065.i.i.i = phi i32 [ %dec.i.i.i, %do.end147.i.i.i.for.body.i.i105.i_crit_edge ], [ 16, %for.body.preheader.i.i.i ]
  %dec.i.i.i = add i32 %elasticity.065.i.i.i, -1
  %call137.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %198, i32 noundef %and.i3.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i.i)
  %tobool138.not.i.i.i = icmp eq i32 %call137.i.i.i, 0
  br i1 %tobool138.not.i.i.i, label %land.lhs.true139.i.i.i, label %for.body.i.i105.i.do.end147.i.i.i_crit_edge

for.body.i.i105.i.do.end147.i.i.i_crit_edge:      ; preds = %for.body.i.i105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i.i

land.lhs.true139.i.i.i:                           ; preds = %for.body.i.i105.i
  %call140.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i.i)
  %tobool141.not.i.i.i = icmp eq i32 %call140.i.i.i, 0
  br i1 %tobool141.not.i.i.i, label %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, label %land.lhs.true142.i.i.i

land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true139.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i.i

land.lhs.true142.i.i.i:                           ; preds = %land.lhs.true139.i.i.i
  %.b2811.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.72, align 1
  br i1 %.b2811.i.i.i, label %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, label %if.then144.i.i.i

land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i.i

if.then144.i.i.i:                                 ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned.72, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 732, ptr noundef nonnull @.str.71) #14
  br label %do.end147.i.i.i

do.end147.i.i.i:                                  ; preds = %if.then144.i.i.i, %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, %for.body.i.i105.i.do.end147.i.i.i_crit_edge
  %220 = ptrtoint ptr %head.066.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %head.066.i.i.i, align 4
  %222 = ptrtoint ptr %221 to i32
  %and.i.i.i.i67 = and i32 %222, 1
  %tobool.i.not.i.i.i68 = icmp eq i32 %and.i.i.i.i67, 0
  br i1 %tobool.i.not.i.i.i68, label %do.end147.i.i.i.for.body.i.i105.i_crit_edge, label %for.end.i.i106.i

do.end147.i.i.i.for.body.i.i105.i_crit_edge:      ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i105.i

for.end.i.i106.i:                                 ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i)
  %phi.cmp.i.i.i = icmp slt i32 %dec.i.i.i, 1
  br i1 %phi.cmp.i.i.i, label %for.end.i.i106.i.slow_path.i.i.i_crit_edge, label %for.end.i.i106.i.if.end152.i.i.i_crit_edge

for.end.i.i106.i.if.end152.i.i.i_crit_edge:       ; preds = %for.end.i.i106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i.i.i

for.end.i.i106.i.slow_path.i.i.i_crit_edge:       ; preds = %for.end.i.i106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i.i

if.end152.i.i.i:                                  ; preds = %for.end.i.i106.i.if.end152.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge
  %nelems.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2, i32 8
  %call.i.i.i25.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #14
  %223 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %max_elems.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2, i32 2
  %225 = ptrtoint ptr %max_elems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %max_elems.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %226)
  %cmp.i.not.i.i107.i = icmp ult i32 %224, %226
  br i1 %cmp.i.not.i.i107.i, label %if.end162.i.i.i, label %out_unlock.i.i.i, !prof !188

if.end162.i.i.i:                                  ; preds = %if.end152.i.i.i
  %call.i.i.i27.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #14
  %227 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %229 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %198, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %230)
  %cmp.i28.i.i.i = icmp ugt i32 %228, %230
  br i1 %cmp.i28.i.i.i, label %rht_grow_above_100.exit.i.i.i, label %if.end162.i.i.i.if.end171.i.i.i_crit_edge

if.end162.i.i.i.if.end171.i.i.i_crit_edge:        ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i:                    ; preds = %if.end162.i.i.i
  %max_size.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2, i32 3, i32 4
  %231 = ptrtoint ptr %max_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %max_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not.i29.i.i.i = icmp eq i32 %232, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %232)
  %cmp4.i.i.i.i = icmp ult i32 %230, %232
  %spec.select.i.i.i.i = select i1 %tobool.not.i29.i.i.i, i1 true, i1 %cmp4.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, !prof !187

rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i.i

if.end171.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, %if.end162.i.i.i.if.end171.i.i.i_crit_edge
  %call.i30.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %198, i32 noundef %and.i3.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i.i)
  %tobool.not.i31.i.i.i = icmp eq i32 %call.i30.i.i.i, 0
  br i1 %tobool.not.i31.i.i.i, label %land.lhs.true.i34.i.i.i, label %if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge

if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge:   ; preds = %if.end171.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i.i

land.lhs.true.i34.i.i.i:                          ; preds = %if.end171.i.i.i
  %call1.i32.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i.i)
  %tobool2.not.i33.i.i.i = icmp eq i32 %call1.i32.i.i.i, 0
  br i1 %tobool2.not.i33.i.i.i, label %land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, label %land.lhs.true3.i36.i.i.i

land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i.i

land.lhs.true3.i36.i.i.i:                         ; preds = %land.lhs.true.i34.i.i.i
  %.b7.i35.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i.i, label %land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, label %if.then.i37.i.i.i

land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i.i

if.then.i37.i.i.i:                                ; preds = %land.lhs.true3.i36.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 377, ptr noundef nonnull @.str.71) #14
  br label %rht_ptr.exit42.i.i.i

rht_ptr.exit42.i.i.i:                             ; preds = %if.then.i37.i.i.i, %land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, %land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, %if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge
  %233 = ptrtoint ptr %cond.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %cond.i8.i.i.i, align 4
  %235 = ptrtoint ptr %234 to i32
  %and.i.i38.i.i.i = and i32 %235, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i.i)
  %tobool.not.i.i39.i.i.i = icmp eq i32 %and.i.i38.i.i.i, 0
  %cond.i.i41.i.i.i = select i1 %tobool.not.i.i39.i.i.i, i32 %or.i.i.i.i.i65, i32 %and.i.i38.i.i.i
  %236 = inttoptr i32 %cond.i.i41.i.i.i to ptr
  %237 = ptrtoint ptr %ht_node.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile ptr %236, ptr %ht_node.i, align 8
  %call.i.i.i.i108.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #14
  %238 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #14, !srcloc !195
  call fastcc void @rht_assign_unlock(ptr noundef %198, ptr noundef nonnull %cond.i8.i.i.i, ptr noundef %ht_node.i) #14
  %call.i.i.i44.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #14
  %239 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %241 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %198, align 128
  %div8.i.i.i.i = lshr i32 %242, 2
  %mul.i.i.i.i = mul nuw i32 %div8.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %mul.i.i.i.i)
  %cmp.i45.i.i.i = icmp ugt i32 %240, %mul.i.i.i.i
  br i1 %cmp.i45.i.i.i, label %rht_grow_above_75.exit.i.i.i, label %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge

rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge:         ; preds = %rht_ptr.exit42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i.i

rht_grow_above_75.exit.i.i.i:                     ; preds = %rht_ptr.exit42.i.i.i
  %max_size.i46.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2, i32 3, i32 4
  %243 = ptrtoint ptr %max_size.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %max_size.i46.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool.not.i47.i.i109.i = icmp eq i32 %244, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %242, i32 %244)
  %cmp4.i48.i.i.i = icmp ult i32 %242, %244
  %spec.select.i49.i.i.i = select i1 %tobool.not.i47.i.i109.i, i1 true, i1 %cmp4.i48.i.i.i
  br i1 %spec.select.i49.i.i.i, label %if.then207.i.i.i, label %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge

rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i.i

if.then207.i.i.i:                                 ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 2, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %245 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %245, ptr noundef %run_work.i.i.i) #14
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %out_unlock.i.i.i, %if.then207.i.i.i, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge, %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge, %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge
  %data.2.i.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %if.then207.i.i.i ], [ null, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge ]
  %call.i52.i.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i52.i.i.i, label %out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %land.lhs.true.i55.i.i.i

out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i.i

land.lhs.true.i55.i.i.i:                          ; preds = %out.i.i.i
  %call1.i53.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i.i)
  %tobool.not.i54.i.i.i = icmp eq i32 %call1.i53.i.i.i, 0
  br i1 %tobool.not.i54.i.i.i, label %land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %land.lhs.true2.i57.i.i.i

land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i.i

land.lhs.true2.i57.i.i.i:                         ; preds = %land.lhs.true.i55.i.i.i
  %.b4.i56.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i.i, label %land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %if.then.i58.i.i.i

land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i.i

if.then.i58.i.i.i:                                ; preds = %land.lhs.true2.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.24) #14
  br label %rcu_read_unlock.exit62.i.i.i

rcu_read_unlock.exit62.i.i.i:                     ; preds = %if.then.i58.i.i.i, %land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, %land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, %out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !192
  %246 = call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i.i59.i.i.i = and i32 %246, -16384
  %247 = inttoptr i32 %and.i.i.i.i.i59.i.i.i to ptr
  %preempt_count.i.i.i.i60.i.i.i = getelementptr inbounds %struct.thread_info, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i.i, align 4
  %sub.i.i.i61.i.i.i = add i32 %249, -1
  store volatile i32 %sub.i.i.i61.i.i.i, ptr %preempt_count.i.i.i.i60.i.i.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %rhashtable_insert_fast.exit.i

out_unlock.i.i.i:                                 ; preds = %if.end152.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @rht_unlock(ptr noundef %198, ptr noundef nonnull %cond.i8.i.i.i) #14
  br label %out.i.i.i

rhashtable_insert_fast.exit.i:                    ; preds = %rcu_read_unlock.exit62.i.i.i, %rcu_read_unlock.exit.i.i.i
  %retval.0.i.i.i = phi ptr [ %call29.i.i.i, %rcu_read_unlock.exit.i.i.i ], [ %data.2.i.i.i, %rcu_read_unlock.exit62.i.i.i ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  %250 = ptrtoint ptr %retval.0.i.i.i to i32
  %cmp.i110.i = icmp eq ptr %retval.0.i.i.i, null
  %cond.i.i69 = select i1 %cmp.i110.i, i32 0, i32 -17
  %retval.0.i111.i = select i1 %cmp.i.i.i, i32 %250, i32 %cond.i.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i111.i)
  %tobool14.not.i = icmp eq i32 %retval.0.i111.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %rhashtable_insert_fast.exit.i.err_rhashtable_insert.i_crit_edge

rhashtable_insert_fast.exit.i.err_rhashtable_insert.i_crit_edge: ; preds = %rhashtable_insert_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_rhashtable_insert.i

if.end16.i:                                       ; preds = %rhashtable_insert_fast.exit.i
  call void @mutex_lock_nested(ptr noundef %retval.0.i.i, i32 noundef 0) #14
  %251 = ptrtoint ptr %vregion12.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %vregion12.i, align 4
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %region.i, align 4
  %acl_tcam_ops.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %255 = ptrtoint ptr %acl_tcam_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %acl_tcam_ops.i.i, align 4
  %chunk_priv_size.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %256, i32 0, i32 10
  %257 = ptrtoint ptr %chunk_priv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %chunk_priv_size.i.i, align 4
  %add.i.i = add i32 %258, 8
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #17
  %tobool.not.i119.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i119.i, label %mlxsw_sp_acl_tcam_chunk_create.exit.thread.i, label %mlxsw_sp_acl_tcam_chunk_create.exit.i

mlxsw_sp_acl_tcam_chunk_create.exit.thread.i:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %259 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr inttoptr (i32 -12 to ptr), ptr %call7.i.i.i41, align 8
  br label %if.then21.i

mlxsw_sp_acl_tcam_chunk_create.exit.i:            ; preds = %if.end16.i
  %260 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %call7.i.i.i41, ptr %call9.i.i.i.i, align 128
  %region3.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %call9.i.i.i.i, i32 0, i32 1
  %261 = ptrtoint ptr %region3.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %254, ptr %region3.i.i, align 4
  %chunk_init.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %256, i32 0, i32 11
  %262 = ptrtoint ptr %chunk_init.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %chunk_init.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %254, i32 0, i32 8
  %priv4.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %call9.i.i.i.i, i32 0, i32 2
  %264 = ptrtoint ptr %priority5.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %priority5.i, align 4
  call void %263(ptr noundef %priv.i.i, ptr noundef %priv4.i.i, i32 noundef %265) #14
  %266 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %call9.i.i.i.i, ptr %call7.i.i.i41, align 8
  %cmp.i122.i = icmp ugt ptr %call9.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122.i, label %mlxsw_sp_acl_tcam_chunk_create.exit.i.if.then21.i_crit_edge, label %if.end25.i

mlxsw_sp_acl_tcam_chunk_create.exit.i.if.then21.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_chunk_create.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i

if.then21.i:                                      ; preds = %mlxsw_sp_acl_tcam_chunk_create.exit.i.if.then21.i_crit_edge, %mlxsw_sp_acl_tcam_chunk_create.exit.thread.i
  call void @mutex_unlock(ptr noundef %retval.0.i.i) #14
  %267 = ptrtoint ptr %call7.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %call7.i.i.i41, align 8
  %269 = ptrtoint ptr %268 to i32
  call fastcc void @rhashtable_remove_fast(ptr noundef %vchunk_ht, ptr noundef %ht_node.i, [7 x i32] [i32 4, i32 1835024, i32 0, i32 256, i32 0, i32 0, i32 0]) #14
  br label %err_rhashtable_insert.i

if.end25.i:                                       ; preds = %mlxsw_sp_acl_tcam_chunk_create.exit.i
  %current_vchunk.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %retval.0.i.i, i32 0, i32 9, i32 1, i32 2
  %270 = ptrtoint ptr %current_vchunk.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr null, ptr %current_vchunk.i.i, align 4
  %vchunk_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %retval.0.i.i, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end25.i
  %pos.0.in.i = phi ptr [ %vchunk_list.i, %if.end25.i ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %271 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i123.not.i = icmp eq ptr %pos.0.i, %vchunk_list.i
  br i1 %cmp.i123.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %priority29.i = getelementptr i8, ptr %pos.0.i, i32 20
  %272 = ptrtoint ptr %priority29.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %priority29.i, align 4
  %cmp30.i = icmp ugt i32 %273, %priority
  br i1 %cmp30.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %pos.0.lcssa.i = phi ptr [ %pos.0.i, %for.body.i.for.end.i_crit_edge ], [ %vchunk_list.i, %for.cond.i.for.end.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 2
  %prev.i124.i = getelementptr inbounds %struct.list_head, ptr %pos.0.lcssa.i, i32 0, i32 1
  %274 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %prev.i124.i, align 4
  %call.i.i125.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %275, ptr noundef %pos.0.lcssa.i) #14
  br i1 %call.i.i125.i, label %if.end.i.i126.i, label %for.end.i.list_add_tail.exit.i_crit_edge

for.end.i.list_add_tail.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i126.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %276 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %list.i, ptr %prev.i124.i, align 4
  %277 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %pos.0.lcssa.i, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %call7.i.i.i41, i32 0, i32 2, i32 1
  %278 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %275, ptr %prev3.i.i.i, align 4
  %279 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %279)
  store volatile ptr %list.i, ptr %275, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i126.i, %for.end.i.list_add_tail.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %retval.0.i.i) #14
  %280 = ptrtoint ptr %vregion_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load volatile ptr, ptr %vregion_list.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %281, %vregion_list.i.i.i
  br i1 %cmp.i.not.i.i, label %list_add_tail.exit.i.cleanup_crit_edge, label %if.end.i129.i

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i129.i:                                    ; preds = %list_add_tail.exit.i
  %vchunk_list.i.i127.i = getelementptr i8, ptr %281, i32 16
  %282 = ptrtoint ptr %vchunk_list.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load volatile ptr, ptr %vchunk_list.i.i127.i, align 4
  %cmp.i.not.i.i128.i = icmp eq ptr %283, %vchunk_list.i.i127.i
  br i1 %cmp.i.not.i.i128.i, label %if.end.i129.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge, label %if.end.i.i130.i

if.end.i129.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge: ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i

if.end.i.i130.i:                                  ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #16
  %priority.i.i.i = getelementptr i8, ptr %283, i32 20
  %284 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %priority.i.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i:          ; preds = %if.end.i.i130.i, %if.end.i129.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge
  %retval.0.i.i131.i = phi i32 [ %285, %if.end.i.i130.i ], [ 0, %if.end.i129.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge ]
  %p_min_prio.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 8
  %286 = ptrtoint ptr %p_min_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %p_min_prio.i.i, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %retval.0.i.i131.i, ptr %287, align 4
  %prev.i132.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 1, i32 1
  %289 = ptrtoint ptr %prev.i132.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %prev.i132.i, align 4
  %vchunk_list.i13.i.i = getelementptr i8, ptr %290, i32 16
  %291 = ptrtoint ptr %vchunk_list.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile ptr, ptr %vchunk_list.i13.i.i, align 4
  %cmp.i.not.i14.i.i = icmp eq ptr %292, %vchunk_list.i13.i.i
  br i1 %cmp.i.not.i14.i.i, label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i_crit_edge, label %if.end.i16.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i

if.end.i16.i.i:                                   ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %290, i32 20
  %293 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %prev.i.i.i, align 4
  %priority.i15.i.i = getelementptr i8, ptr %294, i32 20
  %295 = ptrtoint ptr %priority.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %priority.i15.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i

mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i:      ; preds = %if.end.i16.i.i, %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i_crit_edge
  %retval.0.i17.i.i = phi i32 [ %296, %if.end.i16.i.i ], [ 0, %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i_crit_edge ]
  %p_max_prio.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %vgroup, i32 0, i32 9
  %297 = ptrtoint ptr %p_max_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %p_max_prio.i.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %retval.0.i17.i.i, ptr %298, align 4
  br label %cleanup

err_rhashtable_insert.i:                          ; preds = %if.then21.i, %rhashtable_insert_fast.exit.i.err_rhashtable_insert.i_crit_edge
  %err.0.i = phi i32 [ %retval.0.i111.i, %rhashtable_insert_fast.exit.i.err_rhashtable_insert.i_crit_edge ], [ %269, %if.then21.i ]
  call fastcc void @mlxsw_sp_acl_tcam_vregion_put(ptr noundef %mlxsw_sp, ptr noundef %retval.0.i.i) #14
  br label %err_vregion_get.i

err_vregion_get.i:                                ; preds = %err_rhashtable_insert.i, %if.then9.i
  %err.1.i = phi i32 [ %191, %if.then9.i ], [ %err.0.i, %err_rhashtable_insert.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i41) #14
  %300 = inttoptr i32 %err.1.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_vregion_get.i, %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i, %list_add_tail.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end26, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %cond.i.i, %if.end26 ], [ %300, %err_vregion_get.i ], [ inttoptr (i32 -22 to ptr), %if.end27.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ], [ %call7.i.i.i41, %list_add_tail.exit.i.cleanup_crit_edge ], [ %call7.i.i.i41, %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_tcam_vchunk_put(ptr noundef %mlxsw_sp, ptr noundef %vchunk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk, i32 0, i32 8
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %vregion1.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk, i32 0, i32 7
  %2 = ptrtoint ptr %vregion1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vregion1.i, align 4
  %vgroup2.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk, i32 0, i32 6
  %4 = ptrtoint ptr %vgroup2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vgroup2.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #14
  %current_vchunk.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %3, i32 0, i32 9, i32 1, i32 2
  %6 = ptrtoint ptr %current_vchunk.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %current_vchunk.i.i, align 4
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.list_del.exit.i_crit_edge

if.end.list_del.exit.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %chunk2.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk, i32 0, i32 1
  %15 = ptrtoint ptr %chunk2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chunk2.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then.i

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %acl_tcam_ops.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %17 = ptrtoint ptr %acl_tcam_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %acl_tcam_ops.i.i, align 4
  %chunk_fini.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %chunk_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chunk_fini.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %16, i32 0, i32 2
  tail call void %20(ptr noundef %priv.i.i) #14
  tail call void @kfree(ptr noundef nonnull %16) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %vchunk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vchunk, align 4
  %acl_tcam_ops.i25.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %23 = ptrtoint ptr %acl_tcam_ops.i25.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %acl_tcam_ops.i25.i, align 4
  %chunk_fini.i26.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %chunk_fini.i26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chunk_fini.i26.i, align 4
  %priv.i27.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %22, i32 0, i32 2
  tail call void %26(ptr noundef %priv.i27.i) #14
  tail call void @kfree(ptr noundef %22) #14
  tail call void @mutex_unlock(ptr noundef %3) #14
  %vchunk_ht.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %5, i32 0, i32 2
  %ht_node.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk, i32 0, i32 3
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %vchunk_ht.i, ptr noundef %ht_node.i, [7 x i32] [i32 4, i32 1835024, i32 0, i32 256, i32 0, i32 0, i32 0]) #14
  %27 = ptrtoint ptr %vregion1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vregion1.i, align 4
  tail call fastcc void @mlxsw_sp_acl_tcam_vregion_put(ptr noundef %mlxsw_sp, ptr noundef %28) #14
  tail call void @kfree(ptr noundef %vchunk) #14
  %vregion_list.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %vregion_list.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %vregion_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %vregion_list.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.return_crit_edge, label %if.end.i.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i.i:                                       ; preds = %if.end.i
  %vchunk_list.i.i.i = getelementptr i8, ptr %30, i32 16
  %31 = ptrtoint ptr %vchunk_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %vchunk_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %32, %vchunk_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end.i.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge, label %if.end.i.i28.i

if.end.i.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i

if.end.i.i28.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %priority.i.i.i = getelementptr i8, ptr %32, i32 20
  %33 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %priority.i.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i:          ; preds = %if.end.i.i28.i, %if.end.i.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %34, %if.end.i.i28.i ], [ 0, %if.end.i.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge ]
  %p_min_prio.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %5, i32 0, i32 8
  %35 = ptrtoint ptr %p_min_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p_min_prio.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i.i.i, ptr %36, align 4
  %prev.i29.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %5, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i29.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i29.i, align 4
  %vchunk_list.i13.i.i = getelementptr i8, ptr %39, i32 16
  %40 = ptrtoint ptr %vchunk_list.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %vchunk_list.i13.i.i, align 4
  %cmp.i.not.i14.i.i = icmp eq ptr %41, %vchunk_list.i13.i.i
  br i1 %cmp.i.not.i14.i.i, label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i_crit_edge, label %if.end.i16.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i

if.end.i16.i.i:                                   ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i30.i = getelementptr i8, ptr %39, i32 20
  %42 = ptrtoint ptr %prev.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i30.i, align 4
  %priority.i15.i.i = getelementptr i8, ptr %43, i32 20
  %44 = ptrtoint ptr %priority.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %priority.i15.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i

mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i:      ; preds = %if.end.i16.i.i, %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i_crit_edge
  %retval.0.i17.i.i = phi i32 [ %45, %if.end.i16.i.i ], [ 0, %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i.mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i_crit_edge ]
  %p_max_prio.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %5, i32 0, i32 9
  %46 = ptrtoint ptr %p_max_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p_max_prio.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i17.i.i, ptr %47, align 4
  br label %return

return:                                           ; preds = %mlxsw_sp_acl_tcam_vregion_max_prio.exit.i.i, %if.end.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_afk_key_info_subset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1076, ptr noundef nonnull @.str.22) #14
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
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !187

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
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
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #14
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
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
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #14
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
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !188

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 377, ptr noundef nonnull @.str.71) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.75, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.75, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1032, ptr noundef nonnull @.str.71) #14
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #14
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.77, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.77, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1004, ptr noundef nonnull @.str.71) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #14, !srcloc !197
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !187

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #14
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.73, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned.73, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1085, ptr noundef nonnull @.str.22) #14
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.24) #14
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !192
  %46 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_tcam_vregion_put(ptr noundef %mlxsw_sp, ptr noundef %vregion) unnamed_addr #2 align 64 {
entry:
  %ptar_pl.i.i27.i = alloca [48 x i8], align 1
  %pacl_pl.i.i28.i = alloca [112 x i8], align 1
  %ptar_pl.i.i.i = alloca [48 x i8], align 1
  %pacl_pl.i.i.i = alloca [112 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 11
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %vgroup1.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 8
  %2 = ptrtoint ptr %vgroup1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vgroup1.i, align 4
  %tcam2.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 7
  %4 = ptrtoint ptr %tcam2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcam2.i, align 4
  %vregion_rehash_enabled.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %vregion_rehash_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vregion_rehash_enabled.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %acl_tcam_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %8 = ptrtoint ptr %acl_tcam_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acl_tcam_ops.i, align 4
  %region_rehash_hints_get.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %region_rehash_hints_get.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %region_rehash_hints_get.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %lock.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %tlist.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tlist.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %tlist.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tlist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %tlist.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %tlist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  %rehash.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 9
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rehash.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %list.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.list_del.exit.i.i_crit_edge

if.end.i.list_del.exit.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.list_del.exit.i.i_crit_edge
  %26 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i.i24.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i24.i, align 4
  %region2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 2
  %28 = ptrtoint ptr %region2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %region2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %list_del.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

list_del.exit.i.i.if.end.i.i_crit_edge:           ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %list_del.exit.i.i
  %group1.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %group1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group1.i.i.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %31, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i.i, i32 noundef 0) #14
  %list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %29, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.mlxsw_sp_acl_tcam_group_region_detach.exit.i.i_crit_edge

if.then.i.i.mlxsw_sp_acl_tcam_group_region_detach.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_group_region_detach.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %29, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %mlxsw_sp_acl_tcam_group_region_detach.exit.i.i

mlxsw_sp_acl_tcam_group_region_detach.exit.i.i:   ; preds = %if.end.i.i.i.i.i, %if.then.i.i.mlxsw_sp_acl_tcam_group_region_detach.exit.i.i_crit_edge
  %38 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i, align 4
  %prev.i.i6.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %29, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i6.i.i, align 4
  %region_count.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %31, i32 0, i32 4
  %40 = ptrtoint ptr %region_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %region_count.i.i.i, align 4
  %dec.i.i.i = add i32 %41, -1
  store i32 %dec.i.i.i, ptr %region_count.i.i.i, align 4
  %call.i.i25.i = tail call fastcc i32 @mlxsw_sp_acl_tcam_group_update(ptr noundef %mlxsw_sp, ptr noundef %31) #14
  tail call void @mutex_unlock(ptr noundef %lock.i.i.i) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %mlxsw_sp_acl_tcam_group_region_detach.exit.i.i, %list_del.exit.i.i.if.end.i.i_crit_edge
  %region.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 1
  %42 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %region.i.i, align 4
  %group1.i7.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %group1.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %group1.i7.i.i, align 4
  %lock.i8.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %45, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i8.i.i, i32 noundef 0) #14
  %list.i9.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %43, i32 0, i32 2
  %call.i.i.i10.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i9.i.i) #14
  br i1 %call.i.i.i10.i.i, label %if.end.i.i.i13.i.i, label %if.end.i.i.mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i_crit_edge

if.end.i.i.mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i

if.end.i.i.i13.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i11.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %43, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %prev.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i11.i.i, align 4
  %48 = ptrtoint ptr %list.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %list.i9.i.i, align 4
  %prev1.i.i.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i12.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i

mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i:   ; preds = %if.end.i.i.i13.i.i, %if.end.i.i.mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i_crit_edge
  %52 = ptrtoint ptr %list.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i9.i.i, align 4
  %prev.i.i14.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %43, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %prev.i.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i14.i.i, align 4
  %region_count.i15.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %45, i32 0, i32 4
  %54 = ptrtoint ptr %region_count.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %region_count.i15.i.i, align 4
  %dec.i16.i.i = add i32 %55, -1
  store i32 %dec.i16.i.i, ptr %region_count.i15.i.i, align 4
  %call.i17.i.i = tail call fastcc i32 @mlxsw_sp_acl_tcam_group_update(ptr noundef %mlxsw_sp, ptr noundef %45) #14
  tail call void @mutex_unlock(ptr noundef %lock.i8.i.i) #14
  %56 = ptrtoint ptr %region2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %region2.i.i, align 4
  %tobool5.not.i = icmp eq ptr %57, null
  br i1 %tobool5.not.i, label %mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i.mlxsw_sp_acl_tcam_vregion_destroy.exit_crit_edge, label %if.then6.i

mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i.mlxsw_sp_acl_tcam_vregion_destroy.exit_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_destroy.exit

if.then6.i:                                       ; preds = %mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %acl_tcam_ops.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %58 = ptrtoint ptr %acl_tcam_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %acl_tcam_ops.i.i, align 4
  %region_fini.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %region_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %region_fini.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %57, i32 0, i32 8
  tail call void %61(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pacl_pl.i.i.i) #14
  %62 = call ptr @memset(ptr %pacl_pl.i.i.i, i32 255, i32 112)
  %id.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %57, i32 0, i32 4
  %63 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %id.i.i.i, align 4
  %tcam_region_info.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %57, i32 0, i32 5
  call fastcc void @mlxsw_reg_pacl_pack(ptr noundef nonnull %pacl_pl.i.i.i, i16 noundef zeroext %64, i1 noundef zeroext false, ptr noundef %tcam_region_info.i.i.i) #14
  %core.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %65 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %core.i.i.i, align 4
  %call.i.i26.i = call i32 @mlxsw_reg_write(ptr noundef %66, ptr noundef nonnull @mlxsw_reg_pacl, ptr noundef nonnull %pacl_pl.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pacl_pl.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptar_pl.i.i.i) #14
  %67 = call ptr @memset(ptr %ptar_pl.i.i.i, i32 255, i32 48)
  %key_type.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %57, i32 0, i32 3
  %68 = ptrtoint ptr %key_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %key_type.i.i.i, align 4
  %70 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %id.i.i.i, align 4
  call fastcc void @mlxsw_reg_ptar_pack(ptr noundef nonnull %ptar_pl.i.i.i, i32 noundef 2, i32 noundef %69, i16 noundef zeroext 0, i16 noundef zeroext %71, ptr noundef %tcam_region_info.i.i.i) #14
  %72 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %core.i.i.i, align 4
  %call.i12.i.i = call i32 @mlxsw_reg_write(ptr noundef %73, ptr noundef nonnull @mlxsw_reg_ptar, ptr noundef nonnull %ptar_pl.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i.i.i) #14
  %group.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %57, i32 0, i32 1
  %74 = ptrtoint ptr %group.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %group.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %id.i.i.i, align 4
  %conv.i.i.i = zext i16 %79 to i32
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %81, i32 %div2.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %82 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %83, %neg.i.i.i.i
  store i32 %and.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %57) #14
  br label %mlxsw_sp_acl_tcam_vregion_destroy.exit

mlxsw_sp_acl_tcam_vregion_destroy.exit:           ; preds = %if.then6.i, %mlxsw_sp_acl_tcam_vgroup_vregion_detach.exit.i.mlxsw_sp_acl_tcam_vregion_destroy.exit_crit_edge
  %84 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %region.i.i, align 4
  %acl_tcam_ops.i29.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %86 = ptrtoint ptr %acl_tcam_ops.i29.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %acl_tcam_ops.i29.i, align 4
  %region_fini.i30.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %region_fini.i30.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %region_fini.i30.i, align 4
  %priv.i31.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %85, i32 0, i32 8
  call void %89(ptr noundef %mlxsw_sp, ptr noundef %priv.i31.i) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pacl_pl.i.i28.i) #14
  %90 = call ptr @memset(ptr %pacl_pl.i.i28.i, i32 255, i32 112)
  %id.i.i32.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %85, i32 0, i32 4
  %91 = ptrtoint ptr %id.i.i32.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %id.i.i32.i, align 4
  %tcam_region_info.i.i33.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %85, i32 0, i32 5
  call fastcc void @mlxsw_reg_pacl_pack(ptr noundef nonnull %pacl_pl.i.i28.i, i16 noundef zeroext %92, i1 noundef zeroext false, ptr noundef %tcam_region_info.i.i33.i) #14
  %core.i.i34.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %93 = ptrtoint ptr %core.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core.i.i34.i, align 4
  %call.i.i35.i = call i32 @mlxsw_reg_write(ptr noundef %94, ptr noundef nonnull @mlxsw_reg_pacl, ptr noundef nonnull %pacl_pl.i.i28.i) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pacl_pl.i.i28.i) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptar_pl.i.i27.i) #14
  %95 = call ptr @memset(ptr %ptar_pl.i.i27.i, i32 255, i32 48)
  %key_type.i.i36.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %85, i32 0, i32 3
  %96 = ptrtoint ptr %key_type.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %key_type.i.i36.i, align 4
  %98 = ptrtoint ptr %id.i.i32.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %id.i.i32.i, align 4
  call fastcc void @mlxsw_reg_ptar_pack(ptr noundef nonnull %ptar_pl.i.i27.i, i32 noundef 2, i32 noundef %97, i16 noundef zeroext 0, i16 noundef zeroext %99, ptr noundef %tcam_region_info.i.i33.i) #14
  %100 = ptrtoint ptr %core.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %core.i.i34.i, align 4
  %call.i12.i37.i = call i32 @mlxsw_reg_write(ptr noundef %101, ptr noundef nonnull @mlxsw_reg_ptar, ptr noundef nonnull %ptar_pl.i.i27.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i.i27.i) #14
  %group.i38.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %85, i32 0, i32 1
  %102 = ptrtoint ptr %group.i38.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %group.i38.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %106 = ptrtoint ptr %id.i.i32.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %id.i.i32.i, align 4
  %conv.i.i39.i = zext i16 %107 to i32
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %105, align 4
  %rem.i.i.i40.i = and i32 %conv.i.i39.i, 31
  %shl.i.i.i41.i = shl nuw i32 1, %rem.i.i.i40.i
  %div2.i.i.i42.i = lshr i32 %conv.i.i39.i, 5
  %add.ptr.i.i.i43.i = getelementptr i32, ptr %109, i32 %div2.i.i.i42.i
  %neg.i.i.i44.i = xor i32 %shl.i.i.i41.i, -1
  %110 = ptrtoint ptr %add.ptr.i.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr.i.i.i43.i, align 4
  %and.i.i.i45.i = and i32 %111, %neg.i.i.i44.i
  store i32 %and.i.i.i45.i, ptr %add.ptr.i.i.i43.i, align 4
  call void @kfree(ptr noundef %85) #14
  %key_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 6
  %112 = ptrtoint ptr %key_info.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %key_info.i, align 4
  call void @mlxsw_afk_key_info_put(ptr noundef %113) #14
  call void @mutex_destroy(ptr noundef %vregion) #14
  call void @kfree(ptr noundef %vregion) #14
  br label %return

return:                                           ; preds = %mlxsw_sp_acl_tcam_vregion_destroy.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_afk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afk_key_info_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxsw_sp_acl_tcam_region_create(ptr noundef %mlxsw_sp, ptr noundef %tcam, ptr noundef %vregion, ptr noundef %hints_priv) unnamed_addr #2 align 64 {
entry:
  %ptar_pl.i70 = alloca [48 x i8], align 1
  %pacl_pl.i = alloca [112 x i8], align 1
  %ptar_pl.i = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %0 = ptrtoint ptr %acl_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_tcam_ops, align 4
  %region_priv_size = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %region_priv_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %region_priv_size, align 4
  %add = add i32 %3, 48
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call9.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mlxsw_sp, ptr %mlxsw_sp2, align 4
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vregion, ptr %call9.i.i, align 128
  %key_info = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 6
  %6 = ptrtoint ptr %key_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %key_info, align 4
  %key_info4 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call9.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %key_info4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %key_info4, align 8
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call9.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %tcam to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcam, align 4
  %max_regions.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 1
  %11 = ptrtoint ptr %max_regions.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_regions.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %10, i32 noundef %12) #14
  %conv1.i = and i32 %call.i, 65535
  %13 = ptrtoint ptr %max_regions.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_regions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %14)
  %cmp.i = icmp ult i32 %conv1.i, %14
  br i1 %cmp.i, label %if.end8, label %if.end.err_region_id_get_crit_edge

if.end.err_region_id_get_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_region_id_get

if.end8:                                          ; preds = %if.end
  %conv.i = trunc i32 %call.i to i16
  %15 = ptrtoint ptr %tcam to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcam, align 4
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv1.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %16, i32 %div2.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %18, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %id, align 4
  %region_associate = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %region_associate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %region_associate, align 4
  %call9 = tail call i32 %21(ptr noundef %mlxsw_sp, ptr noundef nonnull %call9.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_tcam_region_associate_crit_edge

if.end8.err_tcam_region_associate_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_tcam_region_associate

if.end12:                                         ; preds = %if.end8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %key_type13 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call9.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %key_type13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %key_type13, align 16
  %25 = ptrtoint ptr %key_info4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %key_info4, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptar_pl.i) #14
  %27 = call ptr @memset(ptr %ptar_pl.i, i32 255, i32 48)
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %id, align 4
  %tcam_region_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call9.i.i, i32 0, i32 5
  call fastcc void @mlxsw_reg_ptar_pack(ptr noundef nonnull %ptar_pl.i, i32 noundef 0, i32 noundef %23, i16 noundef zeroext 16, i16 noundef zeroext %29, ptr noundef %tcam_region_info.i) #14
  %call.i65 = tail call i32 @mlxsw_afk_key_info_blocks_count_get(ptr noundef %26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp28.not.i = icmp eq i32 %call.i65, 0
  br i1 %cmp28.not.i, label %if.end12.for.end.i_crit_edge, label %if.end12.for.body.i_crit_edge

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

if.end12.for.end.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end12.for.body.i_crit_edge ]
  %call3.i = tail call zeroext i16 @mlxsw_afk_key_info_block_encoding_get(ptr noundef %26, i32 noundef %i.029.i) #14
  %conv.i.i.i.i.i = and i32 %i.029.i, 65535
  %add.i.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i.i, 32
  %conv8.i.i.i.i = trunc i16 %call3.i to i8
  %arrayidx.i.i.i.i = getelementptr i8, ptr %ptar_pl.i, i32 %add.i.i.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv8.i.i.i.i, ptr %arrayidx.i.i.i.i, align 1
  %inc.i = add nuw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i65
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end12.for.end.i_crit_edge
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %31 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core.i, align 4
  %call6.i = call i32 @mlxsw_reg_write(ptr noundef %32, ptr noundef nonnull @mlxsw_reg_ptar, ptr noundef nonnull %ptar_pl.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end17, label %mlxsw_sp_acl_tcam_region_alloc.exit

mlxsw_sp_acl_tcam_region_alloc.exit:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i) #14
  br label %err_tcam_region_associate

if.end17:                                         ; preds = %for.end.i
  %arrayidx.i.i.i26.i = getelementptr inbounds i8, ptr %ptar_pl.i, i32 16
  %33 = call ptr @memcpy(ptr %tcam_region_info.i, ptr %arrayidx.i.i.i26.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pacl_pl.i) #14
  %34 = call ptr @memset(ptr %pacl_pl.i, i32 255, i32 112)
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %id, align 4
  call fastcc void @mlxsw_reg_pacl_pack(ptr noundef nonnull %pacl_pl.i, i16 noundef zeroext %36, i1 noundef zeroext true, ptr noundef %tcam_region_info.i) #14
  %37 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core.i, align 4
  %call.i69 = call i32 @mlxsw_reg_write(ptr noundef %38, ptr noundef nonnull @mlxsw_reg_pacl, ptr noundef nonnull %pacl_pl.i) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pacl_pl.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool19.not = icmp eq i32 %call.i69, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_tcam_region_enable_crit_edge

if.end17.err_tcam_region_enable_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_tcam_region_enable

if.end21:                                         ; preds = %if.end17
  %region_init = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %region_init to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %region_init, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call9.i.i, i32 0, i32 8
  %priv22 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %tcam, i32 0, i32 8
  %call24 = call i32 %40(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr noundef %priv22, ptr noundef nonnull %call9.i.i, ptr noundef %hints_priv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end21.cleanup_crit_edge, label %err_tcam_region_init

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_tcam_region_init:                             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @mlxsw_sp_acl_tcam_region_disable(ptr noundef %mlxsw_sp, ptr noundef nonnull %call9.i.i)
  br label %err_tcam_region_enable

err_tcam_region_enable:                           ; preds = %err_tcam_region_init, %if.end17.err_tcam_region_enable_crit_edge
  %err.0 = phi i32 [ %call.i69, %if.end17.err_tcam_region_enable_crit_edge ], [ %call24, %err_tcam_region_init ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptar_pl.i70) #14
  %41 = call ptr @memset(ptr %ptar_pl.i70, i32 255, i32 48)
  %42 = ptrtoint ptr %key_type13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %key_type13, align 16
  %44 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %id, align 4
  call fastcc void @mlxsw_reg_ptar_pack(ptr noundef nonnull %ptar_pl.i70, i32 noundef 2, i32 noundef %43, i16 noundef zeroext 0, i16 noundef zeroext %45, ptr noundef %tcam_region_info.i) #14
  %46 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core.i, align 4
  %call.i75 = call i32 @mlxsw_reg_write(ptr noundef %47, ptr noundef nonnull @mlxsw_reg_ptar, ptr noundef nonnull %ptar_pl.i70) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i70) #14
  br label %err_tcam_region_associate

err_tcam_region_associate:                        ; preds = %err_tcam_region_enable, %mlxsw_sp_acl_tcam_region_alloc.exit, %if.end8.err_tcam_region_associate_crit_edge
  %err.1 = phi i32 [ %call9, %if.end8.err_tcam_region_associate_crit_edge ], [ %call6.i, %mlxsw_sp_acl_tcam_region_alloc.exit ], [ %err.0, %err_tcam_region_enable ]
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %id, align 4
  %conv.i76 = zext i16 %49 to i32
  %50 = ptrtoint ptr %tcam to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tcam, align 4
  %rem.i.i77 = and i32 %conv.i76, 31
  %shl.i.i78 = shl nuw i32 1, %rem.i.i77
  %div2.i.i79 = lshr i32 %conv.i76, 5
  %add.ptr.i.i80 = getelementptr i32, ptr %51, i32 %div2.i.i79
  %neg.i.i = xor i32 %shl.i.i78, -1
  %52 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i80, align 4
  %and.i.i = and i32 %53, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i80, align 4
  br label %err_region_id_get

err_region_id_get:                                ; preds = %err_tcam_region_associate, %if.end.err_region_id_get_crit_edge
  %err.2 = phi i32 [ %err.1, %err_tcam_region_associate ], [ -105, %if.end.err_region_id_get_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  %54 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_region_id_get, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %54, %err_region_id_get ], [ %call9.i.i, %if.end21.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_tcam_vregion_rehash_work(ptr noundef %work) #2 align 64 {
entry:
  %ptar_pl.i.i.i37.i = alloca [48 x i8], align 1
  %pacl_pl.i.i.i38.i = alloca [112 x i8], align 1
  %ptar_pl.i.i.i.i = alloca [48 x i8], align 1
  %pacl_pl.i.i.i.i = alloca [112 x i8], align 1
  %credits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %credits) #14
  %0 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100, ptr %credits, align 4
  %mlxsw_sp = getelementptr i8, ptr %work, i32 120
  %1 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp, align 4
  %ctx1.i = getelementptr i8, ptr %work, i32 100
  %3 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx1.i, align 4
  %tobool.i.not.i = icmp eq ptr %4, null
  br i1 %tobool.i.not.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %acl_tcam_ops.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 31
  %5 = ptrtoint ptr %acl_tcam_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl_tcam_ops.i.i, align 4
  %vchunk_list.i.i.i = getelementptr i8, ptr %work, i32 -20
  %7 = ptrtoint ptr %vchunk_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %vchunk_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %8, %vchunk_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %priority.i.i.i = getelementptr i8, ptr %8, i32 20
  %9 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priority.i.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i

mlxsw_sp_acl_tcam_vregion_prio.exit.i.i:          ; preds = %if.end.i.i.i, %if.then.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %10, %if.end.i.i.i ], [ 0, %if.then.i.mlxsw_sp_acl_tcam_vregion_prio.exit.i.i_crit_edge ]
  tail call fastcc void @trace_mlxsw_sp_acl_tcam_vregion_rehash(ptr noundef %2, ptr noundef %add.ptr) #14
  %region_rehash_hints_get.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %6, i32 0, i32 8
  %11 = ptrtoint ptr %region_rehash_hints_get.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %region_rehash_hints_get.i.i, align 4
  %region.i.i = getelementptr i8, ptr %work, i32 -44
  %13 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %region.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %14, i32 0, i32 8
  %call1.i.i = tail call ptr %12(ptr noundef %priv.i.i) #14
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %call1.i.i to i32
  br label %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i

if.end.i.i:                                       ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.i.i
  %tcam.i.i = getelementptr i8, ptr %work, i32 -8
  %16 = ptrtoint ptr %tcam.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcam.i.i, align 4
  %call4.i.i = tail call fastcc ptr @mlxsw_sp_acl_tcam_region_create(ptr noundef %2, ptr noundef %17, ptr noundef %add.ptr, ptr noundef %call1.i.i) #14
  %cmp.i51.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51.i.i, label %if.then6.i.i, label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %call4.i.i to i32
  br label %err_region_create.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %19 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %region.i.i, align 4
  %region2.i.i = getelementptr i8, ptr %work, i32 -40
  %21 = ptrtoint ptr %region2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %region2.i.i, align 4
  store ptr %call4.i.i, ptr %region.i.i, align 4
  %group.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %group.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group.i.i, align 4
  %call13.i.i = tail call fastcc i32 @mlxsw_sp_acl_tcam_group_region_attach(ptr noundef %2, ptr noundef %23, ptr noundef %call4.i.i, i32 noundef %retval.0.i.i.i, ptr noundef %20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.not.i.i, label %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.thread.i, label %err_group_region_attach.i.i

mlxsw_sp_acl_tcam_vregion_rehash_start.exit.thread.i: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i.i, ptr %ctx1.i, align 4
  %this_is_rollback.i.i = getelementptr i8, ptr %work, i32 104
  %25 = ptrtoint ptr %this_is_rollback.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %this_is_rollback.i.i, align 4
  br label %if.end6.i

err_group_region_attach.i.i:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %region2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %region2.i.i, align 4
  %28 = ptrtoint ptr %region.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %region.i.i, align 4
  store ptr null, ptr %region2.i.i, align 4
  %29 = ptrtoint ptr %acl_tcam_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %acl_tcam_ops.i.i, align 4
  %region_fini.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %region_fini.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %region_fini.i.i.i, align 4
  %priv.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call4.i.i, i32 0, i32 8
  tail call void %32(ptr noundef %2, ptr noundef %priv.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pacl_pl.i.i.i.i) #14
  %33 = call ptr @memset(ptr %pacl_pl.i.i.i.i, i32 255, i32 112)
  %id.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call4.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %id.i.i.i.i, align 4
  %tcam_region_info.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call4.i.i, i32 0, i32 5
  call fastcc void @mlxsw_reg_pacl_pack(ptr noundef nonnull %pacl_pl.i.i.i.i, i16 noundef zeroext %35, i1 noundef zeroext false, ptr noundef %tcam_region_info.i.i.i.i) #14
  %core.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %36 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @mlxsw_reg_write(ptr noundef %37, ptr noundef nonnull @mlxsw_reg_pacl, ptr noundef nonnull %pacl_pl.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pacl_pl.i.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptar_pl.i.i.i.i) #14
  %38 = call ptr @memset(ptr %ptar_pl.i.i.i.i, i32 255, i32 48)
  %key_type.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call4.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %key_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %key_type.i.i.i.i, align 4
  %41 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %id.i.i.i.i, align 4
  call fastcc void @mlxsw_reg_ptar_pack(ptr noundef nonnull %ptar_pl.i.i.i.i, i32 noundef 2, i32 noundef %40, i16 noundef zeroext 0, i16 noundef zeroext %42, ptr noundef %tcam_region_info.i.i.i.i) #14
  %43 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %core.i.i.i.i, align 4
  %call.i12.i.i.i = call i32 @mlxsw_reg_write(ptr noundef %44, ptr noundef nonnull @mlxsw_reg_ptar, ptr noundef nonnull %ptar_pl.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i.i.i.i) #14
  %group.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %call4.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %group.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %id.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %50 to i32
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %rem.i.i.i.i.i = and i32 %conv.i.i.i.i, 31
  %shl.i.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i.i
  %div2.i.i.i.i.i = lshr i32 %conv.i.i.i.i, 5
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %52, i32 %div2.i.i.i.i.i
  %neg.i.i.i.i.i = xor i32 %shl.i.i.i.i.i, -1
  %53 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %54, %neg.i.i.i.i.i
  store i32 %and.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i, align 4
  call void @kfree(ptr noundef %call4.i.i) #14
  br label %err_region_create.i.i

err_region_create.i.i:                            ; preds = %err_group_region_attach.i.i, %if.then6.i.i
  %err.0.i.i = phi i32 [ %18, %if.then6.i.i ], [ %call13.i.i, %err_group_region_attach.i.i ]
  %region_rehash_hints_put.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %6, i32 0, i32 9
  %55 = ptrtoint ptr %region_rehash_hints_put.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %region_rehash_hints_put.i.i, align 4
  call void %56(ptr noundef %call1.i.i) #14
  br label %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i

mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i:    ; preds = %err_region_create.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %15, %if.then.i.i ], [ %err.0.i.i, %err_region_create.i.i ]
  %57 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %retval.0.i.i, label %do.end.i [
    i32 0, label %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i.if.end6.i_crit_edge
    i32 -11, label %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i.mlxsw_sp_acl_tcam_vregion_rehash.exit_crit_edge
  ]

mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i.mlxsw_sp_acl_tcam_vregion_rehash.exit_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_rehash.exit

mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i.if.end6.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

do.end.i:                                         ; preds = %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %bus_info.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 2
  %58 = ptrtoint ptr %bus_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus_info.i, align 4
  %dev.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.59) #20
  br label %mlxsw_sp_acl_tcam_vregion_rehash.exit

if.end6.i:                                        ; preds = %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i.if.end6.i_crit_edge, %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.thread.i, %entry.if.end6.i_crit_edge
  call fastcc void @trace_mlxsw_sp_acl_tcam_vregion_migrate(ptr noundef %2, ptr noundef %add.ptr) #14
  call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #14
  %call.i.i = call fastcc i32 @mlxsw_sp_acl_tcam_vchunk_migrate_all(ptr noundef %2, ptr noundef %add.ptr, ptr noundef %ctx1.i, ptr noundef nonnull %credits) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i33.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i33.i, label %if.end15.critedge.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end6.i
  %region.i34.i = getelementptr i8, ptr %work, i32 -44
  %62 = ptrtoint ptr %region.i34.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %region.i34.i, align 4
  %region2.i35.i = getelementptr i8, ptr %work, i32 -40
  %64 = ptrtoint ptr %region2.i35.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %region2.i35.i, align 4
  store ptr %65, ptr %region.i34.i, align 4
  store ptr %63, ptr %region2.i35.i, align 4
  %current_vchunk.i.i = getelementptr i8, ptr %work, i32 108
  %66 = ptrtoint ptr %current_vchunk.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %current_vchunk.i.i, align 4
  %this_is_rollback.i36.i = getelementptr i8, ptr %work, i32 104
  %67 = ptrtoint ptr %this_is_rollback.i36.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %this_is_rollback.i36.i, align 4
  %call3.i.i = call fastcc i32 @mlxsw_sp_acl_tcam_vchunk_migrate_all(ptr noundef %2, ptr noundef %add.ptr, ptr noundef %ctx1.i, ptr noundef nonnull %credits) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.do.end12.i_crit_edge, label %if.then5.i.i

do.body.i.i.do.end12.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr noundef %2, ptr noundef %add.ptr) #14
  %bus_info.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 2
  %68 = ptrtoint ptr %bus_info.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus_info.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.68) #20
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then5.i.i, %do.body.i.i.do.end12.i_crit_edge
  call void @mutex_unlock(ptr noundef %add.ptr) #14
  call fastcc void @trace_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef %2, ptr noundef %add.ptr) #14
  %bus_info13.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 2
  %72 = ptrtoint ptr %bus_info13.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus_info13.i, align 4
  %dev14.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.64) #20
  br label %if.end15.i

if.end15.critedge.i:                              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %add.ptr) #14
  call fastcc void @trace_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef %2, ptr noundef %add.ptr) #14
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.critedge.i, %do.end12.i
  %76 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp16.i = icmp sgt i32 %77, -1
  br i1 %cmp16.i, label %if.then17.i, label %if.end15.i.if.end.sink.split_crit_edge

if.end15.i.if.end.sink.split_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split

if.then17.i:                                      ; preds = %if.end15.i
  %region2.i39.i = getelementptr i8, ptr %work, i32 -40
  %78 = ptrtoint ptr %region2.i39.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %region2.i39.i, align 4
  %acl_tcam_ops.i40.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 31
  %80 = ptrtoint ptr %acl_tcam_ops.i40.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %acl_tcam_ops.i40.i, align 4
  store ptr null, ptr %region2.i39.i, align 4
  %group1.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %group1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %group1.i.i.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %83, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i.i.i, i32 noundef 0) #14
  %list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %79, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then17.i.mlxsw_sp_acl_tcam_vregion_rehash_end.exit.i_crit_edge

if.then17.i.mlxsw_sp_acl_tcam_vregion_rehash_end.exit.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_rehash_end.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %79, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %86 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %mlxsw_sp_acl_tcam_vregion_rehash_end.exit.i

mlxsw_sp_acl_tcam_vregion_rehash_end.exit.i:      ; preds = %if.end.i.i.i.i.i, %if.then17.i.mlxsw_sp_acl_tcam_vregion_rehash_end.exit.i_crit_edge
  %90 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %79, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %region_count.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %83, i32 0, i32 4
  %92 = ptrtoint ptr %region_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %region_count.i.i.i, align 4
  %dec.i.i.i = add i32 %93, -1
  store i32 %dec.i.i.i, ptr %region_count.i.i.i, align 4
  %call.i.i.i = call fastcc i32 @mlxsw_sp_acl_tcam_group_update(ptr noundef %2, ptr noundef %83) #14
  call void @mutex_unlock(ptr noundef %lock.i.i.i) #14
  %94 = ptrtoint ptr %acl_tcam_ops.i40.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %acl_tcam_ops.i40.i, align 4
  %region_fini.i.i41.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %region_fini.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %region_fini.i.i41.i, align 4
  %priv.i.i42.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %79, i32 0, i32 8
  call void %97(ptr noundef %2, ptr noundef %priv.i.i42.i) #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pacl_pl.i.i.i38.i) #14
  %98 = call ptr @memset(ptr %pacl_pl.i.i.i38.i, i32 255, i32 112)
  %id.i.i.i43.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %79, i32 0, i32 4
  %99 = ptrtoint ptr %id.i.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %id.i.i.i43.i, align 4
  %tcam_region_info.i.i.i44.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %79, i32 0, i32 5
  call fastcc void @mlxsw_reg_pacl_pack(ptr noundef nonnull %pacl_pl.i.i.i38.i, i16 noundef zeroext %100, i1 noundef zeroext false, ptr noundef %tcam_region_info.i.i.i44.i) #14
  %core.i.i.i45.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %101 = ptrtoint ptr %core.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %core.i.i.i45.i, align 4
  %call.i.i.i46.i = call i32 @mlxsw_reg_write(ptr noundef %102, ptr noundef nonnull @mlxsw_reg_pacl, ptr noundef nonnull %pacl_pl.i.i.i38.i) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pacl_pl.i.i.i38.i) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptar_pl.i.i.i37.i) #14
  %103 = call ptr @memset(ptr %ptar_pl.i.i.i37.i, i32 255, i32 48)
  %key_type.i.i.i47.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %79, i32 0, i32 3
  %104 = ptrtoint ptr %key_type.i.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %key_type.i.i.i47.i, align 4
  %106 = ptrtoint ptr %id.i.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %id.i.i.i43.i, align 4
  call fastcc void @mlxsw_reg_ptar_pack(ptr noundef nonnull %ptar_pl.i.i.i37.i, i32 noundef 2, i32 noundef %105, i16 noundef zeroext 0, i16 noundef zeroext %107, ptr noundef %tcam_region_info.i.i.i44.i) #14
  %108 = ptrtoint ptr %core.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %core.i.i.i45.i, align 4
  %call.i12.i.i48.i = call i32 @mlxsw_reg_write(ptr noundef %109, ptr noundef nonnull @mlxsw_reg_ptar, ptr noundef nonnull %ptar_pl.i.i.i37.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i.i.i37.i) #14
  %110 = ptrtoint ptr %group1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %group1.i.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %id.i.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %id.i.i.i43.i, align 4
  %conv.i.i.i49.i = zext i16 %115 to i32
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %113, align 4
  %rem.i.i.i.i50.i = and i32 %conv.i.i.i49.i, 31
  %shl.i.i.i.i51.i = shl nuw i32 1, %rem.i.i.i.i50.i
  %div2.i.i.i.i52.i = lshr i32 %conv.i.i.i49.i, 5
  %add.ptr.i.i.i.i53.i = getelementptr i32, ptr %117, i32 %div2.i.i.i.i52.i
  %neg.i.i.i.i54.i = xor i32 %shl.i.i.i.i51.i, -1
  %118 = ptrtoint ptr %add.ptr.i.i.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr.i.i.i.i53.i, align 4
  %and.i.i.i.i55.i = and i32 %119, %neg.i.i.i.i54.i
  store i32 %and.i.i.i.i55.i, ptr %add.ptr.i.i.i.i53.i, align 4
  call void @kfree(ptr noundef %79) #14
  %region_rehash_hints_put.i56.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %81, i32 0, i32 9
  %120 = ptrtoint ptr %region_rehash_hints_put.i56.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %region_rehash_hints_put.i56.i, align 4
  %122 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ctx1.i, align 4
  call void %121(ptr noundef %123) #14
  %124 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %ctx1.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_rehash.exit

mlxsw_sp_acl_tcam_vregion_rehash.exit:            ; preds = %mlxsw_sp_acl_tcam_vregion_rehash_end.exit.i, %do.end.i, %mlxsw_sp_acl_tcam_vregion_rehash_start.exit.i.mlxsw_sp_acl_tcam_vregion_rehash.exit_crit_edge
  %125 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr = load i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp slt i32 %.pr, 0
  br i1 %cmp, label %mlxsw_sp_acl_tcam_vregion_rehash.exit.if.end.sink.split_crit_edge, label %if.else

mlxsw_sp_acl_tcam_vregion_rehash.exit.if.end.sink.split_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_rehash.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split

if.else:                                          ; preds = %mlxsw_sp_acl_tcam_vregion_rehash.exit
  %tcam.i = getelementptr i8, ptr %work, i32 -8
  %126 = ptrtoint ptr %tcam.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tcam.i, align 4
  %vregion_rehash_intrvl.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %127, i32 0, i32 7
  %128 = ptrtoint ptr %vregion_rehash_intrvl.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %vregion_rehash_intrvl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i = icmp eq i32 %129, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.else.i.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %129) #14
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.else.i.i, %mlxsw_sp_acl_tcam_vregion_rehash.exit.if.end.sink.split_crit_edge, %if.end15.i.if.end.sink.split_crit_edge
  %retval.0.i.i6.sink = phi i32 [ 0, %if.end15.i.if.end.sink.split_crit_edge ], [ 0, %mlxsw_sp_acl_tcam_vregion_rehash.exit.if.end.sink.split_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %call1.i = call i32 @mlxsw_core_schedule_dw(ptr noundef %work, i32 noundef %retval.0.i.i6.sink) #14
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %credits) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afk_key_info_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_tcam_region_disable(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %region) unnamed_addr #2 align 64 {
entry:
  %pacl_pl = alloca [112 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pacl_pl) #14
  %0 = call ptr @memset(ptr %pacl_pl, i32 255, i32 112)
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %id, align 4
  %tcam_region_info = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 5
  call fastcc void @mlxsw_reg_pacl_pack(ptr noundef nonnull %pacl_pl, i16 noundef zeroext %2, i1 noundef zeroext false, ptr noundef %tcam_region_info)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %4, ptr noundef nonnull @mlxsw_reg_pacl, ptr noundef nonnull %pacl_pl) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pacl_pl) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_ptar_pack(ptr nocapture noundef %payload, i32 noundef %op, i32 noundef %key_type, i16 noundef zeroext %region_size, i16 noundef zeroext %region_id, ptr nocapture noundef readonly %tcam_region_info) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memset(ptr %payload, i32 0, i32 48)
  %spec.select.i.i = shl i32 %op, 28
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, 251723520
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %or.i.i35 = or i32 %or.i.i, 131072
  %and6.i.i59 = and i32 %key_type, 255
  %or.i.i63 = or i32 %and6.i.i59, %or.i.i35
  store i32 %or.i.i63, ptr %payload, align 4
  %conv1 = zext i16 %region_size to i32
  %arrayidx.i.i88 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i88, align 4
  %and7.i.i90 = and i32 %4, -65536
  %or.i.i91 = or i32 %and7.i.i90, %conv1
  store i32 %or.i.i91, ptr %arrayidx.i.i88, align 4
  %conv2 = zext i16 %region_id to i32
  %arrayidx.i.i116 = getelementptr i32, ptr %payload, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i116, align 4
  %and7.i.i118 = and i32 %6, -65536
  %or.i.i119 = or i32 %and7.i.i118, %conv2
  store i32 %or.i.i119, ptr %arrayidx.i.i116, align 4
  %arrayidx.i.i123 = getelementptr i8, ptr %payload, i32 16
  %7 = call ptr @memcpy(ptr %arrayidx.i.i123, ptr %tcam_region_info, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afk_key_info_blocks_count_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_afk_key_info_block_encoding_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_pacl_pack(ptr nocapture noundef %payload, i16 noundef zeroext %acl_id, i1 noundef zeroext %valid, ptr nocapture noundef readonly %tcam_region_info) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memset(ptr %payload, i32 0, i32 112)
  %conv1 = zext i16 %acl_id to i32
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 2
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %2, -65536
  %or.i.i = or i32 %and7.i.i, %conv1
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %spec.select.i.i24 = select i1 %valid, i32 16777216, i32 0
  %3 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %payload, align 4
  %and7.i.i32 = and i32 %4, -16777217
  %or.i.i33 = or i32 %spec.select.i.i24, %and7.i.i32
  store i32 %or.i.i33, ptr %payload, align 4
  %arrayidx.i.i37 = getelementptr i8, ptr %payload, i32 48
  %5 = call ptr @memcpy(ptr %arrayidx.i.i37, ptr %tcam_region_info, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_tcam_group_region_attach(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %group, ptr noundef %region, i32 noundef %priority, ptr noundef %next_region) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %group, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %region_count = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %group, i32 0, i32 4
  %0 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %region_count, align 4
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %max_group_size = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %max_group_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_group_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp eq i32 %1, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %next_region, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %next_region, i32 0, i32 2
  br label %if.end9

if.else:                                          ; preds = %if.end
  %region_list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %group, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.for.cond_crit_edge, %if.else
  %pos.0.in = phi ptr [ %region_list, %if.else ], [ %pos.0, %mlxsw_sp_acl_tcam_vregion_prio.exit.for.cond_crit_edge ]
  %6 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %region_list
  br i1 %cmp.i.not, label %for.cond.if.end9_crit_edge, label %for.body

for.cond.if.end9_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %pos.0, i32 -8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %vchunk_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %vchunk_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %vchunk_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %vchunk_list.i
  br i1 %cmp.i.not.i, label %for.body.mlxsw_sp_acl_tcam_vregion_prio.exit_crit_edge, label %if.end.i

for.body.mlxsw_sp_acl_tcam_vregion_prio.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %priority.i = getelementptr i8, ptr %10, i32 20
  %11 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority.i, align 4
  br label %mlxsw_sp_acl_tcam_vregion_prio.exit

mlxsw_sp_acl_tcam_vregion_prio.exit:              ; preds = %if.end.i, %for.body.mlxsw_sp_acl_tcam_vregion_prio.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.end.i ], [ 0, %for.body.mlxsw_sp_acl_tcam_vregion_prio.exit_crit_edge ]
  %cmp5 = icmp ugt i32 %retval.0.i, %priority
  br i1 %cmp5, label %mlxsw_sp_acl_tcam_vregion_prio.exit.if.end9_crit_edge, label %mlxsw_sp_acl_tcam_vregion_prio.exit.for.cond_crit_edge

mlxsw_sp_acl_tcam_vregion_prio.exit.for.cond_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

mlxsw_sp_acl_tcam_vregion_prio.exit.if.end9_crit_edge: ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end9:                                          ; preds = %mlxsw_sp_acl_tcam_vregion_prio.exit.if.end9_crit_edge, %for.cond.if.end9_crit_edge, %if.then1
  %pos.1 = phi ptr [ %list, %if.then1 ], [ %region_list, %for.cond.if.end9_crit_edge ], [ %pos.0, %mlxsw_sp_acl_tcam_vregion_prio.exit.if.end9_crit_edge ]
  %list10 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list10, ptr noundef %14, ptr noundef %pos.1) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add_tail.exit_crit_edge

if.end9.list_add_tail.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list10, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pos.1, ptr %list10, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list10, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end9.list_add_tail.exit_crit_edge
  %group11 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 1
  %19 = ptrtoint ptr %group11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %group, ptr %group11, align 4
  %call12 = tail call fastcc i32 @mlxsw_sp_acl_tcam_group_update(ptr noundef %mlxsw_sp, ptr noundef %group)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %err_group_update

if.end15:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %region_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %region_count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %region_count, align 4
  br label %cleanup

err_group_update:                                 ; preds = %list_add_tail.exit
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list10) #14
  br i1 %call.i.i38, label %if.end.i.i39, label %err_group_update.list_del.exit_crit_edge

err_group_update.list_del.exit_crit_edge:         ; preds = %err_group_update
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i39:                                     ; preds = %err_group_update
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %list10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i39, %err_group_update.list_del.exit_crit_edge
  %28 = ptrtoint ptr %list10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %list10, align 4
  %prev.i40 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i40, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call12, %list_del.exit ], [ -105, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_tcam_group_update(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef readonly %group) unnamed_addr #2 align 64 {
entry:
  %pagt_pl = alloca [112 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %pagt_pl) #14
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %group, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %2 = call ptr @memset(ptr %pagt_pl, i32 0, i32 112)
  %conv1.i = zext i16 %1 to i32
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %pagt_pl, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %4, -65536
  %or.i.i.i = or i32 %and7.i.i.i, %conv1.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %region_list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, ptr %group, i32 0, i32 3
  %5 = ptrtoint ptr %region_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn68 = load ptr, ptr %region_list, align 4
  %cmp.not70 = icmp eq ptr %.pn68, %region_list
  br i1 %cmp.not70, label %entry.mlxsw_reg_pagt_size_set.exit_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.mlxsw_reg_pagt_size_set.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_reg_pagt_size_set.exit

for.body:                                         ; preds = %if.end.i.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn72 = phi ptr [ %.pn, %if.end.i.for.body_crit_edge ], [ %.pn68, %entry.for.body_crit_edge ]
  %acl_index.071 = phi i32 [ %inc, %if.end.i.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn72, align 4
  %cmp5.not = icmp eq ptr %7, %region_list
  br i1 %cmp5.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %region.073 = getelementptr i8, ptr %.pn72, i32 -8
  %add.ptr10 = getelementptr i8, ptr %7, i32 -8
  %8 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr10, align 4
  %10 = ptrtoint ptr %region.073 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %region.073, align 4
  %cmp12 = icmp eq ptr %9, %11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body.if.end_crit_edge
  %multi.0.off0 = phi i1 [ false, %for.body.if.end_crit_edge ], [ %cmp12, %land.lhs.true ]
  %inc = add i32 %acl_index.071, 1
  %id14 = getelementptr i8, ptr %.pn72, i32 12
  %12 = ptrtoint ptr %id14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id14, align 4
  %14 = ptrtoint ptr %pagt_pl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pagt_pl, align 4
  %and4.i.i.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.i.i, i32 %acl_index.071)
  %cmp.not.i = icmp sgt i32 %and4.i.i.i, %acl_index.071
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %mlxsw_reg_pagt_size_set.exit.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

mlxsw_reg_pagt_size_set.exit.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %and6.i.i.i51 = and i32 %inc, 255
  %and7.i.i.i53 = and i32 %15, -256
  %or.i.i.i54 = or i32 %and6.i.i.i51, %and7.i.i.i53
  %16 = ptrtoint ptr %pagt_pl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i.i54, ptr %pagt_pl, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %mlxsw_reg_pagt_size_set.exit.i, %if.end.if.end.i_crit_edge
  %conv.i.i.i.i = and i32 %acl_index.071, 65535
  %17 = add nuw nsw i32 %conv.i.i.i.i, 12
  %spec.select.i.i49.i = select i1 %multi.0.off0, i32 -2147483648, i32 0
  %arrayidx.i.i55.i = getelementptr i32, ptr %pagt_pl, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i55.i, align 4
  %and7.i.i57.i = and i32 %19, 2147483647
  %or.i.i58.i = or i32 %spec.select.i.i49.i, %and7.i.i57.i
  store i32 %or.i.i58.i, ptr %arrayidx.i.i55.i, align 4
  %conv6.i = zext i16 %13 to i32
  %20 = add nuw nsw i32 %conv.i.i.i.i, 12
  %arrayidx.i.i93.i = getelementptr i32, ptr %pagt_pl, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i93.i, align 4
  %and7.i.i95.i = and i32 %22, -65536
  %or.i.i96.i = or i32 %and7.i.i95.i, %conv6.i
  store i32 %or.i.i96.i, ptr %arrayidx.i.i93.i, align 4
  %23 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn72, align 4
  %cmp.not = icmp eq ptr %.pn, %region_list
  br i1 %cmp.not, label %for.end.loopexit, label %if.end.i.for.body_crit_edge

if.end.i.for.body_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = and i32 %inc, 255
  br label %mlxsw_reg_pagt_size_set.exit

mlxsw_reg_pagt_size_set.exit:                     ; preds = %for.end.loopexit, %entry.mlxsw_reg_pagt_size_set.exit_crit_edge
  %acl_index.0.lcssa = phi i32 [ 0, %entry.mlxsw_reg_pagt_size_set.exit_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %24 = ptrtoint ptr %pagt_pl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagt_pl, align 4
  %and7.i.i = and i32 %25, -256
  %or.i.i = or i32 %acl_index.0.lcssa, %and7.i.i
  store i32 %or.i.i, ptr %pagt_pl, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %26 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %27, ptr noundef nonnull @mlxsw_reg_pagt, ptr noundef nonnull %pagt_pl) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %pagt_pl) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlxsw_sp_acl_tcam_vregion_rehash(ptr noundef %mlxsw_sp, ptr noundef %vregion) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash, i32 0, i32 1), ptr blockaddress(@trace_mlxsw_sp_acl_tcam_vregion_rehash, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !198

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %call42 = tail call i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash(ptr noundef null, ptr noundef %mlxsw_sp, ptr noundef %vregion) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlxsw_sp_acl_tcam_vregion_rehash.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_mlxsw_sp_acl_tcam_vregion_rehash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 54, ptr noundef nonnull @.str.22) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlxsw_sp_acl_tcam_vregion_migrate(ptr noundef %mlxsw_sp, ptr noundef %vregion) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate, i32 0, i32 1), ptr blockaddress(@trace_mlxsw_sp_acl_tcam_vregion_migrate, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !198

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !203
  %call42 = tail call i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate(ptr noundef null, ptr noundef %mlxsw_sp, ptr noundef %vregion) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlxsw_sp_acl_tcam_vregion_migrate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_mlxsw_sp_acl_tcam_vregion_migrate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 74, ptr noundef nonnull @.str.22) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_tcam_vchunk_migrate_all(ptr noundef %mlxsw_sp, ptr noundef readonly %vregion, ptr nocapture noundef %ctx, ptr nocapture noundef %credits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %current_vchunk = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %current_vchunk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_vchunk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vchunk_list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 5
  %2 = ptrtoint ptr %vchunk_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vchunk_list, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %vchunk.0 = phi ptr [ %add.ptr, %if.else ], [ %1, %entry.if.end_crit_edge ]
  %vchunk_list2 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 5
  %list35 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk.0, i32 0, i32 2
  %cmp.not36 = icmp eq ptr %list35, %vchunk_list2
  br i1 %cmp.not36, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %region = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %vregion, i32 0, i32 1
  %acl_tcam_ops.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %start_ventry.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, ptr %ctx, i32 0, i32 3
  %stop_ventry.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, ptr %ctx, i32 0, i32 4
  %this_is_rollback.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, ptr %ctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %list42 = phi ptr [ %list35, %for.body.lr.ph ], [ %88, %for.inc.for.body_crit_edge ]
  %vchunk.137 = phi ptr [ %vchunk.0, %for.body.lr.ph ], [ %add.ptr11, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region, align 4
  %6 = ptrtoint ptr %vchunk.137 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vchunk.137, align 4
  %region1.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %region1.i, align 4
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %10 = ptrtoint ptr %acl_tcam_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acl_tcam_ops.i.i.i, align 4
  %chunk_priv_size.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %chunk_priv_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chunk_priv_size.i.i.i, align 4
  %add.i.i.i = add i32 %13, 8
  %call9.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3520) #17
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %mlxsw_sp_acl_tcam_chunk_create.exit.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

mlxsw_sp_acl_tcam_chunk_create.exit.i.i:          ; preds = %if.then.i
  %14 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vchunk.137, ptr %call9.i.i.i.i.i, align 128
  %region3.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %region3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %region3.i.i.i, align 4
  %chunk_init.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %chunk_init.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chunk_init.i.i.i, align 4
  %priv.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %5, i32 0, i32 8
  %priv4.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %call9.i.i.i.i.i, i32 0, i32 2
  %priority.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk.137, i32 0, i32 5
  %18 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priority.i.i.i, align 4
  tail call void %17(ptr noundef %priv.i.i.i, ptr noundef %priv4.i.i.i, i32 noundef %19) #14
  %cmp.i.i.i = icmp ugt ptr %call9.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlxsw_sp_acl_tcam_chunk_create.exit.i.i.cleanup.split.loop.exit31_crit_edge, label %if.end6.i.thread

mlxsw_sp_acl_tcam_chunk_create.exit.i.i.cleanup.split.loop.exit31_crit_edge: ; preds = %mlxsw_sp_acl_tcam_chunk_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.split.loop.exit31

if.end6.i.thread:                                 ; preds = %mlxsw_sp_acl_tcam_chunk_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %vchunk.137 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vchunk.137, align 4
  %chunk2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk.137, i32 0, i32 1
  %22 = ptrtoint ptr %chunk2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %chunk2.i.i, align 4
  store ptr %call9.i.i.i.i.i, ptr %vchunk.137, align 4
  %23 = ptrtoint ptr %current_vchunk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vchunk.137, ptr %current_vchunk, align 4
  %24 = ptrtoint ptr %start_ventry.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %start_ventry.i.i, align 4
  %25 = ptrtoint ptr %stop_ventry.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %stop_ventry.i.i, align 4
  br label %if.else10.i

if.else.i:                                        ; preds = %for.body
  %chunk2.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk.137, i32 0, i32 1
  %26 = ptrtoint ptr %chunk2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chunk2.i, align 4
  %tobool3.not.i = icmp eq ptr %27, null
  br i1 %tobool3.not.i, label %if.else.i.lor.lhs.false_crit_edge, label %if.end6.i

if.else.i.lor.lhs.false_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

if.end6.i:                                        ; preds = %if.else.i
  %28 = ptrtoint ptr %start_ventry.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %start_ventry.i.i, align 4
  %tobool7.not.i = icmp eq ptr %.pr, null
  br i1 %tobool7.not.i, label %if.end6.i.if.else10.i_crit_edge, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end6.i.if.else10.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else10.i

if.else10.i:                                      ; preds = %if.end6.i.if.else10.i_crit_edge, %if.end6.i.thread
  %ventry_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk.137, i32 0, i32 4
  %29 = ptrtoint ptr %ventry_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ventry_list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 -4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else10.i, %if.end6.i.if.end11.i_crit_edge
  %ventry.0.i = phi ptr [ %add.ptr.i, %if.else10.i ], [ %.pr, %if.end6.i.if.end11.i_crit_edge ]
  %ventry_list12.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk.137, i32 0, i32 4
  %list125.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry.0.i, i32 0, i32 1
  %cmp13.not126.i = icmp eq ptr %list125.i, %ventry_list12.i
  br i1 %cmp13.not126.i, label %if.end11.i.for.end.i_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  br label %for.body.i

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.i.for.body.i_crit_edge
  %list129.i = phi ptr [ %75, %for.inc.i.for.body.i_crit_edge ], [ %list125.i, %if.end11.i.for.body.i_crit_edge ]
  %ventry.1127.i = phi ptr [ %add.ptr41.i, %for.inc.i.for.body.i_crit_edge ], [ %ventry.0.i, %if.end11.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %stop_ventry.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stop_ventry.i.i, align 4
  %cmp14.i = icmp eq ptr %ventry.1127.i, %32
  br i1 %cmp14.i, label %for.body.i.for.end.i_crit_edge, label %if.end16.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end16.i:                                       ; preds = %for.body.i
  %33 = ptrtoint ptr %vchunk.137 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vchunk.137, align 4
  %35 = ptrtoint ptr %ventry.1127.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ventry.1127.i, align 4
  %chunk2.i76.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %chunk2.i76.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chunk2.i76.i, align 4
  %cmp.i.i = icmp eq ptr %38, %34
  br i1 %cmp.i.i, label %if.end16.i.if.else31.i_crit_edge, label %if.end.i77.i

if.end16.i.if.else31.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else31.i

if.end.i77.i:                                     ; preds = %if.end16.i
  %39 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %credits, align 4
  %dec.i.i = add i32 %40, -1
  store i32 %dec.i.i, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp3.i.i = icmp slt i32 %dec.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i77.i.if.then33.i_crit_edge, label %if.end5.i.i

if.end.i77.i.if.then33.i_crit_edge:               ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33.i

if.end5.i.i:                                      ; preds = %if.end.i77.i
  %41 = ptrtoint ptr %acl_tcam_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %acl_tcam_ops.i.i.i, align 4
  %entry_priv_size.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %entry_priv_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %entry_priv_size.i.i.i, align 4
  %add.i.i79.i = add i32 %44, 8
  %call9.i.i.i.i105.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i79.i, i32 noundef 3520) #17
  %tobool.not.i.i108.i = icmp eq ptr %call9.i.i.i.i105.i, null
  br i1 %tobool.not.i.i108.i, label %if.end5.i.i.if.then20.i_crit_edge, label %if.end.i.i.i

if.end5.i.i.if.then20.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20.i

if.end.i.i.i:                                     ; preds = %if.end5.i.i
  %45 = ptrtoint ptr %call9.i.i.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ventry.1127.i, ptr %call9.i.i.i.i105.i, align 128
  %chunk4.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %call9.i.i.i.i105.i, i32 0, i32 1
  %46 = ptrtoint ptr %chunk4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %34, ptr %chunk4.i.i.i, align 4
  %entry_add.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %42, i32 0, i32 14
  %47 = ptrtoint ptr %entry_add.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %entry_add.i.i.i, align 4
  %region.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %34, i32 0, i32 1
  %49 = ptrtoint ptr %region.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %region.i.i.i, align 4
  %priv.i.i110.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %50, i32 0, i32 8
  %priv5.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %34, i32 0, i32 2
  %priv7.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %call9.i.i.i.i105.i, i32 0, i32 2
  %rulei.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry.1127.i, i32 0, i32 3
  %51 = ptrtoint ptr %rulei.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rulei.i.i.i, align 4
  %call9.i.i.i = tail call i32 %48(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i110.i, ptr noundef %priv5.i.i.i, ptr noundef %priv7.i.i.i, ptr noundef %52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end.i.i.i.mlxsw_sp_acl_tcam_entry_create.exit.i.i_crit_edge, label %err_entry_add.i.i.i

if.end.i.i.i.mlxsw_sp_acl_tcam_entry_create.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_entry_create.exit.i.i

err_entry_add.i.i.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i.i105.i) #14
  %53 = inttoptr i32 %call9.i.i.i to ptr
  br label %mlxsw_sp_acl_tcam_entry_create.exit.i.i

mlxsw_sp_acl_tcam_entry_create.exit.i.i:          ; preds = %err_entry_add.i.i.i, %if.end.i.i.i.mlxsw_sp_acl_tcam_entry_create.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %53, %err_entry_add.i.i.i ], [ %call9.i.i.i.i105.i, %if.end.i.i.i.mlxsw_sp_acl_tcam_entry_create.exit.i.i_crit_edge ]
  %cmp.i.i111.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i111.i, label %mlxsw_sp_acl_tcam_entry_create.exit.i.i.if.then20.i_crit_edge, label %if.end9.i.i

mlxsw_sp_acl_tcam_entry_create.exit.i.i.if.then20.i_crit_edge: ; preds = %mlxsw_sp_acl_tcam_entry_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20.i

if.end9.i.i:                                      ; preds = %mlxsw_sp_acl_tcam_entry_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %ventry.1127.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ventry.1127.i, align 4
  %56 = ptrtoint ptr %acl_tcam_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %acl_tcam_ops.i.i.i, align 4
  %entry_del.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %entry_del.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %entry_del.i.i.i, align 4
  %chunk.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %chunk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chunk.i.i.i, align 4
  %region.i20.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %region.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %region.i20.i.i, align 4
  %priv.i21.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %63, i32 0, i32 8
  %priv3.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %61, i32 0, i32 2
  %priv5.i22.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %55, i32 0, i32 2
  tail call void %59(ptr noundef %mlxsw_sp, ptr noundef %priv.i21.i.i, ptr noundef %priv3.i.i.i, ptr noundef %priv5.i22.i.i) #14
  tail call void @kfree(ptr noundef %55) #14
  %64 = ptrtoint ptr %ventry.1127.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %retval.0.i.i.i, ptr %ventry.1127.i, align 4
  br label %if.else31.i

if.then20.i:                                      ; preds = %mlxsw_sp_acl_tcam_entry_create.exit.i.i.if.then20.i_crit_edge, %if.end5.i.i.if.then20.i_crit_edge
  %retval.0.i25.i137.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end5.i.i.if.then20.i_crit_edge ], [ %retval.0.i.i.i, %mlxsw_sp_acl_tcam_entry_create.exit.i.i.if.then20.i_crit_edge ]
  %65 = ptrtoint ptr %this_is_rollback.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %this_is_rollback.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool21.not.i = icmp eq i8 %66, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then20.i.mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split_crit_edge

if.then20.i.mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split

do.body.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %vchunk.137 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vchunk.137, align 4
  %chunk226.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk.137, i32 0, i32 1
  %69 = ptrtoint ptr %chunk226.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chunk226.i, align 4
  store ptr %70, ptr %vchunk.137, align 4
  store ptr %68, ptr %chunk226.i, align 4
  %71 = ptrtoint ptr %start_ventry.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %start_ventry.i.i, align 4
  br label %mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split

if.else31.i:                                      ; preds = %if.end9.i.i, %if.end16.i.if.else31.i_crit_edge
  %72 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr.i = load i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp32.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp32.i, label %if.else31.i.if.then33.i_crit_edge, label %for.inc.i

if.else31.i.if.then33.i_crit_edge:                ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.else31.i.if.then33.i_crit_edge, %if.end.i77.i.if.then33.i_crit_edge
  %73 = ptrtoint ptr %start_ventry.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ventry.1127.i, ptr %start_ventry.i.i, align 4
  br label %lor.lhs.false

for.inc.i:                                        ; preds = %if.else31.i
  %74 = ptrtoint ptr %list129.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %list129.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %75, i32 -4
  %cmp13.not.i = icmp eq ptr %75, %ventry_list12.i
  br i1 %cmp13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %chunk2.i113.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %vchunk.137, i32 0, i32 1
  %76 = ptrtoint ptr %chunk2.i113.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chunk2.i113.i, align 4
  %78 = ptrtoint ptr %acl_tcam_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %acl_tcam_ops.i.i.i, align 4
  %chunk_fini.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %chunk_fini.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chunk_fini.i.i.i, align 4
  %priv.i.i115.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %77, i32 0, i32 2
  tail call void %81(ptr noundef %priv.i.i115.i) #14
  tail call void @kfree(ptr noundef %77) #14
  %82 = ptrtoint ptr %chunk2.i113.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %chunk2.i113.i, align 4
  %83 = ptrtoint ptr %current_vchunk to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %current_vchunk, align 4
  br label %lor.lhs.false

mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split: ; preds = %do.body.i, %if.then20.i.mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split_crit_edge
  %start_ventry.i.i.sink = phi ptr [ %stop_ventry.i.i, %do.body.i ], [ %start_ventry.i.i, %if.then20.i.mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split_crit_edge ]
  %84 = ptrtoint ptr %start_ventry.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %ventry.1127.i, ptr %start_ventry.i.i.sink, align 4
  br label %cleanup.split.loop.exit31

lor.lhs.false:                                    ; preds = %for.end.i, %if.then33.i, %if.else.i.lor.lhs.false_crit_edge
  %85 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp4 = icmp slt i32 %86, 0
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %for.inc

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %87 = ptrtoint ptr %list42 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %list42, align 4
  %add.ptr11 = getelementptr i8, ptr %88, i32 -8
  %cmp.not = icmp eq ptr %88, %vchunk_list2
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.split.loop.exit31:                        ; preds = %mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split, %mlxsw_sp_acl_tcam_chunk_create.exit.i.i.cleanup.split.loop.exit31_crit_edge
  %retval.0.i.in = phi ptr [ %retval.0.i25.i137.i, %mlxsw_sp_acl_tcam_vchunk_migrate_one.exit.sink.split ], [ %call9.i.i.i.i.i, %mlxsw_sp_acl_tcam_chunk_create.exit.i.i.cleanup.split.loop.exit31_crit_edge ]
  %retval.0.i.le = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit31, %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.le, %cleanup.split.loop.exit31 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr noundef %mlxsw_sp, ptr noundef %vregion) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, i32 0, i32 1), ptr blockaddress(@trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !198

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  %call42 = tail call i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr noundef null, ptr noundef %mlxsw_sp, ptr noundef %vregion) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 114, ptr noundef nonnull @.str.22) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef %mlxsw_sp, ptr noundef %vregion) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end, i32 0, i32 1), ptr blockaddress(@trace_mlxsw_sp_acl_tcam_vregion_migrate_end, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !198

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !207
  %call42 = tail call i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef null, ptr noundef %mlxsw_sp, ptr noundef %vregion) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlxsw_sp_acl_tcam_vregion_migrate_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_mlxsw_sp_acl_tcam_vregion_migrate_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 94, ptr noundef nonnull @.str.22) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !202
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !209
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !210

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !211
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !212
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !188

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !213
  %7 = tail call i32 @llvm.read_register.i32(metadata !177) #14
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !214
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !215
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #14
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !216
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #14
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !187

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #14, !srcloc !217
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !218
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !219
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !220
  %3 = tail call i32 @llvm.read_register.i32(metadata !177) #14
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
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !221
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !222
  %2 = tail call i32 @llvm.read_register.i32(metadata !177) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_tcam_ventry_del(ptr noundef %mlxsw_sp, ptr noundef %ventry) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vchunk1 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry, i32 0, i32 2
  %0 = ptrtoint ptr %vchunk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchunk1, align 4
  %vregion2 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vregion2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vregion2, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #14
  %4 = ptrtoint ptr %vregion2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vregion2, align 4
  %current_vchunk.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %5, i32 0, i32 9, i32 1, i32 2
  %6 = ptrtoint ptr %current_vchunk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_vchunk.i, align 4
  %cmp.i = icmp eq ptr %7, %1
  br i1 %cmp.i, label %if.then.i, label %entry.mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit_crit_edge

entry.mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %start_ventry.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %5, i32 0, i32 9, i32 1, i32 3
  %8 = ptrtoint ptr %start_ventry.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %start_ventry.i, align 4
  %stop_ventry.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %5, i32 0, i32 9, i32 1, i32 4
  %9 = ptrtoint ptr %stop_ventry.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %stop_ventry.i, align 4
  br label %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit

mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit: ; preds = %if.then.i, %entry.mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit_crit_edge
  %list = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit.list_del.exit_crit_edge

mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit.list_del.exit_crit_edge: ; preds = %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed.exit.list_del.exit_crit_edge
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %ventry, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %ventry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ventry, align 4
  %acl_tcam_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %20 = ptrtoint ptr %acl_tcam_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %acl_tcam_ops.i, align 4
  %entry_del.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %entry_del.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entry_del.i, align 4
  %chunk.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chunk.i, align 4
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %region.i, align 4
  %priv.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %27, i32 0, i32 8
  %priv3.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %25, i32 0, i32 2
  %priv5.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %19, i32 0, i32 2
  tail call void %23(ptr noundef %mlxsw_sp, ptr noundef %priv.i, ptr noundef %priv3.i, ptr noundef %priv5.i) #14
  tail call void @kfree(ptr noundef %19) #14
  tail call void @mutex_unlock(ptr noundef %3) #14
  tail call fastcc void @mlxsw_sp_acl_tcam_vchunk_put(ptr noundef %mlxsw_sp, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_mr_ruleset_add(ptr noundef %mlxsw_sp, ptr noundef %tcam, ptr noundef %ruleset_priv, ptr noundef %tmplt_elusage, ptr noundef %p_min_prio, ptr noundef %p_max_prio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vgroup = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1
  %call = tail call fastcc i32 @mlxsw_sp_acl_tcam_vgroup_add(ptr noundef %tcam, ptr noundef %vgroup, ptr noundef %tmplt_elusage, i1 noundef zeroext false, ptr noundef %p_min_prio, ptr noundef %p_max_prio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @mlxsw_sp_acl_tcam_vchunk_get(ptr noundef %mlxsw_sp, ptr noundef %vgroup, i32 noundef 1, ptr noundef %tmplt_elusage)
  %0 = ptrtoint ptr %ruleset_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %ruleset_priv, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call2 to i32
  %vchunk_ht.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 2
  tail call void @rhashtable_destroy(ptr noundef %vchunk_ht.i) #14
  %2 = ptrtoint ptr %vgroup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vgroup, align 4
  %lock.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock.i.i) #14
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id.i.i, align 4
  %conv.i.i.i = zext i16 %5 to i32
  %used_groups.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %used_groups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %used_groups.i.i.i, align 4
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %7, i32 %div2.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %9, %neg.i.i.i.i
  store i32 %and.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %region_list.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %region_list.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %region_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %11, %region_list.i.i
  br i1 %cmp.i.not.i.i, label %if.then5.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge, label %do.end.i.i, !prof !188

if.then5.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_group_del.exit.i

do.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 9, ptr noundef null) #14
  br label %mlxsw_sp_acl_tcam_group_del.exit.i

mlxsw_sp_acl_tcam_group_del.exit.i:               ; preds = %do.end.i.i, %if.then5.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge
  %vregion_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %vregion_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %vregion_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %vregion_list.i
  br i1 %cmp.i.not.i, label %mlxsw_sp_acl_tcam_group_del.exit.i.cleanup_crit_edge, label %do.end.i, !prof !188

mlxsw_sp_acl_tcam_group_del.exit.i.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_tcam_group_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %mlxsw_sp_acl_tcam_group_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 359, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %mlxsw_sp_acl_tcam_group_del.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %1, %mlxsw_sp_acl_tcam_group_del.exit.i.cleanup_crit_edge ], [ %1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_tcam_mr_ruleset_del(ptr noundef %mlxsw_sp, ptr noundef %ruleset_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ruleset_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset_priv, align 4
  tail call fastcc void @mlxsw_sp_acl_tcam_vchunk_put(ptr noundef %mlxsw_sp, ptr noundef %1)
  %vgroup = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1
  %vchunk_ht.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 2
  tail call void @rhashtable_destroy(ptr noundef %vchunk_ht.i) #14
  %2 = ptrtoint ptr %vgroup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vgroup, align 4
  %lock.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock.i.i) #14
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id.i.i, align 4
  %conv.i.i.i = zext i16 %5 to i32
  %used_groups.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %used_groups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %used_groups.i.i.i, align 4
  %rem.i.i.i.i = and i32 %conv.i.i.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %7, i32 %div2.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %9, %neg.i.i.i.i
  store i32 %and.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %region_list.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %region_list.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %region_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %11, %region_list.i.i
  br i1 %cmp.i.not.i.i, label %entry.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge, label %do.end.i.i, !prof !188

entry.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_group_del.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 9, ptr noundef null) #14
  br label %mlxsw_sp_acl_tcam_group_del.exit.i

mlxsw_sp_acl_tcam_group_del.exit.i:               ; preds = %do.end.i.i, %entry.mlxsw_sp_acl_tcam_group_del.exit.i_crit_edge
  %vregion_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %vregion_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %vregion_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %vregion_list.i
  br i1 %cmp.i.not.i, label %mlxsw_sp_acl_tcam_group_del.exit.i.mlxsw_sp_acl_tcam_vgroup_del.exit_crit_edge, label %do.end.i, !prof !188

mlxsw_sp_acl_tcam_group_del.exit.i.mlxsw_sp_acl_tcam_vgroup_del.exit_crit_edge: ; preds = %mlxsw_sp_acl_tcam_group_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_tcam_vgroup_del.exit

do.end.i:                                         ; preds = %mlxsw_sp_acl_tcam_group_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 359, i32 noundef 9, ptr noundef null) #14
  br label %mlxsw_sp_acl_tcam_vgroup_del.exit

mlxsw_sp_acl_tcam_vgroup_del.exit:                ; preds = %do.end.i, %mlxsw_sp_acl_tcam_group_del.exit.i.mlxsw_sp_acl_tcam_vgroup_del.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_mr_ruleset_bind(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %ruleset_priv, ptr nocapture noundef readnone %mlxsw_sp_port, i1 noundef zeroext %ingress) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_acl_tcam_mr_ruleset_unbind(ptr nocapture noundef %mlxsw_sp, ptr nocapture noundef %ruleset_priv, ptr nocapture noundef %mlxsw_sp_port, i1 noundef zeroext %ingress) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mlxsw_sp_acl_tcam_mr_ruleset_group_id(ptr nocapture noundef readonly %ruleset_priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id.i, align 4
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_mr_rule_add(ptr noundef %mlxsw_sp, ptr noundef %ruleset_priv, ptr noundef %rule_priv, ptr noundef %rulei) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vgroup = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_mr_ruleset, ptr %ruleset_priv, i32 0, i32 1
  %call = tail call fastcc i32 @mlxsw_sp_acl_tcam_ventry_add(ptr noundef %mlxsw_sp, ptr noundef %vgroup, ptr noundef %rule_priv, ptr noundef %rulei)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_tcam_mr_rule_del(ptr noundef %mlxsw_sp, ptr noundef %rule_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_acl_tcam_ventry_del(ptr noundef %mlxsw_sp, ptr noundef %rule_priv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_mr_rule_action_replace(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %rule_priv, ptr noundef %rulei) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vchunk1.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, ptr %rule_priv, i32 0, i32 2
  %0 = ptrtoint ptr %vchunk1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchunk1.i, align 4
  %vregion.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vregion.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vregion.i, align 4
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region.i, align 4
  %6 = ptrtoint ptr %rule_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rule_priv, align 4
  %acl_tcam_ops.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %8 = ptrtoint ptr %acl_tcam_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acl_tcam_ops.i.i, align 4
  %entry_action_replace.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %entry_action_replace.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry_action_replace.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %5, i32 0, i32 8
  %priv2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %7, i32 0, i32 2
  %call.i.i = tail call i32 %11(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i, ptr noundef %priv2.i.i, ptr noundef %rulei) #14
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_tcam_mr_rule_activity_get(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %rule_priv, ptr noundef %activity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule_priv, align 4
  %acl_tcam_ops.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 31
  %2 = ptrtoint ptr %acl_tcam_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl_tcam_ops.i.i, align 4
  %entry_activity_get.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %entry_activity_get.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entry_activity_get.i.i, align 4
  %chunk.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %chunk.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chunk.i.i, align 4
  %region.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %region.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %region.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %9, i32 0, i32 8
  %priv2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, ptr %1, i32 0, i32 2
  %call.i.i = tail call i32 %5(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i, ptr noundef %priv2.i.i, ptr noundef %activity) #14
  ret i32 %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175}
!llvm.named.register.sp = !{!177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @mlxsw_sp_acl_tcam_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 41, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 902, i32 6}
!5 = !{ptr @mlxsw_sp_acl_tcam_profile_ops_arr, !6, !"mlxsw_sp_acl_tcam_profile_ops_arr", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1851, i32 1}
!7 = !{ptr @mlxsw_sp_acl_tcam_flower_ops, !8, !"mlxsw_sp_acl_tcam_flower_ops", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1698, i32 46}
!9 = !{ptr @mlxsw_sp_acl_tcam_group_add.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 298, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlxsw_sp_acl_tcam_vchunk_ht_params, !13, !"mlxsw_sp_acl_tcam_vchunk_ht_params", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 256, i32 39}
!14 = !{ptr @mlxsw_sp_acl_tcam_patterns, !15, !"mlxsw_sp_acl_tcam_patterns", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1580, i32 47}
!16 = !{ptr @mlxsw_sp_acl_tcam_pattern_ipv4, !17, !"mlxsw_sp_acl_tcam_pattern_ipv4", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1545, i32 37}
!18 = !{ptr @mlxsw_sp_acl_tcam_pattern_ipv6, !19, !"mlxsw_sp_acl_tcam_pattern_ipv6", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1565, i32 37}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__mlxsw_item_offset._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @__mlxsw_item_offset._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2356, i32 1}
!28 = distinct !{null, !27, !"mlxsw_reg_ppbt_e_item", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2366, i32 1}
!31 = distinct !{null, !30, !"mlxsw_reg_ppbt_op_item", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2372, i32 1}
!34 = distinct !{null, !33, !"mlxsw_reg_ppbt_local_port_item", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !33, !"mlxsw_reg_ppbt_lp_msb_item", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2380, i32 1}
!39 = distinct !{null, !38, !"mlxsw_reg_ppbt_g_item", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2387, i32 1}
!42 = distinct !{null, !41, !"mlxsw_reg_ppbt_acl_info_item", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2346, i32 1}
!45 = !{ptr @mlxsw_reg_ppbt, !44, !"mlxsw_reg_ppbt", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mlxsw_sp_acl_tcam_vregion_create.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 828, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mlxsw_sp_acl_tcam_vregion_create.__key.26, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 854, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mlxsw_sp_acl_tcam_vregion_create.__key.28, !65, !"__key", i1 false, i1 false}
!68 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2533, i32 1}
!71 = distinct !{null, !70, !"mlxsw_reg_ptar_op_item", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2540, i32 1}
!74 = distinct !{null, !73, !"mlxsw_reg_ptar_action_set_type_item", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2551, i32 1}
!77 = distinct !{null, !76, !"mlxsw_reg_ptar_key_type_item", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2561, i32 1}
!80 = distinct !{null, !79, !"mlxsw_reg_ptar_region_size_item", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2568, i32 1}
!83 = distinct !{null, !82, !"mlxsw_reg_ptar_region_id_item", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2576, i32 1}
!86 = distinct !{null, !85, !"mlxsw_reg_ptar_tcam_region_info_item", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2587, i32 1}
!89 = distinct !{null, !88, !"mlxsw_reg_ptar_flexible_key_id_item", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2517, i32 1}
!92 = !{ptr @mlxsw_reg_ptar, !91, !"mlxsw_reg_ptar", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2422, i32 1}
!95 = distinct !{null, !94, !"mlxsw_reg_pacl_acl_id_item", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2415, i32 1}
!98 = distinct !{null, !97, !"mlxsw_reg_pacl_v_item", i1 false, i1 false}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2431, i32 1}
!101 = distinct !{null, !100, !"mlxsw_reg_pacl_tcam_region_info_item", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2408, i32 1}
!104 = !{ptr @mlxsw_reg_pacl, !103, !"mlxsw_reg_pacl", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2472, i32 1}
!107 = distinct !{null, !106, !"mlxsw_reg_pagt_acl_group_id_item", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2465, i32 1}
!110 = distinct !{null, !109, !"mlxsw_reg_pagt_size_item", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2480, i32 1}
!113 = distinct !{null, !112, !"mlxsw_reg_pagt_multi_item", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2486, i32 1}
!116 = distinct !{null, !115, !"mlxsw_reg_pagt_acl_id_item", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2454, i32 1}
!119 = !{ptr @mlxsw_reg_pagt, !118, !"mlxsw_reg_pagt", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1530, i32 5}
!122 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1538, i32 3}
!129 = !{ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry.63, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @mlxsw_sp_acl_tcam_vregion_rehash._entry_ptr.65, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/trace/events/mlxsw.h", i32 36, i32 1}
!133 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!137 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1433, i32 4}
!140 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @mlxsw_sp_acl_tcam_vregion_migrate._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @mlxsw_sp_acl_tcam_vregion_migrate._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../include/trace/events/mlxsw.h", i32 56, i32 1}
!145 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/trace/events/mlxsw.h", i32 96, i32 1}
!148 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../include/trace/events/mlxsw.h", i32 76, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!156 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!167 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!168 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!169 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!170 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!175 = !{ptr @mlxsw_sp_acl_tcam_mr_ops, !176, !"mlxsw_sp_acl_tcam_mr_ops", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c", i32 1836, i32 46}
!177 = !{!"sp"}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{i64 2149969514}
!190 = !{i64 2152196546}
!191 = !{i64 2152199980}
!192 = !{i64 2149969780}
!193 = !{!"auto-init"}
!194 = !{i8 0, i8 2}
!195 = !{i64 2148261851, i64 2148261877, i64 2148261906, i64 2148261940, i64 2148261971, i64 2148261994}
!196 = !{i64 2152259861}
!197 = !{i64 2148264316, i64 2148264342, i64 2148264371, i64 2148264405, i64 2148264436, i64 2148264459}
!198 = !{i64 2148743666, i64 2148743671, i64 2148743684, i64 2148743728, i64 2148743762, i64 2148743783}
!199 = !{i64 2156215556}
!200 = !{i64 2156215817}
!201 = !{i64 2149978073}
!202 = !{i64 2149979109}
!203 = !{i64 2156238465}
!204 = !{i64 2156238728}
!205 = !{i64 2156277208}
!206 = !{i64 2156277501}
!207 = !{i64 2156257519}
!208 = !{i64 2156257790}
!209 = !{i64 2152158345}
!210 = !{!"branch_weights", i32 2146410443, i32 1073205}
!211 = !{i64 2148270709, i64 2148270741, i64 2148270770, i64 2148270804, i64 2148270835, i64 2148270858}
!212 = !{i64 2148359790}
!213 = !{i64 2152158505}
!214 = !{i64 2152158782}
!215 = !{i64 2152158624}
!216 = !{i64 2152158987}
!217 = !{i64 2152160050, i64 2152160542, i64 2152160087, i64 2152160143, i64 2152160177, i64 2152160201, i64 2152160242, i64 2152160263, i64 2152160291, i64 2152160325}
!218 = !{i64 2148358677}
!219 = !{i64 2148269096, i64 2148269128, i64 2148269157, i64 2148269191, i64 2148269222, i64 2148269245}
!220 = !{i64 2152161445}
!221 = !{i64 2152189619}
!222 = !{i64 2152191918}
