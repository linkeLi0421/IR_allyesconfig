; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_fabric_configfs.c_pt.bc'
source_filename = "../drivers/target/target_core_fabric_configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.target_fabric_configfs = type { %struct.atomic_t, %struct.list_head, %struct.config_group, %struct.config_group, ptr, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type }
%struct.list_head = type { ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.percpu_ref = type { i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.se_tpg_np = type { ptr, %struct.config_group }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.se_lun_acl = type { i64, ptr, ptr, %struct.config_group, %struct.se_ml_stat_grps }
%struct.se_ml_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.se_dev_entry = type { i64, i64, i64, i8, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.kref, %struct.completion, ptr, %struct.spinlock, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.callback_head }

@target_fabric_setup_discovery_cit.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"target_fabric_setup_discovery_cit\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/target/target_core_fabric_configfs.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Setup generic %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"discovery\00", [22 x i8] zeroinitializer }, align 32
@target_fabric_wwn_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @target_fabric_make_wwn, ptr null, ptr null, ptr @target_fabric_drop_wwn }, [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_wwn_cit.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"target_fabric_setup_wwn_cit\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wwn\00", [28 x i8] zeroinitializer }, align 32
@target_fabric_make_wwn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tf->tf_ops.fabric_make_wwn is NULL\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"target_fabric_make_wwn\00", [41 x i8] zeroinitializer }, align 32
@target_fabric_make_wwn._entry_ptr = internal global ptr @target_fabric_make_wwn._entry, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fabric_statistics\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"param\00", [26 x i8] zeroinitializer }, align 32
@target_fabric_setup_wwn_fabric_stats_cit.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"target_fabric_setup_wwn_fabric_stats_cit\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wwn_fabric_stats\00", [47 x i8] zeroinitializer }, align 32
@target_fabric_wwn_param_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @target_fabric_wwn_attr_cmd_completion_affinity, ptr null], [24 x i8] zeroinitializer }, align 32
@target_fabric_setup_wwn_param_cit.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"target_fabric_setup_wwn_param_cit\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wwn_param\00", [22 x i8] zeroinitializer }, align 32
@target_fabric_wwn_attr_cmd_completion_affinity = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 420, ptr @target_fabric_wwn_cmd_completion_affinity_show, ptr @target_fabric_wwn_cmd_completion_affinity_store }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd_completion_affinity\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@target_fabric_wwn_cmd_completion_affinity_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013Command completion value must be between %d and %d or an online CPU.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"target_fabric_wwn_cmd_completion_affinity_store\00", [48 x i8] zeroinitializer }, align 32
@target_fabric_wwn_cmd_completion_affinity_store._entry_ptr = internal global ptr @target_fabric_wwn_cmd_completion_affinity_store._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@target_fabric_tpg_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @target_fabric_release_wwn, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@target_fabric_tpg_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @target_fabric_make_tpg, ptr null, ptr null, ptr @target_fabric_drop_tpg }, [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_cit.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.3, i8 0, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"target_fabric_setup_tpg_cit\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tpg\00", [28 x i8] zeroinitializer }, align 32
@target_fabric_make_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013tf->tf_ops->fabric_make_tpg is NULL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"target_fabric_make_tpg\00", [41 x i8] zeroinitializer }, align 32
@target_fabric_make_tpg._entry_ptr = internal global ptr @target_fabric_make_tpg._entry, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lun\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"np\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"acls\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"attrib\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auth\00", [27 x i8] zeroinitializer }, align 32
@target_fabric_tpg_base_attr_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.31, ptr null, i16 420, ptr @target_fabric_tpg_base_enable_show, ptr @target_fabric_tpg_base_enable_store }, [44 x i8] zeroinitializer }, align 32
@target_fabric_tpg_base_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @target_fabric_tpg_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_base_cit.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"target_fabric_setup_tpg_base_cit\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Setup generic tpg_base\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@target_fabric_port_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @target_fabric_port_release, ptr @target_fabric_port_link, ptr @target_fabric_port_unlink }, [20 x i8] zeroinitializer }, align 32
@target_fabric_port_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @target_fabric_port_attr_alua_tg_pt_gp, ptr @target_fabric_port_attr_alua_tg_pt_offline, ptr @target_fabric_port_attr_alua_tg_pt_status, ptr @target_fabric_port_attr_alua_tg_pt_write_md, ptr null], [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_port_cit.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.3, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"target_fabric_setup_tpg_port_cit\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tpg_port\00", [23 x i8] zeroinitializer }, align 32
@target_core_dev_item_ops = external dso_local global %struct.configfs_item_operations, align 4
@target_fabric_port_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Bad se_dev_ci, not a valid se_dev_ci pointer: %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"target_fabric_port_link\00", [40 x i8] zeroinitializer }, align 32
@target_fabric_port_link._entry_ptr = internal global ptr @target_fabric_port_link._entry, section ".printk_index", align 4
@target_fabric_port_link._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013se_device not configured yet, cannot port link\0A\00", [46 x i8] zeroinitializer }, align 32
@target_fabric_port_link._entry_ptr.38 = internal global ptr @target_fabric_port_link._entry.36, section ".printk_index", align 4
@target_fabric_port_link._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Port Symlink already exists\0A\00", [33 x i8] zeroinitializer }, align 32
@target_fabric_port_link._entry_ptr.41 = internal global ptr @target_fabric_port_link._entry.39, section ".printk_index", align 4
@target_fabric_port_link._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013core_dev_add_lun() failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@target_fabric_port_link._entry_ptr.44 = internal global ptr @target_fabric_port_link._entry.42, section ".printk_index", align 4
@target_fabric_port_attr_alua_tg_pt_gp = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.45, ptr null, i16 420, ptr @target_fabric_port_alua_tg_pt_gp_show, ptr @target_fabric_port_alua_tg_pt_gp_store }, [44 x i8] zeroinitializer }, align 32
@target_fabric_port_attr_alua_tg_pt_offline = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.46, ptr null, i16 420, ptr @target_fabric_port_alua_tg_pt_offline_show, ptr @target_fabric_port_alua_tg_pt_offline_store }, [44 x i8] zeroinitializer }, align 32
@target_fabric_port_attr_alua_tg_pt_status = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 420, ptr @target_fabric_port_alua_tg_pt_status_show, ptr @target_fabric_port_alua_tg_pt_status_store }, [44 x i8] zeroinitializer }, align 32
@target_fabric_port_attr_alua_tg_pt_write_md = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.48, ptr null, i16 420, ptr @target_fabric_port_alua_tg_pt_write_md_show, ptr @target_fabric_port_alua_tg_pt_write_md_store }, [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alua_tg_pt_gp\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"alua_tg_pt_offline\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alua_tg_pt_status\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alua_tg_pt_write_md\00", [44 x i8] zeroinitializer }, align 32
@target_fabric_port_stat_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @target_core_port_stat_mkdir, ptr null, ptr null, ptr @target_core_port_stat_rmdir }, [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_port_stat_cit.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.3, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target_fabric_setup_tpg_port_stat_cit\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tpg_port_stat\00", [18 x i8] zeroinitializer }, align 32
@target_fabric_lun_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @target_fabric_make_lun, ptr null, ptr null, ptr @target_fabric_drop_lun }, [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_lun_cit.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.3, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"target_fabric_setup_tpg_lun_cit\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tpg_lun\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lun_\00", [27 x i8] zeroinitializer }, align 32
@target_fabric_make_lun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to locate '_\22 in \22lun_$LUN_NUMBER\22\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"target_fabric_make_lun\00", [41 x i8] zeroinitializer }, align 32
@target_fabric_make_lun._entry_ptr = internal global ptr @target_fabric_make_lun._entry, section ".printk_index", align 4
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"statistics\00", [21 x i8] zeroinitializer }, align 32
@target_fabric_np_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @target_fabric_make_np, ptr null, ptr null, ptr @target_fabric_drop_np }, [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_np_cit.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.3, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"target_fabric_setup_tpg_np_cit\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tpg_np\00", [25 x i8] zeroinitializer }, align 32
@target_fabric_make_np._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013tf->tf_ops.fabric_make_np is NULL\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"target_fabric_make_np\00", [42 x i8] zeroinitializer }, align 32
@target_fabric_make_np._entry_ptr = internal global ptr @target_fabric_make_np._entry, section ".printk_index", align 4
@target_fabric_np_base_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @target_fabric_np_base_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_np_base_cit.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.3, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"target_fabric_setup_tpg_np_base_cit\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tpg_np_base\00", [20 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_attrib_cit.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.3, i8 0, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"target_fabric_setup_tpg_attrib_cit\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tpg_attrib\00", [21 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_auth_cit.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.3, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"target_fabric_setup_tpg_auth_cit\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tpg_auth\00", [23 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_param_cit.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.3, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"target_fabric_setup_tpg_param_cit\00", [62 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tpg_param\00", [22 x i8] zeroinitializer }, align 32
@target_fabric_nacl_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @target_fabric_make_nodeacl, ptr null, ptr null, ptr @target_fabric_drop_nodeacl }, [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_nacl_cit.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.3, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"target_fabric_setup_tpg_nacl_cit\00", [63 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tpg_nacl\00", [23 x i8] zeroinitializer }, align 32
@target_fabric_nacl_base_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @target_fabric_nacl_base_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@target_fabric_nacl_base_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @target_fabric_make_mappedlun, ptr null, ptr null, ptr @target_fabric_drop_mappedlun }, [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_nacl_base_cit.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.3, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target_fabric_setup_tpg_nacl_base_cit\00", [58 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tpg_nacl_base\00", [18 x i8] zeroinitializer }, align 32
@target_fabric_make_mappedlun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unable to allocate memory for name buf\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"target_fabric_make_mappedlun\00", [35 x i8] zeroinitializer }, align 32
@target_fabric_make_mappedlun._entry_ptr = internal global ptr @target_fabric_make_mappedlun._entry, section ".printk_index", align 4
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@target_fabric_make_mappedlun._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to locate \22lun_\22 from buf: %s name: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@target_fabric_make_mappedlun._entry_ptr.78 = internal global ptr @target_fabric_make_mappedlun._entry.76, section ".printk_index", align 4
@target_fabric_setup_tpg_nacl_attrib_cit.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"target_fabric_setup_tpg_nacl_attrib_cit\00", [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tpg_nacl_attrib\00", [16 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_nacl_auth_cit.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target_fabric_setup_tpg_nacl_auth_cit\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tpg_nacl_auth\00", [18 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_nacl_param_cit.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.3, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_fabric_setup_tpg_nacl_param_cit\00", [57 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tpg_nacl_param\00", [17 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_nacl_stat_cit.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target_fabric_setup_tpg_nacl_stat_cit\00", [58 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tpg_nacl_stat\00", [18 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @target_fabric_mappedlun_release, ptr @target_fabric_mappedlun_link, ptr @target_fabric_mappedlun_unlink }, [20 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @target_fabric_mappedlun_attr_write_protect, ptr null], [24 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_mappedlun_cit.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.3, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target_fabric_setup_tpg_mappedlun_cit\00", [58 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tpg_mappedlun\00", [18 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Bad lun_ci, not a valid lun_ci pointer: %p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"target_fabric_mappedlun_link\00", [35 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_link._entry_ptr = internal global ptr @target_fabric_mappedlun_link._entry, section ".printk_index", align 4
@target_fabric_mappedlun_link._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Source se_lun->lun_se_dev does not exist\0A\00", [52 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_link._entry_ptr.93 = internal global ptr @target_fabric_mappedlun_link._entry.91, section ".printk_index", align 4
@target_fabric_mappedlun_link._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013Unable to create mappedlun symlink because lun->lun_shutdown=true\0A\00", [59 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_link._entry_ptr.96 = internal global ptr @target_fabric_mappedlun_link._entry.94, section ".printk_index", align 4
@target_fabric_mappedlun_link._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Illegal Initiator ACL SymLink outside of %s\0A\00", [49 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_link._entry_ptr.99 = internal global ptr @target_fabric_mappedlun_link._entry.97, section ".printk_index", align 4
@target_fabric_mappedlun_link._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.90, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Illegal Initiator ACL Symlink outside of %s TPGT: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_link._entry_ptr.102 = internal global ptr @target_fabric_mappedlun_link._entry.100, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_attr_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.106, ptr null, i16 420, ptr @target_fabric_mappedlun_write_protect_show, ptr @target_fabric_mappedlun_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_protect\00", [18 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_write_protect_store.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.2, ptr @.str.108, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"target_fabric_mappedlun_write_protect_store\00", [52 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s_ConfigFS: Changed Initiator ACL: %s Mapped LUN: %llu Write Protect bit to %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@target_fabric_mappedlun_stat_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @target_core_mappedlun_stat_mkdir, ptr null, ptr null, ptr @target_core_mappedlun_stat_rmdir }, [44 x i8] zeroinitializer }, align 32
@target_fabric_setup_tpg_mappedlun_stat_cit.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"target_fabric_setup_tpg_mappedlun_stat_cit\00", [53 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpg_mappedlun_stat\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1095, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [28 x i8] c"target_fabric_wwn_group_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1089, i32 41 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1094, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1052, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1065, i32 55 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1069, i32 49 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 986, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [30 x i8] c"target_fabric_wwn_param_attrs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1034, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1039, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [47 x i8] c"target_fabric_wwn_attr_cmd_completion_affinity\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1032, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 996, i32 23 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 1022, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"target_fabric_tpg_item_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 967, i32 40 }
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"target_fabric_tpg_group_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 971, i32 41 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 976, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 901, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 912, i32 54 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 917, i32 53 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 922, i32 54 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 927, i32 57 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 932, i32 55 }
@___asan_gen_.221 = private unnamed_addr constant [35 x i8] c"target_fabric_tpg_base_attr_enable\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [32 x i8] c"target_fabric_tpg_base_item_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 814, i32 40 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 884, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 848, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant [28 x i8] c"target_fabric_port_item_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 702, i32 40 }
@___asan_gen_.239 = private unnamed_addr constant [25 x i8] c"target_fabric_port_attrs\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 611, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 708, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 633, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 639, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 649, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 655, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [38 x i8] c"target_fabric_port_attr_alua_tg_pt_gp\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [43 x i8] c"target_fabric_port_attr_alua_tg_pt_offline\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [42 x i8] c"target_fabric_port_attr_alua_tg_pt_status\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [44 x i8] c"target_fabric_port_attr_alua_tg_pt_write_md\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 606, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 607, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 608, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 609, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant [34 x i8] c"target_fabric_port_stat_group_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 728, i32 41 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 733, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant [28 x i8] c"target_fabric_lun_group_ops\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 789, i32 41 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 794, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 750, i32 19 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 751, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 767, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant [27 x i8] c"target_fabric_np_group_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 501, i32 41 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 506, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 476, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [31 x i8] c"target_fabric_np_base_item_ops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 456, i32 40 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 460, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 798, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 799, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 800, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant [29 x i8] c"target_fabric_nacl_group_ops\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 435, i32 41 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 440, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant [33 x i8] c"target_fabric_nacl_base_item_ops\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 347, i32 40 }
@___asan_gen_.389 = private unnamed_addr constant [34 x i8] c"target_fabric_nacl_base_group_ops\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 351, i32 41 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 356, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 279, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 282, i32 34 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 287, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 258, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 259, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 260, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 366, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant [33 x i8] c"target_fabric_mappedlun_item_ops\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 221, i32 40 }
@___asan_gen_.443 = private unnamed_addr constant [30 x i8] c"target_fabric_mappedlun_attrs\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 207, i32 35 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 227, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 79, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 88, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 92, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 107, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 112, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 695, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 723, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [43 x i8] c"target_fabric_mappedlun_attr_write_protect\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 205, i32 1 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 196, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant [39 x i8] c"target_fabric_mappedlun_stat_group_ops\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 248, i32 41 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.519 = private constant [48 x i8] c"../drivers/target/target_core_fabric_configfs.c\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 253, i32 1 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @target_fabric_make_lun._entry, ptr @target_fabric_make_lun._entry_ptr, ptr @target_fabric_make_mappedlun._entry, ptr @target_fabric_make_mappedlun._entry.76, ptr @target_fabric_make_mappedlun._entry_ptr, ptr @target_fabric_make_mappedlun._entry_ptr.78, ptr @target_fabric_make_np._entry, ptr @target_fabric_make_np._entry_ptr, ptr @target_fabric_make_tpg._entry, ptr @target_fabric_make_tpg._entry_ptr, ptr @target_fabric_make_wwn._entry, ptr @target_fabric_make_wwn._entry_ptr, ptr @target_fabric_mappedlun_link._entry, ptr @target_fabric_mappedlun_link._entry.100, ptr @target_fabric_mappedlun_link._entry.91, ptr @target_fabric_mappedlun_link._entry.94, ptr @target_fabric_mappedlun_link._entry.97, ptr @target_fabric_mappedlun_link._entry_ptr, ptr @target_fabric_mappedlun_link._entry_ptr.102, ptr @target_fabric_mappedlun_link._entry_ptr.93, ptr @target_fabric_mappedlun_link._entry_ptr.96, ptr @target_fabric_mappedlun_link._entry_ptr.99, ptr @target_fabric_port_link._entry, ptr @target_fabric_port_link._entry.36, ptr @target_fabric_port_link._entry.39, ptr @target_fabric_port_link._entry.42, ptr @target_fabric_port_link._entry_ptr, ptr @target_fabric_port_link._entry_ptr.38, ptr @target_fabric_port_link._entry_ptr.41, ptr @target_fabric_port_link._entry_ptr.44, ptr @target_fabric_wwn_cmd_completion_affinity_store._entry, ptr @target_fabric_wwn_cmd_completion_affinity_store._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @target_fabric_wwn_group_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @target_fabric_wwn_param_attrs, ptr @.str.13, ptr @.str.14, ptr @target_fabric_wwn_attr_cmd_completion_affinity, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @target_fabric_tpg_item_ops, ptr @target_fabric_tpg_group_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @target_fabric_tpg_base_attr_enable, ptr @target_fabric_tpg_base_item_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @target_fabric_port_item_ops, ptr @target_fabric_port_attrs, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @target_fabric_port_attr_alua_tg_pt_gp, ptr @target_fabric_port_attr_alua_tg_pt_offline, ptr @target_fabric_port_attr_alua_tg_pt_status, ptr @target_fabric_port_attr_alua_tg_pt_write_md, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @target_fabric_port_stat_group_ops, ptr @.str.49, ptr @.str.50, ptr @target_fabric_lun_group_ops, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @target_fabric_np_group_ops, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @target_fabric_np_base_item_ops, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @target_fabric_nacl_group_ops, ptr @.str.69, ptr @.str.70, ptr @target_fabric_nacl_base_item_ops, ptr @target_fabric_nacl_base_group_ops, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @target_fabric_mappedlun_item_ops, ptr @target_fabric_mappedlun_attrs, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @target_fabric_mappedlun_attr_write_protect, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @target_fabric_mappedlun_stat_group_ops, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_wwn_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_make_wwn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_wwn_param_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_wwn_attr_cmd_completion_affinity to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_wwn_cmd_completion_affinity_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_tpg_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_tpg_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_make_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_tpg_base_attr_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_tpg_base_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_link._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_link._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_link._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_attr_alua_tg_pt_gp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_attr_alua_tg_pt_offline to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_attr_alua_tg_pt_status to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_attr_alua_tg_pt_write_md to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_port_stat_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_lun_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_make_lun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_np_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_make_np._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_np_base_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_nacl_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_nacl_base_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_nacl_base_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_make_mappedlun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_make_mappedlun._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_link._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_link._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_link._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_link._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_attr_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_fabric_mappedlun_stat_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_fabric_setup_cits(ptr noundef %tf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tf_discovery_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 5
  %tf_ops.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 4
  %0 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tf_ops.i, align 4
  %tfc_discovery_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %tfc_discovery_attrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfc_discovery_attrs.i, align 4
  %ct_item_ops.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %ct_item_ops.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ct_item_ops.i, align 4
  %ct_group_ops.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %ct_group_ops.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ct_group_ops.i, align 4
  %ct_attrs.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %ct_attrs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %ct_attrs.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %tf_discovery_cit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %tf_discovery_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_discovery_cit.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i)) #13
          to label %target_fabric_setup_discovery_cit.exit [label %if.then.i], !srcloc !266

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_discovery_cit.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #13
  br label %target_fabric_setup_discovery_cit.exit

target_fabric_setup_discovery_cit.exit:           ; preds = %if.then.i, %entry
  %tf_wwn_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 6
  %10 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tf_ops.i, align 4
  %tfc_wwn_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %11, i32 0, i32 39
  %12 = ptrtoint ptr %tfc_wwn_attrs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfc_wwn_attrs.i, align 4
  %ct_item_ops.i24 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %ct_item_ops.i24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ct_item_ops.i24, align 4
  %ct_group_ops.i25 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %ct_group_ops.i25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @target_fabric_wwn_group_ops, ptr %ct_group_ops.i25, align 4
  %ct_attrs.i26 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %ct_attrs.i26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %ct_attrs.i26, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %11, align 4
  %19 = ptrtoint ptr %tf_wwn_cit.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %tf_wwn_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_wwn_cit.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i27)) #13
          to label %target_fabric_setup_wwn_cit.exit [label %if.then.i27], !srcloc !266

if.then.i27:                                      ; preds = %target_fabric_setup_discovery_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_wwn_cit.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #13
  br label %target_fabric_setup_wwn_cit.exit

target_fabric_setup_wwn_cit.exit:                 ; preds = %if.then.i27, %target_fabric_setup_discovery_cit.exit
  %tf_wwn_fabric_stats_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 7
  %ct_item_ops.i28 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %ct_item_ops.i28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ct_item_ops.i28, align 4
  %ct_group_ops.i29 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %ct_group_ops.i29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ct_group_ops.i29, align 4
  %ct_attrs.i30 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %ct_attrs.i30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ct_attrs.i30, align 4
  %23 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tf_ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %tf_wwn_fabric_stats_cit.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %tf_wwn_fabric_stats_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_wwn_fabric_stats_cit.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i32)) #13
          to label %target_fabric_setup_wwn_fabric_stats_cit.exit [label %if.then.i32], !srcloc !266

if.then.i32:                                      ; preds = %target_fabric_setup_wwn_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_wwn_fabric_stats_cit.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12) #13
  br label %target_fabric_setup_wwn_fabric_stats_cit.exit

target_fabric_setup_wwn_fabric_stats_cit.exit:    ; preds = %if.then.i32, %target_fabric_setup_wwn_cit.exit
  %tf_wwn_param_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 8
  %ct_item_ops.i33 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %ct_item_ops.i33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ct_item_ops.i33, align 4
  %ct_group_ops.i34 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %ct_group_ops.i34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ct_group_ops.i34, align 4
  %ct_attrs.i35 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 8, i32 3
  %30 = ptrtoint ptr %ct_attrs.i35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @target_fabric_wwn_param_attrs, ptr %ct_attrs.i35, align 4
  %31 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tf_ops.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %tf_wwn_param_cit.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %tf_wwn_param_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_wwn_param_cit.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i37)) #13
          to label %target_fabric_setup_wwn_param_cit.exit [label %if.then.i37], !srcloc !266

if.then.i37:                                      ; preds = %target_fabric_setup_wwn_fabric_stats_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_wwn_param_cit.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #13
  br label %target_fabric_setup_wwn_param_cit.exit

target_fabric_setup_wwn_param_cit.exit:           ; preds = %if.then.i37, %target_fabric_setup_wwn_fabric_stats_cit.exit
  %tf_tpg_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 9
  %ct_item_ops.i38 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %ct_item_ops.i38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @target_fabric_tpg_item_ops, ptr %ct_item_ops.i38, align 4
  %ct_group_ops.i39 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 9, i32 2
  %37 = ptrtoint ptr %ct_group_ops.i39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @target_fabric_tpg_group_ops, ptr %ct_group_ops.i39, align 4
  %ct_attrs.i40 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 9, i32 3
  %38 = ptrtoint ptr %ct_attrs.i40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %ct_attrs.i40, align 4
  %39 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tf_ops.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %tf_tpg_cit.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %tf_tpg_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_cit.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i42)) #13
          to label %target_fabric_setup_tpg_cit.exit [label %if.then.i42], !srcloc !266

if.then.i42:                                      ; preds = %target_fabric_setup_wwn_param_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_cit.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21) #13
  br label %target_fabric_setup_tpg_cit.exit

target_fabric_setup_tpg_cit.exit:                 ; preds = %if.then.i42, %target_fabric_setup_wwn_param_cit.exit
  %call = tail call fastcc i32 @target_fabric_setup_tpg_base_cit(ptr noundef %tf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %target_fabric_setup_tpg_cit.exit.cleanup_crit_edge

target_fabric_setup_tpg_cit.exit.cleanup_crit_edge: ; preds = %target_fabric_setup_tpg_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %target_fabric_setup_tpg_cit.exit
  %tf_tpg_port_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 12
  %ct_item_ops.i43 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 12, i32 1
  %44 = ptrtoint ptr %ct_item_ops.i43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @target_fabric_port_item_ops, ptr %ct_item_ops.i43, align 4
  %ct_group_ops.i44 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 12, i32 2
  %45 = ptrtoint ptr %ct_group_ops.i44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %ct_group_ops.i44, align 4
  %ct_attrs.i45 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 12, i32 3
  %46 = ptrtoint ptr %ct_attrs.i45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @target_fabric_port_attrs, ptr %ct_attrs.i45, align 4
  %47 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tf_ops.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %tf_tpg_port_cit.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %tf_tpg_port_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_port_cit.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i47)) #13
          to label %target_fabric_setup_tpg_port_cit.exit [label %if.then.i47], !srcloc !266

if.then.i47:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_port_cit.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33) #13
  br label %target_fabric_setup_tpg_port_cit.exit

target_fabric_setup_tpg_port_cit.exit:            ; preds = %if.then.i47, %if.end
  %tf_tpg_port_stat_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 13
  %ct_item_ops.i48 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 13, i32 1
  %52 = ptrtoint ptr %ct_item_ops.i48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %ct_item_ops.i48, align 4
  %ct_group_ops.i49 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 13, i32 2
  %53 = ptrtoint ptr %ct_group_ops.i49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @target_fabric_port_stat_group_ops, ptr %ct_group_ops.i49, align 4
  %ct_attrs.i50 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 13, i32 3
  %54 = ptrtoint ptr %ct_attrs.i50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %ct_attrs.i50, align 4
  %55 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tf_ops.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %tf_tpg_port_stat_cit.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %tf_tpg_port_stat_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_port_stat_cit.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i52)) #13
          to label %target_fabric_setup_tpg_port_stat_cit.exit [label %if.then.i52], !srcloc !266

if.then.i52:                                      ; preds = %target_fabric_setup_tpg_port_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_port_stat_cit.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #13
  br label %target_fabric_setup_tpg_port_stat_cit.exit

target_fabric_setup_tpg_port_stat_cit.exit:       ; preds = %if.then.i52, %target_fabric_setup_tpg_port_cit.exit
  %tf_tpg_lun_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 11
  %ct_item_ops.i53 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 11, i32 1
  %60 = ptrtoint ptr %ct_item_ops.i53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %ct_item_ops.i53, align 4
  %ct_group_ops.i54 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 11, i32 2
  %61 = ptrtoint ptr %ct_group_ops.i54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @target_fabric_lun_group_ops, ptr %ct_group_ops.i54, align 4
  %ct_attrs.i55 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 11, i32 3
  %62 = ptrtoint ptr %ct_attrs.i55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %ct_attrs.i55, align 4
  %63 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tf_ops.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %67 = ptrtoint ptr %tf_tpg_lun_cit.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %tf_tpg_lun_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_lun_cit.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i57)) #13
          to label %target_fabric_setup_tpg_lun_cit.exit [label %if.then.i57], !srcloc !266

if.then.i57:                                      ; preds = %target_fabric_setup_tpg_port_stat_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_lun_cit.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #13
  br label %target_fabric_setup_tpg_lun_cit.exit

target_fabric_setup_tpg_lun_cit.exit:             ; preds = %if.then.i57, %target_fabric_setup_tpg_port_stat_cit.exit
  %tf_tpg_np_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 14
  %ct_item_ops.i58 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 14, i32 1
  %68 = ptrtoint ptr %ct_item_ops.i58 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %ct_item_ops.i58, align 4
  %ct_group_ops.i59 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 14, i32 2
  %69 = ptrtoint ptr %ct_group_ops.i59 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @target_fabric_np_group_ops, ptr %ct_group_ops.i59, align 4
  %ct_attrs.i60 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 14, i32 3
  %70 = ptrtoint ptr %ct_attrs.i60 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %ct_attrs.i60, align 4
  %71 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tf_ops.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %75 = ptrtoint ptr %tf_tpg_np_cit.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %tf_tpg_np_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_np_cit.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i62)) #13
          to label %target_fabric_setup_tpg_np_cit.exit [label %if.then.i62], !srcloc !266

if.then.i62:                                      ; preds = %target_fabric_setup_tpg_lun_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_np_cit.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #13
  br label %target_fabric_setup_tpg_np_cit.exit

target_fabric_setup_tpg_np_cit.exit:              ; preds = %if.then.i62, %target_fabric_setup_tpg_lun_cit.exit
  %tf_tpg_np_base_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 15
  %76 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tf_ops.i, align 4
  %tfc_tpg_np_base_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %77, i32 0, i32 41
  %78 = ptrtoint ptr %tfc_tpg_np_base_attrs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tfc_tpg_np_base_attrs.i, align 4
  %ct_item_ops.i64 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 15, i32 1
  %80 = ptrtoint ptr %ct_item_ops.i64 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @target_fabric_np_base_item_ops, ptr %ct_item_ops.i64, align 4
  %ct_group_ops.i65 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 15, i32 2
  %81 = ptrtoint ptr %ct_group_ops.i65 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %ct_group_ops.i65, align 4
  %ct_attrs.i66 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 15, i32 3
  %82 = ptrtoint ptr %ct_attrs.i66 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %ct_attrs.i66, align 4
  %83 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %77, align 4
  %85 = ptrtoint ptr %tf_tpg_np_base_cit.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %tf_tpg_np_base_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_np_base_cit.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i67)) #13
          to label %target_fabric_setup_tpg_np_base_cit.exit [label %if.then.i67], !srcloc !266

if.then.i67:                                      ; preds = %target_fabric_setup_tpg_np_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_np_base_cit.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #13
  br label %target_fabric_setup_tpg_np_base_cit.exit

target_fabric_setup_tpg_np_base_cit.exit:         ; preds = %if.then.i67, %target_fabric_setup_tpg_np_cit.exit
  %tf_tpg_attrib_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 16
  %86 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tf_ops.i, align 4
  %tfc_tpg_attrib_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %87, i32 0, i32 42
  %88 = ptrtoint ptr %tfc_tpg_attrib_attrs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tfc_tpg_attrib_attrs.i, align 4
  %ct_item_ops.i69 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 16, i32 1
  %90 = ptrtoint ptr %ct_item_ops.i69 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %ct_item_ops.i69, align 4
  %ct_group_ops.i70 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 16, i32 2
  %91 = ptrtoint ptr %ct_group_ops.i70 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %ct_group_ops.i70, align 4
  %ct_attrs.i71 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 16, i32 3
  %92 = ptrtoint ptr %ct_attrs.i71 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %ct_attrs.i71, align 4
  %93 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %87, align 4
  %95 = ptrtoint ptr %tf_tpg_attrib_cit.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %tf_tpg_attrib_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_attrib_cit.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i72)) #13
          to label %target_fabric_setup_tpg_attrib_cit.exit [label %if.then.i72], !srcloc !266

if.then.i72:                                      ; preds = %target_fabric_setup_tpg_np_base_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_attrib_cit.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.64) #13
  br label %target_fabric_setup_tpg_attrib_cit.exit

target_fabric_setup_tpg_attrib_cit.exit:          ; preds = %if.then.i72, %target_fabric_setup_tpg_np_base_cit.exit
  %tf_tpg_auth_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 17
  %96 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tf_ops.i, align 4
  %tfc_tpg_auth_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %97, i32 0, i32 43
  %98 = ptrtoint ptr %tfc_tpg_auth_attrs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tfc_tpg_auth_attrs.i, align 4
  %ct_item_ops.i74 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 17, i32 1
  %100 = ptrtoint ptr %ct_item_ops.i74 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %ct_item_ops.i74, align 4
  %ct_group_ops.i75 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 17, i32 2
  %101 = ptrtoint ptr %ct_group_ops.i75 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %ct_group_ops.i75, align 4
  %ct_attrs.i76 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 17, i32 3
  %102 = ptrtoint ptr %ct_attrs.i76 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %ct_attrs.i76, align 4
  %103 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %97, align 4
  %105 = ptrtoint ptr %tf_tpg_auth_cit.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %tf_tpg_auth_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_auth_cit.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i77)) #13
          to label %target_fabric_setup_tpg_auth_cit.exit [label %if.then.i77], !srcloc !266

if.then.i77:                                      ; preds = %target_fabric_setup_tpg_attrib_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_auth_cit.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.66) #13
  br label %target_fabric_setup_tpg_auth_cit.exit

target_fabric_setup_tpg_auth_cit.exit:            ; preds = %if.then.i77, %target_fabric_setup_tpg_attrib_cit.exit
  %tf_tpg_param_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 18
  %106 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tf_ops.i, align 4
  %tfc_tpg_param_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %107, i32 0, i32 44
  %108 = ptrtoint ptr %tfc_tpg_param_attrs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tfc_tpg_param_attrs.i, align 4
  %ct_item_ops.i79 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 18, i32 1
  %110 = ptrtoint ptr %ct_item_ops.i79 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %ct_item_ops.i79, align 4
  %ct_group_ops.i80 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 18, i32 2
  %111 = ptrtoint ptr %ct_group_ops.i80 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %ct_group_ops.i80, align 4
  %ct_attrs.i81 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 18, i32 3
  %112 = ptrtoint ptr %ct_attrs.i81 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %ct_attrs.i81, align 4
  %113 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %107, align 4
  %115 = ptrtoint ptr %tf_tpg_param_cit.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %tf_tpg_param_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_param_cit.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i82)) #13
          to label %target_fabric_setup_tpg_param_cit.exit [label %if.then.i82], !srcloc !266

if.then.i82:                                      ; preds = %target_fabric_setup_tpg_auth_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_param_cit.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #13
  br label %target_fabric_setup_tpg_param_cit.exit

target_fabric_setup_tpg_param_cit.exit:           ; preds = %if.then.i82, %target_fabric_setup_tpg_auth_cit.exit
  %tf_tpg_nacl_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 19
  %ct_item_ops.i83 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 19, i32 1
  %116 = ptrtoint ptr %ct_item_ops.i83 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %ct_item_ops.i83, align 4
  %ct_group_ops.i84 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 19, i32 2
  %117 = ptrtoint ptr %ct_group_ops.i84 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @target_fabric_nacl_group_ops, ptr %ct_group_ops.i84, align 4
  %ct_attrs.i85 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 19, i32 3
  %118 = ptrtoint ptr %ct_attrs.i85 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %ct_attrs.i85, align 4
  %119 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tf_ops.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %123 = ptrtoint ptr %tf_tpg_nacl_cit.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %tf_tpg_nacl_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_nacl_cit.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i87)) #13
          to label %target_fabric_setup_tpg_nacl_cit.exit [label %if.then.i87], !srcloc !266

if.then.i87:                                      ; preds = %target_fabric_setup_tpg_param_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_nacl_cit.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.70) #13
  br label %target_fabric_setup_tpg_nacl_cit.exit

target_fabric_setup_tpg_nacl_cit.exit:            ; preds = %if.then.i87, %target_fabric_setup_tpg_param_cit.exit
  %tf_tpg_nacl_base_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 20
  %124 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tf_ops.i, align 4
  %tfc_tpg_nacl_base_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %125, i32 0, i32 45
  %126 = ptrtoint ptr %tfc_tpg_nacl_base_attrs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tfc_tpg_nacl_base_attrs.i, align 4
  %ct_item_ops.i89 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 20, i32 1
  %128 = ptrtoint ptr %ct_item_ops.i89 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @target_fabric_nacl_base_item_ops, ptr %ct_item_ops.i89, align 4
  %ct_group_ops.i90 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 20, i32 2
  %129 = ptrtoint ptr %ct_group_ops.i90 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @target_fabric_nacl_base_group_ops, ptr %ct_group_ops.i90, align 4
  %ct_attrs.i91 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 20, i32 3
  %130 = ptrtoint ptr %ct_attrs.i91 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %ct_attrs.i91, align 4
  %131 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %125, align 4
  %133 = ptrtoint ptr %tf_tpg_nacl_base_cit.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %tf_tpg_nacl_base_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_nacl_base_cit.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i92)) #13
          to label %target_fabric_setup_tpg_nacl_base_cit.exit [label %if.then.i92], !srcloc !266

if.then.i92:                                      ; preds = %target_fabric_setup_tpg_nacl_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_nacl_base_cit.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.72) #13
  br label %target_fabric_setup_tpg_nacl_base_cit.exit

target_fabric_setup_tpg_nacl_base_cit.exit:       ; preds = %if.then.i92, %target_fabric_setup_tpg_nacl_cit.exit
  %tf_tpg_nacl_attrib_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 21
  %134 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tf_ops.i, align 4
  %tfc_tpg_nacl_attrib_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %135, i32 0, i32 46
  %136 = ptrtoint ptr %tfc_tpg_nacl_attrib_attrs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tfc_tpg_nacl_attrib_attrs.i, align 4
  %ct_item_ops.i94 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 21, i32 1
  %138 = ptrtoint ptr %ct_item_ops.i94 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %ct_item_ops.i94, align 4
  %ct_group_ops.i95 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 21, i32 2
  %139 = ptrtoint ptr %ct_group_ops.i95 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %ct_group_ops.i95, align 4
  %ct_attrs.i96 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 21, i32 3
  %140 = ptrtoint ptr %ct_attrs.i96 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %ct_attrs.i96, align 4
  %141 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %135, align 4
  %143 = ptrtoint ptr %tf_tpg_nacl_attrib_cit.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %tf_tpg_nacl_attrib_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_nacl_attrib_cit.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i97)) #13
          to label %target_fabric_setup_tpg_nacl_attrib_cit.exit [label %if.then.i97], !srcloc !266

if.then.i97:                                      ; preds = %target_fabric_setup_tpg_nacl_base_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_nacl_attrib_cit.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.80) #13
  br label %target_fabric_setup_tpg_nacl_attrib_cit.exit

target_fabric_setup_tpg_nacl_attrib_cit.exit:     ; preds = %if.then.i97, %target_fabric_setup_tpg_nacl_base_cit.exit
  %tf_tpg_nacl_auth_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 22
  %144 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tf_ops.i, align 4
  %tfc_tpg_nacl_auth_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %145, i32 0, i32 47
  %146 = ptrtoint ptr %tfc_tpg_nacl_auth_attrs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tfc_tpg_nacl_auth_attrs.i, align 4
  %ct_item_ops.i99 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 22, i32 1
  %148 = ptrtoint ptr %ct_item_ops.i99 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %ct_item_ops.i99, align 4
  %ct_group_ops.i100 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 22, i32 2
  %149 = ptrtoint ptr %ct_group_ops.i100 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %ct_group_ops.i100, align 4
  %ct_attrs.i101 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 22, i32 3
  %150 = ptrtoint ptr %ct_attrs.i101 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %147, ptr %ct_attrs.i101, align 4
  %151 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %145, align 4
  %153 = ptrtoint ptr %tf_tpg_nacl_auth_cit.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %tf_tpg_nacl_auth_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_nacl_auth_cit.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i102)) #13
          to label %target_fabric_setup_tpg_nacl_auth_cit.exit [label %if.then.i102], !srcloc !266

if.then.i102:                                     ; preds = %target_fabric_setup_tpg_nacl_attrib_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_nacl_auth_cit.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.82) #13
  br label %target_fabric_setup_tpg_nacl_auth_cit.exit

target_fabric_setup_tpg_nacl_auth_cit.exit:       ; preds = %if.then.i102, %target_fabric_setup_tpg_nacl_attrib_cit.exit
  %tf_tpg_nacl_param_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 23
  %154 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tf_ops.i, align 4
  %tfc_tpg_nacl_param_attrs.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %155, i32 0, i32 48
  %156 = ptrtoint ptr %tfc_tpg_nacl_param_attrs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tfc_tpg_nacl_param_attrs.i, align 4
  %ct_item_ops.i104 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 23, i32 1
  %158 = ptrtoint ptr %ct_item_ops.i104 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %ct_item_ops.i104, align 4
  %ct_group_ops.i105 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 23, i32 2
  %159 = ptrtoint ptr %ct_group_ops.i105 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %ct_group_ops.i105, align 4
  %ct_attrs.i106 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 23, i32 3
  %160 = ptrtoint ptr %ct_attrs.i106 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %ct_attrs.i106, align 4
  %161 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %155, align 4
  %163 = ptrtoint ptr %tf_tpg_nacl_param_cit.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %tf_tpg_nacl_param_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_nacl_param_cit.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i107)) #13
          to label %target_fabric_setup_tpg_nacl_param_cit.exit [label %if.then.i107], !srcloc !266

if.then.i107:                                     ; preds = %target_fabric_setup_tpg_nacl_auth_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_nacl_param_cit.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84) #13
  br label %target_fabric_setup_tpg_nacl_param_cit.exit

target_fabric_setup_tpg_nacl_param_cit.exit:      ; preds = %if.then.i107, %target_fabric_setup_tpg_nacl_auth_cit.exit
  %tf_tpg_nacl_stat_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 24
  %ct_item_ops.i108 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 24, i32 1
  %164 = ptrtoint ptr %ct_item_ops.i108 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %ct_item_ops.i108, align 4
  %ct_group_ops.i109 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 24, i32 2
  %165 = ptrtoint ptr %ct_group_ops.i109 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %ct_group_ops.i109, align 4
  %ct_attrs.i110 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 24, i32 3
  %166 = ptrtoint ptr %ct_attrs.i110 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %ct_attrs.i110, align 4
  %167 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tf_ops.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %171 = ptrtoint ptr %tf_tpg_nacl_stat_cit.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %170, ptr %tf_tpg_nacl_stat_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_nacl_stat_cit.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i112)) #13
          to label %target_fabric_setup_tpg_nacl_stat_cit.exit [label %if.then.i112], !srcloc !266

if.then.i112:                                     ; preds = %target_fabric_setup_tpg_nacl_param_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_nacl_stat_cit.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.86) #13
  br label %target_fabric_setup_tpg_nacl_stat_cit.exit

target_fabric_setup_tpg_nacl_stat_cit.exit:       ; preds = %if.then.i112, %target_fabric_setup_tpg_nacl_param_cit.exit
  %tf_tpg_mappedlun_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 25
  %ct_item_ops.i113 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 25, i32 1
  %172 = ptrtoint ptr %ct_item_ops.i113 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @target_fabric_mappedlun_item_ops, ptr %ct_item_ops.i113, align 4
  %ct_group_ops.i114 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 25, i32 2
  %173 = ptrtoint ptr %ct_group_ops.i114 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %ct_group_ops.i114, align 4
  %ct_attrs.i115 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 25, i32 3
  %174 = ptrtoint ptr %ct_attrs.i115 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @target_fabric_mappedlun_attrs, ptr %ct_attrs.i115, align 4
  %175 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tf_ops.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %179 = ptrtoint ptr %tf_tpg_mappedlun_cit.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %tf_tpg_mappedlun_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_mappedlun_cit.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i117)) #13
          to label %target_fabric_setup_tpg_mappedlun_cit.exit [label %if.then.i117], !srcloc !266

if.then.i117:                                     ; preds = %target_fabric_setup_tpg_nacl_stat_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_mappedlun_cit.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.88) #13
  br label %target_fabric_setup_tpg_mappedlun_cit.exit

target_fabric_setup_tpg_mappedlun_cit.exit:       ; preds = %if.then.i117, %target_fabric_setup_tpg_nacl_stat_cit.exit
  %tf_tpg_mappedlun_stat_cit.i = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 26
  %ct_item_ops.i118 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 26, i32 1
  %180 = ptrtoint ptr %ct_item_ops.i118 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %ct_item_ops.i118, align 4
  %ct_group_ops.i119 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 26, i32 2
  %181 = ptrtoint ptr %ct_group_ops.i119 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @target_fabric_mappedlun_stat_group_ops, ptr %ct_group_ops.i119, align 4
  %ct_attrs.i120 = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 26, i32 3
  %182 = ptrtoint ptr %ct_attrs.i120 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %ct_attrs.i120, align 4
  %183 = ptrtoint ptr %tf_ops.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %tf_ops.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %187 = ptrtoint ptr %tf_tpg_mappedlun_stat_cit.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %186, ptr %tf_tpg_mappedlun_stat_cit.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_mappedlun_stat_cit.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_cits, %if.then.i122)) #13
          to label %cleanup [label %if.then.i122], !srcloc !266

if.then.i122:                                     ; preds = %target_fabric_setup_tpg_mappedlun_cit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_mappedlun_stat_cit.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.112) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i122, %target_fabric_setup_tpg_mappedlun_cit.exit, %target_fabric_setup_tpg_cit.exit.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_fabric_setup_tpg_base_cit(ptr nocapture noundef %tf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tf_tpg_base_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 10
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 4
  %0 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tf_ops, align 4
  %tfc_tpg_base_attrs = getelementptr inbounds %struct.target_core_fabric_ops, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %tfc_tpg_base_attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfc_tpg_base_attrs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %nr_attrs.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %nr_attrs.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %5, null
  %inc = add i32 %nr_attrs.0, 1
  br i1 %cmp.not, label %while.cond.if.end_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %while.cond.if.end_crit_edge, %entry.if.end_crit_edge
  %nr_attrs.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %nr_attrs.0, %while.cond.if.end_crit_edge ]
  %fabric_enable_tpg = getelementptr inbounds %struct.target_core_fabric_ops, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %fabric_enable_tpg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fabric_enable_tpg, align 4
  %tobool4.not = icmp ne ptr %7, null
  %inc6 = zext i1 %tobool4.not to i32
  %spec.select = add i32 %nr_attrs.1, %inc6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp8 = icmp eq i32 %spec.select, 0
  br i1 %cmp8, label %if.end.done_crit_edge, label %if.end10

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end10:                                         ; preds = %if.end
  %add = add i32 %spec.select, 1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #13
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end10.cleanup_crit_edge, label %if.end7.i.i, !prof !267

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end10
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #16
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end13

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tf_ops, align 4
  %tfc_tpg_base_attrs15 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %12, i32 0, i32 40
  %13 = ptrtoint ptr %tfc_tpg_base_attrs15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfc_tpg_base_attrs15, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %if.end13.if.end27_crit_edge, label %for.cond.preheader

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.cond.preheader:                               ; preds = %if.end13
  %15 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tf_ops, align 4
  %tfc_tpg_base_attrs1972 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %16, i32 0, i32 40
  %17 = ptrtoint ptr %tfc_tpg_base_attrs1972 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tfc_tpg_base_attrs1972, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %cmp21.not73 = icmp eq ptr %20, null
  br i1 %cmp21.not73, label %for.cond.preheader.if.end27_crit_edge, label %for.body.preheader

for.cond.preheader.if.end27_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.preheader:                               ; preds = %for.cond.preheader
  %21 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tf_ops, align 4
  %tfc_tpg_base_attrs19 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %22, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %23 = phi ptr [ %28, %for.body.for.body_crit_edge ], [ %20, %for.body.preheader ]
  %i.074 = phi i32 [ %inc26, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx25 = getelementptr ptr, ptr %call8.i.i, i32 %i.074
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %arrayidx25, align 4
  %inc26 = add i32 %i.074, 1
  %25 = ptrtoint ptr %tfc_tpg_base_attrs19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tfc_tpg_base_attrs19, align 4
  %arrayidx20 = getelementptr ptr, ptr %26, i32 %inc26
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx20, align 4
  %cmp21.not = icmp eq ptr %28, null
  br i1 %cmp21.not, label %for.body.if.end27_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end27:                                         ; preds = %for.body.if.end27_crit_edge, %for.cond.preheader.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  %i.1 = phi i32 [ 0, %if.end13.if.end27_crit_edge ], [ 0, %for.cond.preheader.if.end27_crit_edge ], [ %inc26, %for.body.if.end27_crit_edge ]
  %29 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tf_ops, align 4
  %fabric_enable_tpg29 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %30, i32 0, i32 31
  %31 = ptrtoint ptr %fabric_enable_tpg29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fabric_enable_tpg29, align 4
  %tobool30.not = icmp eq ptr %32, null
  br i1 %tobool30.not, label %if.end27.done_crit_edge, label %if.then31

if.end27.done_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx32 = getelementptr ptr, ptr %call8.i.i, i32 %i.1
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @target_fabric_tpg_base_attr_enable, ptr %arrayidx32, align 4
  br label %done

done:                                             ; preds = %if.then31, %if.end27.done_crit_edge, %if.end.done_crit_edge
  %attrs.0 = phi ptr [ null, %if.end.done_crit_edge ], [ %call8.i.i, %if.then31 ], [ %call8.i.i, %if.end27.done_crit_edge ]
  %ct_item_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @target_fabric_tpg_base_item_ops, ptr %ct_item_ops, align 4
  %ct_attrs = getelementptr inbounds %struct.target_fabric_configfs, ptr %tf, i32 0, i32 10, i32 3
  %35 = ptrtoint ptr %ct_attrs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %attrs.0, ptr %ct_attrs, align 4
  %36 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tf_ops, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %tf_tpg_base_cit to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %tf_tpg_base_cit, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_setup_tpg_base_cit.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_setup_tpg_base_cit, %if.then39)) #13
          to label %cleanup [label %if.then39], !srcloc !266

if.then39:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_setup_tpg_base_cit.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.30) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %done, %if.end7.i.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %done ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @target_fabric_make_wwn(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %group, i32 -12
  %tf_ops = getelementptr i8, ptr %group, i32 160
  %0 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tf_ops, align 4
  %fabric_make_wwn = getelementptr inbounds %struct.target_core_fabric_ops, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %fabric_make_wwn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_make_wwn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr %3(ptr noundef %add.ptr, ptr noundef %group, ptr noundef %name) #13
  %tobool6.not = icmp eq ptr %call5, null
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool6.not, %cmp.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %cmd_compl_affinity = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 5
  %4 = ptrtoint ptr %cmd_compl_affinity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cmd_compl_affinity, align 4
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %call5, align 4
  %wwn_group = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 2
  %tf_tpg_cit = getelementptr i8, ptr %group, i32 244
  tail call void @config_group_init_type_name(ptr noundef %wwn_group, ptr noundef %name, ptr noundef %tf_tpg_cit) #13
  %fabric_stat_group = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 3
  %tf_wwn_fabric_stats_cit = getelementptr i8, ptr %group, i32 204
  tail call void @config_group_init_type_name(ptr noundef %fabric_stat_group, ptr noundef nonnull @.str.9, ptr noundef %tf_wwn_fabric_stats_cit) #13
  %group_entry.i = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 3, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 2, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 2, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %7, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.configfs_add_default_group.exit_crit_edge

if.end10.configfs_add_default_group.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 3, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %group_entry.i, ptr %7, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end10.configfs_add_default_group.exit_crit_edge
  %param_group = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 4
  %tf_wwn_param_cit = getelementptr i8, ptr %group, i32 224
  tail call void @config_group_init_type_name(ptr noundef %param_group, ptr noundef nonnull @.str.10, ptr noundef %tf_wwn_param_cit) #13
  %group_entry.i46 = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i46, ptr noundef %13, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i49, label %if.end.i.i.i51, label %configfs_add_default_group.exit.configfs_add_default_group.exit52_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit52_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit52

if.end.i.i.i51:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %group_entry.i46, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %group_entry.i46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %default_groups.i, ptr %group_entry.i46, align 4
  %prev3.i.i.i50 = getelementptr inbounds %struct.se_wwn, ptr %call5, i32 0, i32 4, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i50, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %group_entry.i46, ptr %13, align 4
  br label %configfs_add_default_group.exit52

configfs_add_default_group.exit52:                ; preds = %if.end.i.i.i51, %configfs_add_default_group.exit.configfs_add_default_group.exit52_crit_edge
  %18 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tf_ops, align 4
  %add_wwn_groups = getelementptr inbounds %struct.target_core_fabric_ops, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %add_wwn_groups to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add_wwn_groups, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %configfs_add_default_group.exit52.cleanup_crit_edge, label %if.then17

configfs_add_default_group.exit52.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %configfs_add_default_group.exit52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %21(ptr noundef nonnull %call5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %configfs_add_default_group.exit52.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -38 to ptr), %do.end ], [ %wwn_group, %if.then17 ], [ %wwn_group, %configfs_add_default_group.exit52.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_drop_wwn(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @configfs_remove_default_groups(ptr noundef %item) #13
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_remove_default_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_wwn_cmd_completion_affinity_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_compl_affinity = getelementptr i8, ptr %item, i32 80
  %0 = ptrtoint ptr %cmd_compl_affinity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_compl_affinity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %spec.select = select i1 %cmp, i32 -2, i32 %1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.16, i32 noundef %spec.select)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_wwn_cmd_completion_affinity_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %compl_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compl_val) #13
  %0 = ptrtoint ptr %compl_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %compl_val, align 4, !annotation !268
  %call1 = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %compl_val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %compl_val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %compl_val, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cmd_compl_affinity = getelementptr i8, ptr %item, i32 80
  %4 = ptrtoint ptr %cmd_compl_affinity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cmd_compl_affinity, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cmd_compl_affinity3 = getelementptr i8, ptr %item, i32 80
  %5 = ptrtoint ptr %cmd_compl_affinity3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %cmd_compl_affinity3, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %sw.default.do.end_crit_edge, label %lor.lhs.false

sw.default.do.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %sw.default
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp4.not = icmp ult i32 %2, %6
  br i1 %cmp4.not, label %cpu_online.exit, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

cpu_online.exit:                                  ; preds = %lor.lhs.false
  %div1.i.i.i = lshr i32 %2, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %2, 31
  %9 = shl nuw i32 1, %and.i.i.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %cpu_online.exit.do.end_crit_edge, label %if.end10

cpu_online.exit.do.end_crit_edge:                 ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %cpu_online.exit.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %sw.default.do.end_crit_edge
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef -1, i32 noundef -2) #17
  br label %cleanup

if.end10:                                         ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %compl_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %compl_val, align 4
  %cmd_compl_affinity11 = getelementptr i8, ptr %item, i32 80
  %13 = ptrtoint ptr %cmd_compl_affinity11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cmd_compl_affinity11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end10 ], [ %count, %sw.bb2 ], [ %count, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compl_val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_release_wwn(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fabric_stat_group = getelementptr i8, ptr %item, i32 80
  tail call void @configfs_remove_default_groups(ptr noundef %fabric_stat_group) #13
  %param_group = getelementptr i8, ptr %item, i32 160
  tail call void @configfs_remove_default_groups(ptr noundef %param_group) #13
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tf_ops, align 4
  %fabric_drop_wwn = getelementptr inbounds %struct.target_core_fabric_ops, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %fabric_drop_wwn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fabric_drop_wwn, align 4
  tail call void %5(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @target_fabric_make_tpg(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %group, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tf_ops, align 4
  %fabric_make_tpg = getelementptr inbounds %struct.target_core_fabric_ops, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %fabric_make_tpg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fabric_make_tpg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr %5(ptr noundef %add.ptr, ptr noundef %name) #13
  %tobool6.not = icmp eq ptr %call5, null
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool6.not, %cmp.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %tpg_group = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 12
  %tf_tpg_base_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 10
  tail call void @config_group_init_type_name(ptr noundef %tpg_group, ptr noundef %name, ptr noundef %tf_tpg_base_cit) #13
  %tpg_lun_group = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 13
  %tf_tpg_lun_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 11
  tail call void @config_group_init_type_name(ptr noundef %tpg_lun_group, ptr noundef nonnull @.str.24, ptr noundef %tf_tpg_lun_cit) #13
  %group_entry.i = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 13, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 12, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 12, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %7, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.configfs_add_default_group.exit_crit_edge

if.end10.configfs_add_default_group.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 13, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %group_entry.i, ptr %7, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end10.configfs_add_default_group.exit_crit_edge
  %tpg_np_group = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 14
  %tf_tpg_np_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 14
  tail call void @config_group_init_type_name(ptr noundef %tpg_np_group, ptr noundef nonnull @.str.25, ptr noundef %tf_tpg_np_cit) #13
  %group_entry.i57 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i60 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i57, ptr noundef %13, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i60, label %if.end.i.i.i62, label %configfs_add_default_group.exit.configfs_add_default_group.exit63_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit63_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit63

if.end.i.i.i62:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %group_entry.i57, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %group_entry.i57 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %default_groups.i, ptr %group_entry.i57, align 4
  %prev3.i.i.i61 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 14, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i61, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %group_entry.i57, ptr %13, align 4
  br label %configfs_add_default_group.exit63

configfs_add_default_group.exit63:                ; preds = %if.end.i.i.i62, %configfs_add_default_group.exit.configfs_add_default_group.exit63_crit_edge
  %tpg_acl_group = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 15
  %tf_tpg_nacl_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 19
  tail call void @config_group_init_type_name(ptr noundef %tpg_acl_group, ptr noundef nonnull @.str.26, ptr noundef %tf_tpg_nacl_cit) #13
  %group_entry.i64 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 15, i32 4
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i67 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i64, ptr noundef %19, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i67, label %if.end.i.i.i69, label %configfs_add_default_group.exit63.configfs_add_default_group.exit70_crit_edge

configfs_add_default_group.exit63.configfs_add_default_group.exit70_crit_edge: ; preds = %configfs_add_default_group.exit63
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit70

if.end.i.i.i69:                                   ; preds = %configfs_add_default_group.exit63
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %group_entry.i64, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %group_entry.i64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %default_groups.i, ptr %group_entry.i64, align 4
  %prev3.i.i.i68 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 15, i32 4, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i68, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %group_entry.i64, ptr %19, align 4
  br label %configfs_add_default_group.exit70

configfs_add_default_group.exit70:                ; preds = %if.end.i.i.i69, %configfs_add_default_group.exit63.configfs_add_default_group.exit70_crit_edge
  %tpg_attrib_group = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 16
  %tf_tpg_attrib_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 16
  tail call void @config_group_init_type_name(ptr noundef %tpg_attrib_group, ptr noundef nonnull @.str.27, ptr noundef %tf_tpg_attrib_cit) #13
  %group_entry.i71 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 16, i32 4
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i74 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i71, ptr noundef %25, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i74, label %if.end.i.i.i76, label %configfs_add_default_group.exit70.configfs_add_default_group.exit77_crit_edge

configfs_add_default_group.exit70.configfs_add_default_group.exit77_crit_edge: ; preds = %configfs_add_default_group.exit70
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit77

if.end.i.i.i76:                                   ; preds = %configfs_add_default_group.exit70
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %group_entry.i71, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %group_entry.i71 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %default_groups.i, ptr %group_entry.i71, align 4
  %prev3.i.i.i75 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 16, i32 4, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i75, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %group_entry.i71, ptr %25, align 4
  br label %configfs_add_default_group.exit77

configfs_add_default_group.exit77:                ; preds = %if.end.i.i.i76, %configfs_add_default_group.exit70.configfs_add_default_group.exit77_crit_edge
  %tpg_auth_group = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 17
  %tf_tpg_auth_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 17
  tail call void @config_group_init_type_name(ptr noundef %tpg_auth_group, ptr noundef nonnull @.str.28, ptr noundef %tf_tpg_auth_cit) #13
  %group_entry.i78 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 17, i32 4
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i81 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i78, ptr noundef %31, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i81, label %if.end.i.i.i83, label %configfs_add_default_group.exit77.configfs_add_default_group.exit84_crit_edge

configfs_add_default_group.exit77.configfs_add_default_group.exit84_crit_edge: ; preds = %configfs_add_default_group.exit77
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit84

if.end.i.i.i83:                                   ; preds = %configfs_add_default_group.exit77
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %group_entry.i78, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %group_entry.i78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %default_groups.i, ptr %group_entry.i78, align 4
  %prev3.i.i.i82 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 17, i32 4, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i82, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %group_entry.i78, ptr %31, align 4
  br label %configfs_add_default_group.exit84

configfs_add_default_group.exit84:                ; preds = %if.end.i.i.i83, %configfs_add_default_group.exit77.configfs_add_default_group.exit84_crit_edge
  %tpg_param_group = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 18
  %tf_tpg_param_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %1, i32 0, i32 18
  tail call void @config_group_init_type_name(ptr noundef %tpg_param_group, ptr noundef nonnull @.str.10, ptr noundef %tf_tpg_param_cit) #13
  %group_entry.i85 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 18, i32 4
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i88 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i85, ptr noundef %37, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i88, label %if.end.i.i.i90, label %configfs_add_default_group.exit84.cleanup_crit_edge

configfs_add_default_group.exit84.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i90:                                   ; preds = %configfs_add_default_group.exit84
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %group_entry.i85, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %group_entry.i85 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %default_groups.i, ptr %group_entry.i85, align 4
  %prev3.i.i.i89 = getelementptr inbounds %struct.se_portal_group, ptr %call5, i32 0, i32 18, i32 4, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i89, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %group_entry.i85, ptr %37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i90, %configfs_add_default_group.exit84.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -38 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ %tpg_group, %configfs_add_default_group.exit84.cleanup_crit_edge ], [ %tpg_group, %if.end.i.i.i90 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_drop_tpg(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @configfs_remove_default_groups(ptr noundef %item) #13
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_tpg_base_enable_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %item, i32 -268
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !269
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.16, i32 noundef %2) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_tpg_base_enable_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %op = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -272
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %op) #13
  %0 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %op, align 1, !annotation !268
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %op) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr i8, ptr %item, i32 -268
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled, align 4, !range !269
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %op, align 1, !range !269
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp = icmp eq i8 %2, %4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3 = icmp ne i8 %4, 0
  %se_tpg_tfo = getelementptr i8, ptr %item, i32 -8
  %5 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_enable_tpg = getelementptr inbounds %struct.target_core_fabric_ops, ptr %6, i32 0, i32 31
  %7 = ptrtoint ptr %fabric_enable_tpg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fabric_enable_tpg, align 4
  %call9 = call i32 %8(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %op, align 1, !range !269
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end12 ], [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %op) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_tpg_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -272
  %se_tpg_wwn = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tf_ops, align 4
  %fabric_drop_tpg = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %fabric_drop_tpg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fabric_drop_tpg, align 4
  tail call void %7(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_port_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -256
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %callback_head = getelementptr i8, ptr %item, i32 480
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 736 to ptr)) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_link(ptr noundef %lun_ci, ptr noundef %se_dev_ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %lun_ci, i32 -256
  %ci_type = getelementptr inbounds %struct.config_item, ptr %se_dev_ci, i32 0, i32 6
  %0 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_type, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %ct_item_ops = getelementptr inbounds %struct.config_item_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_item_ops, align 4
  %cmp.not = icmp eq ptr %3, @target_core_dev_item_ops
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %se_dev_ci) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr7 = getelementptr i8, ptr %se_dev_ci, i32 -1512
  %dev_flags.i = getelementptr i8, ptr %se_dev_ci, i32 -1504
  %4 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %lun_ci, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent, align 4
  %ci_group = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_group, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 -272
  %se_tpg_wwn = getelementptr i8, ptr %9, i32 -4
  %10 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_wwn, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %lun_se_dev = getelementptr i8, ptr %lun_ci, i32 -232
  %14 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lun_se_dev, align 8
  %cmp20.not = icmp eq ptr %15, null
  br i1 %cmp20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #17
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %call28 = tail call i32 @core_dev_add_lun(ptr noundef %add.ptr19, ptr noundef %add.ptr7, ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call28) #17
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tf_ops, align 4
  %fabric_post_link = getelementptr inbounds %struct.target_core_fabric_ops, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %fabric_post_link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fabric_post_link, align 4
  %tobool37.not = icmp eq ptr %19, null
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %call41 = tail call i32 %19(ptr noundef %add.ptr19, ptr noundef %add.ptr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %do.end33, %do.end24, %do.end12, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -17, %do.end24 ], [ %call28, %do.end33 ], [ -19, %do.end12 ], [ 0, %if.then38 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_port_unlink(ptr noundef %lun_ci, ptr nocapture noundef readnone %se_dev_ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %lun_ci, i32 -256
  %lun_tpg = getelementptr i8, ptr %lun_ci, i32 -16
  %0 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_tpg, align 8
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_wwn, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tf_ops, align 4
  %fabric_pre_unlink = getelementptr inbounds %struct.target_core_fabric_ops, ptr %7, i32 0, i32 34
  %8 = ptrtoint ptr %fabric_pre_unlink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fabric_pre_unlink, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %9(ptr noundef %1, ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @core_dev_del_lun(ptr noundef %1, ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_dev_add_lun(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_dev_del_lun(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_alua_tg_pt_gp_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr i8, ptr %item, i32 -232
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_se_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %item, i32 -256
  %call1 = tail call i32 @core_alua_show_tg_pt_gp_info(ptr noundef %add.ptr.i, ptr noundef %page) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_alua_tg_pt_gp_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr i8, ptr %item, i32 -232
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_se_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %item, i32 -256
  %call1 = tail call i32 @core_alua_store_tg_pt_gp_info(ptr noundef %add.ptr.i, ptr noundef %page, i32 noundef %count) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_alua_show_tg_pt_gp_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_alua_store_tg_pt_gp_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_alua_tg_pt_offline_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr i8, ptr %item, i32 -232
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_se_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %item, i32 -256
  %call1 = tail call i32 @core_alua_show_offline_bit(ptr noundef %add.ptr.i, ptr noundef %page) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_alua_tg_pt_offline_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr i8, ptr %item, i32 -232
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_se_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %item, i32 -256
  %call1 = tail call i32 @core_alua_store_offline_bit(ptr noundef %add.ptr.i, ptr noundef %page, i32 noundef %count) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_alua_show_offline_bit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_alua_store_offline_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_alua_tg_pt_status_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr i8, ptr %item, i32 -232
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_se_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %item, i32 -256
  %call1 = tail call i32 @core_alua_show_secondary_status(ptr noundef %add.ptr.i, ptr noundef %page) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_alua_tg_pt_status_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr i8, ptr %item, i32 -232
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_se_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %item, i32 -256
  %call1 = tail call i32 @core_alua_store_secondary_status(ptr noundef %add.ptr.i, ptr noundef %page, i32 noundef %count) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_alua_show_secondary_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_alua_store_secondary_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_alua_tg_pt_write_md_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr i8, ptr %item, i32 -232
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_se_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %item, i32 -256
  %call1 = tail call i32 @core_alua_show_secondary_write_metadata(ptr noundef %add.ptr.i, ptr noundef %page) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_port_alua_tg_pt_write_md_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr i8, ptr %item, i32 -232
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_se_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %item, i32 -256
  %call1 = tail call i32 @core_alua_store_secondary_write_metadata(ptr noundef %add.ptr.i, ptr noundef %page, i32 noundef %count) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_alua_show_secondary_write_metadata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_alua_store_secondary_write_metadata(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @target_core_port_stat_mkdir(ptr nocapture noundef readnone %group, ptr nocapture noundef readnone %name) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -38 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @target_core_port_stat_rmdir(ptr nocapture noundef %group, ptr nocapture noundef %item) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @target_fabric_make_lun(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  %unpacked_lun = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %group, i32 -352
  %se_tpg_wwn = getelementptr i8, ptr %group, i32 -84
  %0 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %unpacked_lun) #13
  %4 = ptrtoint ptr %unpacked_lun to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %unpacked_lun, align 8, !annotation !268
  %strncmp = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.53, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp35.not = icmp eq i32 %strncmp, 0
  br i1 %cmp35.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %name, i32 4
  %call5 = call i32 @kstrtoull(ptr noundef %add.ptr4, i32 noundef 0, ptr noundef nonnull %unpacked_lun) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %unpacked_lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %unpacked_lun, align 8
  %call9 = call ptr @core_tpg_alloc_lun(ptr noundef %add.ptr, i64 noundef %7) #13
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %lun_group = getelementptr inbounds %struct.se_lun, ptr %call9, i32 0, i32 18
  %tf_tpg_port_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 12
  call void @config_group_init_type_name(ptr noundef %lun_group, ptr noundef %name, ptr noundef %tf_tpg_port_cit) #13
  %port_stat_grps = getelementptr inbounds %struct.se_lun, ptr %call9, i32 0, i32 19
  %tf_tpg_port_stat_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 13
  call void @config_group_init_type_name(ptr noundef %port_stat_grps, ptr noundef nonnull @.str.56, ptr noundef %tf_tpg_port_stat_cit) #13
  %group_entry.i = getelementptr inbounds %struct.se_lun, ptr %call9, i32 0, i32 19, i32 0, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_lun, ptr %call9, i32 0, i32 18, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_lun, ptr %call9, i32 0, i32 18, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %9, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.configfs_add_default_group.exit_crit_edge

if.end13.configfs_add_default_group.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.se_lun, ptr %call9, i32 0, i32 19, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %group_entry.i, ptr %9, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end13.configfs_add_default_group.exit_crit_edge
  call void @target_stat_setup_port_default_groups(ptr noundef %call9) #13
  br label %cleanup

cleanup:                                          ; preds = %configfs_add_default_group.exit, %if.end8.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %5, %if.then6 ], [ %lun_group, %configfs_add_default_group.exit ], [ %call9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %unpacked_lun) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_drop_lun(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %port_stat_grps = getelementptr i8, ptr %item, i32 80
  tail call void @configfs_remove_default_groups(ptr noundef %port_stat_grps) #13
  tail call void @configfs_remove_default_groups(ptr noundef %item) #13
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @core_tpg_alloc_lun(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_stat_setup_port_default_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @target_fabric_make_np(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %group, i32 -432
  %se_tpg_wwn = getelementptr i8, ptr %group, i32 -164
  %0 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tf_ops, align 4
  %fabric_make_np = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %fabric_make_np to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fabric_make_np, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr %7(ptr noundef %add.ptr, ptr noundef %group, ptr noundef %name) #13
  %tobool6.not = icmp eq ptr %call5, null
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool6.not, %cmp.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %call5, align 4
  %tpg_np_group = getelementptr inbounds %struct.se_tpg_np, ptr %call5, i32 0, i32 1
  %tf_tpg_np_base_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 15
  tail call void @config_group_init_type_name(ptr noundef %tpg_np_group, ptr noundef %name, ptr noundef %tf_tpg_np_base_cit) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %tpg_np_group, %if.end10 ], [ inttoptr (i32 -38 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_drop_np(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_np_base_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_wwn, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tf_ops, align 4
  %fabric_drop_np = getelementptr inbounds %struct.target_core_fabric_ops, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %fabric_drop_np to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fabric_drop_np, align 4
  tail call void %9(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @target_fabric_make_nodeacl(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %group, i32 -512
  %se_tpg_wwn = getelementptr i8, ptr %group, i32 -244
  %0 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @core_tpg_add_initiator_node_acl(ptr noundef %add.ptr, ptr noundef %name) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

if.end:                                           ; preds = %entry
  %acl_group = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 13
  %tf_tpg_nacl_base_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 20
  tail call void @config_group_init_type_name(ptr noundef %acl_group, ptr noundef %name, ptr noundef %tf_tpg_nacl_base_cit) #13
  %acl_attrib_group = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 14
  %tf_tpg_nacl_attrib_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 21
  tail call void @config_group_init_type_name(ptr noundef %acl_attrib_group, ptr noundef nonnull @.str.27, ptr noundef %tf_tpg_nacl_attrib_cit) #13
  %group_entry.i = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 14, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 13, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 13, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %5, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.configfs_add_default_group.exit_crit_edge

if.end.configfs_add_default_group.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 14, i32 4, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %group_entry.i, ptr %5, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end.configfs_add_default_group.exit_crit_edge
  %acl_auth_group = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 15
  %tf_tpg_nacl_auth_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 22
  tail call void @config_group_init_type_name(ptr noundef %acl_auth_group, ptr noundef nonnull @.str.28, ptr noundef %tf_tpg_nacl_auth_cit) #13
  %group_entry.i53 = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 15, i32 4
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i56 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i53, ptr noundef %11, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i56, label %if.end.i.i.i58, label %configfs_add_default_group.exit.configfs_add_default_group.exit59_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit59_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit59

if.end.i.i.i58:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %group_entry.i53, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %group_entry.i53 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %default_groups.i, ptr %group_entry.i53, align 4
  %prev3.i.i.i57 = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 15, i32 4, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i57, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %group_entry.i53, ptr %11, align 4
  br label %configfs_add_default_group.exit59

configfs_add_default_group.exit59:                ; preds = %if.end.i.i.i58, %configfs_add_default_group.exit.configfs_add_default_group.exit59_crit_edge
  %acl_param_group = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 16
  %tf_tpg_nacl_param_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 23
  tail call void @config_group_init_type_name(ptr noundef %acl_param_group, ptr noundef nonnull @.str.10, ptr noundef %tf_tpg_nacl_param_cit) #13
  %group_entry.i60 = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 16, i32 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i63 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i60, ptr noundef %17, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i63, label %if.end.i.i.i65, label %configfs_add_default_group.exit59.configfs_add_default_group.exit66_crit_edge

configfs_add_default_group.exit59.configfs_add_default_group.exit66_crit_edge: ; preds = %configfs_add_default_group.exit59
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit66

if.end.i.i.i65:                                   ; preds = %configfs_add_default_group.exit59
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %group_entry.i60, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %group_entry.i60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %default_groups.i, ptr %group_entry.i60, align 4
  %prev3.i.i.i64 = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 16, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i64, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %group_entry.i60, ptr %17, align 4
  br label %configfs_add_default_group.exit66

configfs_add_default_group.exit66:                ; preds = %if.end.i.i.i65, %configfs_add_default_group.exit59.configfs_add_default_group.exit66_crit_edge
  %acl_fabric_stat_group = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 17
  %tf_tpg_nacl_stat_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 24
  tail call void @config_group_init_type_name(ptr noundef %acl_fabric_stat_group, ptr noundef nonnull @.str.9, ptr noundef %tf_tpg_nacl_stat_cit) #13
  %group_entry.i67 = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 17, i32 4
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i70 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i67, ptr noundef %23, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i70, label %if.end.i.i.i72, label %configfs_add_default_group.exit66.configfs_add_default_group.exit73_crit_edge

configfs_add_default_group.exit66.configfs_add_default_group.exit73_crit_edge: ; preds = %configfs_add_default_group.exit66
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit73

if.end.i.i.i72:                                   ; preds = %configfs_add_default_group.exit66
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %group_entry.i67, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %group_entry.i67 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %default_groups.i, ptr %group_entry.i67, align 4
  %prev3.i.i.i71 = getelementptr inbounds %struct.se_node_acl, ptr %call, i32 0, i32 17, i32 4, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i71, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %group_entry.i67, ptr %23, align 4
  br label %configfs_add_default_group.exit73

configfs_add_default_group.exit73:                ; preds = %if.end.i.i.i72, %configfs_add_default_group.exit66.configfs_add_default_group.exit73_crit_edge
  %tf_ops = getelementptr inbounds %struct.target_fabric_configfs, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %tf_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tf_ops, align 4
  %fabric_init_nodeacl = getelementptr inbounds %struct.target_core_fabric_ops, ptr %29, i32 0, i32 37
  %30 = ptrtoint ptr %fabric_init_nodeacl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fabric_init_nodeacl, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %configfs_add_default_group.exit73.cleanup22_crit_edge, label %if.then11

configfs_add_default_group.exit73.cleanup22_crit_edge: ; preds = %configfs_add_default_group.exit73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

if.then11:                                        ; preds = %configfs_add_default_group.exit73
  %call14 = tail call i32 %31(ptr noundef %call, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then11.cleanup22_crit_edge, label %cleanup

if.then11.cleanup22_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup22

cleanup:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @configfs_remove_default_groups(ptr noundef %acl_fabric_stat_group) #13
  tail call void @core_tpg_del_initiator_node_acl(ptr noundef %call) #13
  %32 = inttoptr i32 %call14 to ptr
  br label %cleanup22

cleanup22:                                        ; preds = %cleanup, %if.then11.cleanup22_crit_edge, %configfs_add_default_group.exit73.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.1 = phi ptr [ %32, %cleanup ], [ %call, %entry.cleanup22_crit_edge ], [ %acl_group, %configfs_add_default_group.exit73.cleanup22_crit_edge ], [ %acl_group, %if.then11.cleanup22_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_drop_nodeacl(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @configfs_remove_default_groups(ptr noundef %item) #13
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @core_tpg_add_initiator_node_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_tpg_del_initiator_node_acl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_nacl_base_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -456
  %acl_fabric_stat_group = getelementptr i8, ptr %item, i32 320
  tail call void @configfs_remove_default_groups(ptr noundef %acl_fabric_stat_group) #13
  tail call void @core_tpg_del_initiator_node_acl(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @target_fabric_make_mappedlun(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  %mapped_lun = alloca i64, align 8
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %group, i32 -456
  %se_tpg1 = getelementptr i8, ptr %group, i32 -140
  %0 = ptrtoint ptr %se_tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg1, align 4
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_wwn, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mapped_lun) #13
  %6 = ptrtoint ptr %mapped_lun to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %mapped_lun, align 8, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #13
  %call = tail call i32 @strlen(ptr noundef %name) #18
  %add = add i32 %call, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @strlen(ptr noundef %name) #18
  %add7 = add i32 %call6, 1
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add7, ptr noundef nonnull @.str.75, ptr noundef %name)
  %strncmp = tail call i32 @strncmp(ptr noundef nonnull %call9.i.i, ptr noundef nonnull dereferenceable(5) @.str.53, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp58.not = icmp eq i32 %strncmp, 0
  br i1 %cmp58.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull %call9.i.i, ptr noundef %name) #17
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -22, ptr %ret, align 4
  br label %out

if.end16:                                         ; preds = %if.end
  %add.ptr17 = getelementptr i8, ptr %call9.i.i, i32 4
  %call18 = call i32 @kstrtoull(ptr noundef %add.ptr17, i32 noundef 0, ptr noundef nonnull %mapped_lun) #13
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call18, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end21:                                         ; preds = %if.end16
  %9 = ptrtoint ptr %mapped_lun to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mapped_lun, align 8
  %call22 = call ptr @core_dev_init_initiator_node_lun_acl(ptr noundef %1, ptr noundef %add.ptr, i64 noundef %10, ptr noundef nonnull %ret) #13
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %ret, align 4
  br label %out

if.end25:                                         ; preds = %if.end21
  %se_lun_group = getelementptr inbounds %struct.se_lun_acl, ptr %call22, i32 0, i32 3
  %tf_tpg_mappedlun_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %5, i32 0, i32 25
  call void @config_group_init_type_name(ptr noundef %se_lun_group, ptr noundef %name, ptr noundef %tf_tpg_mappedlun_cit) #13
  %ml_stat_grps = getelementptr inbounds %struct.se_lun_acl, ptr %call22, i32 0, i32 4
  %tf_tpg_mappedlun_stat_cit = getelementptr inbounds %struct.target_fabric_configfs, ptr %5, i32 0, i32 26
  call void @config_group_init_type_name(ptr noundef %ml_stat_grps, ptr noundef nonnull @.str.56, ptr noundef %tf_tpg_mappedlun_stat_cit) #13
  %group_entry.i = getelementptr inbounds %struct.se_lun_acl, ptr %call22, i32 0, i32 4, i32 0, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_lun_acl, ptr %call22, i32 0, i32 3, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_lun_acl, ptr %call22, i32 0, i32 3, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %13, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i59, label %if.end25.configfs_add_default_group.exit_crit_edge

if.end25.configfs_add_default_group.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit

if.end.i.i.i59:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.se_lun_acl, ptr %call22, i32 0, i32 4, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %group_entry.i, ptr %13, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i59, %if.end25.configfs_add_default_group.exit_crit_edge
  call void @target_stat_setup_mappedlun_default_groups(ptr noundef nonnull %call22) #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

out:                                              ; preds = %if.then24, %if.end16.out_crit_edge, %do.end13
  call void @kfree(ptr noundef null) #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret, align 4
  %20 = inttoptr i32 %19 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %configfs_add_default_group.exit, %do.end
  %retval.0 = phi ptr [ %20, %out ], [ %se_lun_group, %configfs_add_default_group.exit ], [ inttoptr (i32 -12 to ptr), %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mapped_lun) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_drop_mappedlun(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_stat_grps = getelementptr i8, ptr %item, i32 80
  tail call void @configfs_remove_default_groups(ptr noundef %ml_stat_grps) #13
  tail call void @configfs_remove_default_groups(ptr noundef %item) #13
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @core_dev_init_initiator_node_lun_acl(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_stat_setup_mappedlun_default_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_mappedlun_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -16
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -8
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %se_tpg1 = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %se_tpg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg1, align 4
  tail call void @core_dev_free_initiator_node_lun_acl(ptr noundef %3, ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_mappedlun_link(ptr noundef %lun_acl_ci, ptr noundef %lun_ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %lun_acl_ci, i32 -16
  %ci_type = getelementptr inbounds %struct.config_item, ptr %lun_ci, i32 0, i32 6
  %0 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_type, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %ct_item_ops = getelementptr inbounds %struct.config_item_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_item_ops, align 4
  %cmp.not = icmp eq ptr %3, @target_fabric_port_item_ops
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %lun_ci) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr7 = getelementptr i8, ptr %lun_ci, i32 -256
  %lun_se_dev = getelementptr i8, ptr %lun_ci, i32 -232
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lun_se_dev, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %lun_shutdown = getelementptr i8, ptr %lun_ci, i32 -248
  %6 = ptrtoint ptr %lun_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lun_shutdown, align 8, !range !269
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #17
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %lun_tpg = getelementptr i8, ptr %lun_ci, i32 -16
  %8 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lun_tpg, align 8
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %lun_acl_ci, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent, align 4
  %ci_group = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci_group, align 4
  %ci_group24 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ci_group24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci_group24, align 4
  %ci_group26 = getelementptr inbounds %struct.config_item, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %ci_group26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ci_group26, align 4
  %ci_parent28 = getelementptr inbounds %struct.config_item, ptr %lun_ci, i32 0, i32 4
  %18 = ptrtoint ptr %ci_parent28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ci_parent28, align 4
  %ci_group29 = getelementptr inbounds %struct.config_item, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %ci_group29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ci_group29, align 4
  %ci_group31 = getelementptr inbounds %struct.config_item, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ci_group31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ci_group31, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %call35 = tail call i32 @strcmp(ptr noundef %25, ptr noundef %27) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end44, label %do.end40

do.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %25) #17
  br label %cleanup

if.end44:                                         ; preds = %if.end23
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %15, align 4
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %21, align 4
  %call47 = tail call i32 @strcmp(ptr noundef %29, ptr noundef %31) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end57, label %do.end52

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %25, ptr noundef %29) #17
  br label %cleanup

if.end57:                                         ; preds = %if.end44
  %32 = tail call i32 @llvm.read_register.i32(metadata !256) #13
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !270
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end57.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end57.rcu_read_lock.exit_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end57
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 696, ptr noundef nonnull @.str.104) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end57.rcu_read_lock.exit_crit_edge
  %se_lun_nacl = getelementptr i8, ptr %lun_acl_ci, i32 -8
  %36 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %se_lun_nacl, align 8
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr, align 8
  %call58 = tail call ptr @target_nacl_find_deve(ptr noundef %37, i64 noundef %39) #13
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %lun_access_ro61 = getelementptr inbounds %struct.se_dev_entry, ptr %call58, i32 0, i32 3
  %40 = ptrtoint ptr %lun_access_ro61 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %lun_access_ro61, align 8, !range !269
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool62 = icmp ne i8 %41, 0
  br label %if.end67

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %9, i32 0, i32 10
  %42 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_check_prod_mode_write_protect = getelementptr inbounds %struct.target_core_fabric_ops, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %tpg_check_prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tpg_check_prod_mode_write_protect, align 4
  %call63 = tail call i32 %45(ptr noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64 = icmp ne i32 %call63, 0
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then60
  %lun_access_ro.0.in = phi i1 [ %tobool62, %if.then60 ], [ %tobool64, %if.else ]
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i97, label %if.end67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i100

if.end67.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i100:                               ; preds = %if.end67
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %land.lhs.true.i100.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i102

land.lhs.true.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101, label %land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge, label %if.then.i103

land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 724, ptr noundef nonnull @.str.105) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i103, %land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i100.rcu_read_unlock.exit_crit_edge, %if.end67.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  %46 = tail call i32 @llvm.read_register.i32(metadata !256) #13
  %and.i.i.i.i.i104 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i105, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call69 = tail call i32 @core_dev_add_initiator_node_lun_acl(ptr noundef %9, ptr noundef %add.ptr, ptr noundef %add.ptr7, i1 noundef zeroext %lun_access_ro.0.in) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %do.end52, %do.end40, %do.end20, %do.end12, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -22, %do.end20 ], [ -22, %do.end40 ], [ -22, %do.end52 ], [ %call69, %rcu_read_unlock.exit ], [ -22, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_fabric_mappedlun_unlink(ptr noundef %lun_acl_ci, ptr noundef %lun_ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %lun_acl_ci, i32 -16
  %add.ptr4 = getelementptr i8, ptr %lun_ci, i32 -256
  %call5 = tail call i32 @core_dev_del_initiator_node_lun_acl(ptr noundef %add.ptr4, ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_dev_free_initiator_node_lun_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_nacl_find_deve(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_dev_add_initiator_node_lun_acl(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
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
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_dev_del_initiator_node_lun_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_mappedlun_write_protect_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -16
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -8
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !256) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !270
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 696, ptr noundef nonnull @.str.104) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %lun_access_ro = getelementptr inbounds %struct.se_dev_entry, ptr %call1, i32 0, i32 3
  %8 = ptrtoint ptr %lun_access_ro to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lun_access_ro, align 8, !range !269
  %10 = zext i8 %9 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.16, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %len.0 = phi i32 [ %call3, %if.then ], [ 0, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i6, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 724, ptr noundef nonnull @.str.105) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !271
  %11 = tail call i32 @llvm.read_register.i32(metadata !256) #13
  %and.i.i.i.i.i13 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_fabric_mappedlun_write_protect_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %wp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -16
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -8
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %se_tpg1 = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %se_tpg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wp) #13
  %4 = ptrtoint ptr %wp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %wp, align 4, !annotation !268
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %wp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6 = icmp ne i32 %6, 0
  %9 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_lun_nacl, align 8
  call void @core_update_device_list_access(i64 noundef %8, i1 noundef zeroext %tobool6, ptr noundef %10) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_fabric_mappedlun_write_protect_store.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_fabric_mappedlun_write_protect_store, %if.then12)) #13
          to label %cleanup [label %if.then12], !srcloc !266

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fabric_name, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.i, align 8
  %17 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool14.not, ptr @.str.110, ptr @.str.109
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_fabric_mappedlun_write_protect_store.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.108, ptr noundef %14, ptr noundef %1, i64 noundef %16, ptr noundef nonnull %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.then12 ], [ %count, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_update_device_list_access(i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @target_core_mappedlun_stat_mkdir(ptr nocapture noundef readnone %group, ptr nocapture noundef readnone %name) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -38 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @target_core_mappedlun_stat_rmdir(ptr nocapture noundef %group, ptr nocapture noundef %item) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !72, !74, !75, !77, !79, !80, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !122, !123, !124, !126, !128, !130, !131, !132, !133, !135, !137, !138, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174, !176, !178, !180, !181, !182, !183, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !241, !243, !244, !246, !247, !248, !249, !250, !252, !253, !254}
!llvm.named.register.sp = !{!256}
!llvm.module.flags = !{!257, !258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1095, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @target_fabric_setup_discovery_cit.__UNIQUE_ID_ddebug280, !1, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1094, i32 1}
!9 = !{ptr @target_fabric_setup_wwn_cit.__UNIQUE_ID_ddebug279, !8, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @target_fabric_wwn_group_ops, !12, !"target_fabric_wwn_group_ops", i1 false, i1 false}
!12 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1089, i32 41}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1052, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @target_fabric_make_wwn._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @target_fabric_make_wwn._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1065, i32 55}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1069, i32 49}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 986, i32 1}
!24 = !{ptr @target_fabric_setup_wwn_fabric_stats_cit.__UNIQUE_ID_ddebug277, !23, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1039, i32 1}
!28 = !{ptr @target_fabric_setup_wwn_param_cit.__UNIQUE_ID_ddebug278, !27, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @target_fabric_wwn_param_attrs, !31, !"target_fabric_wwn_param_attrs", i1 false, i1 false}
!31 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1034, i32 35}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1032, i32 1}
!34 = !{ptr @target_fabric_wwn_attr_cmd_completion_affinity, !33, !"target_fabric_wwn_attr_cmd_completion_affinity", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 996, i32 23}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 1022, i32 4}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @target_fabric_wwn_cmd_completion_affinity_store._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @target_fabric_wwn_cmd_completion_affinity_store._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 976, i32 1}
!47 = !{ptr @target_fabric_setup_tpg_cit.__UNIQUE_ID_ddebug276, !46, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @target_fabric_tpg_item_ops, !50, !"target_fabric_tpg_item_ops", i1 false, i1 false}
!50 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 967, i32 40}
!51 = !{ptr @target_fabric_tpg_group_ops, !52, !"target_fabric_tpg_group_ops", i1 false, i1 false}
!52 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 971, i32 41}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 901, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @target_fabric_make_tpg._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @target_fabric_make_tpg._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 912, i32 54}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 917, i32 53}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 922, i32 54}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 927, i32 57}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 932, i32 55}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 884, i32 2}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @target_fabric_setup_tpg_base_cit.__UNIQUE_ID_ddebug275, !69, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 848, i32 1}
!74 = !{ptr @target_fabric_tpg_base_attr_enable, !73, !"target_fabric_tpg_base_attr_enable", i1 false, i1 false}
!75 = !{ptr @target_fabric_tpg_base_item_ops, !76, !"target_fabric_tpg_base_item_ops", i1 false, i1 false}
!76 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 814, i32 40}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 708, i32 1}
!79 = !{ptr @target_fabric_setup_tpg_port_cit.__UNIQUE_ID_ddebug269, !78, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!80 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @target_fabric_port_item_ops, !82, !"target_fabric_port_item_ops", i1 false, i1 false}
!82 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 702, i32 40}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 633, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @target_fabric_port_link._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @target_fabric_port_link._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 639, i32 3}
!90 = !{ptr @target_fabric_port_link._entry.36, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @target_fabric_port_link._entry_ptr.38, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 649, i32 3}
!94 = !{ptr @target_fabric_port_link._entry.39, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @target_fabric_port_link._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 655, i32 3}
!98 = !{ptr @target_fabric_port_link._entry.42, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @target_fabric_port_link._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @target_fabric_port_attrs, !101, !"target_fabric_port_attrs", i1 false, i1 false}
!101 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 611, i32 35}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 606, i32 1}
!104 = !{ptr @target_fabric_port_attr_alua_tg_pt_gp, !103, !"target_fabric_port_attr_alua_tg_pt_gp", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 607, i32 1}
!107 = !{ptr @target_fabric_port_attr_alua_tg_pt_offline, !106, !"target_fabric_port_attr_alua_tg_pt_offline", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 608, i32 1}
!110 = !{ptr @target_fabric_port_attr_alua_tg_pt_status, !109, !"target_fabric_port_attr_alua_tg_pt_status", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 609, i32 1}
!113 = !{ptr @target_fabric_port_attr_alua_tg_pt_write_md, !112, !"target_fabric_port_attr_alua_tg_pt_write_md", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 733, i32 1}
!116 = !{ptr @target_fabric_setup_tpg_port_stat_cit.__UNIQUE_ID_ddebug270, !115, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!117 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @target_fabric_port_stat_group_ops, !119, !"target_fabric_port_stat_group_ops", i1 false, i1 false}
!119 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 728, i32 41}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 794, i32 1}
!122 = !{ptr @target_fabric_setup_tpg_lun_cit.__UNIQUE_ID_ddebug271, !121, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!123 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @target_fabric_lun_group_ops, !125, !"target_fabric_lun_group_ops", i1 false, i1 false}
!125 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 789, i32 41}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 750, i32 19}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 751, i32 3}
!130 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @target_fabric_make_lun._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @target_fabric_make_lun._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 767, i32 4}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 506, i32 1}
!137 = !{ptr @target_fabric_setup_tpg_np_cit.__UNIQUE_ID_ddebug267, !136, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!138 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @target_fabric_np_group_ops, !140, !"target_fabric_np_group_ops", i1 false, i1 false}
!140 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 501, i32 41}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 476, i32 3}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @target_fabric_make_np._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @target_fabric_make_np._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 460, i32 1}
!148 = !{ptr @target_fabric_setup_tpg_np_base_cit.__UNIQUE_ID_ddebug266, !147, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!149 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @target_fabric_np_base_item_ops, !151, !"target_fabric_np_base_item_ops", i1 false, i1 false}
!151 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 456, i32 40}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 798, i32 1}
!154 = !{ptr @target_fabric_setup_tpg_attrib_cit.__UNIQUE_ID_ddebug272, !153, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!155 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 799, i32 1}
!158 = !{ptr @target_fabric_setup_tpg_auth_cit.__UNIQUE_ID_ddebug273, !157, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!159 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 800, i32 1}
!162 = !{ptr @target_fabric_setup_tpg_param_cit.__UNIQUE_ID_ddebug274, !161, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!163 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 440, i32 1}
!166 = !{ptr @target_fabric_setup_tpg_nacl_cit.__UNIQUE_ID_ddebug265, !165, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!167 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @target_fabric_nacl_group_ops, !169, !"target_fabric_nacl_group_ops", i1 false, i1 false}
!169 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 435, i32 41}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 356, i32 1}
!172 = !{ptr @target_fabric_setup_tpg_nacl_base_cit.__UNIQUE_ID_ddebug263, !171, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!173 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @target_fabric_nacl_base_item_ops, !175, !"target_fabric_nacl_base_item_ops", i1 false, i1 false}
!175 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 347, i32 40}
!176 = !{ptr @target_fabric_nacl_base_group_ops, !177, !"target_fabric_nacl_base_group_ops", i1 false, i1 false}
!177 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 351, i32 41}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 279, i32 3}
!180 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @target_fabric_make_mappedlun._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @target_fabric_make_mappedlun._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 282, i32 34}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 287, i32 3}
!187 = !{ptr @target_fabric_make_mappedlun._entry.76, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @target_fabric_make_mappedlun._entry_ptr.78, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 258, i32 1}
!191 = !{ptr @target_fabric_setup_tpg_nacl_attrib_cit.__UNIQUE_ID_ddebug260, !190, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!192 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 259, i32 1}
!195 = !{ptr @target_fabric_setup_tpg_nacl_auth_cit.__UNIQUE_ID_ddebug261, !194, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!196 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 260, i32 1}
!199 = !{ptr @target_fabric_setup_tpg_nacl_param_cit.__UNIQUE_ID_ddebug262, !198, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!200 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 366, i32 1}
!203 = !{ptr @target_fabric_setup_tpg_nacl_stat_cit.__UNIQUE_ID_ddebug264, !202, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!204 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 227, i32 1}
!207 = !{ptr @target_fabric_setup_tpg_mappedlun_cit.__UNIQUE_ID_ddebug258, !206, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!208 = !{ptr @.str.88, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @target_fabric_mappedlun_item_ops, !210, !"target_fabric_mappedlun_item_ops", i1 false, i1 false}
!210 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 221, i32 40}
!211 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 79, i32 3}
!213 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @target_fabric_mappedlun_link._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @target_fabric_mappedlun_link._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 88, i32 3}
!218 = !{ptr @target_fabric_mappedlun_link._entry.91, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @target_fabric_mappedlun_link._entry_ptr.93, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.95, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 92, i32 3}
!222 = !{ptr @target_fabric_mappedlun_link._entry.94, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @target_fabric_mappedlun_link._entry_ptr.96, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 107, i32 3}
!226 = !{ptr @target_fabric_mappedlun_link._entry.97, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @target_fabric_mappedlun_link._entry_ptr.99, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.101, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 112, i32 3}
!230 = !{ptr @target_fabric_mappedlun_link._entry.100, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @target_fabric_mappedlun_link._entry_ptr.102, !229, !"_entry_ptr", i1 false, i1 false}
!232 = distinct !{null, !233, !"__warned", i1 false, i1 false}
!233 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!234 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.104, !233, !"<string literal>", i1 false, i1 false}
!236 = distinct !{null, !237, !"__warned", i1 false, i1 false}
!237 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!238 = !{ptr @.str.105, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @target_fabric_mappedlun_attrs, !240, !"target_fabric_mappedlun_attrs", i1 false, i1 false}
!240 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 207, i32 35}
!241 = !{ptr @.str.106, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 205, i32 1}
!243 = !{ptr @target_fabric_mappedlun_attr_write_protect, !242, !"target_fabric_mappedlun_attr_write_protect", i1 false, i1 false}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 196, i32 2}
!246 = !{ptr @.str.108, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @target_fabric_mappedlun_write_protect_store.__UNIQUE_ID_ddebug257, !245, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!248 = !{ptr @.str.109, !245, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.110, !245, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.111, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 253, i32 1}
!252 = !{ptr @target_fabric_setup_tpg_mappedlun_stat_cit.__UNIQUE_ID_ddebug259, !251, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!253 = !{ptr @.str.112, !251, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @target_fabric_mappedlun_stat_group_ops, !255, !"target_fabric_mappedlun_stat_group_ops", i1 false, i1 false}
!255 = !{!"../drivers/target/target_core_fabric_configfs.c", i32 248, i32 41}
!256 = !{!"sp"}
!257 = !{i32 1, !"wchar_size", i32 2}
!258 = !{i32 1, !"min_enum_size", i32 4}
!259 = !{i32 8, !"branch-target-enforcement", i32 0}
!260 = !{i32 8, !"sign-return-address", i32 0}
!261 = !{i32 8, !"sign-return-address-all", i32 0}
!262 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!263 = !{i32 7, !"uwtable", i32 1}
!264 = !{i32 7, !"frame-pointer", i32 2}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{i64 2148982599, i64 2148982604, i64 2148982617, i64 2148982661, i64 2148982695, i64 2148982716}
!267 = !{!"branch_weights", i32 1, i32 2000}
!268 = !{!"auto-init"}
!269 = !{i8 0, i8 2}
!270 = !{i64 2149385381}
!271 = !{i64 2149385647}
