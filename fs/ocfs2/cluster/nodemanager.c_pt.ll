; ModuleID = '/llk/IR_all_yes/fs/ocfs2/cluster/nodemanager.c_pt.bc'
source_filename = "../fs/ocfs2/cluster/nodemanager.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+o2nm_get_node_by_num\22, \22a\22\09"
module asm "\09.weak\09__crc_o2nm_get_node_by_num\09\09\09\09"
module asm "\09.long\09__crc_o2nm_get_node_by_num\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2nm_get_node_by_num:\09\09\09\09\09"
module asm "\09.asciz \09\22o2nm_get_node_by_num\22\09\09\09\09\09"
module asm "__kstrtabns_o2nm_get_node_by_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2nm_configured_node_map\22, \22a\22\09"
module asm "\09.weak\09__crc_o2nm_configured_node_map\09\09\09\09"
module asm "\09.long\09__crc_o2nm_configured_node_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2nm_configured_node_map:\09\09\09\09\09"
module asm "\09.asciz \09\22o2nm_configured_node_map\22\09\09\09\09\09"
module asm "__kstrtabns_o2nm_configured_node_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2nm_get_node_by_ip\22, \22a\22\09"
module asm "\09.weak\09__crc_o2nm_get_node_by_ip\09\09\09\09"
module asm "\09.long\09__crc_o2nm_get_node_by_ip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2nm_get_node_by_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22o2nm_get_node_by_ip\22\09\09\09\09\09"
module asm "__kstrtabns_o2nm_get_node_by_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2nm_node_put\22, \22a\22\09"
module asm "\09.weak\09__crc_o2nm_node_put\09\09\09\09"
module asm "\09.long\09__crc_o2nm_node_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2nm_node_put:\09\09\09\09\09"
module asm "\09.asciz \09\22o2nm_node_put\22\09\09\09\09\09"
module asm "__kstrtabns_o2nm_node_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2nm_node_get\22, \22a\22\09"
module asm "\09.weak\09__crc_o2nm_node_get\09\09\09\09"
module asm "\09.long\09__crc_o2nm_node_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2nm_node_get:\09\09\09\09\09"
module asm "\09.asciz \09\22o2nm_node_get\22\09\09\09\09\09"
module asm "__kstrtabns_o2nm_node_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+o2nm_this_node\22, \22a\22\09"
module asm "\09.weak\09__crc_o2nm_this_node\09\09\09\09"
module asm "\09.long\09__crc_o2nm_this_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_o2nm_this_node:\09\09\09\09\09"
module asm "\09.asciz \09\22o2nm_this_node\22\09\09\09\09\09"
module asm "__kstrtabns_o2nm_this_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.o2nm_cluster_group = type { %struct.configfs_subsystem }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.o2nm_cluster = type { %struct.config_group, i8, i8, %struct.rwlock_t, [255 x ptr], %struct.rb_root, i32, i32, i32, i32, [8 x i32] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.o2nm_node = type { %struct.spinlock, %struct.config_item, [65 x i8], i8, i32, i16, %struct.rb_node, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rb_node = type { i32, ptr, ptr }

@o2nm_single_cluster = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_o2nm_get_node_by_num = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2nm_get_node_by_num = external dso_local constant [0 x i8], align 1
@__ksymtab_o2nm_get_node_by_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2nm_get_node_by_num to i32), ptr @__kstrtab_o2nm_get_node_by_num, ptr @__kstrtabns_o2nm_get_node_by_num }, section "___ksymtab_gpl+o2nm_get_node_by_num", align 4
@__kstrtab_o2nm_configured_node_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2nm_configured_node_map = external dso_local constant [0 x i8], align 1
@__ksymtab_o2nm_configured_node_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2nm_configured_node_map to i32), ptr @__kstrtab_o2nm_configured_node_map, ptr @__kstrtabns_o2nm_configured_node_map }, section "___ksymtab_gpl+o2nm_configured_node_map", align 4
@__kstrtab_o2nm_get_node_by_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2nm_get_node_by_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_o2nm_get_node_by_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2nm_get_node_by_ip to i32), ptr @__kstrtab_o2nm_get_node_by_ip, ptr @__kstrtabns_o2nm_get_node_by_ip }, section "___ksymtab_gpl+o2nm_get_node_by_ip", align 4
@__kstrtab_o2nm_node_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2nm_node_put = external dso_local constant [0 x i8], align 1
@__ksymtab_o2nm_node_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2nm_node_put to i32), ptr @__kstrtab_o2nm_node_put, ptr @__kstrtabns_o2nm_node_put }, section "___ksymtab_gpl+o2nm_node_put", align 4
@__kstrtab_o2nm_node_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2nm_node_get = external dso_local constant [0 x i8], align 1
@__ksymtab_o2nm_node_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2nm_node_get to i32), ptr @__kstrtab_o2nm_node_get, ptr @__kstrtabns_o2nm_node_get }, section "___ksymtab_gpl+o2nm_node_get", align 4
@__kstrtab_o2nm_this_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_o2nm_this_node = external dso_local constant [0 x i8], align 1
@__ksymtab_o2nm_this_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @o2nm_this_node to i32), ptr @__kstrtab_o2nm_this_node, ptr @__kstrtabns_o2nm_this_node }, section "___ksymtab_gpl+o2nm_this_node", align 4
@o2nm_cluster_group = internal global { %struct.o2nm_cluster_group, [52 x i8] } { %struct.o2nm_cluster_group { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"cluster\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @o2nm_cluster_group_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author472 = internal constant [32 x i8] c"ocfs2_nodemanager.author=Oracle\00", section ".modinfo", align 1
@__UNIQUE_ID_file473 = internal constant [58 x i8] c"ocfs2_nodemanager.file=fs/ocfs2/cluster/ocfs2_nodemanager\00", section ".modinfo", align 1
@__UNIQUE_ID_license474 = internal constant [30 x i8] c"ocfs2_nodemanager.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description475 = internal constant [55 x i8] c"ocfs2_nodemanager.description=OCFS2 cluster management\00", section ".modinfo", align 1
@__initcall__kmod_ocfs2_nodemanager__476_866_init_o2nm6 = internal global ptr @init_o2nm, section ".initcall6.init", align 4
@__exitcall_exit_o2nm = internal global ptr @exit_o2nm, section ".exitcall.exit", align 4
@o2nm_cluster_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @o2nm_cluster_group_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@o2nm_cluster_group_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @o2nm_cluster_group_make_group, ptr null, ptr null, ptr @o2nm_cluster_group_drop_item }, [44 x i8] zeroinitializer }, align 32
@o2nm_cluster_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @o2nm_cluster_item_ops, ptr null, ptr @o2nm_cluster_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@o2nm_node_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @o2nm_node_group_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@o2nm_cluster_group_make_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cluster->cl_nodes_lock\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@o2nm_cluster_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @o2nm_cluster_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@o2nm_cluster_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @o2nm_cluster_attr_idle_timeout_ms, ptr @o2nm_cluster_attr_keepalive_delay_ms, ptr @o2nm_cluster_attr_reconnect_delay_ms, ptr @o2nm_cluster_attr_fence_method, ptr null], [44 x i8] zeroinitializer }, align 32
@o2nm_cluster_attr_idle_timeout_ms = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 420, ptr @o2nm_cluster_idle_timeout_ms_show, ptr @o2nm_cluster_idle_timeout_ms_store }, [44 x i8] zeroinitializer }, align 32
@o2nm_cluster_attr_keepalive_delay_ms = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @o2nm_cluster_keepalive_delay_ms_show, ptr @o2nm_cluster_keepalive_delay_ms_store }, [44 x i8] zeroinitializer }, align 32
@o2nm_cluster_attr_reconnect_delay_ms = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @o2nm_cluster_reconnect_delay_ms_show, ptr @o2nm_cluster_reconnect_delay_ms_store }, [44 x i8] zeroinitializer }, align 32
@o2nm_cluster_attr_fence_method = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @o2nm_cluster_fence_method_show, ptr @o2nm_cluster_fence_method_store }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idle_timeout_ms\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.o2nm_cluster_idle_timeout_ms_store = private unnamed_addr constant [35 x i8] c"o2nm_cluster_idle_timeout_ms_store\00", align 1
@.str.4 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"o2net: cannot change idle timeout after the first peer has agreed to it.  %d connected peers\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"o2net: idle timeout must be larger than keepalive delay\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keepalive_delay_ms\00", [45 x i8] zeroinitializer }, align 32
@__func__.o2nm_cluster_keepalive_delay_ms_store = private unnamed_addr constant [38 x i8] c"o2nm_cluster_keepalive_delay_ms_store\00", align 1
@.str.7 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"o2net: cannot change keepalive delay after the first peer has agreed to it.  %d connected peers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"o2net: keepalive delay must be smaller than idle timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reconnect_delay_ms\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fence_method\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@o2nm_fence_method_desc = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@o2nm_cluster_fence_method_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ocfs2: Changing fence method to %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"o2nm_cluster_fence_method_store\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/ocfs2/cluster/nodemanager.c\00", [33 x i8] zeroinitializer }, align 32
@o2nm_cluster_fence_method_store._entry_ptr = internal global ptr @o2nm_cluster_fence_method_store._entry, section ".printk_index", align 4
@o2nm_node_group_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @o2nm_node_group_make_item, ptr null, ptr null, ptr null, ptr @o2nm_node_group_drop_item }, [44 x i8] zeroinitializer }, align 32
@o2nm_node_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @o2nm_node_item_ops, ptr null, ptr @o2nm_node_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@o2nm_node_group_make_item.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&node->nd_lock\00", [17 x i8] zeroinitializer }, align 32
@__func__.o2nm_node_group_make_item = private unnamed_addr constant [26 x i8] c"o2nm_node_group_make_item\00", align 1
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"o2nm: Registering node %s\0A\00", [37 x i8] zeroinitializer }, align 32
@o2nm_node_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @o2nm_node_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@o2nm_node_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @o2nm_node_attr_num, ptr @o2nm_node_attr_ipv4_port, ptr @o2nm_node_attr_ipv4_address, ptr @o2nm_node_attr_local, ptr null], [44 x i8] zeroinitializer }, align 32
@o2nm_node_attr_num = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 420, ptr @o2nm_node_num_show, ptr @o2nm_node_num_store }, [44 x i8] zeroinitializer }, align 32
@o2nm_node_attr_ipv4_port = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @o2nm_node_ipv4_port_show, ptr @o2nm_node_ipv4_port_store }, [44 x i8] zeroinitializer }, align 32
@o2nm_node_attr_ipv4_address = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 420, ptr @o2nm_node_ipv4_address_show, ptr @o2nm_node_ipv4_address_store }, [44 x i8] zeroinitializer }, align 32
@o2nm_node_attr_local = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 420, ptr @o2nm_node_local_show, ptr @o2nm_node_local_store }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"num\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipv4_port\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipv4_address\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%3u.%3u.%3u.%3u\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@__func__.o2nm_node_group_drop_item = private unnamed_addr constant [26 x i8] c"o2nm_node_group_drop_item\00", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"o2nm: Unregistered node %s\0A\00", [36 x i8] zeroinitializer }, align 32
@init_o2nm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&o2nm_cluster_group.cs_subsys.su_mutex\00", [57 x i8] zeroinitializer }, align 32
@init_o2nm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.16, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013nodemanager: Registration returned %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_o2nm\00", [22 x i8] zeroinitializer }, align 32
@init_o2nm._entry_ptr = internal global ptr @init_o2nm._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"o2nm_single_cluster\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 20, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"o2nm_cluster_group\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 753, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"o2nm_cluster_group_type\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 748, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant [29 x i8] c"o2nm_cluster_group_group_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 743, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"o2nm_cluster_type\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 663, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 707, i32 45 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"o2nm_node_group_type\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 645, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 711, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"o2nm_cluster_item_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 659, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"o2nm_cluster_attrs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 573, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [34 x i8] c"o2nm_cluster_attr_idle_timeout_ms\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [37 x i8] c"o2nm_cluster_attr_keepalive_delay_ms\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [37 x i8] c"o2nm_cluster_attr_reconnect_delay_ms\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"o2nm_cluster_attr_fence_method\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 568, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 447, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 462, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 469, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 569, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 499, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 506, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 570, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 571, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 538, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"o2nm_fence_method_desc\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 22, i32 20 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 23, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 24, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 557, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"o2nm_node_group_group_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 640, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"o2nm_node_type\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 402, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 595, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 597, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"o2nm_node_item_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 398, i32 40 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"o2nm_node_attrs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 390, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"o2nm_node_attr_num\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [25 x i8] c"o2nm_node_attr_ipv4_port\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [28 x i8] c"o2nm_node_attr_ipv4_address\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [21 x i8] c"o2nm_node_attr_local\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 385, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 164, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 386, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 387, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 263, i32 23 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 277, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 388, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 634, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 840, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [34 x i8] c"../fs/ocfs2/cluster/nodemanager.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 843, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author472, ptr @__UNIQUE_ID_description475, ptr @__UNIQUE_ID_file473, ptr @__UNIQUE_ID_license474, ptr @__exitcall_exit_o2nm, ptr @__initcall__kmod_ocfs2_nodemanager__476_866_init_o2nm6, ptr @__ksymtab_o2nm_configured_node_map, ptr @__ksymtab_o2nm_get_node_by_ip, ptr @__ksymtab_o2nm_get_node_by_num, ptr @__ksymtab_o2nm_node_get, ptr @__ksymtab_o2nm_node_put, ptr @__ksymtab_o2nm_this_node, ptr @exit_o2nm, ptr @init_o2nm._entry, ptr @init_o2nm._entry_ptr, ptr @o2nm_cluster_fence_method_store._entry, ptr @o2nm_cluster_fence_method_store._entry_ptr, ptr @o2nm_single_cluster, ptr @o2nm_cluster_group, ptr @o2nm_cluster_group_type, ptr @o2nm_cluster_group_group_ops, ptr @o2nm_cluster_type, ptr @.str, ptr @o2nm_node_group_type, ptr @o2nm_cluster_group_make_group.__key, ptr @.str.1, ptr @o2nm_cluster_item_ops, ptr @o2nm_cluster_attrs, ptr @o2nm_cluster_attr_idle_timeout_ms, ptr @o2nm_cluster_attr_keepalive_delay_ms, ptr @o2nm_cluster_attr_reconnect_delay_ms, ptr @o2nm_cluster_attr_fence_method, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @o2nm_fence_method_desc, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @o2nm_node_group_group_ops, ptr @o2nm_node_type, ptr @o2nm_node_group_make_item.__key, ptr @.str.17, ptr @.str.18, ptr @o2nm_node_item_ops, ptr @o2nm_node_attrs, ptr @o2nm_node_attr_num, ptr @o2nm_node_attr_ipv4_port, ptr @o2nm_node_attr_ipv4_address, ptr @o2nm_node_attr_local, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @init_o2nm.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_single_cluster to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_group to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_group_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_group_make_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_attr_idle_timeout_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_attr_keepalive_delay_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_attr_reconnect_delay_ms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_attr_fence_method to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_fence_method_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_cluster_fence_method_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_group_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_group_make_item.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_attr_num to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_attr_ipv4_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_attr_ipv4_address to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2nm_node_attr_local to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_o2nm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_o2nm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @o2nm_get_node_by_num(i8 noundef zeroext %node_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %node_num to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %node_num)
  %cmp = icmp eq i8 %node_num, -1
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %cmp2 = icmp eq ptr %0, null
  br i1 %cmp2, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %cl_nodes_lock = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 3
  tail call void @_raw_read_lock(ptr noundef %cl_nodes_lock) #12
  %1 = load ptr, ptr @o2nm_single_cluster, align 4
  %arrayidx = getelementptr %struct.o2nm_cluster, ptr %1, i32 0, i32 4, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nd_item = getelementptr inbounds %struct.o2nm_node, ptr %3, i32 0, i32 1
  %call = tail call ptr @config_item_get(ptr noundef %nd_item) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %4 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_nodes_lock6 = getelementptr inbounds %struct.o2nm_cluster, ptr %4, i32 0, i32 3
  tail call void @_raw_read_unlock(ptr noundef %cl_nodes_lock6) #12
  br label %out

out:                                              ; preds = %if.end5, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %node.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ %3, %if.end5 ]
  ret ptr %node.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_item_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2nm_configured_node_map(ptr nocapture noundef writeonly %map, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bytes)
  %cmp = icmp ult i32 %bytes, 32
  br i1 %cmp, label %do.body2, label %do.end7, !prof !134

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/nodemanager.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

do.end7:                                          ; preds = %entry
  %cmp8 = icmp eq ptr %0, null
  br i1 %cmp8, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  %cl_nodes_lock = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 3
  tail call void @_raw_read_lock(ptr noundef %cl_nodes_lock) #12
  %cl_nodes_bitmap = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 10
  %1 = call ptr @memcpy(ptr %map, ptr %cl_nodes_bitmap, i32 32)
  tail call void @_raw_read_unlock(ptr noundef %cl_nodes_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @o2nm_get_node_by_ip(i32 noundef %addr) #0 align 64 {
entry:
  %ip_needle.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %cl_nodes_lock = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 3
  tail call void @_raw_read_lock(ptr noundef %cl_nodes_lock) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_needle.addr.i)
  %1 = ptrtoint ptr %ip_needle.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %addr, ptr %ip_needle.addr.i, align 4
  %cl_node_ip_tree.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 5
  %2 = ptrtoint ptr %cl_node_ip_tree.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_node_ip_tree.i, align 4
  %tobool.not33.i = icmp eq ptr %3, null
  br i1 %tobool.not33.i, label %if.end.o2nm_node_ip_tree_lookup.exit.thread_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.o2nm_node_ip_tree_lookup.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_node_ip_tree_lookup.exit.thread

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %4 = phi ptr [ %6, %cleanup.i.while.body.i_crit_edge ], [ %3, %if.end.while.body.i_crit_edge ]
  %nd_ipv4_address.i = getelementptr i8, ptr %4, i32 -8
  %call.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(4) %ip_needle.addr.i, ptr noundef dereferenceable(4) %nd_ipv4_address.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %o2nm_node_ip_tree_lookup.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %5 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %cleanup.i.o2nm_node_ip_tree_lookup.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.o2nm_node_ip_tree_lookup.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_node_ip_tree_lookup.exit.thread

o2nm_node_ip_tree_lookup.exit.thread:             ; preds = %cleanup.i.o2nm_node_ip_tree_lookup.exit.thread_crit_edge, %if.end.o2nm_node_ip_tree_lookup.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_needle.addr.i)
  br label %if.end3

o2nm_node_ip_tree_lookup.exit:                    ; preds = %if.else.i
  %add.ptr.le.i = getelementptr i8, ptr %4, i32 -172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_needle.addr.i)
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %o2nm_node_ip_tree_lookup.exit.if.end3_crit_edge, label %if.then1

o2nm_node_ip_tree_lookup.exit.if.end3_crit_edge:  ; preds = %o2nm_node_ip_tree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then1:                                         ; preds = %o2nm_node_ip_tree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nd_item = getelementptr i8, ptr %4, i32 -128
  %call2 = tail call ptr @config_item_get(ptr noundef %nd_item) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %o2nm_node_ip_tree_lookup.exit.if.end3_crit_edge, %o2nm_node_ip_tree_lookup.exit.thread
  %ret.2.i12 = phi ptr [ null, %o2nm_node_ip_tree_lookup.exit.thread ], [ %add.ptr.le.i, %if.then1 ], [ null, %o2nm_node_ip_tree_lookup.exit.if.end3_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %cl_nodes_lock) #12
  br label %out

out:                                              ; preds = %if.end3, %entry.out_crit_edge
  %node.0 = phi ptr [ null, %entry.out_crit_edge ], [ %ret.2.i12, %if.end3 ]
  ret ptr %node.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2nm_node_put(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_item = getelementptr inbounds %struct.o2nm_node, ptr %node, i32 0, i32 1
  tail call void @config_item_put(ptr noundef %nd_item) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2nm_node_get(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_item = getelementptr inbounds %struct.o2nm_node, ptr %node, i32 0, i32 1
  %call = tail call ptr @config_item_get(ptr noundef %nd_item) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @o2nm_this_node() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cl_has_local = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %cl_has_local to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %cl_has_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %cl_local_node = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %cl_local_node to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cl_local_node, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %node_num.0 = phi i8 [ %3, %if.then ], [ -1, %land.lhs.true.if.end_crit_edge ], [ -1, %entry.if.end_crit_edge ]
  ret i8 %node_num.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2nm_depend_item(ptr noundef %item) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @configfs_depend_item(ptr noundef nonnull @o2nm_cluster_group, ptr noundef %item) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_depend_item(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2nm_undepend_item(ptr noundef %item) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @configfs_undepend_item(ptr noundef %item) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_undepend_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @o2nm_depend_this_node() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %land.lhs.true.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.i:                                  ; preds = %entry
  %cl_has_local.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %cl_has_local.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %cl_has_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %land.lhs.true.i.out_crit_edge, label %o2nm_this_node.exit

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

o2nm_this_node.exit:                              ; preds = %land.lhs.true.i
  %cl_local_node.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %cl_local_node.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cl_local_node.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %o2nm_this_node.exit.out_crit_edge, label %if.end.i

o2nm_this_node.exit.out_crit_edge:                ; preds = %o2nm_this_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i:                                         ; preds = %o2nm_this_node.exit
  %conv.i = zext i8 %3 to i32
  %cl_nodes_lock.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 3
  tail call void @_raw_read_lock(ptr noundef %cl_nodes_lock.i) #12
  %4 = load ptr, ptr @o2nm_single_cluster, align 4
  %arrayidx.i = getelementptr %struct.o2nm_cluster, ptr %4, i32 0, i32 4, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i5 = icmp eq ptr %6, null
  br i1 %tobool.not.i5, label %o2nm_get_node_by_num.exit.thread, label %if.end

o2nm_get_node_by_num.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_nodes_lock6.i13 = getelementptr inbounds %struct.o2nm_cluster, ptr %7, i32 0, i32 3
  tail call void @_raw_read_unlock(ptr noundef %cl_nodes_lock6.i13) #12
  br label %out

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %nd_item.i = getelementptr inbounds %struct.o2nm_node, ptr %6, i32 0, i32 1
  %call.i = tail call ptr @config_item_get(ptr noundef %nd_item.i) #12
  %8 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_nodes_lock6.i = getelementptr inbounds %struct.o2nm_cluster, ptr %8, i32 0, i32 3
  tail call void @_raw_read_unlock(ptr noundef %cl_nodes_lock6.i) #12
  %nd_item = getelementptr inbounds %struct.o2nm_node, ptr %6, i32 0, i32 1
  %call.i6 = tail call i32 @configfs_depend_item(ptr noundef nonnull @o2nm_cluster_group, ptr noundef %nd_item) #12
  tail call void @config_item_put(ptr noundef %nd_item) #12
  br label %out

out:                                              ; preds = %if.end, %o2nm_get_node_by_num.exit.thread, %o2nm_this_node.exit.out_crit_edge, %land.lhs.true.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i6, %if.end ], [ -22, %o2nm_this_node.exit.out_crit_edge ], [ -22, %land.lhs.true.i.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -22, %o2nm_get_node_by_num.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2nm_undepend_this_node() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.do.body5_crit_edge, label %land.lhs.true.i

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

land.lhs.true.i:                                  ; preds = %entry
  %cl_has_local.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %cl_has_local.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %cl_has_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.body5_crit_edge, label %o2nm_this_node.exit

land.lhs.true.i.do.body5_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

o2nm_this_node.exit:                              ; preds = %land.lhs.true.i
  %cl_local_node.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %cl_local_node.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cl_local_node.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %o2nm_this_node.exit.do.body5_crit_edge, label %if.end.i

o2nm_this_node.exit.do.body5_crit_edge:           ; preds = %o2nm_this_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

if.end.i:                                         ; preds = %o2nm_this_node.exit
  %conv.i = zext i8 %3 to i32
  %cl_nodes_lock.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 3
  tail call void @_raw_read_lock(ptr noundef %cl_nodes_lock.i) #12
  %4 = load ptr, ptr @o2nm_single_cluster, align 4
  %arrayidx.i = getelementptr %struct.o2nm_cluster, ptr %4, i32 0, i32 4, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i13 = icmp eq ptr %6, null
  br i1 %tobool.not.i13, label %o2nm_get_node_by_num.exit.thread, label %do.end10

o2nm_get_node_by_num.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_nodes_lock6.i20 = getelementptr inbounds %struct.o2nm_cluster, ptr %7, i32 0, i32 3
  tail call void @_raw_read_unlock(ptr noundef %cl_nodes_lock6.i20) #12
  br label %do.body5

do.body5:                                         ; preds = %o2nm_get_node_by_num.exit.thread, %o2nm_this_node.exit.do.body5_crit_edge, %land.lhs.true.i.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/nodemanager.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 807, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

do.end10:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %nd_item.i = getelementptr inbounds %struct.o2nm_node, ptr %6, i32 0, i32 1
  %call.i = tail call ptr @config_item_get(ptr noundef %nd_item.i) #12
  %8 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_nodes_lock6.i = getelementptr inbounds %struct.o2nm_cluster, ptr %8, i32 0, i32 3
  tail call void @_raw_read_unlock(ptr noundef %cl_nodes_lock6.i) #12
  %nd_item = getelementptr inbounds %struct.o2nm_node, ptr %6, i32 0, i32 1
  tail call void @configfs_undepend_item(ptr noundef %nd_item) #12
  tail call void @config_item_put(ptr noundef %nd_item) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_o2nm() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @o2net_unregister_hb_callbacks() #12
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @o2nm_cluster_group) #12
  tail call void @o2cb_sys_shutdown() #12
  tail call void @o2net_exit() #12
  tail call void @o2hb_exit() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_unregister_hb_callbacks() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2cb_sys_shutdown() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_o2nm() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @o2hb_init() #12
  %call = tail call i32 @o2net_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_o2hb_crit_edge

entry.out_o2hb_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_o2hb

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @o2net_register_hb_callbacks() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_o2net_crit_edge

if.end.out_o2net_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_o2net

if.end4:                                          ; preds = %if.end
  tail call void @config_group_init(ptr noundef nonnull @o2nm_cluster_group) #12
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.o2nm_cluster_group, ptr @o2nm_cluster_group, i32 0, i32 0, i32 1), ptr noundef nonnull @.str.27, ptr noundef nonnull @init_o2nm.__key) #12
  %call5 = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @o2nm_cluster_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call5) #16
  br label %out_callbacks

if.end12:                                         ; preds = %if.end4
  %call13 = tail call i32 @o2cb_sys_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.out_crit_edge, label %if.end16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @o2nm_cluster_group) #12
  br label %out_callbacks

out_callbacks:                                    ; preds = %if.end16, %do.end10
  %ret.0 = phi i32 [ %call5, %do.end10 ], [ %call13, %if.end16 ]
  tail call void @o2net_unregister_hb_callbacks() #12
  br label %out_o2net

out_o2net:                                        ; preds = %out_callbacks, %if.end.out_o2net_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.out_o2net_crit_edge ], [ %ret.0, %out_callbacks ]
  tail call void @o2net_exit() #12
  br label %out_o2hb

out_o2hb:                                         ; preds = %out_o2net, %entry.out_o2hb_crit_edge
  %ret.2 = phi i32 [ %call, %entry.out_o2hb_crit_edge ], [ %ret.1, %out_o2net ]
  tail call void @o2hb_exit() #12
  br label %out

out:                                              ; preds = %out_o2hb, %if.end12.out_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_o2hb ], [ 0, %if.end12.out_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @o2nm_cluster_group_make_group(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1200) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #17
  %call3 = tail call ptr @o2hb_alloc_hb_set() #12
  %cmp = icmp eq ptr %call7.i.i, null
  %cmp4 = icmp eq ptr %call7.i.i39, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  %cmp6 = icmp eq ptr %call3, null
  %or.cond38 = select i1 %or.cond, i1 true, i1 %cmp6
  br i1 %or.cond38, label %if.then14, label %if.end8

if.end8:                                          ; preds = %if.end
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @o2nm_cluster_type) #12
  %group_entry.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i39, i32 0, i32 4
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %4, ptr noundef %default_groups.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.configfs_add_default_group.exit_crit_edge

if.end8.configfs_add_default_group.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i39, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %group_entry.i, ptr %4, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end8.configfs_add_default_group.exit_crit_edge
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i39, ptr noundef nonnull @.str, ptr noundef nonnull @o2nm_node_group_type) #12
  %group_entry.i40 = getelementptr inbounds %struct.config_group, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i40, ptr noundef %10, ptr noundef %default_groups.i) #12
  br i1 %call.i.i.i43, label %if.end.i.i.i45, label %configfs_add_default_group.exit.out_crit_edge

configfs_add_default_group.exit.out_crit_edge:    ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i.i45:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %group_entry.i40, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %group_entry.i40 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %default_groups.i, ptr %group_entry.i40, align 4
  %prev3.i.i.i44 = getelementptr inbounds %struct.config_group, ptr %call3, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i44, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %group_entry.i40, ptr %10, align 4
  br label %out

out:                                              ; preds = %if.end.i.i.i45, %configfs_add_default_group.exit.out_crit_edge
  %cl_nodes_lock = getelementptr inbounds %struct.o2nm_cluster, ptr %call7.i.i, i32 0, i32 3
  tail call void @__rwlock_init(ptr noundef %cl_nodes_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @o2nm_cluster_group_make_group.__key) #12
  %cl_node_ip_tree = getelementptr inbounds %struct.o2nm_cluster, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %cl_node_ip_tree to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cl_node_ip_tree, align 4
  %cl_reconnect_delay_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %cl_reconnect_delay_ms to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2000, ptr %cl_reconnect_delay_ms, align 8
  %cl_idle_timeout_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %cl_idle_timeout_ms to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 30000, ptr %cl_idle_timeout_ms, align 8
  %cl_keepalive_delay_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %cl_keepalive_delay_ms to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2000, ptr %cl_keepalive_delay_ms, align 4
  %cl_fence_method = getelementptr inbounds %struct.o2nm_cluster, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %cl_fence_method to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cl_fence_method, align 4
  store ptr %call7.i.i, ptr @o2nm_single_cluster, align 4
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call7.i.i) #12
  tail call void @kfree(ptr noundef %call7.i.i39) #12
  tail call void @o2hb_free_hb_set(ptr noundef %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then14 ], [ %call7.i.i, %out ], [ inttoptr (i32 -28 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2nm_cluster_group_drop_item(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %cmp.not = icmp eq ptr %0, %item
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !137

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/nodemanager.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 736, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr @o2nm_single_cluster, align 4
  tail call void @configfs_remove_default_groups(ptr noundef %item) #12
  tail call void @config_item_put(ptr noundef %item) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @o2hb_alloc_hb_set() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_free_hb_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2nm_cluster_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %item) #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_cluster_idle_timeout_ms_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_idle_timeout_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %cl_idle_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_idle_timeout_ms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_cluster_idle_timeout_ms_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %p.i = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m11 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #12
  %0 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %p.i, align 4
  %call.i = call i32 @simple_strtoul(ptr noundef %page, ptr noundef nonnull %p.i, i32 noundef 0) #12
  %1 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.o2nm_cluster_attr_write.exit.thread_crit_edge, label %lor.lhs.false.i

entry.o2nm_cluster_attr_write.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %lor.lhs.false.i.o2nm_cluster_attr_write.exit.thread_crit_edge [
    i8 0, label %lor.lhs.false.i.if.end.i_crit_edge
    i8 10, label %lor.lhs.false.i.if.end.i_crit_edge30
  ]

lor.lhs.false.i.if.end.i_crit_edge30:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.o2nm_cluster_attr_write.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge30
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call.i, label %o2nm_cluster_attr_write.exit [
    i32 0, label %if.end.i.o2nm_cluster_attr_write.exit.thread_crit_edge
    i32 -1, label %if.then10.i
  ]

if.end.i.o2nm_cluster_attr_write.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit.thread

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit.thread

o2nm_cluster_attr_write.exit.thread:              ; preds = %if.then10.i, %if.end.i.o2nm_cluster_attr_write.exit.thread_crit_edge, %lor.lhs.false.i.o2nm_cluster_attr_write.exit.thread_crit_edge, %entry.o2nm_cluster_attr_write.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.o2nm_cluster_attr_write.exit.thread_crit_edge ], [ -22, %entry.o2nm_cluster_attr_write.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.o2nm_cluster_attr_write.exit.thread_crit_edge ], [ -34, %if.then10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #12
  br label %if.end22

o2nm_cluster_attr_write.exit:                     ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp sgt i32 %count, 0
  br i1 %cmp, label %if.then, label %o2nm_cluster_attr_write.exit.if.end22_crit_edge

o2nm_cluster_attr_write.exit.if.end22_crit_edge:  ; preds = %o2nm_cluster_attr_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %o2nm_cluster_attr_write.exit
  %cl_idle_timeout_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 6
  %7 = ptrtoint ptr %cl_idle_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cl_idle_timeout_ms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call.i)
  %cmp2.not = icmp eq i32 %8, %call.i
  br i1 %cmp2.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %call3 = call i32 @o2net_num_connected_peers() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2305843009213693952, ptr %_m, align 8
  %call7 = call i32 @o2net_num_connected_peers() #12
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2nm_cluster_idle_timeout_ms_store, i32 noundef 466, ptr noundef nonnull @.str.4, i32 noundef %call7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %cl_keepalive_delay_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 7
  %10 = ptrtoint ptr %cl_keepalive_delay_ms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cl_keepalive_delay_ms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %11)
  %cmp8.not = icmp ugt i32 %call.i, %11
  br i1 %cmp8.not, label %if.else18, label %do.body10

do.body10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m11) #12
  %12 = ptrtoint ptr %_m11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2305843009213693952, ptr %_m11, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m11, ptr noundef nonnull @__func__.o2nm_cluster_idle_timeout_ms_store, i32 noundef 470, ptr noundef nonnull @.str.5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m11) #12
  br label %if.end22

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %cl_idle_timeout_ms to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %cl_idle_timeout_ms, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %do.body10, %do.body, %o2nm_cluster_attr_write.exit.if.end22_crit_edge, %o2nm_cluster_attr_write.exit.thread
  %ret.0 = phi i32 [ -22, %do.body ], [ -22, %do.body10 ], [ %count, %if.else18 ], [ %count, %o2nm_cluster_attr_write.exit.if.end22_crit_edge ], [ %retval.0.i.ph, %o2nm_cluster_attr_write.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_num_connected_peers() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_cluster_keepalive_delay_ms_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_keepalive_delay_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %cl_keepalive_delay_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_keepalive_delay_ms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_cluster_keepalive_delay_ms_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %p.i = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m11 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #12
  %0 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %p.i, align 4
  %call.i = call i32 @simple_strtoul(ptr noundef %page, ptr noundef nonnull %p.i, i32 noundef 0) #12
  %1 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.o2nm_cluster_attr_write.exit.thread_crit_edge, label %lor.lhs.false.i

entry.o2nm_cluster_attr_write.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %4, label %lor.lhs.false.i.o2nm_cluster_attr_write.exit.thread_crit_edge [
    i8 0, label %lor.lhs.false.i.if.end.i_crit_edge
    i8 10, label %lor.lhs.false.i.if.end.i_crit_edge30
  ]

lor.lhs.false.i.if.end.i_crit_edge30:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.o2nm_cluster_attr_write.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge30
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call.i, label %o2nm_cluster_attr_write.exit [
    i32 0, label %if.end.i.o2nm_cluster_attr_write.exit.thread_crit_edge
    i32 -1, label %if.then10.i
  ]

if.end.i.o2nm_cluster_attr_write.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit.thread

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit.thread

o2nm_cluster_attr_write.exit.thread:              ; preds = %if.then10.i, %if.end.i.o2nm_cluster_attr_write.exit.thread_crit_edge, %lor.lhs.false.i.o2nm_cluster_attr_write.exit.thread_crit_edge, %entry.o2nm_cluster_attr_write.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.o2nm_cluster_attr_write.exit.thread_crit_edge ], [ -22, %entry.o2nm_cluster_attr_write.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.o2nm_cluster_attr_write.exit.thread_crit_edge ], [ -34, %if.then10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #12
  br label %if.end22

o2nm_cluster_attr_write.exit:                     ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp sgt i32 %count, 0
  br i1 %cmp, label %if.then, label %o2nm_cluster_attr_write.exit.if.end22_crit_edge

o2nm_cluster_attr_write.exit.if.end22_crit_edge:  ; preds = %o2nm_cluster_attr_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %o2nm_cluster_attr_write.exit
  %cl_keepalive_delay_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 7
  %7 = ptrtoint ptr %cl_keepalive_delay_ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cl_keepalive_delay_ms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call.i)
  %cmp2.not = icmp eq i32 %8, %call.i
  br i1 %cmp2.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %call3 = call i32 @o2net_num_connected_peers() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2305843009213693952, ptr %_m, align 8
  %call7 = call i32 @o2net_num_connected_peers() #12
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2nm_cluster_keepalive_delay_ms_store, i32 noundef 503, ptr noundef nonnull @.str.7, i32 noundef %call7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %cl_idle_timeout_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 6
  %10 = ptrtoint ptr %cl_idle_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cl_idle_timeout_ms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %11)
  %cmp8.not = icmp ult i32 %call.i, %11
  br i1 %cmp8.not, label %if.else18, label %do.body10

do.body10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m11) #12
  %12 = ptrtoint ptr %_m11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2305843009213693952, ptr %_m11, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m11, ptr noundef nonnull @__func__.o2nm_cluster_keepalive_delay_ms_store, i32 noundef 507, ptr noundef nonnull @.str.8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m11) #12
  br label %if.end22

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %cl_keepalive_delay_ms to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %cl_keepalive_delay_ms, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %do.body10, %do.body, %o2nm_cluster_attr_write.exit.if.end22_crit_edge, %o2nm_cluster_attr_write.exit.thread
  %ret.0 = phi i32 [ -22, %do.body ], [ -22, %do.body10 ], [ %count, %if.else18 ], [ %count, %o2nm_cluster_attr_write.exit.if.end22_crit_edge ], [ %retval.0.i.ph, %o2nm_cluster_attr_write.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_cluster_reconnect_delay_ms_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_reconnect_delay_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 8
  %0 = ptrtoint ptr %cl_reconnect_delay_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_reconnect_delay_ms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_cluster_reconnect_delay_ms_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %p.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_reconnect_delay_ms = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #12
  %0 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %p.i, align 4
  %call.i = call i32 @simple_strtoul(ptr noundef %page, ptr noundef nonnull %p.i, i32 noundef 0) #12
  %1 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.o2nm_cluster_attr_write.exit_crit_edge, label %lor.lhs.false.i

entry.o2nm_cluster_attr_write.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit

lor.lhs.false.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %4, label %lor.lhs.false.i.o2nm_cluster_attr_write.exit_crit_edge [
    i8 0, label %lor.lhs.false.i.if.end.i_crit_edge
    i8 10, label %lor.lhs.false.i.if.end.i_crit_edge2
  ]

lor.lhs.false.i.if.end.i_crit_edge2:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.o2nm_cluster_attr_write.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge2
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call.i, label %if.end11.i [
    i32 0, label %if.end.i.o2nm_cluster_attr_write.exit_crit_edge
    i32 -1, label %if.then10.i
  ]

if.end.i.o2nm_cluster_attr_write.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_cluster_attr_write.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %cl_reconnect_delay_ms to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %cl_reconnect_delay_ms, align 4
  br label %o2nm_cluster_attr_write.exit

o2nm_cluster_attr_write.exit:                     ; preds = %if.end11.i, %if.then10.i, %if.end.i.o2nm_cluster_attr_write.exit_crit_edge, %lor.lhs.false.i.o2nm_cluster_attr_write.exit_crit_edge, %entry.o2nm_cluster_attr_write.exit_crit_edge
  %retval.0.i = phi i32 [ -34, %if.then10.i ], [ %count, %if.end11.i ], [ -22, %lor.lhs.false.i.o2nm_cluster_attr_write.exit_crit_edge ], [ -22, %entry.o2nm_cluster_attr_write.exit_crit_edge ], [ -22, %if.end.i.o2nm_cluster_attr_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_cluster_fence_method_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %item, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cl_fence_method = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %cl_fence_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_fence_method, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @o2nm_fence_method_desc, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.11, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_cluster_fence_method_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %page, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp.not = icmp eq i8 %1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp5.not = icmp eq i32 %count, 6
  %or.cond = and i1 %cmp.not, %cmp5.not
  br i1 %or.cond, label %if.end8, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call11 = tail call i32 @strncasecmp(ptr noundef %page, ptr noundef nonnull @.str.12, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end8.if.end13_crit_edge, label %if.end8.1

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %if.end8.1.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  %i.035.lcssa = phi i32 [ 0, %if.end8.if.end13_crit_edge ], [ 1, %if.end8.1.if.end13_crit_edge ]
  %.lcssa = phi ptr [ @.str.12, %if.end8.if.end13_crit_edge ], [ @.str.13, %if.end8.1.if.end13_crit_edge ]
  %cl_fence_method = getelementptr inbounds %struct.o2nm_cluster, ptr %item, i32 0, i32 9
  %2 = ptrtoint ptr %cl_fence_method to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_fence_method, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %i.035.lcssa)
  %cmp15.not = icmp eq i32 %3, %i.035.lcssa
  br i1 %cmp15.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %.lcssa) #16
  %4 = ptrtoint ptr %cl_fence_method to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.035.lcssa, ptr %cl_fence_method, align 4
  br label %cleanup

if.end8.1:                                        ; preds = %if.end8
  %call11.1 = tail call i32 @strncasecmp(ptr noundef %page, ptr noundef nonnull @.str.13, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool.not.1, label %if.end8.1.if.end13_crit_edge, label %if.end8.1.cleanup_crit_edge

if.end8.1.cleanup_crit_edge:                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.1.if.end13_crit_edge:                     ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

cleanup:                                          ; preds = %if.end8.1.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %do.end ], [ 6, %if.end13.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end8.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @o2nm_node_group_make_item(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call)
  %cmp = icmp ugt i32 %call, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 192) #17
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nd_name = getelementptr inbounds %struct.o2nm_node, ptr %call7.i.i, i32 0, i32 2
  %call7 = tail call ptr @strcpy(ptr noundef %nd_name, ptr noundef %name) #18
  %nd_item = getelementptr inbounds %struct.o2nm_node, ptr %call7.i.i, i32 0, i32 1
  tail call void @config_item_init_type_name(ptr noundef %nd_item, ptr noundef %name, ptr noundef nonnull @o2nm_node_type) #12
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @o2nm_node_group_make_item.__key, i16 noundef signext 3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 65536, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2nm_node_group_make_item, i32 noundef 597, ptr noundef nonnull @.str.18, ptr noundef %name) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %nd_item, %if.end6 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2nm_node_group_drop_item(ptr nocapture noundef readonly %group, ptr noundef %item) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %group, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 3
  %2 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nd_num, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.o2nm_cluster, ptr %1, i32 0, i32 4, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %5, %spec.select.i
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  tail call void @o2net_disconnect_node(ptr noundef %spec.select.i) #12
  %cl_has_local = getelementptr inbounds %struct.o2nm_cluster, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cl_has_local to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %cl_has_local, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then.if.end10_crit_edge, label %land.lhs.true

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then
  %cl_local_node = getelementptr inbounds %struct.o2nm_cluster, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %cl_local_node to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cl_local_node, align 1
  %9 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nd_num, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp4 = icmp eq i8 %8, %10
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear = and i8 %bf.load, 127
  %11 = ptrtoint ptr %cl_has_local to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.clear, ptr %cl_has_local, align 4
  %12 = ptrtoint ptr %cl_local_node to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %cl_local_node, align 1
  tail call void @o2net_stop_listening(ptr noundef %spec.select.i) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %cl_nodes_lock = getelementptr inbounds %struct.o2nm_cluster, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock(ptr noundef %cl_nodes_lock) #12
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 4
  %13 = ptrtoint ptr %nd_ipv4_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nd_ipv4_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %nd_ip_node = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 6
  %cl_node_ip_tree = getelementptr inbounds %struct.o2nm_cluster, ptr %1, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %nd_ip_node, ptr noundef %cl_node_ip_tree) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %15 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nd_num, align 1
  %idxprom16 = zext i8 %16 to i32
  %arrayidx17 = getelementptr %struct.o2nm_cluster, ptr %1, i32 0, i32 4, i32 %idxprom16
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17, align 4
  %cmp18 = icmp eq ptr %18, %spec.select.i
  br i1 %cmp18, label %if.then20, label %if.end13.if.end27_crit_edge

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx17, align 4
  %20 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nd_num, align 1
  %conv26 = zext i8 %21 to i32
  %cl_nodes_bitmap = getelementptr inbounds %struct.o2nm_cluster, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef %conv26, ptr noundef %cl_nodes_bitmap) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end13.if.end27_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %cl_nodes_lock) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %22 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 65536, ptr %_m, align 8
  %nd_item = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 1
  %23 = ptrtoint ptr %nd_item to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nd_item, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2nm_node_group_drop_item, i32 noundef 635, ptr noundef nonnull @.str.26, ptr noundef %24) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  call void @config_item_put(ptr noundef %item) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2nm_node_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call void @kfree(ptr noundef %spec.select.i) #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_node_num_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 3
  %0 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nd_num, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.20, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_node_num_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #12
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %p, align 4
  %call1 = call i32 @simple_strtoul(ptr noundef %page, ptr noundef nonnull %p, i32 noundef 0) #12
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %4, label %lor.lhs.false.cleanup_crit_edge [
    i8 0, label %lor.lhs.false.if.end_crit_edge
    i8 10, label %lor.lhs.false.if.end_crit_edge61
  ]

lor.lhs.false.if.end_crit_edge61:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge61
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call1)
  %cmp5 = icmp ugt i32 %call1, 254
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %nd_set_attributes = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 8
  %6 = ptrtoint ptr %nd_set_attributes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %nd_set_attributes, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %lor.lhs.false11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end8
  %9 = ptrtoint ptr %nd_set_attributes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %nd_set_attributes, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %lor.lhs.false11.cleanup_crit_edge, label %if.end16

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false11
  call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.o2nm_cluster_group, ptr @o2nm_cluster_group, i32 0, i32 0, i32 1), i32 noundef 0) #12
  %ci_parent.i = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %ci_parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci_parent.i, align 4
  %tobool.not.i58 = icmp eq ptr %13, null
  br i1 %tobool.not.i58, label %if.end16.cleanup.sink.split_crit_edge, label %to_o2nm_cluster_from_node.exit

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

to_o2nm_cluster_from_node.exit:                   ; preds = %if.end16
  %ci_parent3.i = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ci_parent3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci_parent3.i, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %to_o2nm_cluster_from_node.exit.cleanup.sink.split_crit_edge, label %if.end20

to_o2nm_cluster_from_node.exit.cleanup.sink.split_crit_edge: ; preds = %to_o2nm_cluster_from_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end20:                                         ; preds = %to_o2nm_cluster_from_node.exit
  %cl_nodes_lock = getelementptr inbounds %struct.o2nm_cluster, ptr %15, i32 0, i32 3
  call void @_raw_write_lock(ptr noundef %cl_nodes_lock) #12
  %arrayidx = getelementptr %struct.o2nm_cluster, ptr %15, i32 0, i32 4, i32 %call1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %17, null
  br i1 %tobool21.not, label %if.else, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.else:                                          ; preds = %if.end20
  %call24 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %nd_set_attributes) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else27, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select.i, ptr %arrayidx, align 4
  %conv30 = trunc i32 %call1 to i8
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 3
  %19 = ptrtoint ptr %nd_num to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv30, ptr %nd_num, align 1
  %cl_nodes_bitmap = getelementptr inbounds %struct.o2nm_cluster, ptr %15, i32 0, i32 10
  call void @_set_bit(i32 noundef %call1, ptr noundef %cl_nodes_bitmap) #12
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.else.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %tobool34.not = phi i32 [ %count, %if.else27 ], [ -17, %if.end20.if.end32_crit_edge ], [ -16, %if.else.if.end32_crit_edge ]
  call void @_raw_write_unlock(ptr noundef %cl_nodes_lock) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end32, %to_o2nm_cluster_from_node.exit.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %tobool34.not, %if.end32 ], [ -22, %if.end16.cleanup.sink.split_crit_edge ], [ -22, %to_o2nm_cluster_from_node.exit.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.o2nm_cluster_group, ptr @o2nm_cluster_group, i32 0, i32 0, i32 1)) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_node_ipv4_port_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %nd_ipv4_port = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 5
  %0 = ptrtoint ptr %nd_ipv4_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nd_ipv4_port, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_node_ipv4_port_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #12
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %p, align 4
  %call1 = call i32 @simple_strtoul(ptr noundef %page, ptr noundef nonnull %p, i32 noundef 0) #12
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %4, label %lor.lhs.false.cleanup_crit_edge [
    i8 0, label %lor.lhs.false.if.end_crit_edge
    i8 10, label %lor.lhs.false.if.end_crit_edge23
  ]

lor.lhs.false.if.end_crit_edge23:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp5 = icmp eq i32 %call1, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %call1)
  %cmp9 = icmp ugt i32 %call1, 65534
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %nd_set_attributes = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 8
  %call13 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %nd_set_attributes) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %conv17 = trunc i32 %call1 to i16
  %nd_ipv4_port = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 5
  %6 = ptrtoint ptr %nd_ipv4_port to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv17, ptr %nd_ipv4_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end16 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -34, %if.end8.cleanup_crit_edge ], [ -16, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_node_ipv4_address_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.23, ptr noundef %nd_ipv4_address)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_node_ipv4_address_store(ptr noundef %item, ptr nocapture noundef readonly %page, i32 noundef %count) #0 align 64 {
entry:
  %ip_needle.addr.i = alloca i32, align 4
  %octets = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %octets) #12
  %0 = getelementptr inbounds [4 x i32], ptr %octets, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %octets, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %octets, i32 0, i32 3
  %3 = call ptr @memset(ptr %octets, i32 255, i32 16)
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.24, ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %octets)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 4
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %octets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %octets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp7 = icmp ugt i32 %5, 255
  br i1 %cmp7, label %for.body.preheader.cleanup_crit_edge, label %if.end9

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %for.body.preheader
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp7.1 = icmp ugt i32 %7, 255
  br i1 %cmp7.1, label %if.end9.cleanup_crit_edge, label %if.end9.1

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9.1:                                        ; preds = %if.end9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %cmp7.2 = icmp ugt i32 %9, 255
  br i1 %cmp7.2, label %if.end9.1.cleanup_crit_edge, label %if.end9.2

if.end9.1.cleanup_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9.2:                                        ; preds = %if.end9.1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp7.3 = icmp ugt i32 %11, 255
  br i1 %cmp7.3, label %if.end9.2.cleanup_crit_edge, label %if.end9.3

if.end9.2.cleanup_crit_edge:                      ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9.3:                                        ; preds = %if.end9.2
  %shl.2 = shl nuw nsw i32 %9, 16
  %shl.1 = shl nuw nsw i32 %7, 8
  %add.i.1 = add nuw nsw i32 %shl.1, %5
  %add.i.2 = add nuw nsw i32 %shl.2, %add.i.1
  %shl.3 = shl nuw i32 %11, 24
  %add.i.3 = add nuw i32 %shl.3, %add.i.2
  call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.o2nm_cluster_group, ptr @o2nm_cluster_group, i32 0, i32 0, i32 1), i32 noundef 0) #12
  %ci_parent.i = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %ci_parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci_parent.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %if.end9.3.if.then12_crit_edge, label %to_o2nm_cluster_from_node.exit

if.end9.3.if.then12_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

to_o2nm_cluster_from_node.exit:                   ; preds = %if.end9.3
  %ci_parent3.i = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ci_parent3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci_parent3.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %to_o2nm_cluster_from_node.exit.if.then12_crit_edge, label %if.end13

to_o2nm_cluster_from_node.exit.if.then12_crit_edge: ; preds = %to_o2nm_cluster_from_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then12:                                        ; preds = %to_o2nm_cluster_from_node.exit.if.then12_crit_edge, %if.end9.3.if.then12_crit_edge
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.o2nm_cluster_group, ptr @o2nm_cluster_group, i32 0, i32 0, i32 1)) #12
  br label %cleanup

if.end13:                                         ; preds = %to_o2nm_cluster_from_node.exit
  %cl_nodes_lock = getelementptr inbounds %struct.o2nm_cluster, ptr %15, i32 0, i32 3
  call void @_raw_write_lock(ptr noundef %cl_nodes_lock) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_needle.addr.i)
  %16 = ptrtoint ptr %ip_needle.addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i.3, ptr %ip_needle.addr.i, align 4
  %cl_node_ip_tree.i = getelementptr inbounds %struct.o2nm_cluster, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %cl_node_ip_tree.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl_node_ip_tree.i, align 4
  %tobool.not33.i = icmp eq ptr %18, null
  br i1 %tobool.not33.i, label %if.end13.o2nm_node_ip_tree_lookup.exit.thread_crit_edge, label %if.end13.while.body.i_crit_edge

if.end13.while.body.i_crit_edge:                  ; preds = %if.end13
  br label %while.body.i

if.end13.o2nm_node_ip_tree_lookup.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_node_ip_tree_lookup.exit.thread

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end13.while.body.i_crit_edge
  %19 = phi ptr [ %21, %cleanup.i.while.body.i_crit_edge ], [ %18, %if.end13.while.body.i_crit_edge ]
  %p.034.i = phi ptr [ %p.2.i, %cleanup.i.while.body.i_crit_edge ], [ %cl_node_ip_tree.i, %if.end13.while.body.i_crit_edge ]
  %nd_ipv4_address.i = getelementptr i8, ptr %19, i32 -8
  %call.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(4) %ip_needle.addr.i, ptr noundef dereferenceable(4) %nd_ipv4_address.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then.i50, label %if.else.i

if.then.i50:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %o2nm_node_ip_tree_lookup.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i50
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i50 ], [ %rb_right.i, %if.then3.i ]
  %20 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i51 = icmp eq ptr %21, null
  br i1 %tobool.not.i51, label %cleanup.i.o2nm_node_ip_tree_lookup.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.o2nm_node_ip_tree_lookup.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %o2nm_node_ip_tree_lookup.exit.thread

o2nm_node_ip_tree_lookup.exit.thread:             ; preds = %cleanup.i.o2nm_node_ip_tree_lookup.exit.thread_crit_edge, %if.end13.o2nm_node_ip_tree_lookup.exit.thread_crit_edge
  %p.0.lcssa.i.ph = phi ptr [ %cl_node_ip_tree.i, %if.end13.o2nm_node_ip_tree_lookup.exit.thread_crit_edge ], [ %p.2.i, %cleanup.i.o2nm_node_ip_tree_lookup.exit.thread_crit_edge ]
  %parent.1.i.ph = phi ptr [ null, %if.end13.o2nm_node_ip_tree_lookup.exit.thread_crit_edge ], [ %19, %cleanup.i.o2nm_node_ip_tree_lookup.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_needle.addr.i)
  br label %if.else

o2nm_node_ip_tree_lookup.exit:                    ; preds = %if.else.i
  %add.ptr.le.i = getelementptr i8, ptr %19, i32 -172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_needle.addr.i)
  %tobool15.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool15.not, label %o2nm_node_ip_tree_lookup.exit.if.else_crit_edge, label %o2nm_node_ip_tree_lookup.exit.if.end23_crit_edge

o2nm_node_ip_tree_lookup.exit.if.end23_crit_edge: ; preds = %o2nm_node_ip_tree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

o2nm_node_ip_tree_lookup.exit.if.else_crit_edge:  ; preds = %o2nm_node_ip_tree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %o2nm_node_ip_tree_lookup.exit.if.else_crit_edge, %o2nm_node_ip_tree_lookup.exit.thread
  %parent.1.i63 = phi ptr [ %parent.1.i.ph, %o2nm_node_ip_tree_lookup.exit.thread ], [ %19, %o2nm_node_ip_tree_lookup.exit.if.else_crit_edge ]
  %p.0.lcssa.i62 = phi ptr [ %p.0.lcssa.i.ph, %o2nm_node_ip_tree_lookup.exit.thread ], [ %p.034.i, %o2nm_node_ip_tree_lookup.exit.if.else_crit_edge ]
  %nd_set_attributes = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 8
  %call17 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %nd_set_attributes) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else20, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %nd_ip_node = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 6
  %22 = ptrtoint ptr %parent.1.i63 to i32
  %23 = ptrtoint ptr %nd_ip_node to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %nd_ip_node, align 4
  %rb_right.i52 = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %rb_right.i52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_right.i52, align 4
  %rb_left.i53 = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %rb_left.i53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_left.i53, align 4
  %26 = ptrtoint ptr %p.0.lcssa.i62 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %nd_ip_node, ptr %p.0.lcssa.i62, align 4
  call void @rb_insert_color(ptr noundef %nd_ip_node, ptr noundef %cl_node_ip_tree.i) #12
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.else.if.end23_crit_edge, %o2nm_node_ip_tree_lookup.exit.if.end23_crit_edge
  %tobool25.not = phi i1 [ true, %if.else20 ], [ false, %o2nm_node_ip_tree_lookup.exit.if.end23_crit_edge ], [ false, %if.else.if.end23_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.else20 ], [ -17, %o2nm_node_ip_tree_lookup.exit.if.end23_crit_edge ], [ -16, %if.else.if.end23_crit_edge ]
  call void @_raw_write_unlock(ptr noundef %cl_nodes_lock) #12
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.o2nm_cluster_group, ptr @o2nm_cluster_group, i32 0, i32 0, i32 1)) #12
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %nd_ipv4_address = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 4
  %27 = ptrtoint ptr %nd_ipv4_address to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i.3, ptr %nd_ipv4_address, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge, %if.then12, %if.end9.2.cleanup_crit_edge, %if.end9.1.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end27 ], [ -22, %if.then12 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.end23.cleanup_crit_edge ], [ -34, %if.end9.2.cleanup_crit_edge ], [ -34, %if.end9.1.cleanup_crit_edge ], [ -34, %if.end9.cleanup_crit_edge ], [ -34, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %octets) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_node_local_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %nd_local = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 7
  %0 = ptrtoint ptr %nd_local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nd_local, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2nm_node_local_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #12
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %p, align 4
  %call1 = call i32 @simple_strtoul(ptr noundef %page, ptr noundef nonnull %p, i32 noundef 0) #12
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %4, label %lor.lhs.false.cleanup_crit_edge [
    i8 0, label %lor.lhs.false.if.end_crit_edge
    i8 10, label %lor.lhs.false.if.end_crit_edge118
  ]

lor.lhs.false.if.end_crit_edge118:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool5 = icmp ne i32 %call1, 0
  %lnot.ext = zext i1 %tobool5 to i32
  %nd_set_attributes = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 8
  %6 = ptrtoint ptr %nd_set_attributes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %nd_set_attributes, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end
  %9 = ptrtoint ptr %nd_set_attributes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %nd_set_attributes, align 4
  %and1.i110 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i110)
  %tobool12.not = icmp eq i32 %and1.i110, 0
  br i1 %tobool12.not, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false13

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %11 = ptrtoint ptr %nd_set_attributes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %nd_set_attributes, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %lor.lhs.false13.cleanup_crit_edge, label %if.end18

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false13
  call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.o2nm_cluster_group, ptr @o2nm_cluster_group, i32 0, i32 0, i32 1), i32 noundef 0) #12
  %ci_parent.i = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %ci_parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci_parent.i, align 4
  %tobool.not.i113 = icmp eq ptr %15, null
  br i1 %tobool.not.i113, label %if.end18.out_crit_edge, label %to_o2nm_cluster_from_node.exit

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

to_o2nm_cluster_from_node.exit:                   ; preds = %if.end18
  %ci_parent3.i = getelementptr inbounds %struct.config_item, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ci_parent3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ci_parent3.i, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %to_o2nm_cluster_from_node.exit.out_crit_edge, label %if.end22

to_o2nm_cluster_from_node.exit.out_crit_edge:     ; preds = %to_o2nm_cluster_from_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end22:                                         ; preds = %to_o2nm_cluster_from_node.exit
  %cl_has_local = getelementptr inbounds %struct.o2nm_cluster, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cl_has_local to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %cl_has_local, align 4
  br i1 %tobool5, label %land.lhs.true24, label %land.lhs.true48.critedge

land.lhs.true24:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp25 = icmp slt i8 %bf.load, 0
  br i1 %cmp25, label %land.lhs.true27, label %if.then41

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %cl_local_node = getelementptr inbounds %struct.o2nm_cluster, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %cl_local_node to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cl_local_node, align 1
  %nd_num = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 3
  %21 = ptrtoint ptr %nd_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nd_num, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp30.not = icmp eq i8 %20, %22
  br i1 %cmp30.not, label %land.lhs.true27.if.then66_crit_edge, label %land.lhs.true27.out_crit_edge

land.lhs.true27.out_crit_edge:                    ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true27.if.then66_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.then41:                                        ; preds = %land.lhs.true24
  %call42 = call i32 @o2net_start_listening(ptr noundef %spec.select.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then41.if.then66_crit_edge, label %if.then41.out_crit_edge

if.then41.out_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then41.if.then66_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

land.lhs.true48.critedge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool53.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool53.not, label %if.end71.critedge108, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true48.critedge
  %cl_local_node55 = getelementptr inbounds %struct.o2nm_cluster, ptr %17, i32 0, i32 2
  %23 = ptrtoint ptr %cl_local_node55 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cl_local_node55, align 1
  %nd_num57 = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 3
  %25 = ptrtoint ptr %nd_num57 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nd_num57, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp59 = icmp eq i8 %24, %26
  br i1 %cmp59, label %if.then61, label %if.end71.critedge106

if.then61:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  call void @o2net_stop_listening(ptr noundef %spec.select.i) #12
  %27 = ptrtoint ptr %cl_local_node55 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %cl_local_node55, align 1
  %nd_local.c105 = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 7
  %28 = ptrtoint ptr %nd_local.c105 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %lnot.ext, ptr %nd_local.c105, align 4
  br label %out

if.then66:                                        ; preds = %if.then41.if.then66_crit_edge, %land.lhs.true27.if.then66_crit_edge
  %nd_local.c104 = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 7
  %29 = ptrtoint ptr %nd_local.c104 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %lnot.ext, ptr %nd_local.c104, align 4
  %30 = ptrtoint ptr %cl_has_local to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load68 = load i8, ptr %cl_has_local, align 4
  %bf.set = or i8 %bf.load68, -128
  store i8 %bf.set, ptr %cl_has_local, align 4
  %nd_num69 = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 3
  %31 = ptrtoint ptr %nd_num69 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nd_num69, align 1
  %cl_local_node70 = getelementptr inbounds %struct.o2nm_cluster, ptr %17, i32 0, i32 2
  %33 = ptrtoint ptr %cl_local_node70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %cl_local_node70, align 1
  br label %out

if.end71.critedge106:                             ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  %nd_local.c107 = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 7
  %34 = ptrtoint ptr %nd_local.c107 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %lnot.ext, ptr %nd_local.c107, align 4
  br label %out

if.end71.critedge108:                             ; preds = %land.lhs.true48.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %nd_local.c109 = getelementptr inbounds %struct.o2nm_node, ptr %spec.select.i, i32 0, i32 7
  %35 = ptrtoint ptr %nd_local.c109 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %lnot.ext, ptr %nd_local.c109, align 4
  br label %out

out:                                              ; preds = %if.end71.critedge108, %if.end71.critedge106, %if.then66, %if.then61, %if.then41.out_crit_edge, %land.lhs.true27.out_crit_edge, %to_o2nm_cluster_from_node.exit.out_crit_edge, %if.end18.out_crit_edge
  %ret.0 = phi i32 [ %call42, %if.then41.out_crit_edge ], [ -22, %to_o2nm_cluster_from_node.exit.out_crit_edge ], [ -16, %land.lhs.true27.out_crit_edge ], [ %count, %if.end71.critedge108 ], [ %count, %if.end71.critedge106 ], [ %count, %if.then61 ], [ %count, %if.then66 ], [ -22, %if.end18.out_crit_edge ]
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.o2nm_cluster_group, ptr @o2nm_cluster_group, i32 0, i32 0, i32 1)) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_start_listening(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_stop_listening(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_disconnect_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_remove_default_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_register_hb_callbacks() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2cb_sys_init() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !58, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !82, !84, !86, !87, !89, !90, !92, !94, !96, !98, !99, !101, !103, !104, !106, !107, !109, !111, !113, !114, !116, !117, !119, !120, !122, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @o2nm_single_cluster, !1, !"o2nm_single_cluster", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 20, i32 22}
!2 = !{ptr @__ksymtab_o2nm_get_node_by_num, !3, !"__ksymtab_o2nm_get_node_by_num", i1 false, i1 false}
!3 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 45, i32 1}
!4 = !{ptr @__ksymtab_o2nm_configured_node_map, !5, !"__ksymtab_o2nm_configured_node_map", i1 false, i1 false}
!5 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 62, i32 1}
!6 = !{ptr @__ksymtab_o2nm_get_node_by_ip, !7, !"__ksymtab_o2nm_get_node_by_ip", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 116, i32 1}
!8 = !{ptr @__ksymtab_o2nm_node_put, !9, !"__ksymtab_o2nm_node_put", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 122, i32 1}
!10 = !{ptr @__ksymtab_o2nm_node_get, !11, !"__ksymtab_o2nm_node_get", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 128, i32 1}
!12 = !{ptr @__ksymtab_o2nm_this_node, !13, !"__ksymtab_o2nm_this_node", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 139, i32 1}
!14 = !{ptr @__UNIQUE_ID_author472, !15, !"__UNIQUE_ID_author472", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 862, i32 1}
!16 = !{ptr @__UNIQUE_ID_file473, !17, !"__UNIQUE_ID_file473", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 863, i32 1}
!18 = !{ptr @__UNIQUE_ID_license474, !17, !"__UNIQUE_ID_license474", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description475, !20, !"__UNIQUE_ID_description475", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 864, i32 1}
!21 = !{ptr @__initcall__kmod_ocfs2_nodemanager__476_866_init_o2nm6, !22, !"__initcall__kmod_ocfs2_nodemanager__476_866_init_o2nm6", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 866, i32 1}
!23 = !{ptr @__exitcall_exit_o2nm, !24, !"__exitcall_exit_o2nm", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 867, i32 1}
!25 = !{ptr @o2nm_cluster_group, !26, !"o2nm_cluster_group", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 753, i32 34}
!27 = !{ptr @o2nm_cluster_group_type, !28, !"o2nm_cluster_group_type", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 748, i32 38}
!29 = !{ptr @o2nm_cluster_group_group_ops, !30, !"o2nm_cluster_group_group_ops", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 743, i32 41}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 707, i32 45}
!33 = !{ptr @o2nm_cluster_group_make_group.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 711, i32 2}
!35 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @o2nm_cluster_type, !37, !"o2nm_cluster_type", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 663, i32 38}
!38 = !{ptr @o2nm_cluster_item_ops, !39, !"o2nm_cluster_item_ops", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 659, i32 40}
!40 = !{ptr @o2nm_cluster_attrs, !41, !"o2nm_cluster_attrs", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 573, i32 35}
!42 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 568, i32 1}
!44 = !{ptr @o2nm_cluster_attr_idle_timeout_ms, !43, !"o2nm_cluster_attr_idle_timeout_ms", i1 false, i1 false}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 447, i32 23}
!47 = !{ptr @__func__.o2nm_cluster_idle_timeout_ms_store, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 462, i32 4}
!49 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 469, i32 4}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 569, i32 1}
!54 = !{ptr @o2nm_cluster_attr_keepalive_delay_ms, !53, !"o2nm_cluster_attr_keepalive_delay_ms", i1 false, i1 false}
!55 = !{ptr @__func__.o2nm_cluster_keepalive_delay_ms_store, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 499, i32 4}
!57 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 506, i32 4}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 570, i32 1}
!62 = !{ptr @o2nm_cluster_attr_reconnect_delay_ms, !61, !"o2nm_cluster_attr_reconnect_delay_ms", i1 false, i1 false}
!63 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 571, i32 1}
!65 = !{ptr @o2nm_cluster_attr_fence_method, !64, !"o2nm_cluster_attr_fence_method", i1 false, i1 false}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 538, i32 23}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 23, i32 2}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 24, i32 2}
!72 = !{ptr @o2nm_fence_method_desc, !73, !"o2nm_fence_method_desc", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 22, i32 20}
!74 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 557, i32 4}
!76 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @o2nm_cluster_fence_method_store._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @o2nm_cluster_fence_method_store._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @o2nm_node_group_type, !81, !"o2nm_node_group_type", i1 false, i1 false}
!81 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 645, i32 38}
!82 = !{ptr @o2nm_node_group_group_ops, !83, !"o2nm_node_group_group_ops", i1 false, i1 false}
!83 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 640, i32 41}
!84 = !{ptr @o2nm_node_group_make_item.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 595, i32 2}
!86 = !{ptr @.str.17, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @__func__.o2nm_node_group_make_item, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 597, i32 2}
!89 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @o2nm_node_type, !91, !"o2nm_node_type", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 402, i32 38}
!92 = !{ptr @o2nm_node_item_ops, !93, !"o2nm_node_item_ops", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 398, i32 40}
!94 = !{ptr @o2nm_node_attrs, !95, !"o2nm_node_attrs", i1 false, i1 false}
!95 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 390, i32 35}
!96 = !{ptr @.str.19, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 385, i32 1}
!98 = !{ptr @o2nm_node_attr_num, !97, !"o2nm_node_attr_num", i1 false, i1 false}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 164, i32 23}
!101 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 386, i32 1}
!103 = !{ptr @o2nm_node_attr_ipv4_port, !102, !"o2nm_node_attr_ipv4_port", i1 false, i1 false}
!104 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 387, i32 1}
!106 = !{ptr @o2nm_node_attr_ipv4_address, !105, !"o2nm_node_attr_ipv4_address", i1 false, i1 false}
!107 = !{ptr @.str.23, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 263, i32 23}
!109 = !{ptr @.str.24, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 277, i32 21}
!111 = !{ptr @.str.25, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 388, i32 1}
!113 = !{ptr @o2nm_node_attr_local, !112, !"o2nm_node_attr_local", i1 false, i1 false}
!114 = !{ptr @__func__.o2nm_node_group_drop_item, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 634, i32 2}
!116 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @init_o2nm.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 840, i32 2}
!119 = !{ptr @.str.27, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.28, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ocfs2/cluster/nodemanager.c", i32 843, i32 3}
!122 = !{ptr @.str.29, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @init_o2nm._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @init_o2nm._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2156993653, i64 2156994147, i64 2156993690, i64 2156993746, i64 2156993780, i64 2156993804, i64 2156993845, i64 2156993866, i64 2156993894, i64 2156993928}
!136 = !{i64 2157023675, i64 2157024170, i64 2157023712, i64 2157023768, i64 2157023802, i64 2157023826, i64 2157023867, i64 2157023888, i64 2157023916, i64 2157023950}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{i64 2157021624, i64 2157022119, i64 2157021661, i64 2157021717, i64 2157021751, i64 2157021775, i64 2157021816, i64 2157021837, i64 2157021865, i64 2157021899}
