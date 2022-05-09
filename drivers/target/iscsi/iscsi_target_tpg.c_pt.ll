; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_tpg.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_tpg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.iscsit_global = type { i32, i32, i32, i32, ptr, %struct.spinlock, %struct.iscsi_node_acl, ptr }
%struct.iscsi_node_acl = type { %struct.se_node_acl, %struct.iscsi_node_attrib, %struct.iscsi_node_auth, %struct.iscsi_node_stat_grps }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.iscsi_node_stat_grps = type { %struct.config_group, %struct.config_group }
%struct.iscsi_tiqn = type { [224 x i8], i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.se_wwn, %struct.iscsi_wwn_stat_grps, i32, [64 x i8], %struct.iscsi_sess_err_stats, %struct.iscsi_login_stats, %struct.iscsi_logout_stats }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.iscsi_wwn_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.iscsi_sess_err_stats = type { %struct.spinlock, i32, i32, i32, i32, [224 x i8], [100 x i8] }
%struct.iscsi_login_stats = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.__kernel_sockaddr_storage, [224 x i8], [72 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.71 }
%union.anon.71 = type { ptr, [124 x i8] }
%struct.iscsi_logout_stats = type { %struct.spinlock, i32, i32, [76 x i8] }
%struct.iscsi_param = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i32, %struct.list_head, [100 x i8] }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.iscsi_tpg_np = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.se_tpg_np, %struct.spinlock, %struct.completion, %struct.kref }
%struct.se_tpg_np = type { ptr, %struct.config_group }
%struct.iscsi_np = type { i32, i32, i32, i32, i8, %struct.atomic_t, i32, i32, i32, %struct.spinlock, %struct.completion, ptr, %struct.__kernel_sockaddr_storage, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, [48 x i8] }

@iscsit_alloc_portal_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Unable to allocate struct iscsi_portal_group\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsit_alloc_portal_group\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/target/iscsi/iscsi_target_tpg.c\00", [56 x i8] zeroinitializer }, align 32
@iscsit_alloc_portal_group._entry_ptr = internal global ptr @iscsit_alloc_portal_group._entry, section ".printk_index", align 4
@iscsit_alloc_portal_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&tpg->tpg_access_lock\00", [42 x i8] zeroinitializer }, align 32
@iscsit_alloc_portal_group.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tpg->tpg_state_lock\00", [43 x i8] zeroinitializer }, align 32
@iscsit_alloc_portal_group.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&tpg->tpg_np_lock\00", [46 x i8] zeroinitializer }, align 32
@iscsit_load_discovery_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsit_load_discovery_tpg\00", [38 x i8] zeroinitializer }, align 32
@iscsit_load_discovery_tpg._entry_ptr = internal global ptr @iscsit_load_discovery_tpg._entry, section ".printk_index", align 4
@iscsi_ops = external dso_local constant %struct.target_core_fabric_ops, align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AuthMethod\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAP,None\00", [22 x i8] zeroinitializer }, align 32
@iscsit_global = external dso_local local_unnamed_addr global ptr, align 4
@iscsit_load_discovery_tpg.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CORE[0] - Allocated Discovery TPG\0A\00", [61 x i8] zeroinitializer }, align 32
@iscsit_tpg_add_portal_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013Unable to add iSCSI Target Portal Group: %d while not in TPG_STATE_FREE state.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsit_tpg_add_portal_group\00", [36 x i8] zeroinitializer }, align 32
@iscsit_tpg_add_portal_group._entry_ptr = internal global ptr @iscsit_tpg_add_portal_group._entry, section ".printk_index", align 4
@iscsit_tpg_add_portal_group.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CORE[%s]_TPG[%hu] - Added iSCSI Target Portal Group\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_tpg_del_portal_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013Unable to delete iSCSI Target Portal Group: %hu while active sessions exist, and force=0\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsit_tpg_del_portal_group\00", [36 x i8] zeroinitializer }, align 32
@iscsit_tpg_del_portal_group._entry_ptr = internal global ptr @iscsit_tpg_del_portal_group._entry, section ".printk_index", align 4
@iscsit_tpg_del_portal_group.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CORE[%s]_TPG[%hu] - Deleted iSCSI Target Portal Group\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsit_tpg_enable_portal_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013iSCSI target portal group: %hu is already active, ignoring request.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iscsit_tpg_enable_portal_group\00", [33 x i8] zeroinitializer }, align 32
@iscsit_tpg_enable_portal_group._entry_ptr = internal global ptr @iscsit_tpg_enable_portal_group._entry, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CHAP\00", [27 x i8] zeroinitializer }, align 32
@iscsit_tpg_enable_portal_group.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.20, ptr @.str.2, ptr @.str.23, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"iSCSI_TPG[%hu] - Enabled iSCSI Target Portal Group\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsit_tpg_disable_portal_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013iSCSI Target Portal Group: %hu is already inactive, ignoring request.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iscsit_tpg_disable_portal_group\00", [32 x i8] zeroinitializer }, align 32
@iscsit_tpg_disable_portal_group._entry_ptr = internal global ptr @iscsit_tpg_disable_portal_group._entry, section ".printk_index", align 4
@iscsit_tpg_disable_portal_group._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013Unable to disable iSCSI Target Portal Group: %hu while active sessions exist, and force=0\0A\00", [35 x i8] zeroinitializer }, align 32
@iscsit_tpg_disable_portal_group._entry_ptr.28 = internal global ptr @iscsit_tpg_disable_portal_group._entry.26, section ".printk_index", align 4
@iscsit_tpg_disable_portal_group.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str.2, ptr @.str.29, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"iSCSI_TPG[%hu] - Disabled iSCSI Target Portal Group\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_tpg_add_network_portal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013Network Portal: %pISc already exists on a different TPG on %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_tpg_add_network_portal\00", [34 x i8] zeroinitializer }, align 32
@iscsit_tpg_add_network_portal._entry_ptr = internal global ptr @iscsit_tpg_add_network_portal._entry, section ".printk_index", align 4
@iscsit_tpg_add_network_portal._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Unable to allocate memory for struct iscsi_tpg_np.\0A\00", [42 x i8] zeroinitializer }, align 32
@iscsit_tpg_add_network_portal._entry_ptr.34 = internal global ptr @iscsit_tpg_add_network_portal._entry.32, section ".printk_index", align 4
@iscsit_tpg_add_network_portal.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&tpg_np->tpg_np_parent_lock\00", [36 x i8] zeroinitializer }, align 32
@iscsit_tpg_add_network_portal.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.31, ptr @.str.2, ptr @.str.36, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CORE[%s] - Added Network Portal: %pISpc,%hu on %s\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsit_tpg_del_network_portal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Unable to locate struct iscsi_np from struct iscsi_tpg_np\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_tpg_del_network_portal\00", [34 x i8] zeroinitializer }, align 32
@iscsit_tpg_del_network_portal._entry_ptr = internal global ptr @iscsit_tpg_del_network_portal._entry, section ".printk_index", align 4
@iscsit_tpg_del_network_portal._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iscsit_tpg_del_network_portal() failed: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsit_tpg_del_network_portal._entry_ptr.41 = internal global ptr @iscsit_tpg_del_network_portal._entry.39, section ".printk_index", align 4
@iscsit_ta_authentication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013Illegal value for authentication parameter: %u, ignoring request.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsit_ta_authentication\00", [39 x i8] zeroinitializer }, align 32
@iscsit_ta_authentication._entry_ptr = internal global ptr @iscsit_ta_authentication._entry, section ".printk_index", align 4
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",None\00", [26 x i8] zeroinitializer }, align 32
@iscsit_ta_authentication.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.2, ptr @.str.47, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s iSCSI Authentication Methods for TPG: %hu.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Enforcing\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Disabling\00", [22 x i8] zeroinitializer }, align 32
@iscsit_ta_login_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Requested Login Timeout %u larger than maximum %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iscsit_ta_login_timeout\00", [40 x i8] zeroinitializer }, align 32
@iscsit_ta_login_timeout._entry_ptr = internal global ptr @iscsit_ta_login_timeout._entry, section ".printk_index", align 4
@iscsit_ta_login_timeout._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Requested Logout Timeout %u smaller than minimum %u\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsit_ta_login_timeout._entry_ptr.54 = internal global ptr @iscsit_ta_login_timeout._entry.52, section ".printk_index", align 4
@iscsit_ta_login_timeout.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.51, ptr @.str.2, ptr @.str.55, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Set Logout Timeout to %u for Target Portal Group %hu\0A\00", [42 x i8] zeroinitializer }, align 32
@iscsit_ta_netif_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013Requested Network Interface Timeout %u larger than maximum %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iscsit_ta_netif_timeout\00", [40 x i8] zeroinitializer }, align 32
@iscsit_ta_netif_timeout._entry_ptr = internal global ptr @iscsit_ta_netif_timeout._entry, section ".printk_index", align 4
@iscsit_ta_netif_timeout._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013Requested Network Interface Timeout %u smaller than minimum %u\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsit_ta_netif_timeout._entry_ptr.60 = internal global ptr @iscsit_ta_netif_timeout._entry.58, section ".printk_index", align 4
@iscsit_ta_netif_timeout.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.57, ptr @.str.2, ptr @.str.61, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Set Network Interface Timeout to %u for Target Portal Group %hu\0A\00", [63 x i8] zeroinitializer }, align 32
@iscsit_ta_generate_node_acls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Illegal value %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iscsit_ta_generate_node_acls\00", [35 x i8] zeroinitializer }, align 32
@iscsit_ta_generate_node_acls._entry_ptr = internal global ptr @iscsit_ta_generate_node_acls._entry, section ".printk_index", align 4
@iscsit_ta_generate_node_acls.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"iSCSI_TPG[%hu] - Generate Initiator Portal Group ACLs: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@iscsit_ta_generate_node_acls.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.63, ptr @.str.2, ptr @.str.67, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Explicitly setting cache_dynamic_acls=1 when generate_node_acls=1\0A\00", [61 x i8] zeroinitializer }, align 32
@iscsit_ta_default_cmdsn_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013Requested Default Queue Depth: %u larger than maximum %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_ta_default_cmdsn_depth\00", [34 x i8] zeroinitializer }, align 32
@iscsit_ta_default_cmdsn_depth._entry_ptr = internal global ptr @iscsit_ta_default_cmdsn_depth._entry, section ".printk_index", align 4
@iscsit_ta_default_cmdsn_depth._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Requested Default Queue Depth: %u smaller than minimum %u\0A\00", [35 x i8] zeroinitializer }, align 32
@iscsit_ta_default_cmdsn_depth._entry_ptr.72 = internal global ptr @iscsit_ta_default_cmdsn_depth._entry.70, section ".printk_index", align 4
@iscsit_ta_default_cmdsn_depth.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.69, ptr @.str.2, ptr @.str.73, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"iSCSI_TPG[%hu] - Set Default CmdSN TCQ Depth to %u\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsit_ta_cache_dynamic_acls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.74, ptr @.str.2, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iscsit_ta_cache_dynamic_acls\00", [35 x i8] zeroinitializer }, align 32
@iscsit_ta_cache_dynamic_acls._entry_ptr = internal global ptr @iscsit_ta_cache_dynamic_acls._entry, section ".printk_index", align 4
@iscsit_ta_cache_dynamic_acls.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Skipping cache_dynamic_acls=0 when generate_node_acls=1\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsit_ta_cache_dynamic_acls.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.74, ptr @.str.2, ptr @.str.76, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"iSCSI_TPG[%hu] - Cache Dynamic Initiator Portal Group ACLs %s\0A\00", [33 x i8] zeroinitializer }, align 32
@iscsit_ta_demo_mode_write_protect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.77, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_ta_demo_mode_write_protect\00", [62 x i8] zeroinitializer }, align 32
@iscsit_ta_demo_mode_write_protect._entry_ptr = internal global ptr @iscsit_ta_demo_mode_write_protect._entry, section ".printk_index", align 4
@iscsit_ta_demo_mode_write_protect.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"iSCSI_TPG[%hu] - Demo Mode Write Protect bit: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@iscsit_ta_prod_mode_write_protect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.81, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_ta_prod_mode_write_protect\00", [62 x i8] zeroinitializer }, align 32
@iscsit_ta_prod_mode_write_protect._entry_ptr = internal global ptr @iscsit_ta_prod_mode_write_protect._entry, section ".printk_index", align 4
@iscsit_ta_prod_mode_write_protect.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"iSCSI_TPG[%hu] - Production Mode Write Protect bit: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsit_ta_demo_mode_discovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.83, ptr @.str.2, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_ta_demo_mode_discovery\00", [34 x i8] zeroinitializer }, align 32
@iscsit_ta_demo_mode_discovery._entry_ptr = internal global ptr @iscsit_ta_demo_mode_discovery._entry, section ".printk_index", align 4
@iscsit_ta_demo_mode_discovery.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"iSCSI_TPG[%hu] - Demo Mode Discovery bit: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsit_ta_default_erl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Illegal value for default_erl: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_ta_default_erl\00", [42 x i8] zeroinitializer }, align 32
@iscsit_ta_default_erl._entry_ptr = internal global ptr @iscsit_ta_default_erl._entry, section ".printk_index", align 4
@iscsit_ta_default_erl.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iSCSI_TPG[%hu] - DefaultERL: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@iscsit_ta_t10_pi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.88, ptr @.str.2, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsit_ta_t10_pi\00", [47 x i8] zeroinitializer }, align 32
@iscsit_ta_t10_pi._entry_ptr = internal global ptr @iscsit_ta_t10_pi._entry, section ".printk_index", align 4
@iscsit_ta_t10_pi.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"iSCSI_TPG[%hu] - T10 Protection information bit: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_ta_fabric_prot_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Illegal value for fabric_prot_type: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsit_ta_fabric_prot_type\00", [37 x i8] zeroinitializer }, align 32
@iscsit_ta_fabric_prot_type._entry_ptr = internal global ptr @iscsit_ta_fabric_prot_type._entry, section ".printk_index", align 4
@iscsit_ta_fabric_prot_type.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"iSCSI_TPG[%hu] - T10 Fabric Protection Type: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsit_ta_tpg_enabled_sendtargets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.93, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_ta_tpg_enabled_sendtargets\00", [62 x i8] zeroinitializer }, align 32
@iscsit_ta_tpg_enabled_sendtargets._entry_ptr = internal global ptr @iscsit_ta_tpg_enabled_sendtargets._entry, section ".printk_index", align 4
@iscsit_ta_tpg_enabled_sendtargets.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"iSCSI_TPG[%hu] - TPG enabled bit required for SendTargets: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@iscsit_ta_login_keys_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.95, ptr @.str.2, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iscsit_ta_login_keys_workaround\00", [32 x i8] zeroinitializer }, align 32
@iscsit_ta_login_keys_workaround._entry_ptr = internal global ptr @iscsit_ta_login_keys_workaround._entry, section ".printk_index", align 4
@iscsit_ta_login_keys_workaround.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"iSCSI_TPG[%hu] - TPG enabled bit for login keys workaround: %s \00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@iscsit_clear_tpg_np_login_threads._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013struct iscsi_tpg_np->tpg_np is NULL!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_clear_tpg_np_login_threads\00", [62 x i8] zeroinitializer }, align 32
@iscsit_clear_tpg_np_login_threads._entry_ptr = internal global ptr @iscsit_clear_tpg_np_login_threads._entry, section ".printk_index", align 4
@iscsit_clear_tpg_np_login_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.101, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsit_clear_tpg_np_login_thread\00", [63 x i8] zeroinitializer }, align 32
@iscsit_clear_tpg_np_login_thread._entry_ptr = internal global ptr @iscsit_clear_tpg_np_login_thread._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@iscsit_tpg_release_np.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_tpg_release_np\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CORE[%s] - Removed Network Portal: %pISpc,%hu on %s\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 31, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 40, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 42, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 43, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 58, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 83, i32 36 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 87, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 97, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 231, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 249, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 274, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 297, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 311, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 325, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 326, i32 42 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 342, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 359, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 373, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 385, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 467, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 476, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 490, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 511, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 548, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 564, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 595, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 608, i32 32 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 634, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 641, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 654, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 658, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 664, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 677, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 682, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 689, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 702, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 707, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 711, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 726, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 731, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 738, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 751, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 756, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 762, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 776, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 781, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 794, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 799, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 813, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 818, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 832, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 837, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 849, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 854, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 868, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 873, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 886, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 891, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 904, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 909, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 33, i32 31 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 34, i32 28 }
@___asan_gen_.454 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 35, i32 39 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 193, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 175, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 87, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.481 = private constant [43 x i8] c"../drivers/target/iscsi/iscsi_target_tpg.c\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 525, i32 2 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @iscsit_alloc_portal_group._entry, ptr @iscsit_alloc_portal_group._entry_ptr, ptr @iscsit_clear_tpg_np_login_thread._entry, ptr @iscsit_clear_tpg_np_login_thread._entry_ptr, ptr @iscsit_clear_tpg_np_login_threads._entry, ptr @iscsit_clear_tpg_np_login_threads._entry_ptr, ptr @iscsit_load_discovery_tpg._entry, ptr @iscsit_load_discovery_tpg._entry_ptr, ptr @iscsit_ta_authentication._entry, ptr @iscsit_ta_authentication._entry_ptr, ptr @iscsit_ta_cache_dynamic_acls._entry, ptr @iscsit_ta_cache_dynamic_acls._entry_ptr, ptr @iscsit_ta_default_cmdsn_depth._entry, ptr @iscsit_ta_default_cmdsn_depth._entry.70, ptr @iscsit_ta_default_cmdsn_depth._entry_ptr, ptr @iscsit_ta_default_cmdsn_depth._entry_ptr.72, ptr @iscsit_ta_default_erl._entry, ptr @iscsit_ta_default_erl._entry_ptr, ptr @iscsit_ta_demo_mode_discovery._entry, ptr @iscsit_ta_demo_mode_discovery._entry_ptr, ptr @iscsit_ta_demo_mode_write_protect._entry, ptr @iscsit_ta_demo_mode_write_protect._entry_ptr, ptr @iscsit_ta_fabric_prot_type._entry, ptr @iscsit_ta_fabric_prot_type._entry_ptr, ptr @iscsit_ta_generate_node_acls._entry, ptr @iscsit_ta_generate_node_acls._entry_ptr, ptr @iscsit_ta_login_keys_workaround._entry, ptr @iscsit_ta_login_keys_workaround._entry_ptr, ptr @iscsit_ta_login_timeout._entry, ptr @iscsit_ta_login_timeout._entry.52, ptr @iscsit_ta_login_timeout._entry_ptr, ptr @iscsit_ta_login_timeout._entry_ptr.54, ptr @iscsit_ta_netif_timeout._entry, ptr @iscsit_ta_netif_timeout._entry.58, ptr @iscsit_ta_netif_timeout._entry_ptr, ptr @iscsit_ta_netif_timeout._entry_ptr.60, ptr @iscsit_ta_prod_mode_write_protect._entry, ptr @iscsit_ta_prod_mode_write_protect._entry_ptr, ptr @iscsit_ta_t10_pi._entry, ptr @iscsit_ta_t10_pi._entry_ptr, ptr @iscsit_ta_tpg_enabled_sendtargets._entry, ptr @iscsit_ta_tpg_enabled_sendtargets._entry_ptr, ptr @iscsit_tpg_add_network_portal._entry, ptr @iscsit_tpg_add_network_portal._entry.32, ptr @iscsit_tpg_add_network_portal._entry_ptr, ptr @iscsit_tpg_add_network_portal._entry_ptr.34, ptr @iscsit_tpg_add_portal_group._entry, ptr @iscsit_tpg_add_portal_group._entry_ptr, ptr @iscsit_tpg_del_network_portal._entry, ptr @iscsit_tpg_del_network_portal._entry.39, ptr @iscsit_tpg_del_network_portal._entry_ptr, ptr @iscsit_tpg_del_network_portal._entry_ptr.41, ptr @iscsit_tpg_del_portal_group._entry, ptr @iscsit_tpg_del_portal_group._entry_ptr, ptr @iscsit_tpg_disable_portal_group._entry, ptr @iscsit_tpg_disable_portal_group._entry.26, ptr @iscsit_tpg_disable_portal_group._entry_ptr, ptr @iscsit_tpg_disable_portal_group._entry_ptr.28, ptr @iscsit_tpg_enable_portal_group._entry, ptr @iscsit_tpg_enable_portal_group._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @iscsit_alloc_portal_group.__key, ptr @.str.3, ptr @iscsit_alloc_portal_group.__key.4, ptr @.str.5, ptr @iscsit_alloc_portal_group.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @iscsit_tpg_add_network_portal.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @sema_init.__key, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @init_completion.__key, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_portal_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_portal_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_portal_group.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_portal_group.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_load_discovery_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_add_portal_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_del_portal_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_enable_portal_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_disable_portal_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_disable_portal_group._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_add_network_portal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_add_network_portal._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_add_network_portal.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_del_network_portal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tpg_del_network_portal._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_authentication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_login_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_login_timeout._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_netif_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_netif_timeout._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_generate_node_acls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_default_cmdsn_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_default_cmdsn_depth._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_cache_dynamic_acls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_demo_mode_write_protect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_prod_mode_write_protect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_demo_mode_discovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_default_erl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_t10_pi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_fabric_prot_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_tpg_enabled_sendtargets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_ta_login_keys_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_clear_tpg_np_login_threads._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_clear_tpg_np_login_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_alloc_portal_group(ptr noundef %tiqn, i16 noundef zeroext %tpgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2304) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt2 = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %tpgt, ptr %tpgt2, align 8
  %tpg_state = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tpg_state, align 4
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 15
  %3 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tiqn, ptr %tpg_tiqn, align 16
  %tpg_gnp_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tpg_gnp_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %tpg_gnp_list, ptr %tpg_gnp_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tpg_gnp_list, ptr %prev.i, align 8
  %tpg_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 17
  %6 = ptrtoint ptr %tpg_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %tpg_list, ptr %tpg_list, align 4
  %prev.i24 = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tpg_list, ptr %prev.i24, align 8
  %tpg_access_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %tpg_access_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @iscsit_alloc_portal_group.__key) #11
  %np_login_sem = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11
  %wait_list1.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %np_login_sem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %np_login_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 2
  %10 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 3
  %11 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 4
  %12 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.97, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 4, i32 5
  %16 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 8
  %18 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 11, i32 2, i32 1
  %19 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 8
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %tpg_state_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %tpg_state_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @iscsit_alloc_portal_group.__key.4, i16 noundef signext 3) #11
  %tpg_np_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %tpg_np_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @iscsit_alloc_portal_group.__key.6, i16 noundef signext 3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_load_discovery_tpg() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsit_alloc_portal_group(ptr noundef null, i16 noundef zeroext 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tpg_se_tpg = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 9
  %se_tpg_tfo = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 9, i32 10
  %0 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iscsi_ops, ptr %se_tpg_tfo, align 8
  %call3 = tail call i32 @core_tpg_register(ptr noundef null, ptr noundef %tpg_se_tpg, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sid = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %sid, align 4
  %tpg_attrib.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %tpg_attrib.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %tpg_attrib.i, align 4
  %login_timeout.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %login_timeout.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15, ptr %login_timeout.i, align 4
  %netif_timeout.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %netif_timeout.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %netif_timeout.i, align 4
  %default_cmdsn_depth.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 5
  %5 = ptrtoint ptr %default_cmdsn_depth.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %default_cmdsn_depth.i, align 4
  %generate_node_acls.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 3
  %6 = ptrtoint ptr %generate_node_acls.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %generate_node_acls.i, align 4
  %cache_dynamic_acls.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 4
  %7 = ptrtoint ptr %cache_dynamic_acls.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cache_dynamic_acls.i, align 4
  %demo_mode_write_protect.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %demo_mode_write_protect.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %demo_mode_write_protect.i, align 4
  %prod_mode_write_protect.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 7
  %9 = ptrtoint ptr %prod_mode_write_protect.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %prod_mode_write_protect.i, align 4
  %demo_mode_discovery.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 8
  %10 = ptrtoint ptr %demo_mode_discovery.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %demo_mode_discovery.i, align 4
  %default_erl.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 9
  %11 = ptrtoint ptr %default_erl.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %default_erl.i, align 4
  %t10_pi.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 10
  %12 = ptrtoint ptr %t10_pi.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %t10_pi.i, align 4
  %fabric_prot_type.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 11
  %13 = ptrtoint ptr %fabric_prot_type.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fabric_prot_type.i, align 4
  %tpg_enabled_sendtargets.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 12
  %14 = ptrtoint ptr %tpg_enabled_sendtargets.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %tpg_enabled_sendtargets.i, align 4
  %login_keys_workaround.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 12, i32 13
  %15 = ptrtoint ptr %login_keys_workaround.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %login_keys_workaround.i, align 4
  %param_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 14
  %call6 = tail call i32 @iscsi_create_default_params(ptr noundef %param_list) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end5
  %16 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %param_list, align 4
  %call11 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.9, ptr noundef %17) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.free_pl_out_crit_edge, label %if.end14

if.end9.free_pl_out_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pl_out

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i32 @iscsi_update_param_value(ptr noundef nonnull %call11, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.free_pl_out_crit_edge, label %if.end18

if.end14.free_pl_out_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pl_out

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %tpg_attrib.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tpg_attrib.i, align 4
  %tpg_state_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #11
  %tpg_state = getelementptr inbounds %struct.iscsi_portal_group, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %tpg_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %20 = load ptr, ptr @iscsit_global, align 4
  %discovery_tpg = getelementptr inbounds %struct.iscsit_global, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %discovery_tpg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %discovery_tpg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_load_discovery_tpg.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_load_discovery_tpg, %if.then26)) #11
          to label %cleanup [label %if.then26], !srcloc !257

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_load_discovery_tpg.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.12) #11
  br label %cleanup

free_pl_out:                                      ; preds = %if.end14.free_pl_out_crit_edge, %if.end9.free_pl_out_crit_edge
  %22 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %param_list, align 4
  tail call void @iscsi_release_param_list(ptr noundef %23) #11
  br label %out

out:                                              ; preds = %free_pl_out, %if.end5.out_crit_edge
  %24 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp32 = icmp eq i32 %25, 1
  br i1 %cmp32, label %if.then33, label %out.if.end36_crit_edge

out.if.end36_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 @core_tpg_deregister(ptr noundef %tpg_se_tpg) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %out.if.end36_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then26, %if.end18, %if.then4, %do.end
  %retval.0 = phi i32 [ -1, %if.then4 ], [ -1, %if.end36 ], [ -1, %do.end ], [ 0, %if.then26 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_create_default_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_find_param_from_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_update_param_value(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_release_param_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_release_discovery_tpg() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %discovery_tpg = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %discovery_tpg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %discovery_tpg, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %param_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param_list, align 4
  tail call void @iscsi_release_param_list(ptr noundef %4) #11
  %tpg_se_tpg = getelementptr inbounds %struct.iscsi_portal_group, ptr %2, i32 0, i32 9
  %call = tail call i32 @core_tpg_deregister(ptr noundef %tpg_se_tpg) #11
  tail call void @kfree(ptr noundef nonnull %2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %5 = load ptr, ptr @iscsit_global, align 4
  %discovery_tpg1 = getelementptr inbounds %struct.iscsit_global, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %discovery_tpg1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %discovery_tpg1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_tpg_from_np(ptr noundef %tiqn, ptr noundef readnone %np, ptr nocapture noundef writeonly %tpg_np_out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tiqn_tpg_lock = getelementptr inbounds %struct.iscsi_tiqn, ptr %tiqn, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %tiqn_tpg_lock) #11
  %tiqn_tpg_list = getelementptr inbounds %struct.iscsi_tiqn, ptr %tiqn, i32 0, i32 8
  %0 = ptrtoint ptr %tiqn_tpg_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn58 = load ptr, ptr %tiqn_tpg_list, align 4
  %cmp.not59 = icmp eq ptr %.pn58, %tiqn_tpg_list
  br i1 %cmp.not59, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc26.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn60 = phi ptr [ %.pn, %for.inc26.for.body_crit_edge ], [ %.pn58, %entry.for.body_crit_edge ]
  %tpg_state_lock = getelementptr i8, ptr %.pn60, i32 -2136
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #11
  %tpg_state = getelementptr i8, ptr %.pn60, i32 -2200
  %1 = ptrtoint ptr %tpg_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tpg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2.not = icmp eq i32 %2, 1
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc26_crit_edge

for.body.for.inc26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc26

if.end:                                           ; preds = %for.body
  %tpg_np_lock = getelementptr i8, ptr %.pn60, i32 -2180
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_lock) #11
  %tpg_gnp_list = getelementptr i8, ptr %.pn60, i32 -8
  br label %for.cond9

for.cond9:                                        ; preds = %for.body13.for.cond9_crit_edge, %if.end
  %.pn54.in = phi ptr [ %tpg_gnp_list, %if.end ], [ %.pn54, %for.body13.for.cond9_crit_edge ]
  %3 = ptrtoint ptr %.pn54.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn54 = load ptr, ptr %.pn54.in, align 4
  %cmp11.not = icmp eq ptr %.pn54, %tpg_gnp_list
  br i1 %cmp11.not, label %for.end, label %for.body13

for.body13:                                       ; preds = %for.cond9
  %tpg_np.0 = getelementptr i8, ptr %.pn54, i32 -12
  %4 = ptrtoint ptr %tpg_np.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg_np.0, align 4
  %cmp15 = icmp eq ptr %5, %np
  br i1 %cmp15, label %if.then16, label %for.body13.for.cond9_crit_edge

for.body13.for.cond9_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9

if.then16:                                        ; preds = %for.body13
  %tpg_np.0.le = getelementptr i8, ptr %.pn54, i32 -12
  %tpg.0.le = getelementptr i8, ptr %.pn60, i32 -2204
  %6 = ptrtoint ptr %tpg_np_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tpg_np.0.le, ptr %tpg_np_out, align 4
  %tpg_np_kref = getelementptr i8, ptr %.pn54, i32 208
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tpg_np_kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tpg_np_kref, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_np_kref, ptr %tpg_np_kref, i32 1, ptr elementtype(i32) %tpg_np_kref) #11, !srcloc !258
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then16.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !259

if.then16.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then16
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !260

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then16.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then16.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %tpg_np_kref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_lock) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_lock) #11
  br label %for.inc26

for.inc26:                                        ; preds = %for.end, %for.body.for.inc26_crit_edge
  %9 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, %tiqn_tpg_list
  br i1 %cmp.not, label %for.inc26.cleanup_crit_edge, label %for.inc26.for.body_crit_edge

for.inc26.for.body_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc26.cleanup_crit_edge:                      ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc26.cleanup_crit_edge, %kref_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %tpg.0.le, %kref_get.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc26.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %tiqn_tpg_lock) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_get_tpg(ptr noundef %tpg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_access_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %tpg_access_lock, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_put_tpg(ptr noundef %tpg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_access_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %tpg_access_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_tpg_dump_params(ptr nocapture noundef readonly %tpg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %param_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 14
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  tail call void @iscsi_print_params(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_print_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tpg_add_portal_group(ptr noundef %tiqn, ptr noundef %tpg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_state = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 1
  %0 = ptrtoint ptr %tpg_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %2 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv) #15
  br label %return

if.end:                                           ; preds = %entry
  %tpg_attrib.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12
  %4 = ptrtoint ptr %tpg_attrib.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %tpg_attrib.i, align 4
  %login_timeout.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %login_timeout.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %login_timeout.i, align 4
  %netif_timeout.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %netif_timeout.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %netif_timeout.i, align 4
  %default_cmdsn_depth.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 5
  %7 = ptrtoint ptr %default_cmdsn_depth.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %default_cmdsn_depth.i, align 4
  %generate_node_acls.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 3
  %8 = ptrtoint ptr %generate_node_acls.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %generate_node_acls.i, align 4
  %cache_dynamic_acls.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 4
  %9 = ptrtoint ptr %cache_dynamic_acls.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cache_dynamic_acls.i, align 4
  %demo_mode_write_protect.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 6
  %10 = ptrtoint ptr %demo_mode_write_protect.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %demo_mode_write_protect.i, align 4
  %prod_mode_write_protect.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 7
  %11 = ptrtoint ptr %prod_mode_write_protect.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %prod_mode_write_protect.i, align 4
  %demo_mode_discovery.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 8
  %12 = ptrtoint ptr %demo_mode_discovery.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %demo_mode_discovery.i, align 4
  %default_erl.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 9
  %13 = ptrtoint ptr %default_erl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %default_erl.i, align 4
  %t10_pi.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 10
  %14 = ptrtoint ptr %t10_pi.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %t10_pi.i, align 4
  %fabric_prot_type.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 11
  %15 = ptrtoint ptr %fabric_prot_type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fabric_prot_type.i, align 4
  %tpg_enabled_sendtargets.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 12
  %16 = ptrtoint ptr %tpg_enabled_sendtargets.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %tpg_enabled_sendtargets.i, align 4
  %login_keys_workaround.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 13
  %17 = ptrtoint ptr %login_keys_workaround.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %login_keys_workaround.i, align 4
  %param_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 14
  %call1 = tail call i32 @iscsi_create_default_params(ptr noundef %param_list) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err_out, label %if.end5

if.end5:                                          ; preds = %if.end
  %tpg6 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 14
  %18 = ptrtoint ptr %tpg6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tpg, ptr %tpg6, align 4
  %tpg_state_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #11
  %19 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %tpg_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  %tiqn_tpg_lock = getelementptr inbounds %struct.iscsi_tiqn, ptr %tiqn, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %tiqn_tpg_lock) #11
  %tpg_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 17
  %tiqn_tpg_list = getelementptr inbounds %struct.iscsi_tiqn, ptr %tiqn, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.iscsi_tiqn, ptr %tiqn, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tpg_list, ptr noundef %21, ptr noundef %tiqn_tpg_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tpg_list, ptr %prev.i, align 4
  %23 = ptrtoint ptr %tpg_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tiqn_tpg_list, ptr %tpg_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 17, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %tpg_list, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  %tiqn_ntpgs = getelementptr inbounds %struct.iscsi_tiqn, ptr %tiqn, i32 0, i32 4
  %26 = ptrtoint ptr %tiqn_ntpgs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tiqn_ntpgs, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tiqn_ntpgs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_tpg_add_portal_group.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_tpg_add_portal_group, %if.then14)) #11
          to label %do.end19 [label %if.then14], !srcloc !257

if.then14:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt16 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %28 = ptrtoint ptr %tpgt16 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tpgt16, align 8
  %conv17 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_tpg_add_portal_group.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.15, ptr noundef %tiqn, i32 noundef %conv17) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then14, %list_add_tail.exit
  tail call void @_raw_spin_unlock(ptr noundef %tiqn_tpg_lock) #11
  br label %return

err_out:                                          ; preds = %if.end
  %30 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %param_list, align 4
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %err_out.return_crit_edge, label %if.then23

err_out.return_crit_edge:                         ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then23:                                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iscsi_release_param_list(ptr noundef nonnull %31) #11
  %32 = ptrtoint ptr %param_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %param_list, align 4
  br label %return

return:                                           ; preds = %if.then23, %err_out.return_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ -17, %do.end ], [ 0, %do.end19 ], [ -12, %if.then23 ], [ -12, %err_out.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tpg_del_portal_group(ptr noundef %tiqn, ptr noundef %tpg, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_state = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 1
  %0 = ptrtoint ptr %tpg_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_state, align 4
  %tpg_state_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #11
  %2 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %tpg_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  %call = tail call i32 @iscsit_release_sessions_for_tpg(ptr noundef %tpg, i32 noundef %force) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %3 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tpgt, align 8
  %conv4 = zext i16 %4 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv4) #15
  %conv6 = and i32 %1, 255
  %5 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv6, ptr %tpg_state, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 14
  %6 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %param_list, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iscsi_release_param_list(ptr noundef nonnull %7) #11
  %8 = ptrtoint ptr %param_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %param_list, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %tpg_se_tpg = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 9
  %call12 = tail call i32 @core_tpg_deregister(ptr noundef %tpg_se_tpg) #11
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #11
  %9 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tpg_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  %tiqn_tpg_lock = getelementptr inbounds %struct.iscsi_tiqn, ptr %tiqn, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %tiqn_tpg_lock) #11
  %tiqn_ntpgs = getelementptr inbounds %struct.iscsi_tiqn, ptr %tiqn, i32 0, i32 4
  %10 = ptrtoint ptr %tiqn_ntpgs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tiqn_ntpgs, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %tiqn_ntpgs, align 4
  %tpg_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tpg_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del.exit_crit_edge

if.end11.list_del.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %tpg_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tpg_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end11.list_del.exit_crit_edge
  %18 = ptrtoint ptr %tpg_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %tpg_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tiqn_tpg_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_tpg_del_portal_group.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_tpg_del_portal_group, %if.then23)) #11
          to label %do.end29 [label %if.then23], !srcloc !257

if.then23:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt25 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %20 = ptrtoint ptr %tpgt25 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tpgt25, align 8
  %conv26 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_tpg_del_portal_group.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.18, ptr noundef %tiqn, i32 noundef %conv26) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %list_del.exit
  tail call void @kfree(ptr noundef %tpg) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_release_sessions_for_tpg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tpg_enable_portal_group(ptr noundef %tpg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 15
  %0 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_tiqn, align 16
  %tpg_state = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 1
  %2 = ptrtoint ptr %tpg_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tpg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %4 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 14
  %6 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %param_list, align 4
  %call1 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.9, ptr noundef %7) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tpg_attrib = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12
  %8 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tpg_attrib, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end3.if.end19_crit_edge, label %if.then5

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then5:                                         ; preds = %if.end3
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value, align 4
  %call6 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(5) @.str.21) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %if.then5
  %call9 = tail call i32 @iscsi_update_param_value(ptr noundef nonnull %call1, ptr noundef nonnull @.str.22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.then5.if.end13_crit_edge
  %call14 = tail call i32 @iscsit_ta_authentication(ptr noundef %tpg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end13.if.end19_crit_edge, %if.end3.if.end19_crit_edge
  %tpg_state_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #11
  %12 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tpg_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  %tiqn_tpg_lock = getelementptr inbounds %struct.iscsi_tiqn, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %tiqn_tpg_lock) #11
  %tiqn_active_tpgs = getelementptr inbounds %struct.iscsi_tiqn, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %tiqn_active_tpgs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tiqn_active_tpgs, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tiqn_active_tpgs, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_tpg_enable_portal_group.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_tpg_enable_portal_group, %if.then28)) #11
          to label %do.end33 [label %if.then28], !srcloc !257

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt29 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %15 = ptrtoint ptr %tpgt29 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tpgt29, align 8
  %conv30 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_tpg_enable_portal_group.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.23, i32 noundef %conv30) #11
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %if.end19
  tail call void @_raw_spin_unlock(ptr noundef %tiqn_tpg_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end33 ], [ -22, %if.end.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_authentication(ptr nocapture noundef %tpg, i32 noundef %authentication) local_unnamed_addr #0 align 64 {
entry:
  %buf1 = alloca [256 x i8], align 1
  %buf2 = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf1) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2) #11
  %tpg_attrib = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %authentication)
  %switch = icmp ult i32 %authentication, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %authentication) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %buf1, i32 0, i32 256)
  %1 = call ptr @memset(ptr %buf2, i32 0, i32 256)
  %param_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 14
  %2 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param_list, align 4
  %call3 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.9, ptr noundef %3) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %authentication)
  %tobool6.not = icmp eq i32 %authentication, 0
  %value46 = getelementptr inbounds %struct.iscsi_param, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %value46 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value46, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf1, i32 noundef 256, ptr noundef nonnull @.str.44, ptr noundef %5)
  %call49 = call ptr @strstr(ptr noundef nonnull %buf1, ptr noundef nonnull @.str.21)
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool6.not, label %if.else44, label %if.then7

if.then7:                                         ; preds = %if.end5
  br i1 %tobool50.not, label %if.then7.out_crit_edge, label %if.end14

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.then7
  %add.ptr = getelementptr i8, ptr %call49, i32 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %lhsc = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %lhsc)
  %tobool16.not = icmp eq i8 %lhsc, 44
  br i1 %tobool16.not, label %if.then17, label %if.else33

if.then17:                                        ; preds = %if.end14
  %call19 = call i32 @strcmp(ptr noundef nonnull %buf1, ptr noundef nonnull %call49) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr23 = getelementptr i8, ptr %call49, i32 5
  %strcpy = call ptr @strcpy(ptr noundef nonnull %buf2, ptr noundef %add.ptr23) #16
  br label %if.end38

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %call49, i32 -1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %incdec.ptr, align 1
  %stpcpy = call ptr @stpcpy(ptr nonnull %buf2, ptr nonnull %buf1) #16
  %8 = ptrtoint ptr %stpcpy to i32
  %9 = ptrtoint ptr %buf2 to i32
  %10 = sub i32 %8, %9
  %add.ptr30 = getelementptr i8, ptr %buf2, i32 %10
  %strcpy100 = call ptr @strcpy(ptr noundef %add.ptr30, ptr noundef %add.ptr) #16
  br label %if.end38

if.else33:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr34 = getelementptr i8, ptr %call49, i32 -1
  %11 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %incdec.ptr34, align 1
  %strcpy101 = call ptr @strcpy(ptr noundef nonnull %buf2, ptr noundef nonnull %buf1) #16
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %if.else, %if.then21
  %call40 = call i32 @iscsi_update_param_value(ptr noundef nonnull %call3, ptr noundef nonnull %buf2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end38.cleanup_crit_edge, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else44:                                        ; preds = %if.end5
  br i1 %tobool50.not, label %if.end52, label %if.else44.out_crit_edge

if.else44.out_crit_edge:                          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end52:                                         ; preds = %if.else44
  %call54 = call i32 @strlcat(ptr noundef nonnull %buf1, ptr noundef nonnull @.str.46, i32 noundef 256) #11
  %call56 = call i32 @iscsi_update_param_value(ptr noundef nonnull %call3, ptr noundef nonnull %buf1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end52.cleanup_crit_edge, label %if.end52.out_crit_edge

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out:                                              ; preds = %if.end52.out_crit_edge, %if.else44.out_crit_edge, %if.end38.out_crit_edge, %if.then7.out_crit_edge
  %12 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %authentication, ptr %tpg_attrib, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_authentication.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_authentication, %if.then68)) #11
          to label %cleanup [label %if.then68], !srcloc !257

if.then68:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tpg_attrib, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool70.not = icmp eq i32 %14, 0
  %cond = select i1 %tobool70.not, ptr @.str.49, ptr @.str.48
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %15 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %16 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_authentication.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %out, %if.end52.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end38.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf1) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tpg_disable_portal_group(ptr noundef %tpg, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_state = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 1
  %0 = ptrtoint ptr %tpg_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_state, align 4
  %tpg_state_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #11
  %2 = ptrtoint ptr %tpg_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tpg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %4 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tpgt, align 8
  %conv3 = zext i16 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv3) #15
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %tpg_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  %tpg_np_lock.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_lock.i) #11
  %tpg_gnp_list.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 16
  %7 = ptrtoint ptr %tpg_gnp_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn1.i = load ptr, ptr %tpg_gnp_list.i, align 4
  %cmp.not3.i = icmp eq ptr %.pn1.i, %tpg_gnp_list.i
  br i1 %cmp.not3.i, label %if.end.iscsit_clear_tpg_np_login_threads.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.iscsit_clear_tpg_np_login_threads.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsit_clear_tpg_np_login_threads.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn4.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.end.for.body.i_crit_edge ]
  %tpg_np.05.i = getelementptr i8, ptr %.pn4.i, i32 -12
  %8 = ptrtoint ptr %tpg_np.05.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpg_np.05.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_lock.i) #11
  %10 = ptrtoint ptr %tpg_np.05.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tpg_np.05.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #15
  br label %iscsit_clear_tpg_np_login_thread.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i.i = tail call i32 @iscsit_reset_np_thread(ptr noundef nonnull %11, ptr noundef %tpg_np.05.i, ptr noundef %tpg, i1 noundef zeroext false) #11
  br label %iscsit_clear_tpg_np_login_thread.exit.i

iscsit_clear_tpg_np_login_thread.exit.i:          ; preds = %if.end.i.i, %do.end.i.i
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_lock.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %iscsit_clear_tpg_np_login_thread.exit.i, %do.end.i
  %12 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tpg_gnp_list.i
  br i1 %cmp.not.i, label %for.inc.i.iscsit_clear_tpg_np_login_threads.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.iscsit_clear_tpg_np_login_threads.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsit_clear_tpg_np_login_threads.exit

iscsit_clear_tpg_np_login_threads.exit:           ; preds = %for.inc.i.iscsit_clear_tpg_np_login_threads.exit_crit_edge, %if.end.iscsit_clear_tpg_np_login_threads.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_lock.i) #11
  %call7 = tail call i32 @iscsit_release_sessions_for_tpg(ptr noundef %tpg, i32 noundef %force) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end22

if.then10:                                        ; preds = %iscsit_clear_tpg_np_login_threads.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #11
  %conv12 = and i32 %1, 255
  %13 = ptrtoint ptr %tpg_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv12, ptr %tpg_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #11
  %tpgt19 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %14 = ptrtoint ptr %tpgt19 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tpgt19, align 8
  %conv20 = zext i16 %15 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv20) #15
  br label %cleanup

if.end22:                                         ; preds = %iscsit_clear_tpg_np_login_threads.exit
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 15
  %16 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tpg_tiqn, align 16
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %lor.lhs.false

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %18 = load ptr, ptr @iscsit_global, align 4
  %discovery_tpg = getelementptr inbounds %struct.iscsit_global, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %discovery_tpg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %discovery_tpg, align 4
  %cmp23 = icmp eq ptr %20, %tpg
  br i1 %cmp23, label %lor.lhs.false.cleanup_crit_edge, label %if.end26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %tiqn_tpg_lock = getelementptr inbounds %struct.iscsi_tiqn, ptr %17, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %tiqn_tpg_lock) #11
  %tiqn_active_tpgs = getelementptr inbounds %struct.iscsi_tiqn, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %tiqn_active_tpgs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tiqn_active_tpgs, align 8
  %dec = add i32 %22, -1
  store i32 %dec, ptr %tiqn_active_tpgs, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_tpg_disable_portal_group.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_tpg_disable_portal_group, %if.then33)) #11
          to label %do.end38 [label %if.then33], !srcloc !257

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt34 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %23 = ptrtoint ptr %tpgt34 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tpgt34, align 8
  %conv35 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_tpg_disable_portal_group.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.29, i32 noundef %conv35) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %if.end26
  tail call void @_raw_spin_unlock(ptr noundef %tiqn_tpg_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %lor.lhs.false.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -1, %if.then10 ], [ 0, %do.end38 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @iscsit_tpg_get_node_attrib(ptr nocapture noundef readonly %sess) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess1 = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 48
  %0 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_node_acl, align 8
  %node_attrib = getelementptr inbounds %struct.iscsi_node_acl, ptr %3, i32 0, i32 1
  ret ptr %node_attrib
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_tpg_locate_child_np(ptr noundef %tpg_np, i32 noundef %network_transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_np_parent_lock = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_parent_lock) #11
  %tpg_np_parent_list = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ %tpg_np_parent_list, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %tpg_np_parent_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %tpg_np_child.0 = getelementptr i8, ptr %.pn.in, i32 -20
  %1 = ptrtoint ptr %tpg_np_child.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tpg_np_child.0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 128
  %cmp8 = icmp eq i32 %4, %network_transport
  br i1 %cmp8, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %tpg_np_child.0.le = getelementptr i8, ptr %.pn.in, i32 -20
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %tpg_np_child.0.le, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_parent_lock) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_tpg_add_network_portal(ptr noundef %tpg, ptr noundef %sockaddr, ptr noundef %tpg_np_parent, i32 noundef %network_transport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tpg_np_parent, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 15
  %0 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_tiqn, align 16
  %tiqn_tpg_lock.i = getelementptr inbounds %struct.iscsi_tiqn, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %tiqn_tpg_lock.i) #11
  %tiqn_tpg_list.i = getelementptr inbounds %struct.iscsi_tiqn, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %tiqn_tpg_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn52.i = load ptr, ptr %tiqn_tpg_list.i, align 4
  %cmp.not53.i = icmp eq ptr %.pn52.i, %tiqn_tpg_list.i
  br i1 %cmp.not53.i, label %if.then.iscsit_tpg_check_network_portal.exit.thread_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.iscsit_tpg_check_network_portal.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsit_tpg_check_network_portal.exit.thread

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn54.i = phi ptr [ %.pn.i, %for.end.i.for.body.i_crit_edge ], [ %.pn52.i, %if.then.for.body.i_crit_edge ]
  %tpg_np_lock.i = getelementptr i8, ptr %.pn54.i, i32 -2180
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_lock.i) #11
  %tpg_gnp_list.i = getelementptr i8, ptr %.pn54.i, i32 -8
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body10.i.for.cond6.i_crit_edge, %for.body.i
  %.pn48.in.i = phi ptr [ %tpg_gnp_list.i, %for.body.i ], [ %.pn48.i, %for.body10.i.for.cond6.i_crit_edge ]
  %3 = ptrtoint ptr %.pn48.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn48.i = load ptr, ptr %.pn48.in.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn48.i, %tpg_gnp_list.i
  br i1 %cmp8.not.i, label %for.end.i, label %for.body10.i

for.body10.i:                                     ; preds = %for.cond6.i
  %tpg_np.0.i = getelementptr i8, ptr %.pn48.i, i32 -12
  %4 = ptrtoint ptr %tpg_np.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg_np.0.i, align 4
  %call.i = tail call zeroext i1 @iscsit_check_np_match(ptr noundef %sockaddr, ptr noundef %5, i32 noundef %network_transport) #11
  br i1 %call.i, label %do.end, label %for.body10.i.for.cond6.i_crit_edge

for.body10.i.for.cond6.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond6.i

for.end.i:                                        ; preds = %for.cond6.i
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_lock.i) #11
  %6 = ptrtoint ptr %.pn54.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn54.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tiqn_tpg_list.i
  br i1 %cmp.not.i, label %for.end.i.iscsit_tpg_check_network_portal.exit.thread_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i.iscsit_tpg_check_network_portal.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsit_tpg_check_network_portal.exit.thread

iscsit_tpg_check_network_portal.exit.thread:      ; preds = %for.end.i.iscsit_tpg_check_network_portal.exit.thread_crit_edge, %if.then.iscsit_tpg_check_network_portal.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tiqn_tpg_lock.i) #11
  br label %if.end5

do.end:                                           ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_lock.i) #11
  tail call void @_raw_spin_unlock(ptr noundef %tiqn_tpg_lock.i) #11
  %7 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tpg_tiqn, align 16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %sockaddr, ptr noundef %8) #15
  br label %cleanup

if.end5:                                          ; preds = %iscsit_tpg_check_network_portal.exit.thread, %entry.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 224) #14
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call16 = tail call ptr @iscsit_add_np(ptr noundef %sockaddr, i32 noundef %network_transport) #11
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %tpg_np_list = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %tpg_np_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %tpg_np_list, ptr %tpg_np_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tpg_np_list, ptr %prev.i, align 8
  %tpg_np_child_list = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %tpg_np_child_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %tpg_np_child_list, ptr %tpg_np_child_list, align 4
  %prev.i93 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tpg_np_child_list, ptr %prev.i93, align 8
  %tpg_np_parent_list = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %tpg_np_parent_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %tpg_np_parent_list, ptr %tpg_np_parent_list, align 4
  %prev.i94 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tpg_np_parent_list, ptr %prev.i94, align 8
  %tpg_np_parent_lock = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %tpg_np_parent_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @iscsit_tpg_add_network_portal.__key, i16 noundef signext 3) #11
  %tpg_np_comp = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %tpg_np_comp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tpg_np_comp, align 4
  %wait.i = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.102, ptr noundef nonnull @init_completion.__key) #11
  %tpg_np_kref = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tpg_np_kref, i32 noundef 4) #11
  %17 = ptrtoint ptr %tpg_np_kref to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %tpg_np_kref, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16, ptr %call7.i.i, align 8
  %tpg26 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %tpg26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tpg, ptr %tpg26, align 4
  %tpg_np_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_lock) #11
  %tpg_gnp_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 16
  %prev.i95 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i95, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tpg_np_list, ptr noundef %21, ptr noundef %tpg_gnp_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tpg_np_list, ptr %prev.i95, align 4
  %23 = ptrtoint ptr %tpg_np_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tpg_gnp_list, ptr %tpg_np_list, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i, align 8
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %tpg_np_list, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end20.list_add_tail.exit_crit_edge
  %num_tpg_nps = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 5
  %26 = ptrtoint ptr %num_tpg_nps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tpg_nps, align 16
  %inc = add i32 %27, 1
  store i32 %inc, ptr %num_tpg_nps, align 16
  %tpg_tiqn28 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 15
  %28 = ptrtoint ptr %tpg_tiqn28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tpg_tiqn28, align 16
  %tobool29.not = icmp eq ptr %29, null
  br i1 %tobool29.not, label %list_add_tail.exit.if.end33_crit_edge, label %if.then30

list_add_tail.exit.if.end33_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then30:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tiqn_num_tpg_nps = getelementptr inbounds %struct.iscsi_tiqn, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %tiqn_num_tpg_nps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tiqn_num_tpg_nps, align 16
  %inc32 = add i32 %31, 1
  store i32 %inc32, ptr %tiqn_num_tpg_nps, align 16
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %list_add_tail.exit.if.end33_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_lock) #11
  br i1 %tobool.not, label %if.end33.do.body43_crit_edge, label %if.then36

if.end33.do.body43_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43

if.then36:                                        ; preds = %if.end33
  %tpg_np_parent37 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %tpg_np_parent37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tpg_np_parent, ptr %tpg_np_parent37, align 8
  %tpg_np_parent_lock38 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np_parent, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_parent_lock38) #11
  %tpg_np_parent_list40 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np_parent, i32 0, i32 5
  %prev.i96 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np_parent, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i96, align 4
  %call.i.i97 = tail call zeroext i1 @__list_add_valid(ptr noundef %tpg_np_child_list, ptr noundef %34, ptr noundef %tpg_np_parent_list40) #11
  br i1 %call.i.i97, label %if.end.i.i99, label %if.then36.list_add_tail.exit100_crit_edge

if.then36.list_add_tail.exit100_crit_edge:        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit100

if.end.i.i99:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tpg_np_child_list, ptr %prev.i96, align 4
  %36 = ptrtoint ptr %tpg_np_child_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tpg_np_parent_list40, ptr %tpg_np_child_list, align 4
  %37 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i93, align 8
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %tpg_np_child_list, ptr %34, align 4
  br label %list_add_tail.exit100

list_add_tail.exit100:                            ; preds = %if.end.i.i99, %if.then36.list_add_tail.exit100_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_parent_lock38) #11
  br label %do.body43

do.body43:                                        ; preds = %list_add_tail.exit100, %if.end33.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_tpg_add_network_portal.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_tpg_add_network_portal, %if.then49)) #11
          to label %cleanup [label %if.then49], !srcloc !257

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %tpg_tiqn28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tpg_tiqn28, align 16
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %call16, i32 0, i32 12
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %41 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %42 to i32
  %np_transport = getelementptr inbounds %struct.iscsi_np, ptr %call16, i32 0, i32 16
  %43 = ptrtoint ptr %np_transport to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %np_transport, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_tpg_add_network_portal.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.36, ptr noundef %40, ptr noundef %np_sockaddr, i32 noundef %conv, ptr noundef %44) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body43, %if.then18, %do.end11, %do.end
  %retval.0 = phi ptr [ %call16, %if.then18 ], [ inttoptr (i32 -12 to ptr), %do.end11 ], [ inttoptr (i32 -17 to ptr), %do.end ], [ %call7.i.i, %if.then49 ], [ %call7.i.i, %do.body43 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_add_np(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tpg_del_network_portal(ptr noundef %tpg, ptr noundef %tpg_np) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpg_np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_np, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tpg_np_parent = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 2
  %2 = ptrtoint ptr %tpg_np_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg_np_parent, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %tpg_np_parent_list = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 5
  %4 = ptrtoint ptr %tpg_np_parent_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg_np_parent_list, align 4
  %cmp.not69 = icmp eq ptr %5, %tpg_np_parent_list
  br i1 %cmp.not69, label %if.then3.if.end29_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.if.end29_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then3.for.body_crit_edge
  %.pn.in70 = phi ptr [ %.pn71, %for.inc.for.body_crit_edge ], [ %5, %if.then3.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn71 = load ptr, ptr %.pn.in70, align 4
  %tpg_np_child.0 = getelementptr i8, ptr %.pn.in70, i32 -20
  %call11 = tail call i32 @iscsit_tpg_del_network_portal(ptr noundef %tpg, ptr noundef %tpg_np_child.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call11) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end16, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn71, %tpg_np_parent_list
  br i1 %cmp.not, label %for.inc.if.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.else:                                          ; preds = %if.end
  %tpg_np_parent_lock = getelementptr inbounds %struct.iscsi_tpg_np, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_parent_lock) #11
  %tpg_np_child_list26 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tpg_np_child_list26) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %tpg_np_child_list26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tpg_np_child_list26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %13 = ptrtoint ptr %tpg_np_child_list26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %tpg_np_child_list26, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %tpg_np_parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tpg_np_parent, align 4
  %tpg_np_parent_lock28 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %16, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_parent_lock28) #11
  br label %if.end29

if.end29:                                         ; preds = %list_del.exit, %for.inc.if.end29_crit_edge, %if.then3.if.end29_crit_edge
  %tpg_np_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %tpg_np_lock) #11
  %tpg_np_list = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 3
  %call.i.i62 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tpg_np_list) #11
  br i1 %call.i.i62, label %if.end.i.i65, label %if.end29.list_del.exit67_crit_edge

if.end29.list_del.exit67_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit67

if.end.i.i65:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i63 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i63, align 4
  %19 = ptrtoint ptr %tpg_np_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tpg_np_list, align 4
  %prev1.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i64, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit67

list_del.exit67:                                  ; preds = %if.end.i.i65, %if.end29.list_del.exit67_crit_edge
  %23 = ptrtoint ptr %tpg_np_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %tpg_np_list, align 4
  %prev.i66 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i66, align 4
  %num_tpg_nps = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 5
  %25 = ptrtoint ptr %num_tpg_nps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tpg_nps, align 16
  %dec = add i32 %26, -1
  store i32 %dec, ptr %num_tpg_nps, align 16
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 15
  %27 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tpg_tiqn, align 16
  %tobool30.not = icmp eq ptr %28, null
  br i1 %tobool30.not, label %list_del.exit67.if.end34_crit_edge, label %if.then31

list_del.exit67.if.end34_crit_edge:               ; preds = %list_del.exit67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %list_del.exit67
  call void @__sanitizer_cov_trace_pc() #13
  %tiqn_num_tpg_nps = getelementptr inbounds %struct.iscsi_tiqn, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %tiqn_num_tpg_nps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tiqn_num_tpg_nps, align 16
  %dec33 = add i32 %30, -1
  store i32 %dec33, ptr %tiqn_num_tpg_nps, align 16
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %list_del.exit67.if.end34_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tpg_np_lock) #11
  %call36 = tail call fastcc i32 @iscsit_tpg_release_np(ptr noundef %tpg_np, ptr noundef %tpg, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end
  %retval.0 = phi i32 [ %call36, %if.end34 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_tpg_release_np(ptr noundef %tpg_np, ptr noundef %tpg, ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpg_np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_np, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #15
  br label %iscsit_clear_tpg_np_login_thread.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %enabled.i = getelementptr inbounds %struct.iscsi_np, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled.i, align 16
  %3 = ptrtoint ptr %tpg_np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tpg_np, align 4
  %call8.i = tail call i32 @iscsit_reset_np_thread(ptr noundef %4, ptr noundef %tpg_np, ptr noundef %tpg, i1 noundef zeroext true) #11
  br label %iscsit_clear_tpg_np_login_thread.exit

iscsit_clear_tpg_np_login_thread.exit:            ; preds = %if.end.i, %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_tpg_release_np.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_tpg_release_np, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !257

if.then:                                          ; preds = %iscsit_clear_tpg_np_login_thread.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 15
  %5 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tpg_tiqn, align 16
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 12
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %7 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %8 to i32
  %np_transport = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 16
  %9 = ptrtoint ptr %np_transport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %np_transport, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_tpg_release_np.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.104, ptr noundef %6, ptr noundef %np_sockaddr, i32 noundef %conv, ptr noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %iscsit_clear_tpg_np_login_thread.exit
  %11 = ptrtoint ptr %tpg_np to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tpg_np, align 4
  %tpg5 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %tpg_np, i32 0, i32 1
  %12 = ptrtoint ptr %tpg5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tpg5, align 4
  tail call void @kfree(ptr noundef %tpg_np) #11
  %call6 = tail call i32 @iscsit_del_np(ptr noundef %np) #11
  ret i32 %call6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_login_timeout(ptr nocapture noundef %tpg, i32 noundef %login_timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %login_timeout)
  %cmp = icmp ugt i32 %login_timeout, 30
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %login_timeout, i32 noundef 30) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %login_timeout)
  %cmp1 = icmp ult i32 %login_timeout, 5
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %login_timeout, i32 noundef 5) #15
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %login_timeout9 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %login_timeout9 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %login_timeout, ptr %login_timeout9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_login_timeout.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_login_timeout, %if.then15)) #11
          to label %cleanup [label %if.then15], !srcloc !257

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %login_timeout9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %login_timeout9, align 4
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %3 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_login_timeout.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.55, i32 noundef %2, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ 0, %if.then15 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_netif_timeout(ptr nocapture noundef %tpg, i32 noundef %netif_timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %netif_timeout)
  %cmp = icmp ugt i32 %netif_timeout, 15
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %netif_timeout, i32 noundef 15) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %netif_timeout)
  %cmp1 = icmp ult i32 %netif_timeout, 2
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %netif_timeout, i32 noundef 2) #15
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %netif_timeout9 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %netif_timeout9 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %netif_timeout, ptr %netif_timeout9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_netif_timeout.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_netif_timeout, %if.then15)) #11
          to label %cleanup [label %if.then15], !srcloc !257

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %netif_timeout9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %netif_timeout9, align 4
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %3 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_netif_timeout.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.61, i32 noundef %2, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ 0, %if.then15 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_generate_node_acls(ptr nocapture noundef %tpg, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %flag) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %generate_node_acls = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 3
  %0 = ptrtoint ptr %generate_node_acls to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flag, ptr %generate_node_acls, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_generate_node_acls.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_generate_node_acls, %if.then7)) #11
          to label %do.end12 [label %if.then7], !srcloc !257

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %generate_node_acls to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %generate_node_acls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool9.not, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_generate_node_acls.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.64, i32 noundef %conv, ptr noundef nonnull %cond) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp13 = icmp eq i32 %flag, 1
  br i1 %cmp13, label %land.lhs.true15, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true15:                                  ; preds = %do.end12
  %cache_dynamic_acls = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 4
  %5 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cache_dynamic_acls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16 = icmp eq i32 %6, 0
  br i1 %cmp16, label %do.body19, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body19:                                        ; preds = %land.lhs.true15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_generate_node_acls.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_generate_node_acls, %if.then31)) #11
          to label %do.end34 [label %if.then31], !srcloc !257

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_generate_node_acls.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.67) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body19
  %7 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %cache_dynamic_acls, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %land.lhs.true15.cleanup_crit_edge, %do.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end34 ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %do.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_default_cmdsn_depth(ptr nocapture noundef %tpg, i32 noundef %tcq_depth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %tcq_depth)
  %cmp = icmp ugt i32 %tcq_depth, 512
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %tcq_depth, i32 noundef 512) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcq_depth)
  %cmp1 = icmp eq i32 %tcq_depth, 0
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 1) #15
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %default_cmdsn_depth = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 5
  %0 = ptrtoint ptr %default_cmdsn_depth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %tcq_depth, ptr %default_cmdsn_depth, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_default_cmdsn_depth.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_default_cmdsn_depth, %if.then14)) #11
          to label %cleanup [label %if.then14], !srcloc !257

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %default_cmdsn_depth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_cmdsn_depth, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_default_cmdsn_depth.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.73, i32 noundef %conv, i32 noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ 0, %if.then14 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_cache_dynamic_acls(ptr nocapture noundef %tpg, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %flag) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %generate_node_acls = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 3
  %0 = ptrtoint ptr %generate_node_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generate_node_acls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %cmp4 = icmp eq i32 %flag, 0
  %or.cond = and i1 %cmp4, %cmp2
  br i1 %or.cond, label %do.body6, label %if.end15

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_cache_dynamic_acls.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_cache_dynamic_acls, %if.then11)) #11
          to label %cleanup [label %if.then11], !srcloc !257

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_cache_dynamic_acls.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.75) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cache_dynamic_acls = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %flag, ptr %cache_dynamic_acls, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_cache_dynamic_acls.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_cache_dynamic_acls, %if.then28)) #11
          to label %cleanup [label %if.then28], !srcloc !257

if.then28:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %3 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cache_dynamic_acls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool30.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool30.not, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_cache_dynamic_acls.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.76, i32 noundef %conv, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end15, %if.then11, %do.body6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then11 ], [ 0, %if.then28 ], [ 0, %do.body6 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_demo_mode_write_protect(ptr nocapture noundef %tpg, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %flag) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %demo_mode_write_protect = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flag, ptr %demo_mode_write_protect, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_demo_mode_write_protect.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_demo_mode_write_protect, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !257

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demo_mode_write_protect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool9.not, ptr @.str.80, ptr @.str.79
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_demo_mode_write_protect.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.78, i32 noundef %conv, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_prod_mode_write_protect(ptr nocapture noundef %tpg, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %flag) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prod_mode_write_protect = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 7
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flag, ptr %prod_mode_write_protect, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_prod_mode_write_protect.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_prod_mode_write_protect, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !257

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prod_mode_write_protect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool9.not, ptr @.str.80, ptr @.str.79
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_prod_mode_write_protect.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.82, i32 noundef %conv, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_demo_mode_discovery(ptr nocapture noundef %tpg, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %flag) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %demo_mode_discovery = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 8
  %0 = ptrtoint ptr %demo_mode_discovery to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flag, ptr %demo_mode_discovery, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_demo_mode_discovery.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_demo_mode_discovery, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !257

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %demo_mode_discovery to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demo_mode_discovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool9.not, ptr @.str.80, ptr @.str.79
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_demo_mode_discovery.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.84, i32 noundef %conv, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_default_erl(ptr nocapture noundef %tpg, i32 noundef %default_erl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %default_erl)
  %switch = icmp ult i32 %default_erl, 3
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %default_erl) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %default_erl4 = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 9
  %0 = ptrtoint ptr %default_erl4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %default_erl, ptr %default_erl4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_default_erl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_default_erl, %if.then10)) #11
          to label %cleanup [label %if.then10], !srcloc !257

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %default_erl4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_erl4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_default_erl.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.87, i32 noundef %conv, i32 noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then10 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_t10_pi(ptr nocapture noundef %tpg, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %flag) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %flag to i8
  %t10_pi = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 10
  %0 = ptrtoint ptr %t10_pi to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %t10_pi, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_t10_pi.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_t10_pi, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !257

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv8 = zext i16 %2 to i32
  %3 = ptrtoint ptr %t10_pi to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %t10_pi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool11.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool11.not, ptr @.str.80, ptr @.str.79
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_t10_pi.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.89, i32 noundef %conv8, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_fabric_prot_type(ptr nocapture noundef %tpg, i32 noundef %prot_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %prot_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %prot_type, label %do.end [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge20
    i32 3, label %entry.if.end_crit_edge21
  ]

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %prot_type) #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge20, %entry.if.end_crit_edge21
  %fabric_prot_type = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 11
  %1 = ptrtoint ptr %fabric_prot_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %prot_type, ptr %fabric_prot_type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_fabric_prot_type.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_fabric_prot_type, %if.then9)) #11
          to label %cleanup [label %if.then9], !srcloc !257

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %2 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_fabric_prot_type.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.92, i32 noundef %conv, i32 noundef %prot_type) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_tpg_enabled_sendtargets(ptr nocapture noundef %tpg, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %flag) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tpg_enabled_sendtargets = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %tpg_enabled_sendtargets to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flag, ptr %tpg_enabled_sendtargets, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_tpg_enabled_sendtargets.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_tpg_enabled_sendtargets, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !257

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %tpg_enabled_sendtargets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tpg_enabled_sendtargets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool9.not, ptr @.str.80, ptr @.str.79
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_tpg_enabled_sendtargets.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.94, i32 noundef %conv, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_ta_login_keys_workaround(ptr nocapture noundef %tpg, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %flag) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %login_keys_workaround = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 13
  %0 = ptrtoint ptr %login_keys_workaround to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flag, ptr %login_keys_workaround, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_ta_login_keys_workaround.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_ta_login_keys_workaround, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !257

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 2
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %login_keys_workaround to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %login_keys_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool9.not, ptr @.str.80, ptr @.str.79
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_ta_login_keys_workaround.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.96, i32 noundef %conv, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_reset_np_thread(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iscsit_check_np_match(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_del_np(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !21, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !221, !222, !223, !225, !226, !228, !230, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !246, !247}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 31, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iscsit_alloc_portal_group._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iscsit_alloc_portal_group._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @iscsit_alloc_portal_group.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 40, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iscsit_alloc_portal_group.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 42, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @iscsit_alloc_portal_group.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 43, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 58, i32 3}
!17 = !{ptr @iscsit_load_discovery_tpg._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @iscsit_load_discovery_tpg._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 83, i32 36}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 87, i32 38}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 97, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iscsit_load_discovery_tpg.__UNIQUE_ID_ddebug221, !24, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 231, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @iscsit_tpg_add_portal_group._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @iscsit_tpg_add_portal_group._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 249, i32 2}
!34 = !{ptr @iscsit_tpg_add_portal_group.__UNIQUE_ID_ddebug222, !33, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 274, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iscsit_tpg_del_portal_group._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @iscsit_tpg_del_portal_group._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 297, i32 2}
!42 = !{ptr @iscsit_tpg_del_portal_group.__UNIQUE_ID_ddebug223, !41, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 311, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @iscsit_tpg_enable_portal_group._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @iscsit_tpg_enable_portal_group._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 325, i32 29}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 326, i32 42}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 342, i32 2}
!54 = !{ptr @iscsit_tpg_enable_portal_group.__UNIQUE_ID_ddebug224, !53, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 359, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @iscsit_tpg_disable_portal_group._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @iscsit_tpg_disable_portal_group._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 373, i32 3}
!62 = !{ptr @iscsit_tpg_disable_portal_group._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @iscsit_tpg_disable_portal_group._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 385, i32 2}
!66 = !{ptr @iscsit_tpg_disable_portal_group.__UNIQUE_ID_ddebug225, !65, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 467, i32 4}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @iscsit_tpg_add_network_portal._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @iscsit_tpg_add_network_portal._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 476, i32 3}
!74 = !{ptr @iscsit_tpg_add_network_portal._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @iscsit_tpg_add_network_portal._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @iscsit_tpg_add_network_portal.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 490, i32 2}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 511, i32 2}
!81 = !{ptr @iscsit_tpg_add_network_portal.__UNIQUE_ID_ddebug226, !80, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 548, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @iscsit_tpg_del_network_portal._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @iscsit_tpg_del_network_portal._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 564, i32 5}
!89 = !{ptr @iscsit_tpg_del_network_portal._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @iscsit_tpg_del_network_portal._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 595, i32 3}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @iscsit_ta_authentication._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @iscsit_ta_authentication._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 608, i32 32}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 612, i32 26}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 634, i32 17}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 641, i32 2}
!104 = !{ptr @iscsit_ta_authentication.__UNIQUE_ID_ddebug228, !103, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!105 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 654, i32 3}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @iscsit_ta_login_timeout._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @iscsit_ta_login_timeout._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 658, i32 3}
!114 = !{ptr @iscsit_ta_login_timeout._entry.52, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @iscsit_ta_login_timeout._entry_ptr.54, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 664, i32 2}
!118 = !{ptr @iscsit_ta_login_timeout.__UNIQUE_ID_ddebug229, !117, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 677, i32 3}
!121 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @iscsit_ta_netif_timeout._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @iscsit_ta_netif_timeout._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 682, i32 3}
!126 = !{ptr @iscsit_ta_netif_timeout._entry.58, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @iscsit_ta_netif_timeout._entry_ptr.60, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 689, i32 2}
!130 = !{ptr @iscsit_ta_netif_timeout.__UNIQUE_ID_ddebug230, !129, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 702, i32 3}
!133 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @iscsit_ta_generate_node_acls._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @iscsit_ta_generate_node_acls._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 707, i32 2}
!138 = !{ptr @iscsit_ta_generate_node_acls.__UNIQUE_ID_ddebug231, !137, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!139 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 711, i32 3}
!143 = !{ptr @iscsit_ta_generate_node_acls.__UNIQUE_ID_ddebug232, !142, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 726, i32 3}
!146 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @iscsit_ta_default_cmdsn_depth._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @iscsit_ta_default_cmdsn_depth._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 731, i32 3}
!151 = !{ptr @iscsit_ta_default_cmdsn_depth._entry.70, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @iscsit_ta_default_cmdsn_depth._entry_ptr.72, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 738, i32 2}
!155 = !{ptr @iscsit_ta_default_cmdsn_depth.__UNIQUE_ID_ddebug233, !154, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 751, i32 3}
!158 = !{ptr @iscsit_ta_cache_dynamic_acls._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @iscsit_ta_cache_dynamic_acls._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 756, i32 3}
!162 = !{ptr @iscsit_ta_cache_dynamic_acls.__UNIQUE_ID_ddebug234, !161, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 762, i32 2}
!165 = !{ptr @iscsit_ta_cache_dynamic_acls.__UNIQUE_ID_ddebug235, !164, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 776, i32 3}
!168 = !{ptr @iscsit_ta_demo_mode_write_protect._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @iscsit_ta_demo_mode_write_protect._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 781, i32 2}
!172 = !{ptr @iscsit_ta_demo_mode_write_protect.__UNIQUE_ID_ddebug236, !171, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!173 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 794, i32 3}
!177 = !{ptr @iscsit_ta_prod_mode_write_protect._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @iscsit_ta_prod_mode_write_protect._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 799, i32 2}
!181 = !{ptr @iscsit_ta_prod_mode_write_protect.__UNIQUE_ID_ddebug237, !180, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 813, i32 3}
!184 = !{ptr @iscsit_ta_demo_mode_discovery._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @iscsit_ta_demo_mode_discovery._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 818, i32 2}
!188 = !{ptr @iscsit_ta_demo_mode_discovery.__UNIQUE_ID_ddebug238, !187, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 832, i32 3}
!191 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @iscsit_ta_default_erl._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @iscsit_ta_default_erl._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 837, i32 2}
!196 = !{ptr @iscsit_ta_default_erl.__UNIQUE_ID_ddebug239, !195, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 849, i32 3}
!199 = !{ptr @iscsit_ta_t10_pi._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @iscsit_ta_t10_pi._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 854, i32 2}
!203 = !{ptr @iscsit_ta_t10_pi.__UNIQUE_ID_ddebug240, !202, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!204 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 868, i32 3}
!206 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @iscsit_ta_fabric_prot_type._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @iscsit_ta_fabric_prot_type._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 873, i32 2}
!211 = !{ptr @iscsit_ta_fabric_prot_type.__UNIQUE_ID_ddebug241, !210, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 886, i32 3}
!214 = !{ptr @iscsit_ta_tpg_enabled_sendtargets._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @iscsit_ta_tpg_enabled_sendtargets._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 891, i32 2}
!218 = !{ptr @iscsit_ta_tpg_enabled_sendtargets.__UNIQUE_ID_ddebug242, !217, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!219 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 904, i32 3}
!221 = !{ptr @iscsit_ta_login_keys_workaround._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @iscsit_ta_login_keys_workaround._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.96, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 909, i32 2}
!225 = !{ptr @iscsit_ta_login_keys_workaround.__UNIQUE_ID_ddebug243, !224, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!226 = !{ptr @sema_init.__key, !227, !"__key", i1 false, i1 false}
!227 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!228 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!230 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!232 = !{ptr @.str.99, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 193, i32 4}
!234 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @iscsit_clear_tpg_np_login_threads._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @iscsit_clear_tpg_np_login_threads._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 175, i32 3}
!239 = !{ptr @iscsit_clear_tpg_np_login_thread._entry, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @iscsit_clear_tpg_np_login_thread._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @init_completion.__key, !242, !"__key", i1 false, i1 false}
!242 = !{!"../include/linux/completion.h", i32 87, i32 2}
!243 = !{ptr @.str.102, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.103, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/target/iscsi/iscsi_target_tpg.c", i32 525, i32 2}
!246 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @iscsit_tpg_release_np.__UNIQUE_ID_ddebug227, !245, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{i64 2148222250, i64 2148222255, i64 2148222268, i64 2148222312, i64 2148222346, i64 2148222367}
!258 = !{i64 2148603054, i64 2148603086, i64 2148603115, i64 2148603149, i64 2148603180, i64 2148603203}
!259 = !{!"branch_weights", i32 1, i32 2000}
!260 = !{!"branch_weights", i32 2000, i32 1}
