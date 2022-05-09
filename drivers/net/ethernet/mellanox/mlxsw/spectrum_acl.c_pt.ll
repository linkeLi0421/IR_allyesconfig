; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_acl_mangle_action = type { i32, i32, i32, i32, i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp_acl_rulei_ops = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlxsw_sp_acl = type { ptr, ptr, ptr, %struct.rhashtable, %struct.list_head, %struct.mutex, %struct.anon.174, %struct.mlxsw_sp_acl_tcam }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.174 = type { %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlxsw_sp_acl_tcam = type { ptr, i32, ptr, i32, i32, %struct.mutex, %struct.list_head, i32, [0 x i32] }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlxsw_sp_flow_block = type { %struct.list_head, %struct.anon.164, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.164 = type { %struct.list_head, i32, i32 }
%struct.mlxsw_sp_acl_ruleset = type { %struct.rhash_head, %struct.mlxsw_sp_acl_ruleset_ht_key, %struct.rhashtable, i32, i32, i32, [0 x i32] }
%struct.rhash_head = type { ptr }
%struct.mlxsw_sp_acl_ruleset_ht_key = type { ptr, i32, ptr }
%struct.mlxsw_sp_acl_profile_ops = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_flow_block_binding = type { %struct.list_head, ptr, i8 }
%struct.mlxsw_sp_acl_rule_info = type { i32, %struct.mlxsw_afk_element_values, ptr, i8, i32, i16 }
%struct.mlxsw_afk_element_values = type { %struct.mlxsw_afk_element_usage, %struct.anon.170 }
%struct.mlxsw_afk_element_usage = type { [1 x i32] }
%struct.anon.170 = type { [64 x i8], [64 x i8] }
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
%struct.mlxsw_sp_acl_rule = type { %struct.rhash_head, %struct.list_head, i32, ptr, ptr, i64, i64, i64, i64, [0 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@mlxsw_sp_acl_rulei_act_fwd.__msg = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlxsw_spectrum: Invalid output device\00", [58 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_fwd.__msg.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlxsw_spectrum: Invalid output device\00", [58 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_mirror.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxsw_spectrum: Only a single mirror source is allowed\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_vlan.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxsw_spectrum: Unsupported VLAN protocol\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.2, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported VLAN protocol %#04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxsw_sp_acl_rulei_act_vlan\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_vlan._entry_ptr = internal global ptr @mlxsw_sp_acl_rulei_act_vlan._entry, section ".printk_index", align 4
@mlxsw_sp_acl_rulei_act_vlan.__msg.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mlxsw_spectrum: Unsupported VLAN action\00", [56 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_vlan._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported VLAN action\0A\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_vlan._entry_ptr.9 = internal global ptr @mlxsw_sp_acl_rulei_act_vlan._entry.7, section ".printk_index", align 4
@mlxsw_sp_acl_rulei_act_priority.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlxsw_spectrum: Only priorities 0..7 are supported\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_mangle_actions = internal global { [10 x %struct.mlxsw_sp_acl_mangle_action], [56 x i8] } { [10 x %struct.mlxsw_sp_acl_mangle_action] [%struct.mlxsw_sp_acl_mangle_action { i32 2, i32 0, i32 -16711681, i32 16, i32 0 }, %struct.mlxsw_sp_acl_mangle_action { i32 2, i32 0, i32 -16515073, i32 18, i32 1 }, %struct.mlxsw_sp_acl_mangle_action { i32 2, i32 0, i32 -196609, i32 16, i32 2 }, %struct.mlxsw_sp_acl_mangle_action { i32 3, i32 0, i32 -267386881, i32 20, i32 0 }, %struct.mlxsw_sp_acl_mangle_action { i32 3, i32 0, i32 -264241153, i32 22, i32 1 }, %struct.mlxsw_sp_acl_mangle_action { i32 3, i32 0, i32 -3145729, i32 20, i32 2 }, %struct.mlxsw_sp_acl_mangle_action { i32 4, i32 0, i32 65535, i32 16, i32 3 }, %struct.mlxsw_sp_acl_mangle_action { i32 4, i32 0, i32 -65536, i32 0, i32 4 }, %struct.mlxsw_sp_acl_mangle_action { i32 5, i32 0, i32 65535, i32 16, i32 3 }, %struct.mlxsw_sp_acl_mangle_action { i32 5, i32 0, i32 -65536, i32 0, i32 4 }], [56 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_mangle.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlxsw_spectrum: Unknown mangle field\00", [59 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rulei_act_sample.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mlxsw_spectrum: Only a single sampling source is allowed\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rule_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 12, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_ruleset_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 12, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&acl->rules_lock\00", [47 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(work_completion)(&(&acl->rule_activity_update.dw)->work)\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&(&acl->rule_activity_update.dw)->timer\00", [56 x i8] zeroinitializer }, align 32
@mlxsw_sp1_acl_rulei_ops = dso_local global { %struct.mlxsw_sp_acl_rulei_ops, [28 x i8] } { %struct.mlxsw_sp_acl_rulei_ops { ptr @mlxsw_sp1_acl_rulei_act_mangle_field }, [28 x i8] zeroinitializer }, align 32
@mlxsw_sp2_acl_rulei_ops = dso_local global { %struct.mlxsw_sp_acl_rulei_ops, [28 x i8] } { %struct.mlxsw_sp_acl_rulei_ops { ptr @mlxsw_sp2_acl_rulei_act_mangle_field }, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlxsw_sp_acl_rule_activity_update_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 908, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not update acl activity\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlxsw_sp_acl_rule_activity_update_work\00", [57 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_rule_activity_update_work._entry_ptr = internal global ptr @mlxsw_sp_acl_rule_activity_update_work._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlxsw_sp1_acl_rulei_act_mangle_field.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mlxsw_spectrum: Unsupported mangle field\00", [55 x i8] zeroinitializer }, align 32
@mlxsw_sp2_acl_rulei_act_mangle_field.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mlxsw_spectrum: Unsupported mangle field\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 414, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 419, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 445, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 475, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 476, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 485, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 486, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 501, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"mlxsw_sp_acl_mangle_actions\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 550, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 648, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 702, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [28 x i8] c"mlxsw_sp_acl_rule_ht_params\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 81, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_acl_ruleset_ht_params\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 74, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 989, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 995, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"mlxsw_sp1_acl_rulei_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1043, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"mlxsw_sp2_acl_rulei_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1047, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 715, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 755, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 695, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 723, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 908, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 598, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.147 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 622, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @mlxsw_sp_acl_rule_activity_update_work._entry, ptr @mlxsw_sp_acl_rule_activity_update_work._entry_ptr, ptr @mlxsw_sp_acl_rulei_act_vlan._entry, ptr @mlxsw_sp_acl_rulei_act_vlan._entry.7, ptr @mlxsw_sp_acl_rulei_act_vlan._entry_ptr, ptr @mlxsw_sp_acl_rulei_act_vlan._entry_ptr.9, ptr @mlxsw_sp_acl_rulei_act_fwd.__msg, ptr @mlxsw_sp_acl_rulei_act_fwd.__msg.1, ptr @mlxsw_sp_acl_rulei_act_mirror.__msg, ptr @mlxsw_sp_acl_rulei_act_vlan.__msg, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mlxsw_sp_acl_rulei_act_vlan.__msg.6, ptr @.str.8, ptr @mlxsw_sp_acl_rulei_act_priority.__msg, ptr @mlxsw_sp_acl_mangle_actions, ptr @mlxsw_sp_acl_rulei_act_mangle.__msg, ptr @mlxsw_sp_acl_rulei_act_sample.__msg, ptr @mlxsw_sp_acl_rule_ht_params, ptr @mlxsw_sp_acl_ruleset_ht_params, ptr @mlxsw_sp_acl_init.__key, ptr @.str.10, ptr @mlxsw_sp_acl_init.__key.11, ptr @.str.12, ptr @mlxsw_sp_acl_init.__key.13, ptr @.str.14, ptr @mlxsw_sp1_acl_rulei_ops, ptr @mlxsw_sp2_acl_rulei_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.29, ptr @.str.30, ptr @mlxsw_sp1_acl_rulei_act_mangle_field.__msg, ptr @mlxsw_sp2_acl_rulei_act_mangle_field.__msg], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_fwd.__msg to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_fwd.__msg.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_mirror.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_vlan.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_vlan.__msg.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_vlan._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_priority.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_mangle_actions to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_mangle.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rulei_act_sample.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rule_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_ruleset_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_acl_rulei_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_acl_rulei_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_rule_activity_update_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_acl_rulei_act_mangle_field.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_acl_rulei_act_mangle_field.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_afk(ptr nocapture noundef readonly %acl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %afk = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %acl, i32 0, i32 1
  %0 = ptrtoint ptr %afk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %afk, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_dummy_fid(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %dummy_fid = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dummy_fid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dummy_fid, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_ruleset_bind(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %binding) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset_zero = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 2
  %0 = ptrtoint ptr %ruleset_zero to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset_zero, align 4
  %ops1 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %ruleset_bind = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ruleset_bind to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ruleset_bind, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 6
  %mlxsw_sp_port = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding, i32 0, i32 1
  %6 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp_port, align 4
  %ingress = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding, i32 0, i32 2
  %8 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ingress, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %call = tail call i32 %5(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr noundef %7, i1 noundef zeroext %tobool) #14
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_ruleset_unbind(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %binding) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset_zero = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 2
  %0 = ptrtoint ptr %ruleset_zero to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset_zero, align 4
  %ops1 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %ruleset_unbind = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ruleset_unbind to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ruleset_unbind, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 6
  %mlxsw_sp_port = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding, i32 0, i32 1
  %6 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp_port, align 4
  %ingress = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding, i32 0, i32 2
  %8 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ingress, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  tail call void %5(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr noundef %7, i1 noundef zeroext %tobool) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_ruleset_lookup(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %chain_index, i32 noundef %profile) local_unnamed_addr #2 align 64 {
entry:
  %ht_key.i = alloca %struct.mlxsw_sp_acl_ruleset_ht_key, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %0 = ptrtoint ptr %acl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl1, align 4
  %call = tail call ptr @mlxsw_sp_acl_tcam_profile_ops(ptr noundef %mlxsw_sp, i32 noundef %profile) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ht_key.i) #14
  %2 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset_ht_key, ptr %ht_key.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset_ht_key, ptr %ht_key.i, i32 0, i32 2
  %4 = ptrtoint ptr %ht_key.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %block, ptr %ht_key.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %chain_index, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %3, align 4
  %ruleset_ht.i = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 3
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ruleset_ht.i, ptr noundef nonnull %ht_key.i, [7 x i32] [i32 12, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ht_key.i) #14
  %tobool4.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool4.not, ptr inttoptr (i32 -2 to ptr), ptr %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_tcam_profile_ops(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_ruleset_get(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %chain_index, i32 noundef %profile, ptr noundef %tmplt_elusage) local_unnamed_addr #2 align 64 {
entry:
  %ht_key.i = alloca %struct.mlxsw_sp_acl_ruleset_ht_key, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %0 = ptrtoint ptr %acl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl1, align 4
  %call = tail call ptr @mlxsw_sp_acl_tcam_profile_ops(ptr noundef %mlxsw_sp, i32 noundef %profile) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ht_key.i) #14
  %2 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset_ht_key, ptr %ht_key.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset_ht_key, ptr %ht_key.i, i32 0, i32 2
  %4 = ptrtoint ptr %ht_key.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %block, ptr %ht_key.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %chain_index, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %3, align 4
  %ruleset_ht.i = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 3
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ruleset_ht.i, ptr noundef nonnull %ht_key.i, [7 x i32] [i32 12, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ht_key.i) #14
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref_count.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %ref_count.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %acl1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acl1, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %add.i = add i32 %12, 256
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.end.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %ref_count.i18 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call9.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ref_count.i18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ref_count.i18, align 4
  %ht_key.i19 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call9.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ht_key.i19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %block, ptr %ht_key.i19, align 4
  %chain_index5.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %chain_index5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %chain_index, ptr %chain_index5.i, align 8
  %ops7.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %ops7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %ops7.i, align 4
  %rule_ht.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call9.i.i.i, i32 0, i32 2
  %call8.i = call i32 @rhashtable_init(ptr noundef %rule_ht.i, ptr noundef nonnull @mlxsw_sp_acl_rule_ht_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.err_rhashtable_init.i_crit_edge

if.end.i.err_rhashtable_init.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_rhashtable_init.i

if.end11.i:                                       ; preds = %if.end.i
  %ruleset_add.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %ruleset_add.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ruleset_add.i, align 4
  %tcam.i = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %10, i32 0, i32 7
  %priv.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call9.i.i.i, i32 0, i32 6
  %min_prio.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call9.i.i.i, i32 0, i32 4
  %max_prio.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %call9.i.i.i, i32 0, i32 5
  %call12.i = call i32 %18(ptr noundef %mlxsw_sp, ptr noundef %tcam.i, ptr noundef %priv.i, ptr noundef %tmplt_elusage, ptr noundef %min_prio.i, ptr noundef %max_prio.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.err_ops_ruleset_add.i_crit_edge

if.end11.i.err_ops_ruleset_add.i_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_ops_ruleset_add.i

if.end15.i:                                       ; preds = %if.end11.i
  %ruleset_ht.i20 = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %10, i32 0, i32 3
  %call16.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %ruleset_ht.i20, ptr noundef nonnull %call9.i.i.i, [7 x i32] [i32 12, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.cleanup_crit_edge, label %err_ht_insert.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_ht_insert.i:                                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %ruleset_del.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %ruleset_del.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ruleset_del.i, align 4
  call void %20(ptr noundef %mlxsw_sp, ptr noundef %priv.i) #14
  br label %err_ops_ruleset_add.i

err_ops_ruleset_add.i:                            ; preds = %err_ht_insert.i, %if.end11.i.err_ops_ruleset_add.i_crit_edge
  %err.0.i = phi i32 [ %call12.i, %if.end11.i.err_ops_ruleset_add.i_crit_edge ], [ %call16.i, %err_ht_insert.i ]
  call void @rhashtable_destroy(ptr noundef %rule_ht.i) #14
  br label %err_rhashtable_init.i

err_rhashtable_init.i:                            ; preds = %err_ops_ruleset_add.i, %if.end.i.err_rhashtable_init.i_crit_edge
  %err.1.i = phi i32 [ %call8.i, %if.end.i.err_rhashtable_init.i_crit_edge ], [ %err.0.i, %err_ops_ruleset_add.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #14
  %21 = inttoptr i32 %err.1.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_rhashtable_init.i, %if.end15.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then5 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %21, %err_rhashtable_init.i ], [ %call9.i.i.i, %if.end15.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_ruleset_put(ptr noundef %mlxsw_sp, ptr noundef %ruleset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 3
  %0 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlxsw_sp_acl_ruleset_ref_dec.exit_crit_edge

entry.mlxsw_sp_acl_ruleset_ref_dec.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_ruleset_ref_dec.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ops1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ops1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1.i.i, align 4
  %acl2.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %4 = ptrtoint ptr %acl2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acl2.i.i, align 4
  %ruleset_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %5, i32 0, i32 3
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ruleset_ht.i.i, ptr noundef %ruleset, [7 x i32] [i32 12, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #14
  %ruleset_del.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ruleset_del.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ruleset_del.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 6
  tail call void %7(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i) #14
  %rule_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 2
  tail call void @rhashtable_destroy(ptr noundef %rule_ht.i.i) #14
  tail call void @kfree(ptr noundef %ruleset) #14
  br label %mlxsw_sp_acl_ruleset_ref_dec.exit

mlxsw_sp_acl_ruleset_ref_dec.exit:                ; preds = %if.end.i, %entry.mlxsw_sp_acl_ruleset_ref_dec.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mlxsw_sp_acl_ruleset_group_id(ptr noundef %ruleset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %ruleset_group_id = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ruleset_group_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ruleset_group_id, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 6
  %call = tail call zeroext i16 %3(ptr noundef %priv) #14
  ret i16 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlxsw_sp_acl_ruleset_prio_get(ptr nocapture noundef readonly %ruleset, ptr nocapture noundef writeonly %p_min_prio, ptr nocapture noundef writeonly %p_max_prio) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %min_prio = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 4
  %0 = ptrtoint ptr %min_prio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_prio, align 4
  %2 = ptrtoint ptr %p_min_prio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %p_min_prio, align 4
  %max_prio = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 5
  %3 = ptrtoint ptr %max_prio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_prio, align 4
  %5 = ptrtoint ptr %p_max_prio to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_max_prio, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_rulei_create(ptr nocapture noundef readonly %acl, ptr noundef %afa_block) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %afa_block, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %act_block to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %afa_block, ptr %act_block, align 8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl, align 4
  %afa = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %afa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %afa, align 4
  %call5 = tail call ptr @mlxsw_afa_block_create(ptr noundef %5) #14
  %act_block6 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %act_block6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %act_block6, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %action_created = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %action_created to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %action_created, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %action_created, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.then3 ], [ %call5, %if.then9 ], [ %call7.i.i, %if.end12 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afa_block_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_rulei_destroy(ptr noundef %rulei) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %action_created = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 3
  %0 = ptrtoint ptr %action_created to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %action_created, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %1 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %act_block, align 4
  tail call void @mlxsw_afa_block_destroy(ptr noundef %2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %rulei) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afa_block_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_commit(ptr nocapture noundef readonly %rulei) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_commit(ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlxsw_sp_acl_rulei_priority(ptr nocapture noundef writeonly %rulei, i32 noundef %priority) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rulei to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %priority, ptr %rulei, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef %element, i32 noundef %key_value, i32 noundef %mask_value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %values = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 1
  tail call void @mlxsw_afk_values_add_u32(ptr noundef %values, i32 noundef %element, i32 noundef %key_value, i32 noundef %mask_value) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afk_values_add_u32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef %element, ptr noundef %key_value, ptr noundef %mask_value, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %values = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 1
  tail call void @mlxsw_afk_values_add_buf(ptr noundef %values, i32 noundef %element, ptr noundef %key_value, ptr noundef %mask_value, i32 noundef %len) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afk_values_add_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_continue(ptr nocapture noundef readonly %rulei) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_continue(ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_continue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_jump(ptr nocapture noundef readonly %rulei, i16 noundef zeroext %group_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_jump(ptr noundef %1, i16 noundef zeroext %group_id) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_jump(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_terminate(ptr nocapture noundef readonly %rulei) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_terminate(ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_terminate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_drop(ptr nocapture noundef readonly %rulei, i1 noundef zeroext %ingress, ptr noundef %fa_cookie, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_append_drop(ptr noundef %1, i1 noundef zeroext %ingress, ptr noundef %fa_cookie, ptr noundef %extack) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_drop(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_trap(ptr nocapture noundef readonly %rulei) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_append_trap(ptr noundef %1, i16 noundef zeroext 448) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_trap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_fwd(ptr noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %rulei, ptr noundef %out_dev, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %out_dev, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef nonnull %out_dev) #14
  br i1 %call, label %if.end4, label %do.body

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_acl_rulei_act_fwd.__msg) #14
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp_acl_rulei_act_fwd.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.then
  %mlxsw_sp6 = getelementptr i8, ptr %out_dev, i32 2312
  %1 = ptrtoint ptr %mlxsw_sp6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp6, align 8
  %cmp.not = icmp eq ptr %2, %mlxsw_sp
  br i1 %cmp.not, label %if.end16, label %do.body8

do.body8:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_acl_rulei_act_fwd.__msg.1) #14
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %if.then11

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlxsw_sp_acl_rulei_act_fwd.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %local_port17 = getelementptr i8, ptr %out_dev, i32 2316
  %4 = ptrtoint ptr %local_port17 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %local_port17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %entry.if.end18_crit_edge
  %local_port.0 = phi i16 [ %5, %if.end16 ], [ 0, %entry.if.end18_crit_edge ]
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %6 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %act_block, align 4
  %call20 = tail call i32 @mlxsw_afa_block_append_fwd(ptr noundef %7, i16 noundef zeroext %local_port.0, i1 noundef zeroext %tobool.not, ptr noundef %extack) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then11, %do.body8.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end18 ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then11 ], [ -22, %do.body8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_fwd(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_mirror(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %rulei, ptr noundef %block, ptr noundef %out_dev, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %block, align 4
  %cmp.i.not.i = icmp eq ptr %1, %block
  br i1 %cmp.i.not.i, label %entry.do.body_crit_edge, label %list_is_singular.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

list_is_singular.exit:                            ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %block, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %1, %3
  br i1 %cmp.i.not, label %if.end3, label %list_is_singular.exit.do.body_crit_edge

list_is_singular.exit.do.body_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %list_is_singular.exit.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_acl_rulei_act_mirror.__msg) #14
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_acl_rulei_act_mirror.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #16
  %mlxsw_sp_port = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mlxsw_sp_port, align 4
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %7 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %act_block, align 4
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %local_port, align 4
  %ingress = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ingress, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5 = icmp ne i8 %12, 0
  %call6 = tail call i32 @mlxsw_afa_block_append_mirror(ptr noundef %8, i16 noundef zeroext %10, ptr noundef %out_dev, i1 noundef zeroext %tobool5, ptr noundef %extack) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_mirror(ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_vlan(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %rulei, i32 noundef %action, i16 noundef zeroext %vid, i16 noundef zeroext %proto, i8 noundef zeroext %prio, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %action)
  %cmp = icmp eq i32 %action, 10
  br i1 %cmp, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %conv = zext i16 %proto to i32
  %0 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %proto, label %do.body [
    i16 -32512, label %if.then.sw.epilog_crit_edge
    i16 -30552, label %sw.bb1
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_acl_rulei_act_vlan.__msg) #14
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then2

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_sp_acl_rulei_act_vlan.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %do.body.if.end_crit_edge
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %conv) #19
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %if.then.sw.epilog_crit_edge
  %ethertype.0 = phi i8 [ 1, %sw.bb1 ], [ 0, %if.then.sw.epilog_crit_edge ]
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %6 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_append_vlan_modify(ptr noundef %7, i16 noundef zeroext %vid, i8 noundef zeroext %prio, i8 noundef zeroext %ethertype.0, ptr noundef %extack) #14
  br label %cleanup

do.body7:                                         ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_acl_rulei_act_vlan.__msg.6) #14
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.if.end12_crit_edge, label %if.then10

do.body7.if.end12_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mlxsw_sp_acl_rulei_act_vlan.__msg.6, ptr %extack, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.body7.if.end12_crit_edge
  %bus_info18 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %9 = ptrtoint ptr %bus_info18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_info18, align 4
  %dev19 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.epilog, %if.end
  %retval.0 = phi i32 [ -22, %if.end ], [ %call, %sw.epilog ], [ -22, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_vlan_modify(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_priority(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %rulei, i32 noundef %prio, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp ugt i32 %prio, 7
  br i1 %cmp, label %do.body, label %if.end2

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_acl_rulei_act_priority.__msg) #14
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then1

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp_acl_rulei_act_priority.__msg, ptr %extack, align 4
  br label %return

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %1 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %act_block, align 4
  %conv = trunc i32 %prio to i8
  %call = tail call i32 @mlxsw_afa_block_append_qos_switch_prio(ptr noundef %2, i8 noundef zeroext %conv, ptr noundef %extack) #14
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %do.body.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end2 ], [ -22, %if.then1 ], [ -22, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_qos_switch_prio(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_mangle(ptr noundef %mlxsw_sp, ptr noundef %rulei, i32 noundef %htype, i32 noundef %offset, i32 noundef %mask, i32 noundef %val, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_rulei_ops1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 30
  %0 = ptrtoint ptr %acl_rulei_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_rulei_ops1, align 4
  %2 = load i32, ptr @mlxsw_sp_acl_mangle_actions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %htype)
  %cmp3 = icmp eq i32 %2, %htype
  br i1 %cmp3, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp5 = icmp eq i32 %3, %offset
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %mask)
  %cmp8 = icmp eq i32 %4, %mask
  br i1 %cmp8, label %land.lhs.true6.if.then_crit_edge, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true6.if.then_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %land.lhs.true6.9.if.then_crit_edge, %land.lhs.true6.8.if.then_crit_edge, %land.lhs.true6.7.if.then_crit_edge, %land.lhs.true6.6.if.then_crit_edge, %land.lhs.true6.5.if.then_crit_edge, %land.lhs.true6.4.if.then_crit_edge, %land.lhs.true6.3.if.then_crit_edge, %land.lhs.true6.2.if.then_crit_edge, %land.lhs.true6.1.if.then_crit_edge, %land.lhs.true6.if.then_crit_edge
  %i.024.lcssa = phi i32 [ 0, %land.lhs.true6.if.then_crit_edge ], [ 1, %land.lhs.true6.1.if.then_crit_edge ], [ 2, %land.lhs.true6.2.if.then_crit_edge ], [ 3, %land.lhs.true6.3.if.then_crit_edge ], [ 4, %land.lhs.true6.4.if.then_crit_edge ], [ 5, %land.lhs.true6.5.if.then_crit_edge ], [ 6, %land.lhs.true6.6.if.then_crit_edge ], [ 7, %land.lhs.true6.7.if.then_crit_edge ], [ 8, %land.lhs.true6.8.if.then_crit_edge ], [ 9, %land.lhs.true6.9.if.then_crit_edge ]
  %arrayidx.lcssa = phi ptr [ @mlxsw_sp_acl_mangle_actions, %land.lhs.true6.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 1), %land.lhs.true6.1.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 2), %land.lhs.true6.2.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 3), %land.lhs.true6.3.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 4), %land.lhs.true6.4.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 5), %land.lhs.true6.5.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 6), %land.lhs.true6.6.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 7), %land.lhs.true6.7.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 8), %land.lhs.true6.8.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 9), %land.lhs.true6.9.if.then_crit_edge ]
  %shift = getelementptr [10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 %i.024.lcssa, i32 3
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %shr = lshr i32 %val, %6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call = tail call i32 %8(ptr noundef %mlxsw_sp, ptr noundef %rulei, ptr noundef nonnull %arrayidx.lcssa, i32 noundef %shr, ptr noundef %extack) #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true6.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %9 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %htype)
  %cmp3.1 = icmp eq i32 %9, %htype
  br i1 %cmp3.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %10 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %offset)
  %cmp5.1 = icmp eq i32 %10, %offset
  br i1 %cmp5.1, label %land.lhs.true6.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true6.1:                                 ; preds = %land.lhs.true.1
  %11 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mask)
  %cmp8.1 = icmp eq i32 %11, %mask
  br i1 %cmp8.1, label %land.lhs.true6.1.if.then_crit_edge, label %land.lhs.true6.1.for.inc.1_crit_edge

land.lhs.true6.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true6.1.if.then_crit_edge:               ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.1:                                        ; preds = %land.lhs.true6.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %12 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %htype)
  %cmp3.2 = icmp eq i32 %12, %htype
  br i1 %cmp3.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %13 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %offset)
  %cmp5.2 = icmp eq i32 %13, %offset
  br i1 %cmp5.2, label %land.lhs.true6.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

land.lhs.true6.2:                                 ; preds = %land.lhs.true.2
  %14 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mask)
  %cmp8.2 = icmp eq i32 %14, %mask
  br i1 %cmp8.2, label %land.lhs.true6.2.if.then_crit_edge, label %land.lhs.true6.2.for.inc.2_crit_edge

land.lhs.true6.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

land.lhs.true6.2.if.then_crit_edge:               ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.2:                                        ; preds = %land.lhs.true6.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %15 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %htype)
  %cmp3.3 = icmp eq i32 %15, %htype
  br i1 %cmp3.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %16 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %offset)
  %cmp5.3 = icmp eq i32 %16, %offset
  br i1 %cmp5.3, label %land.lhs.true6.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

land.lhs.true6.3:                                 ; preds = %land.lhs.true.3
  %17 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %mask)
  %cmp8.3 = icmp eq i32 %17, %mask
  br i1 %cmp8.3, label %land.lhs.true6.3.if.then_crit_edge, label %land.lhs.true6.3.for.inc.3_crit_edge

land.lhs.true6.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true6.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

land.lhs.true6.3.if.then_crit_edge:               ; preds = %land.lhs.true6.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.3:                                        ; preds = %land.lhs.true6.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %18 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %htype)
  %cmp3.4 = icmp eq i32 %18, %htype
  br i1 %cmp3.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %19 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %offset)
  %cmp5.4 = icmp eq i32 %19, %offset
  br i1 %cmp5.4, label %land.lhs.true6.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

land.lhs.true6.4:                                 ; preds = %land.lhs.true.4
  %20 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %mask)
  %cmp8.4 = icmp eq i32 %20, %mask
  br i1 %cmp8.4, label %land.lhs.true6.4.if.then_crit_edge, label %land.lhs.true6.4.for.inc.4_crit_edge

land.lhs.true6.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true6.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

land.lhs.true6.4.if.then_crit_edge:               ; preds = %land.lhs.true6.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.4:                                        ; preds = %land.lhs.true6.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %21 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %htype)
  %cmp3.5 = icmp eq i32 %21, %htype
  br i1 %cmp3.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %22 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %offset)
  %cmp5.5 = icmp eq i32 %22, %offset
  br i1 %cmp5.5, label %land.lhs.true6.5, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true6.5:                                 ; preds = %land.lhs.true.5
  %23 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %mask)
  %cmp8.5 = icmp eq i32 %23, %mask
  br i1 %cmp8.5, label %land.lhs.true6.5.if.then_crit_edge, label %land.lhs.true6.5.for.inc.5_crit_edge

land.lhs.true6.5.for.inc.5_crit_edge:             ; preds = %land.lhs.true6.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

land.lhs.true6.5.if.then_crit_edge:               ; preds = %land.lhs.true6.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.5:                                        ; preds = %land.lhs.true6.5.for.inc.5_crit_edge, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %24 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %htype)
  %cmp3.6 = icmp eq i32 %24, %htype
  br i1 %cmp3.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %25 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %offset)
  %cmp5.6 = icmp eq i32 %25, %offset
  br i1 %cmp5.6, label %land.lhs.true6.6, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

land.lhs.true6.6:                                 ; preds = %land.lhs.true.6
  %26 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %mask)
  %cmp8.6 = icmp eq i32 %26, %mask
  br i1 %cmp8.6, label %land.lhs.true6.6.if.then_crit_edge, label %land.lhs.true6.6.for.inc.6_crit_edge

land.lhs.true6.6.for.inc.6_crit_edge:             ; preds = %land.lhs.true6.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

land.lhs.true6.6.if.then_crit_edge:               ; preds = %land.lhs.true6.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.6:                                        ; preds = %land.lhs.true6.6.for.inc.6_crit_edge, %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %27 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %htype)
  %cmp3.7 = icmp eq i32 %27, %htype
  br i1 %cmp3.7, label %land.lhs.true.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %28 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %offset)
  %cmp5.7 = icmp eq i32 %28, %offset
  br i1 %cmp5.7, label %land.lhs.true6.7, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

land.lhs.true6.7:                                 ; preds = %land.lhs.true.7
  %29 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %mask)
  %cmp8.7 = icmp eq i32 %29, %mask
  br i1 %cmp8.7, label %land.lhs.true6.7.if.then_crit_edge, label %land.lhs.true6.7.for.inc.7_crit_edge

land.lhs.true6.7.for.inc.7_crit_edge:             ; preds = %land.lhs.true6.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

land.lhs.true6.7.if.then_crit_edge:               ; preds = %land.lhs.true6.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.7:                                        ; preds = %land.lhs.true6.7.for.inc.7_crit_edge, %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %30 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %htype)
  %cmp3.8 = icmp eq i32 %30, %htype
  br i1 %cmp3.8, label %land.lhs.true.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %31 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %offset)
  %cmp5.8 = icmp eq i32 %31, %offset
  br i1 %cmp5.8, label %land.lhs.true6.8, label %land.lhs.true.8.for.inc.8_crit_edge

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.8

land.lhs.true6.8:                                 ; preds = %land.lhs.true.8
  %32 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %mask)
  %cmp8.8 = icmp eq i32 %32, %mask
  br i1 %cmp8.8, label %land.lhs.true6.8.if.then_crit_edge, label %land.lhs.true6.8.for.inc.8_crit_edge

land.lhs.true6.8.for.inc.8_crit_edge:             ; preds = %land.lhs.true6.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.8

land.lhs.true6.8.if.then_crit_edge:               ; preds = %land.lhs.true6.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.8:                                        ; preds = %land.lhs.true6.8.for.inc.8_crit_edge, %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %33 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %htype)
  %cmp3.9 = icmp eq i32 %33, %htype
  br i1 %cmp3.9, label %land.lhs.true.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  %34 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 9, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %offset)
  %cmp5.9 = icmp eq i32 %34, %offset
  br i1 %cmp5.9, label %land.lhs.true6.9, label %land.lhs.true.9.for.inc.9_crit_edge

land.lhs.true.9.for.inc.9_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.9

land.lhs.true6.9:                                 ; preds = %land.lhs.true.9
  %35 = load i32, ptr getelementptr inbounds ([10 x %struct.mlxsw_sp_acl_mangle_action], ptr @mlxsw_sp_acl_mangle_actions, i32 0, i32 9, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %mask)
  %cmp8.9 = icmp eq i32 %35, %mask
  br i1 %cmp8.9, label %land.lhs.true6.9.if.then_crit_edge, label %land.lhs.true6.9.for.inc.9_crit_edge

land.lhs.true6.9.for.inc.9_crit_edge:             ; preds = %land.lhs.true6.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.9

land.lhs.true6.9.if.then_crit_edge:               ; preds = %land.lhs.true6.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.9:                                        ; preds = %land.lhs.true6.9.for.inc.9_crit_edge, %land.lhs.true.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_acl_rulei_act_mangle.__msg) #14
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %for.inc.9.cleanup_crit_edge, label %if.then9

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mlxsw_sp_acl_rulei_act_mangle.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.inc.9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %if.then9 ], [ -22, %for.inc.9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_police(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %rulei, i32 noundef %index, i64 noundef %rate_bytes_ps, i32 noundef %burst, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %policer_index = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 5
  %call = tail call i32 @mlxsw_afa_block_append_police(ptr noundef %1, i32 noundef %index, i64 noundef %rate_bytes_ps, i32 noundef %burst, ptr noundef %policer_index, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %policer_index_valid = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 3
  %2 = ptrtoint ptr %policer_index_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %policer_index_valid, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %policer_index_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_police(ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_count(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %rulei, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 4
  %call = tail call i32 @mlxsw_afa_block_append_counter(ptr noundef %1, ptr noundef %counter_index, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %counter_valid = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 3
  %2 = ptrtoint ptr %counter_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %counter_valid, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %counter_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_counter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_fid_set(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %rulei, i16 noundef zeroext %fid, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_append_fid_set(ptr noundef %1, i16 noundef zeroext %fid, ptr noundef %extack) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_fid_set(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rulei_act_sample(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %rulei, ptr noundef %block, ptr noundef %psample_group, i32 noundef %rate, i32 noundef %trunc_size, i1 noundef zeroext %truncate, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %block, align 4
  %cmp.i.not.i = icmp eq ptr %1, %block
  br i1 %cmp.i.not.i, label %entry.do.body_crit_edge, label %list_is_singular.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

list_is_singular.exit:                            ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %block, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %1, %3
  br i1 %cmp.i.not, label %if.end3, label %list_is_singular.exit.do.body_crit_edge

list_is_singular.exit.do.body_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %list_is_singular.exit.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_acl_rulei_act_sample.__msg) #14
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_acl_rulei_act_sample.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #16
  %mlxsw_sp_port5 = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mlxsw_sp_port5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mlxsw_sp_port5, align 4
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %7 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %act_block, align 4
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %local_port, align 4
  %ingress = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ingress, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7 = icmp ne i8 %12, 0
  %call8 = tail call i32 @mlxsw_afa_block_append_sampler(ptr noundef %8, i16 noundef zeroext %10, ptr noundef %psample_group, i32 noundef %rate, i32 noundef %trunc_size, i1 noundef zeroext %truncate, i1 noundef zeroext %tobool7, ptr noundef %extack) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end3 ], [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_sampler(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_rule_create(ptr noundef %mlxsw_sp, ptr noundef %ruleset, i32 noundef %cookie, ptr noundef %afa_block, ptr nocapture noundef readnone %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 3
  %2 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %ref_count.i, align 4
  %rule_priv_size = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rule_priv_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rule_priv_size, align 4
  %add = add i32 %5, 56
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.err_alloc_crit_edge, label %if.end

entry.err_alloc_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_alloc

if.end:                                           ; preds = %entry
  %cookie2 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %call9.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %cookie2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cookie, ptr %cookie2, align 4
  %ruleset3 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %call9.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %ruleset3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ruleset, ptr %ruleset3, align 16
  %acl = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %8 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 152) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_acl_rulei_create.exit.thread, label %if.end.i

mlxsw_sp_acl_rulei_create.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rulei33 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %call9.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %rulei33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -12 to ptr), ptr %rulei33, align 4
  br label %if.then7

if.end.i:                                         ; preds = %if.end
  %tobool2.not.i = icmp eq ptr %afa_block, null
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %act_block.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %act_block.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %afa_block, ptr %act_block.i, align 8
  br label %mlxsw_sp_acl_rulei_create.exit

if.end4.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 4
  %afa.i = getelementptr inbounds %struct.mlxsw_sp, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %afa.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %afa.i, align 4
  %call5.i = tail call ptr @mlxsw_afa_block_create(ptr noundef %16) #14
  %act_block6.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %act_block6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i, ptr %act_block6.i, align 8
  %cmp.i.i25 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i25, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %mlxsw_sp_acl_rulei_create.exit

if.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %action_created.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %action_created.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %action_created.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %action_created.i, align 4
  br label %mlxsw_sp_acl_rulei_create.exit

mlxsw_sp_acl_rulei_create.exit:                   ; preds = %if.end12.i, %if.then9.i, %if.then3.i
  %retval.0.i = phi ptr [ %call7.i.i.i, %if.then3.i ], [ %call5.i, %if.then9.i ], [ %call7.i.i.i, %if.end12.i ]
  %rulei = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %call9.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %rulei to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %rulei, align 4
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlxsw_sp_acl_rulei_create.exit.if.then7_crit_edge, label %mlxsw_sp_acl_rulei_create.exit.cleanup_crit_edge

mlxsw_sp_acl_rulei_create.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_rulei_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

mlxsw_sp_acl_rulei_create.exit.if.then7_crit_edge: ; preds = %mlxsw_sp_acl_rulei_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

if.then7:                                         ; preds = %mlxsw_sp_acl_rulei_create.exit.if.then7_crit_edge, %mlxsw_sp_acl_rulei_create.exit.thread
  %retval.0.i35 = phi ptr [ inttoptr (i32 -12 to ptr), %mlxsw_sp_acl_rulei_create.exit.thread ], [ %retval.0.i, %mlxsw_sp_acl_rulei_create.exit.if.then7_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %err_alloc

err_alloc:                                        ; preds = %if.then7, %entry.err_alloc_crit_edge
  %err.0 = phi ptr [ %retval.0.i35, %if.then7 ], [ inttoptr (i32 -12 to ptr), %entry.err_alloc_crit_edge ]
  %20 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ref_count.i, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i27 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i27, label %if.end.i28, label %err_alloc.cleanup_crit_edge

err_alloc.cleanup_crit_edge:                      ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i28:                                       ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops1, align 4
  %acl2.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %24 = ptrtoint ptr %acl2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %acl2.i.i, align 4
  %ruleset_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %25, i32 0, i32 3
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ruleset_ht.i.i, ptr noundef %ruleset, [7 x i32] [i32 12, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #14
  %ruleset_del.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %ruleset_del.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ruleset_del.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 6
  tail call void %27(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i) #14
  %rule_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 2
  tail call void @rhashtable_destroy(ptr noundef %rule_ht.i.i) #14
  tail call void @kfree(ptr noundef %ruleset) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i28, %err_alloc.cleanup_crit_edge, %mlxsw_sp_acl_rulei_create.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %mlxsw_sp_acl_rulei_create.exit.cleanup_crit_edge ], [ %err.0, %err_alloc.cleanup_crit_edge ], [ %err.0, %if.end.i28 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_rule_destroy(ptr noundef %mlxsw_sp, ptr noundef %rule) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset1 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 3
  %0 = ptrtoint ptr %ruleset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset1, align 8
  %rulei = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 4
  %2 = ptrtoint ptr %rulei to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rulei, align 4
  %action_created.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %action_created.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %action_created.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.mlxsw_sp_acl_rulei_destroy.exit_crit_edge, label %if.then.i

entry.mlxsw_sp_acl_rulei_destroy.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_rulei_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %act_block.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %act_block.i, align 4
  tail call void @mlxsw_afa_block_destroy(ptr noundef %6) #14
  br label %mlxsw_sp_acl_rulei_destroy.exit

mlxsw_sp_acl_rulei_destroy.exit:                  ; preds = %if.then.i, %entry.mlxsw_sp_acl_rulei_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %3) #14
  tail call void @kfree(ptr noundef %rule) #14
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref_count.i, align 4
  %dec.i = add i32 %8, -1
  store i32 %dec.i, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i4 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i4, label %if.end.i, label %mlxsw_sp_acl_rulei_destroy.exit.mlxsw_sp_acl_ruleset_ref_dec.exit_crit_edge

mlxsw_sp_acl_rulei_destroy.exit.mlxsw_sp_acl_ruleset_ref_dec.exit_crit_edge: ; preds = %mlxsw_sp_acl_rulei_destroy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_ruleset_ref_dec.exit

if.end.i:                                         ; preds = %mlxsw_sp_acl_rulei_destroy.exit
  call void @__sanitizer_cov_trace_pc() #16
  %ops1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %ops1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops1.i.i, align 4
  %acl2.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %11 = ptrtoint ptr %acl2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %acl2.i.i, align 4
  %ruleset_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %12, i32 0, i32 3
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ruleset_ht.i.i, ptr noundef %1, [7 x i32] [i32 12, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #14
  %ruleset_del.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %ruleset_del.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ruleset_del.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 6
  tail call void %14(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i) #14
  %rule_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 2
  tail call void @rhashtable_destroy(ptr noundef %rule_ht.i.i) #14
  tail call void @kfree(ptr noundef %1) #14
  br label %mlxsw_sp_acl_ruleset_ref_dec.exit

mlxsw_sp_acl_ruleset_ref_dec.exit:                ; preds = %if.end.i, %mlxsw_sp_acl_rulei_destroy.exit.mlxsw_sp_acl_ruleset_ref_dec.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rule_add(ptr noundef %mlxsw_sp, ptr noundef %rule) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset1 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 3
  %0 = ptrtoint ptr %ruleset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset1, align 8
  %ht_key = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2, align 4
  %4 = ptrtoint ptr %ht_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ht_key, align 4
  %rule_add = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %rule_add to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rule_add, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 6
  %priv5 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 9
  %rulei = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 4
  %8 = ptrtoint ptr %rulei to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rulei, align 4
  %call = tail call i32 %7(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr noundef %priv5, ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %rule_ht = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 2
  %call7 = tail call fastcc i32 @rhashtable_insert_fast(ptr noundef %rule_ht, ptr noundef %rule, [7 x i32] [i32 4, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.err_rhashtable_insert_crit_edge

if.end.err_rhashtable_insert_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_rhashtable_insert

if.end10:                                         ; preds = %if.end
  %chain_index = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %chain_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chain_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %if.then14, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then14:                                        ; preds = %land.lhs.true
  %ruleset_zero.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %ruleset_zero.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then14
  %binding.0.in.i = phi ptr [ %5, %if.then14 ], [ %binding.0.i, %for.body.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %binding.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %binding.0.i = load ptr, ptr %binding.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %binding.0.i, %5
  br i1 %cmp.not.i, label %for.cond.i.if.end19_crit_edge, label %for.body.i

for.cond.i.if.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.body.i:                                       ; preds = %for.cond.i
  %16 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ruleset_zero.i, align 4
  %ops1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %17, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %ops1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops1.i.i, align 4
  %ruleset_bind.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ruleset_bind.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ruleset_bind.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %17, i32 0, i32 6
  %mlxsw_sp_port.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %mlxsw_sp_port.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mlxsw_sp_port.i.i, align 4
  %ingress.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %ingress.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ingress.i.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.i.i = icmp ne i8 %25, 0
  %call.i.i = tail call i32 %21(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i, ptr noundef %23, i1 noundef zeroext %tobool.i.i) #14
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.cond11.preheader.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.cond11.preheader.i:                           ; preds = %for.body.i
  %binding.1.in47.i = getelementptr inbounds %struct.list_head, ptr %binding.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %binding.1.in47.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %binding.148.i = load ptr, ptr %binding.1.in47.i, align 4
  %cmp14.not49.i = icmp eq ptr %binding.148.i, %5
  br i1 %cmp14.not49.i, label %for.cond11.preheader.i.err_ruleset_block_bind_crit_edge, label %for.cond11.preheader.i.for.body16.i_crit_edge

for.cond11.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond11.preheader.i
  br label %for.body16.i

for.cond11.preheader.i.err_ruleset_block_bind_crit_edge: ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_ruleset_block_bind

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond11.preheader.i.for.body16.i_crit_edge
  %binding.150.i = phi ptr [ %binding.1.i, %for.body16.i.for.body16.i_crit_edge ], [ %binding.148.i, %for.cond11.preheader.i.for.body16.i_crit_edge ]
  %27 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ruleset_zero.i, align 4
  %ops1.i41.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %28, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %ops1.i41.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops1.i41.i, align 4
  %ruleset_unbind.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ruleset_unbind.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ruleset_unbind.i.i, align 4
  %priv.i42.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %28, i32 0, i32 6
  %mlxsw_sp_port.i43.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.150.i, i32 0, i32 1
  %33 = ptrtoint ptr %mlxsw_sp_port.i43.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mlxsw_sp_port.i43.i, align 4
  %ingress.i44.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.150.i, i32 0, i32 2
  %35 = ptrtoint ptr %ingress.i44.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ingress.i44.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i45.i = icmp ne i8 %36, 0
  tail call void %32(ptr noundef %mlxsw_sp, ptr noundef %priv.i42.i, ptr noundef %34, i1 noundef zeroext %tobool.i45.i) #14
  %binding.1.in.i = getelementptr inbounds %struct.list_head, ptr %binding.150.i, i32 0, i32 1
  %37 = ptrtoint ptr %binding.1.in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %binding.1.i = load ptr, ptr %binding.1.in.i, align 4
  %cmp14.not.i = icmp eq ptr %binding.1.i, %5
  br i1 %cmp14.not.i, label %for.body16.i.err_ruleset_block_bind_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i

for.body16.i.err_ruleset_block_bind_crit_edge:    ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_ruleset_block_bind

if.end19:                                         ; preds = %for.cond.i.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %acl = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %38 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %acl, align 4
  %rules_lock = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %39, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %rules_lock, i32 noundef 0) #14
  %list = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 1
  %40 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %acl, align 4
  %rules = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %41, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %41, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %call.i.i78 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %43, ptr noundef %rules) #14
  br i1 %call.i.i78, label %if.end.i.i, label %if.end19.list_add_tail.exit_crit_edge

if.end19.list_add_tail.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list, ptr %prev.i, align 4
  %45 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rules, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end19.list_add_tail.exit_crit_edge
  %48 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %acl, align 4
  %rules_lock22 = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %49, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %rules_lock22) #14
  %rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 4
  %50 = ptrtoint ptr %rule_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rule_count, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %rule_count, align 4
  %52 = ptrtoint ptr %rulei to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rulei, align 4
  %ingress_bind_blocker = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %ingress_bind_blocker to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %ingress_bind_blocker, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %conv = zext i8 %bf.clear to i32
  %ingress_blocker_rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 6
  %55 = ptrtoint ptr %ingress_blocker_rule_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ingress_blocker_rule_count, align 4
  %add = add i32 %56, %conv
  store i32 %add, ptr %ingress_blocker_rule_count, align 4
  %57 = load ptr, ptr %rulei, align 4
  %egress_bind_blocker = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %egress_bind_blocker to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load25 = load i8, ptr %egress_bind_blocker, align 4
  %bf.lshr26 = lshr i8 %bf.load25, 5
  %bf.clear27 = and i8 %bf.lshr26, 1
  %conv28 = zext i8 %bf.clear27 to i32
  %egress_blocker_rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 7
  %59 = ptrtoint ptr %egress_blocker_rule_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %egress_blocker_rule_count, align 4
  %add29 = add i32 %60, %conv28
  store i32 %add29, ptr %egress_blocker_rule_count, align 4
  br label %cleanup

err_ruleset_block_bind:                           ; preds = %for.body16.i.err_ruleset_block_bind_crit_edge, %for.cond11.preheader.i.err_ruleset_block_bind_crit_edge
  %61 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %ruleset_zero.i, align 4
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %rule_ht, ptr noundef %rule, [7 x i32] [i32 4, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0])
  br label %err_rhashtable_insert

err_rhashtable_insert:                            ; preds = %err_ruleset_block_bind, %if.end.err_rhashtable_insert_crit_edge
  %err.0 = phi i32 [ %call7, %if.end.err_rhashtable_insert_crit_edge ], [ %call.i.i, %err_ruleset_block_bind ]
  %rule_del = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %3, i32 0, i32 8
  %62 = ptrtoint ptr %rule_del to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rule_del, align 4
  tail call void %63(ptr noundef %mlxsw_sp, ptr noundef %priv5) #14
  br label %cleanup

cleanup:                                          ; preds = %err_rhashtable_insert, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_rhashtable_insert ], [ 0, %list_add_tail.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 715, ptr noundef nonnull @.str.16) #14
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
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !105

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
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
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #14
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
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
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #14
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
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !106

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #14
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #14
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !106

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #14
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !107
  %25 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #14
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 377, ptr noundef nonnull @.str.18) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.19, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 732, ptr noundef nonnull @.str.18) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !106

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
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
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !105

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 377, ptr noundef nonnull @.str.18) #14
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
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #14
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #14, !srcloc !108
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #14
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #14
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !107
  %60 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1076, ptr noundef nonnull @.str.16) #14
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
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !105

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
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !106

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 377, ptr noundef nonnull @.str.18) #14
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
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1032, ptr noundef nonnull @.str.18) #14
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !109
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
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.27, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1004, ptr noundef nonnull @.str.18) #14
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
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #14, !srcloc !110
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !103
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
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !105

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
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.23, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1085, ptr noundef nonnull @.str.16) #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !107
  %46 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
define dso_local void @mlxsw_sp_acl_rule_del(ptr noundef %mlxsw_sp, ptr noundef %rule) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset1 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 3
  %0 = ptrtoint ptr %ruleset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset1, align 8
  %ht_key = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2, align 4
  %4 = ptrtoint ptr %ht_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ht_key, align 4
  %rulei = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 4
  %6 = ptrtoint ptr %rulei to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rulei, align 4
  %egress_bind_blocker = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %egress_bind_blocker to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %egress_bind_blocker, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %conv = zext i8 %bf.clear to i32
  %egress_blocker_rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %egress_blocker_rule_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %egress_blocker_rule_count, align 4
  %sub = sub i32 %10, %conv
  store i32 %sub, ptr %egress_blocker_rule_count, align 4
  %11 = load ptr, ptr %rulei, align 4
  %ingress_bind_blocker = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ingress_bind_blocker to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load6 = load i8, ptr %ingress_bind_blocker, align 4
  %bf.lshr7 = lshr i8 %bf.load6, 6
  %bf.clear8 = and i8 %bf.lshr7, 1
  %conv9 = zext i8 %bf.clear8 to i32
  %ingress_blocker_rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %ingress_blocker_rule_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ingress_blocker_rule_count, align 4
  %sub10 = sub i32 %14, %conv9
  store i32 %sub10, ptr %ingress_blocker_rule_count, align 4
  %rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %rule_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rule_count, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %rule_count, align 4
  %acl = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %17 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %acl, align 4
  %rules_lock = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %18, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %rules_lock, i32 noundef 0) #14
  %list = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %27 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %acl, align 4
  %rules_lock12 = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %28, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %rules_lock12) #14
  %chain_index = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %chain_index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chain_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %land.lhs.true, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %list_del.exit
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.i = icmp eq i32 %32, 2
  br i1 %cmp.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %binding.01.i = load ptr, ptr %5, align 4
  %cmp.not2.i = icmp eq ptr %binding.01.i, %5
  br i1 %cmp.not2.i, label %if.then.mlxsw_sp_acl_ruleset_block_unbind.exit_crit_edge, label %for.body.lr.ph.i

if.then.mlxsw_sp_acl_ruleset_block_unbind.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_ruleset_block_unbind.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %ruleset_zero.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %binding.03.i = phi ptr [ %binding.01.i, %for.body.lr.ph.i ], [ %binding.0.i, %for.body.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %ruleset_zero.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ruleset_zero.i.i, align 4
  %ops1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %35, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %ops1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops1.i.i, align 4
  %ruleset_unbind.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ruleset_unbind.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ruleset_unbind.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %35, i32 0, i32 6
  %mlxsw_sp_port.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.03.i, i32 0, i32 1
  %40 = ptrtoint ptr %mlxsw_sp_port.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mlxsw_sp_port.i.i, align 4
  %ingress.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.03.i, i32 0, i32 2
  %42 = ptrtoint ptr %ingress.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ingress.i.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.i.i = icmp ne i8 %43, 0
  tail call void %39(ptr noundef %mlxsw_sp, ptr noundef %priv.i.i, ptr noundef %41, i1 noundef zeroext %tobool.i.i) #14
  %44 = ptrtoint ptr %binding.03.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %binding.0.i = load ptr, ptr %binding.03.i, align 4
  %cmp.not.i = icmp eq ptr %binding.0.i, %5
  br i1 %cmp.not.i, label %for.body.i.mlxsw_sp_acl_ruleset_block_unbind.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.mlxsw_sp_acl_ruleset_block_unbind.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_ruleset_block_unbind.exit

mlxsw_sp_acl_ruleset_block_unbind.exit:           ; preds = %for.body.i.mlxsw_sp_acl_ruleset_block_unbind.exit_crit_edge, %if.then.mlxsw_sp_acl_ruleset_block_unbind.exit_crit_edge
  %ruleset_zero.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %5, i32 0, i32 2
  %45 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %ruleset_zero.i, align 4
  br label %if.end

if.end:                                           ; preds = %mlxsw_sp_acl_ruleset_block_unbind.exit, %land.lhs.true.if.end_crit_edge, %list_del.exit.if.end_crit_edge
  %rule_ht = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 2
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %rule_ht, ptr noundef %rule, [7 x i32] [i32 4, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0])
  %rule_del = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %3, i32 0, i32 8
  %46 = ptrtoint ptr %rule_del to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rule_del, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 9
  tail call void %47(ptr noundef %mlxsw_sp, ptr noundef %priv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rule_action_replace(ptr noundef %mlxsw_sp, ptr noundef %rule, ptr noundef %afa_block) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset1 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 3
  %0 = ptrtoint ptr %ruleset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset1, align 8
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2, align 4
  %rulei.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 4
  %4 = ptrtoint ptr %rulei.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rulei.i, align 4
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %act_block to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %afa_block, ptr %act_block, align 4
  %rule_action_replace = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %rule_action_replace to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rule_action_replace, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 9
  %9 = load ptr, ptr %rulei.i, align 4
  %call4 = tail call i32 %8(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr noundef %9) #14
  ret i32 %call4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_rule_rulei(ptr nocapture noundef readonly %rule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rulei = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %rulei to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rulei, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_rule_lookup(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %ruleset, i32 noundef %cookie) local_unnamed_addr #2 align 64 {
entry:
  %cookie.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cookie, ptr %cookie.addr, align 4
  %rule_ht = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %ruleset, i32 0, i32 2
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %rule_ht, ptr noundef nonnull %cookie.addr, [7 x i32] [i32 4, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0])
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #8 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #14
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
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 594, ptr noundef nonnull @.str.16) #14
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
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #14
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
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !106

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #14
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !111
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 369, ptr noundef nonnull @.str.16) #14
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
  call void @__sanitizer_cov_trace_pc() #16
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
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
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
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !112
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.28, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned.28, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 614, ptr noundef nonnull @.str.16) #14
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !106

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #14
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #14
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !107
  %43 = call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_rule_get_stats(ptr noundef %mlxsw_sp, ptr nocapture noundef %rule, ptr nocapture noundef writeonly %packets, ptr nocapture noundef writeonly %bytes, ptr nocapture noundef writeonly %drops, ptr nocapture noundef writeonly %last_use, ptr nocapture noundef writeonly %used_hw_stats) local_unnamed_addr #2 align 64 {
entry:
  %current_packets = alloca i64, align 8
  %current_bytes = alloca i64, align 8
  %current_drops = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %current_packets) #14
  %0 = ptrtoint ptr %current_packets to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %current_packets, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %current_bytes) #14
  %1 = ptrtoint ptr %current_bytes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %current_bytes, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %current_drops) #14
  %2 = ptrtoint ptr %current_drops to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %current_drops, align 8
  %rulei.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 4
  %3 = ptrtoint ptr %rulei.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rulei.i, align 4
  %counter_valid = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %counter_valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %counter_valid, align 4
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %counter_index, align 4
  %call1 = call i32 @mlxsw_sp_flow_counter_get(ptr noundef %mlxsw_sp, i32 noundef %8, ptr noundef nonnull %current_packets, ptr noundef nonnull %current_bytes) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %used_hw_stats to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %used_hw_stats, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %10 = ptrtoint ptr %counter_valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load5 = load i8, ptr %counter_valid, align 4
  %11 = and i8 %bf.load5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.end4.if.end14_crit_edge, label %if.then9

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then9:                                         ; preds = %if.end4
  %policer_index = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %4, i32 0, i32 5
  %12 = ptrtoint ptr %policer_index to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %policer_index, align 4
  %call10 = call i32 @mlxsw_sp_policer_drops_counter_get(ptr noundef %mlxsw_sp, i32 noundef 0, i16 noundef zeroext %13, ptr noundef nonnull %current_drops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %14 = ptrtoint ptr %current_packets to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %current_packets, align 8
  %last_packets = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 6
  %16 = ptrtoint ptr %last_packets to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %last_packets, align 8
  %sub = sub i64 %15, %17
  %18 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sub, ptr %packets, align 8
  %19 = ptrtoint ptr %current_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %current_bytes, align 8
  %last_bytes = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 7
  %21 = ptrtoint ptr %last_bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %last_bytes, align 8
  %sub15 = sub i64 %20, %22
  %23 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %sub15, ptr %bytes, align 8
  %24 = ptrtoint ptr %current_drops to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %current_drops, align 8
  %last_drops = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 8
  %26 = ptrtoint ptr %last_drops to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %last_drops, align 8
  %sub16 = sub i64 %25, %27
  %28 = ptrtoint ptr %drops to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %sub16, ptr %drops, align 8
  %last_used = getelementptr inbounds %struct.mlxsw_sp_acl_rule, ptr %rule, i32 0, i32 5
  %29 = ptrtoint ptr %last_used to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %last_used, align 8
  %31 = ptrtoint ptr %last_use to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %last_use, align 8
  store i64 %20, ptr %last_bytes, align 8
  store i64 %15, ptr %last_packets, align 8
  store i64 %25, ptr %last_drops, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call1, %if.then.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %current_drops) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %current_bytes) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %current_packets) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_flow_counter_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_policer_drops_counter_get(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_init(ptr noundef %mlxsw_sp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_acl_tcam_priv_size(ptr noundef %mlxsw_sp) #14
  %add = add i32 %call, 568
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %acl2 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %0 = ptrtoint ptr %acl2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %acl2, align 4
  %1 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mlxsw_sp, ptr %call9.i.i, align 128
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call4 = tail call i64 @mlxsw_core_res_get(ptr noundef %3, i32 noundef 25) #14
  %conv = trunc i64 %call4 to i32
  %afk_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 28
  %4 = ptrtoint ptr %afk_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %afk_ops, align 4
  %call5 = tail call ptr @mlxsw_afk_create(i32 noundef %conv, ptr noundef %5) #14
  %afk = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %afk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %afk, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.err_afk_create_crit_edge, label %if.end9

if.end.err_afk_create_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_afk_create

if.end9:                                          ; preds = %if.end
  %ruleset_ht = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 3
  %call10 = tail call i32 @rhashtable_init(ptr noundef %ruleset_ht, ptr noundef nonnull @mlxsw_sp_acl_ruleset_ht_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_rhashtable_init_crit_edge

if.end9.err_rhashtable_init_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_rhashtable_init

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @mlxsw_sp_fid_dummy_get(ptr noundef %mlxsw_sp) #14
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call14 to i32
  br label %err_fid_get

if.end18:                                         ; preds = %if.end13
  %dummy_fid = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %dummy_fid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %dummy_fid, align 8
  %rules = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %rules to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rules, ptr %rules, align 16
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rules, ptr %prev.i, align 4
  %rules_lock = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %rules_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlxsw_sp_acl_init.__key) #14
  %tcam = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 7
  %call19 = tail call i32 @mlxsw_sp_acl_tcam_init(ptr noundef %mlxsw_sp, ptr noundef %tcam) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body24, label %err_acl_ops_init

do.body24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %rule_activity_update = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %rule_activity_update, i32 noundef 0) #14
  %11 = ptrtoint ptr %rule_activity_update to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %rule_activity_update, align 4
  %lockdep_map = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 6, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @mlxsw_sp_acl_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry34 = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry34, ptr %entry34, align 8
  %prev.i89 = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 6, i32 0, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry34, ptr %prev.i89, align 4
  %func = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 6, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mlxsw_sp_acl_rule_activity_update_work, ptr %func, align 32
  %timer = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 6, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @mlxsw_sp_acl_init.__key.13) #14
  %interval = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %call9.i.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000, ptr %interval, align 8
  %call50 = tail call i32 @mlxsw_core_schedule_dw(ptr noundef %rule_activity_update, i32 noundef 0) #14
  br label %cleanup

err_acl_ops_init:                                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_destroy(ptr noundef %rules_lock) #14
  tail call void @mlxsw_sp_fid_put(ptr noundef %call14) #14
  br label %err_fid_get

err_fid_get:                                      ; preds = %err_acl_ops_init, %if.then16
  %err.0 = phi i32 [ %7, %if.then16 ], [ %call19, %err_acl_ops_init ]
  tail call void @rhashtable_destroy(ptr noundef %ruleset_ht) #14
  br label %err_rhashtable_init

err_rhashtable_init:                              ; preds = %err_fid_get, %if.end9.err_rhashtable_init_crit_edge
  %err.1 = phi i32 [ %call10, %if.end9.err_rhashtable_init_crit_edge ], [ %err.0, %err_fid_get ]
  %16 = ptrtoint ptr %afk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %afk, align 4
  tail call void @mlxsw_afk_destroy(ptr noundef %17) #14
  br label %err_afk_create

err_afk_create:                                   ; preds = %err_rhashtable_init, %if.end.err_afk_create_crit_edge
  %err.2 = phi i32 [ %err.1, %err_rhashtable_init ], [ -12, %if.end.err_afk_create_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_afk_create, %do.body24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_afk_create ], [ 0, %do.body24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_tcam_priv_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afk_create(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_fid_dummy_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_tcam_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_rule_activity_update_work(ptr noundef %work) #2 align 64 {
entry:
  %active.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -340
  %rules_lock.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %rules_lock.i, i32 noundef 0) #14
  %rules.i = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %rules.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn18.i = load ptr, ptr %rules.i, align 4
  %cmp.not19.i = icmp eq ptr %.pn18.i, %rules.i
  br i1 %cmp.not19.i, label %entry.mlxsw_sp_acl_rules_activity_update.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mlxsw_sp_acl_rules_activity_update.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_rules_activity_update.exit.thread

for.body.i:                                       ; preds = %mlxsw_sp_acl_rule_activity_update.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %mlxsw_sp_acl_rule_activity_update.exit.i.for.body.i_crit_edge ], [ %.pn18.i, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %ruleset1.i.i = getelementptr i8, ptr %.pn20.i, i32 12
  %3 = ptrtoint ptr %ruleset1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ruleset1.i.i, align 8
  %ops2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, ptr %4, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %ops2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %active.i.i) #14
  %7 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %active.i.i, align 1, !annotation !113
  %rule_activity_get.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, ptr %6, i32 0, i32 10
  %8 = ptrtoint ptr %rule_activity_get.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rule_activity_get.i.i, align 4
  %priv.i.i = getelementptr i8, ptr %.pn20.i, i32 52
  %call.i.i = call i32 %9(ptr noundef %2, ptr noundef %priv.i.i, ptr noundef nonnull %active.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end

if.end.i.i:                                       ; preds = %for.body.i
  %10 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active.i.i, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.mlxsw_sp_acl_rule_activity_update.exit.i_crit_edge, label %if.then4.i.i

if.end.i.i.mlxsw_sp_acl_rule_activity_update.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_rule_activity_update.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %conv.i.i = zext i32 %12 to i64
  %last_used.i.i = getelementptr i8, ptr %.pn20.i, i32 20
  %13 = ptrtoint ptr %last_used.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i.i, ptr %last_used.i.i, align 8
  br label %mlxsw_sp_acl_rule_activity_update.exit.i

mlxsw_sp_acl_rule_activity_update.exit.i:         ; preds = %if.then4.i.i, %if.end.i.i.mlxsw_sp_acl_rule_activity_update.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %active.i.i) #14
  %14 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rules.i
  br i1 %cmp.not.i, label %mlxsw_sp_acl_rule_activity_update.exit.i.mlxsw_sp_acl_rules_activity_update.exit.thread_crit_edge, label %mlxsw_sp_acl_rule_activity_update.exit.i.for.body.i_crit_edge

mlxsw_sp_acl_rule_activity_update.exit.i.for.body.i_crit_edge: ; preds = %mlxsw_sp_acl_rule_activity_update.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

mlxsw_sp_acl_rule_activity_update.exit.i.mlxsw_sp_acl_rules_activity_update.exit.thread_crit_edge: ; preds = %mlxsw_sp_acl_rule_activity_update.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_acl_rules_activity_update.exit.thread

mlxsw_sp_acl_rules_activity_update.exit.thread:   ; preds = %mlxsw_sp_acl_rule_activity_update.exit.i.mlxsw_sp_acl_rules_activity_update.exit.thread_crit_edge, %entry.mlxsw_sp_acl_rules_activity_update.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %rules_lock.i) #14
  br label %if.else.i.i

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %active.i.i) #14
  call void @mutex_unlock(ptr noundef %rules_lock.i) #14
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.29) #19
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %do.end, %mlxsw_sp_acl_rules_activity_update.exit.thread
  %interval1.i = getelementptr i8, ptr %work, i32 100
  %21 = ptrtoint ptr %interval1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %interval1.i, align 4
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %22) #14
  %call3.i = call i32 @mlxsw_core_schedule_dw(ptr noundef %work, i32 noundef %call2.i.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_schedule_dw(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_fid_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afk_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_fini(ptr noundef %mlxsw_sp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %0 = ptrtoint ptr %acl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl1, align 4
  %rule_activity_update = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rule_activity_update) #14
  %tcam = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 7
  tail call void @mlxsw_sp_acl_tcam_fini(ptr noundef %mlxsw_sp, ptr noundef %tcam) #14
  %rules_lock = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %rules_lock) #14
  %rules = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rules, align 4
  %cmp.i.not = icmp eq ptr %3, %rules
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !106

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1020, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dummy_fid = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dummy_fid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dummy_fid, align 4
  tail call void @mlxsw_sp_fid_put(ptr noundef %5) #14
  %ruleset_ht = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 3
  tail call void @rhashtable_destroy(ptr noundef %ruleset_ht) #14
  %afk = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %afk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afk, align 4
  tail call void @mlxsw_afk_destroy(ptr noundef %7) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_tcam_fini(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_region_rehash_intrvl_get(ptr noundef %mlxsw_sp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %0 = ptrtoint ptr %acl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl1, align 4
  %tcam = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 7
  %call = tail call i32 @mlxsw_sp_acl_tcam_vregion_rehash_intrvl_get(ptr noundef %mlxsw_sp, ptr noundef %tcam) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_rehash_intrvl_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_region_rehash_intrvl_set(ptr noundef %mlxsw_sp, i32 noundef %val) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %0 = ptrtoint ptr %acl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl1, align 4
  %tcam = getelementptr inbounds %struct.mlxsw_sp_acl, ptr %1, i32 0, i32 7
  %call = tail call i32 @mlxsw_sp_acl_tcam_vregion_rehash_intrvl_set(ptr noundef %mlxsw_sp, ptr noundef %tcam, i32 noundef %val) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_rehash_intrvl_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_acl_rulei_act_mangle_field(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %rulei, ptr nocapture noundef readonly %mact, i32 noundef %val, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %field.i = getelementptr inbounds %struct.mlxsw_sp_acl_mangle_action, ptr %mact, i32 0, i32 4
  %0 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %1, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %3 = ptrtoint ptr %act_block.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %act_block.i, align 4
  %conv.i = trunc i32 %val to i8
  %call.i = tail call i32 @mlxsw_afa_block_append_qos_dsfield(ptr noundef %4, i8 noundef zeroext %conv.i, ptr noundef %extack) #14
  br label %mlxsw_sp_acl_rulei_act_mangle_field.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block2.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %5 = ptrtoint ptr %act_block2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %act_block2.i, align 4
  %conv3.i = trunc i32 %val to i8
  %call4.i = tail call i32 @mlxsw_afa_block_append_qos_dscp(ptr noundef %6, i8 noundef zeroext %conv3.i, ptr noundef %extack) #14
  br label %mlxsw_sp_acl_rulei_act_mangle_field.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block6.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %7 = ptrtoint ptr %act_block6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %act_block6.i, align 4
  %conv7.i = trunc i32 %val to i8
  %call8.i = tail call i32 @mlxsw_afa_block_append_qos_ecn(ptr noundef %8, i8 noundef zeroext %conv7.i, ptr noundef %extack) #14
  br label %mlxsw_sp_acl_rulei_act_mangle_field.exit

mlxsw_sp_acl_rulei_act_mangle_field.exit:         ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call8.i, %sw.bb5.i ], [ %call4.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, -95
  br i1 %cmp.not, label %mlxsw_sp_acl_rulei_act_mangle_field.exit.do.body_crit_edge, label %mlxsw_sp_acl_rulei_act_mangle_field.exit.cleanup_crit_edge

mlxsw_sp_acl_rulei_act_mangle_field.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_rulei_act_mangle_field.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

mlxsw_sp_acl_rulei_act_mangle_field.exit.do.body_crit_edge: ; preds = %mlxsw_sp_acl_rulei_act_mangle_field.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %mlxsw_sp_acl_rulei_act_mangle_field.exit.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp1_acl_rulei_act_mangle_field.__msg) #14
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then1

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlxsw_sp1_acl_rulei_act_mangle_field.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %do.body.cleanup_crit_edge, %mlxsw_sp_acl_rulei_act_mangle_field.exit.cleanup_crit_edge
  %retval.0.i9 = phi i32 [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then1 ], [ %retval.0.i, %mlxsw_sp_acl_rulei_act_mangle_field.exit.cleanup_crit_edge ]
  ret i32 %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_rulei_act_mangle_field(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %rulei, ptr nocapture noundef readonly %mact, i32 noundef %val, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %field.i = getelementptr inbounds %struct.mlxsw_sp_acl_mangle_action, ptr %mact, i32 0, i32 4
  %0 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %3 = ptrtoint ptr %act_block.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %act_block.i, align 4
  %conv.i = trunc i32 %val to i8
  %call.i = tail call i32 @mlxsw_afa_block_append_qos_dsfield(ptr noundef %4, i8 noundef zeroext %conv.i, ptr noundef %extack) #14
  br label %mlxsw_sp_acl_rulei_act_mangle_field.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block2.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %5 = ptrtoint ptr %act_block2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %act_block2.i, align 4
  %conv3.i = trunc i32 %val to i8
  %call4.i = tail call i32 @mlxsw_afa_block_append_qos_dscp(ptr noundef %6, i8 noundef zeroext %conv3.i, ptr noundef %extack) #14
  br label %mlxsw_sp_acl_rulei_act_mangle_field.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %act_block6.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %7 = ptrtoint ptr %act_block6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %act_block6.i, align 4
  %conv7.i = trunc i32 %val to i8
  %call8.i = tail call i32 @mlxsw_afa_block_append_qos_ecn(ptr noundef %8, i8 noundef zeroext %conv7.i, ptr noundef %extack) #14
  br label %mlxsw_sp_acl_rulei_act_mangle_field.exit

mlxsw_sp_acl_rulei_act_mangle_field.exit:         ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call8.i, %sw.bb5.i ], [ %call4.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, -95
  br i1 %cmp.not, label %if.endthread-pre-split, label %mlxsw_sp_acl_rulei_act_mangle_field.exit.cleanup_crit_edge

mlxsw_sp_acl_rulei_act_mangle_field.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_rulei_act_mangle_field.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.endthread-pre-split:                           ; preds = %mlxsw_sp_acl_rulei_act_mangle_field.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %field.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %10 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %1, %entry.if.end_crit_edge ]
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %10, label %do.body [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %12 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %act_block, align 4
  %conv = trunc i32 %val to i16
  %call1 = tail call i32 @mlxsw_afa_block_append_l4port(ptr noundef %13, i1 noundef zeroext false, i16 noundef zeroext %conv, ptr noundef %extack) #14
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %act_block3 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %14 = ptrtoint ptr %act_block3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %act_block3, align 4
  %conv4 = trunc i32 %val to i16
  %call5 = tail call i32 @mlxsw_afa_block_append_l4port(ptr noundef %15, i1 noundef zeroext true, i16 noundef zeroext %conv4, ptr noundef %extack) #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp2_acl_rulei_act_mangle_field.__msg) #14
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlxsw_sp2_acl_rulei_act_mangle_field.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body.cleanup_crit_edge, %sw.bb2, %sw.bb, %mlxsw_sp_acl_rulei_act_mangle_field.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb2 ], [ %call1, %sw.bb ], [ %retval.0.i, %mlxsw_sp_acl_rulei_act_mangle_field.exit.cleanup_crit_edge ], [ -95, %if.then6 ], [ -95, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !114
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !115

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !117
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !106

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !118
  %7 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !119
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !120
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
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #14
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !121
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #8 align 64 {
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
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !105

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #14, !srcloc !122
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !124
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !125
  %3 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #8 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !126
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !127
  %2 = tail call i32 @llvm.read_register.i32(metadata !93) #14
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
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_qos_dsfield(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_qos_dscp(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_qos_ecn(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_l4port(ptr noundef, i1 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !45, !46, !48, !49, !51, !53, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @mlxsw_sp_acl_rulei_act_fwd.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 414, i32 4}
!2 = !{ptr @mlxsw_sp_acl_rulei_act_fwd.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 419, i32 4}
!4 = !{ptr @mlxsw_sp_acl_rulei_act_mirror.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 445, i32 3}
!6 = !{ptr @mlxsw_sp_acl_rulei_act_vlan.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 475, i32 4}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 476, i32 4}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlxsw_sp_acl_rulei_act_vlan._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlxsw_sp_acl_rulei_act_vlan._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mlxsw_sp_acl_rulei_act_vlan.__msg.6, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 485, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 486, i32 3}
!20 = !{ptr @mlxsw_sp_acl_rulei_act_vlan._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlxsw_sp_acl_rulei_act_vlan._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mlxsw_sp_acl_rulei_act_priority.__msg, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 501, i32 3}
!24 = !{ptr @mlxsw_sp_acl_rulei_act_mangle.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 648, i32 2}
!26 = !{ptr @mlxsw_sp_acl_rulei_act_sample.__msg, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 702, i32 3}
!28 = !{ptr @mlxsw_sp_acl_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 989, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mlxsw_sp_acl_init.__key.11, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 995, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mlxsw_sp_acl_init.__key.13, !32, !"__key", i1 false, i1 false}
!35 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mlxsw_sp1_acl_rulei_ops, !37, !"mlxsw_sp1_acl_rulei_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 1043, i32 31}
!38 = !{ptr @mlxsw_sp2_acl_rulei_ops, !39, !"mlxsw_sp2_acl_rulei_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 1047, i32 31}
!40 = !{ptr @mlxsw_sp_acl_mangle_actions, !41, !"mlxsw_sp_acl_mangle_actions", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 550, i32 42}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!60 = !{ptr @mlxsw_sp_acl_rule_ht_params, !61, !"mlxsw_sp_acl_rule_ht_params", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 81, i32 39}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!82 = !{ptr @mlxsw_sp_acl_ruleset_ht_params, !83, !"mlxsw_sp_acl_ruleset_ht_params", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 74, i32 39}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 908, i32 3}
!86 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mlxsw_sp_acl_rule_activity_update_work._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mlxsw_sp_acl_rule_activity_update_work._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @mlxsw_sp1_acl_rulei_act_mangle_field.__msg, !90, !"__msg", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 598, i32 2}
!91 = !{ptr @mlxsw_sp2_acl_rulei_act_mangle_field.__msg, !92, !"__msg", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl.c", i32 622, i32 2}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i8 0, i8 2}
!104 = !{i64 2149945402}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i64 2149945668}
!108 = !{i64 2148237739, i64 2148237765, i64 2148237794, i64 2148237828, i64 2148237859, i64 2148237882}
!109 = !{i64 2152235749}
!110 = !{i64 2148240204, i64 2148240230, i64 2148240259, i64 2148240293, i64 2148240324, i64 2148240347}
!111 = !{i64 2152172434}
!112 = !{i64 2152175868}
!113 = !{!"auto-init"}
!114 = !{i64 2152134233}
!115 = !{!"branch_weights", i32 2146410443, i32 1073205}
!116 = !{i64 2148246597, i64 2148246629, i64 2148246658, i64 2148246692, i64 2148246723, i64 2148246746}
!117 = !{i64 2148335678}
!118 = !{i64 2152134393}
!119 = !{i64 2152134670}
!120 = !{i64 2152134512}
!121 = !{i64 2152134875}
!122 = !{i64 2152135938, i64 2152136430, i64 2152135975, i64 2152136031, i64 2152136065, i64 2152136089, i64 2152136130, i64 2152136151, i64 2152136179, i64 2152136213}
!123 = !{i64 2148334565}
!124 = !{i64 2148244984, i64 2148245016, i64 2148245045, i64 2148245079, i64 2148245110, i64 2148245133}
!125 = !{i64 2152137333}
!126 = !{i64 2152165507}
!127 = !{i64 2152167806}
