; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/stm/policy.c_pt.bc'
source_filename = "../drivers/hwtracing/stm/policy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+to_pdrv_policy_node\22, \22a\22\09"
module asm "\09.weak\09__crc_to_pdrv_policy_node\09\09\09\09"
module asm "\09.long\09__crc_to_pdrv_policy_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_to_pdrv_policy_node:\09\09\09\09\09"
module asm "\09.asciz \09\22to_pdrv_policy_node\22\09\09\09\09\09"
module asm "__kstrtabns_to_pdrv_policy_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.stp_policy_node = type { %struct.config_group, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.stp_policy = type { %struct.config_group, ptr }
%struct.stm_device = type { %struct.device, ptr, ptr, %struct.mutex, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, %struct.spinlock, [0 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.stm_data = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stm_protocol_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }

@__kstrtab_to_pdrv_policy_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_to_pdrv_policy_node = external dso_local constant [0 x i8], align 1
@__ksymtab_to_pdrv_policy_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @to_pdrv_policy_node to i32), ptr @__kstrtab_to_pdrv_policy_node, ptr @__kstrtabns_to_pdrv_policy_node }, section "___ksymtab_gpl+to_pdrv_policy_node", align 4
@stp_policy_node_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @stp_policy_node_item_ops, ptr @stp_policy_node_group_ops, ptr @stp_policy_node_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@stp_policy_node_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @stp_policy_node_attr_masters, ptr @stp_policy_node_attr_channels, ptr null], [20 x i8] zeroinitializer }, align 32
@stp_policy_unbind.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwtracing/stm/policy.c\00", [33 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@stp_policy_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"stp-policy\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @stp_policy_root_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@stp_configfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&stp_policy_subsys.su_mutex\00", [36 x i8] zeroinitializer }, align 32
@stp_policy_node_attr_masters = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 420, ptr @stp_policy_node_masters_show, ptr @stp_policy_node_masters_store }, [44 x i8] zeroinitializer }, align 32
@stp_policy_node_attr_channels = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @stp_policy_node_channels_show, ptr @stp_policy_node_channels_store }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"masters\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u %u\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@stp_policy_node_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @stp_policy_node_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@stp_policy_node_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @stp_policy_node_make, ptr null, ptr null, ptr @stp_policy_node_drop }, [44 x i8] zeroinitializer }, align 32
@stp_policy_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @stp_policy_item_ops, ptr @stp_policy_group_ops, ptr @stp_policy_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@stp_policy_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @stp_policy_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@stp_policy_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @stp_policy_node_make, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@stp_policy_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @stp_policy_attr_device, ptr @stp_policy_attr_protocol, ptr null], [20 x i8] zeroinitializer }, align 32
@stp_policy_attr_device = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 292, ptr @stp_policy_device_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@stp_policy_attr_protocol = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 292, ptr @stp_policy_protocol_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<none>\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"protocol\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stp_policy_root_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @stp_policy_root_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@stp_policy_root_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @stp_policy_make, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"stp_policy_node_type\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 278, i32 38 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"stp_policy_node_attrs\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 191, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 335, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"stp_policy_subsys\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 478, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 563, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [29 x i8] c"stp_policy_node_attr_masters\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [30 x i8] c"stp_policy_node_attr_channels\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 188, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 90, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 106, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 189, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"stp_policy_node_item_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 184, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"stp_policy_node_group_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 273, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"stp_policy_type\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 375, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"stp_policy_item_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 367, i32 40 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"stp_policy_group_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 371, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"stp_policy_attrs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 320, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [23 x i8] c"stp_policy_attr_device\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"stp_policy_attr_protocol\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 302, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 294, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 297, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 318, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"stp_policy_root_type\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 473, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"stp_policy_root_group_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 469, i32 41 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 392, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [34 x i8] c"../drivers/hwtracing/stm/policy.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 503, i32 24 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_to_pdrv_policy_node, ptr @stp_configfs_exit, ptr @stp_policy_node_type, ptr @stp_policy_node_attrs, ptr @.str, ptr @stp_policy_subsys, ptr @stp_configfs_init.__key, ptr @.str.1, ptr @stp_policy_node_attr_masters, ptr @stp_policy_node_attr_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stp_policy_node_item_ops, ptr @stp_policy_node_group_ops, ptr @stp_policy_type, ptr @stp_policy_item_ops, ptr @stp_policy_group_ops, ptr @stp_policy_attrs, ptr @stp_policy_attr_device, ptr @stp_policy_attr_protocol, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @stp_policy_root_type, ptr @stp_policy_root_group_ops, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_node_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_node_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_configfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_node_attr_masters to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_node_attr_channels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_node_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_node_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_attr_device to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_attr_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_root_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_policy_root_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @stp_policy_node_priv(ptr noundef readnone %pn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pn, null
  %priv = getelementptr inbounds %struct.stp_policy_node, ptr %pn, i32 0, i32 6
  %retval.0 = select i1 %tobool.not, ptr null, ptr %priv
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @stp_policy_node_get_ranges(ptr nocapture noundef readonly %policy_node, ptr nocapture noundef writeonly %mstart, ptr nocapture noundef writeonly %mend, ptr nocapture noundef writeonly %cstart, ptr nocapture noundef writeonly %cend) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_master = getelementptr inbounds %struct.stp_policy_node, ptr %policy_node, i32 0, i32 2
  %0 = ptrtoint ptr %first_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_master, align 4
  %2 = ptrtoint ptr %mstart to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mstart, align 4
  %last_master = getelementptr inbounds %struct.stp_policy_node, ptr %policy_node, i32 0, i32 3
  %3 = ptrtoint ptr %last_master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_master, align 4
  %5 = ptrtoint ptr %mend to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mend, align 4
  %first_channel = getelementptr inbounds %struct.stp_policy_node, ptr %policy_node, i32 0, i32 4
  %6 = ptrtoint ptr %first_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_channel, align 4
  %8 = ptrtoint ptr %cstart to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cstart, align 4
  %last_channel = getelementptr inbounds %struct.stp_policy_node, ptr %policy_node, i32 0, i32 5
  %9 = ptrtoint ptr %last_channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_channel, align 4
  %11 = ptrtoint ptr %cend to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cend, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @to_pdrv_policy_node(ptr noundef readnone %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %priv.i = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 6
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %priv.i
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_policy_node_type(ptr noundef %attrs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef nonnull @stp_policy_node_type, i32 noundef 20, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call ptr @__memcat_p(ptr noundef nonnull @stp_policy_node_attrs, ptr noundef %attrs) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %ct_attrs = getelementptr inbounds %struct.config_item_type, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %ct_attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %ct_attrs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcat_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stp_policy_unbind(ptr nocapture noundef %policy) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stm1 = getelementptr inbounds %struct.stp_policy, ptr %policy, i32 0, i32 1
  %0 = ptrtoint ptr %stm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stm1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %do.body42

land.rhs:                                         ; preds = %entry
  %.b92 = load i1, ptr @stp_policy_unbind.__already_done, align 1
  br i1 %.b92, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !63

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @stp_policy_unbind.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body42:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool44.not = icmp eq i32 %2, 0
  br i1 %tobool44.not, label %do.body42.if.end70_crit_edge, label %land.rhs45

do.body42.if.end70_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

land.rhs45:                                       ; preds = %do.body42
  %dep_map = getelementptr inbounds %struct.stm_device, ptr %1, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end64, label %land.rhs45.if.end70_crit_edge, !prof !64

land.rhs45.if.end70_crit_edge:                    ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

do.end64:                                         ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 9, ptr noundef null) #11
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %land.rhs45.if.end70_crit_edge, %do.body42.if.end70_crit_edge
  %policy80 = getelementptr inbounds %struct.stm_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %policy80 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %policy80, align 4
  %4 = ptrtoint ptr %stm1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stm1, align 4
  %pdrv = getelementptr inbounds %struct.stm_device, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %pdrv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdrv, align 8
  tail call void @stm_put_protocol(ptr noundef %6) #11
  %7 = ptrtoint ptr %pdrv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pdrv, align 8
  tail call void @stm_put_device(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm_put_protocol(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm_put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stp_policy_node_lookup(ptr noundef %stm, ptr noundef %s) local_unnamed_addr #3 align 64 {
entry:
  %end.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1), i32 noundef 0) #11
  %policy_mutex = getelementptr inbounds %struct.stm_device, ptr %stm, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %policy_mutex, i32 noundef 0) #11
  %policy = getelementptr inbounds %struct.stm_device, ptr %stm, i32 0, i32 2
  %0 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else.sink.split_crit_edge, label %if.then

entry.if.else.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.sink.split

if.then:                                          ; preds = %entry
  %cg_children.i = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #11
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %s, ptr %end.i, align 4
  %3 = ptrtoint ptr %cg_children.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %cg_children.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %cg_children.i
  br i1 %cmp.i.not.i, label %if.end.thread16, label %if.then.next.i_crit_edge

if.then.next.i_crit_edge:                         ; preds = %if.then
  br label %next.i

if.end.thread16:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #11
  br label %if.else.sink.split

next.i:                                           ; preds = %if.then14.i.next.i_crit_edge, %if.then.next.i_crit_edge
  %head.0.i = phi ptr [ %cg_children19.i, %if.then14.i.next.i_crit_edge ], [ %cg_children.i, %if.then.next.i_crit_edge ]
  %ret.0.i = phi ptr [ %item.0.i.le, %if.then14.i.next.i_crit_edge ], [ null, %if.then.next.i_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end4.i.for.cond.i_crit_edge, %next.i
  %call1.i = call ptr @strsep(ptr noundef nonnull %end.i, ptr noundef nonnull @.str.11) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %for.cond.i.if.end_crit_edge, label %if.end4.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end4.i:                                        ; preds = %for.cond.i
  %5 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call1.i, align 1
  %tobool5.not.i = icmp eq i8 %6, 0
  br i1 %tobool5.not.i, label %if.end4.i.for.cond.i_crit_edge, label %if.end4.i.for.cond9.i_crit_edge

if.end4.i.for.cond9.i_crit_edge:                  ; preds = %if.end4.i
  br label %for.cond9.i

if.end4.i.for.cond.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.cond9.i:                                      ; preds = %for.body.i.for.cond9.i_crit_edge, %if.end4.i.for.cond9.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond9.i_crit_edge ], [ %head.0.i, %if.end4.i.for.cond9.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head.0.i
  br i1 %cmp.not.i, label %for.cond9.i.if.end_crit_edge, label %for.body.i

for.cond9.i.if.end_crit_edge:                     ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.cond9.i
  %item.0.i = getelementptr i8, ptr %.pn.i, i32 -28
  %8 = ptrtoint ptr %item.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %item.0.i, align 4
  %call12.i = call i32 @strcmp(ptr noundef nonnull %call1.i, ptr noundef %9) #14
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %for.body.i.for.cond9.i_crit_edge

for.body.i.for.cond9.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9.i

if.then14.i:                                      ; preds = %for.body.i
  %item.0.i.le = getelementptr i8, ptr %.pn.i, i32 -28
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %tobool15.not.i = icmp eq ptr %11, null
  %cg_children19.i = getelementptr i8, ptr %.pn.i, i32 24
  br i1 %tobool15.not.i, label %if.then14.i.if.end_crit_edge, label %if.then14.i.next.i_crit_edge

if.then14.i.next.i_crit_edge:                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next.i

if.then14.i.if.end_crit_edge:                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.then14.i.if.end_crit_edge, %for.cond9.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %retval.0.i = phi ptr [ %ret.0.i, %for.cond9.i.if.end_crit_edge ], [ %ret.0.i, %for.cond.i.if.end_crit_edge ], [ %item.0.i.le, %if.then14.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #11
  call void @mutex_unlock(ptr noundef %policy_mutex) #11
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %if.end.if.else_crit_edge, label %if.then4

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call ptr @config_item_get(ptr noundef nonnull %retval.0.i) #11
  br label %if.end6

if.else.sink.split:                               ; preds = %if.end.thread16, %entry.if.else.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %policy_mutex) #11
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %if.end.if.else_crit_edge
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1)) #11
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %policy_node.014 = phi ptr [ null, %if.else ], [ %retval.0.i, %if.then4 ]
  ret ptr %policy_node.014
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_item_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stp_policy_node_put(ptr noundef %policy_node) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1, i32 5), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !64

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 554, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1)) #11
  tail call void @config_item_put(ptr noundef %policy_node) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stp_configfs_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef nonnull @stp_policy_subsys) #11
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1), ptr noundef nonnull @.str.1, ptr noundef nonnull @stp_configfs_init.__key) #11
  %call = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @stp_policy_subsys) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @stp_configfs_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @stp_policy_subsys) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_policy_node_masters_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_master = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %first_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_master, align 4
  %last_master = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 3
  %2 = ptrtoint ptr %last_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_master, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_policy_node_masters_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %count) #3 align 64 {
entry:
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first) #11
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %first, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #11
  %1 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %last, align 4, !annotation !65
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.4, ptr noundef nonnull %first, ptr noundef nonnull %last)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1), i32 noundef 0) #11
  %policy = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy, align 4
  %stm2 = getelementptr inbounds %struct.stp_policy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stm2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.end4

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first, align 4
  %8 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5 = icmp ugt i32 %7, %9
  br i1 %cmp5, label %if.end4.unlock_crit_edge, label %lor.lhs.false

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false:                                    ; preds = %if.end4
  %data = getelementptr inbounds %struct.stm_device, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %sw_start = getelementptr inbounds %struct.stm_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %sw_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sw_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp6 = icmp ult i32 %7, %13
  br i1 %cmp6, label %lor.lhs.false.unlock_crit_edge, label %lor.lhs.false7

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %sw_end = getelementptr inbounds %struct.stm_data, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %sw_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sw_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp9 = icmp ugt i32 %9, %15
  br i1 %cmp9, label %lor.lhs.false7.unlock_crit_edge, label %if.end11

lor.lhs.false7.unlock_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end11:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  %first_master = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 2
  %16 = ptrtoint ptr %first_master to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %first_master, align 4
  %last_master = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 3
  %17 = ptrtoint ptr %last_master to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %9, ptr %last_master, align 4
  br label %unlock

unlock:                                           ; preds = %if.end11, %lor.lhs.false7.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %if.end4.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %count, %if.end11 ], [ -19, %if.end.unlock_crit_edge ], [ -34, %lor.lhs.false7.unlock_crit_edge ], [ -34, %lor.lhs.false.unlock_crit_edge ], [ -34, %if.end4.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1)) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_policy_node_channels_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %first_channel = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %first_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_channel, align 4
  %last_channel = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 5
  %2 = ptrtoint ptr %last_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_channel, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_policy_node_channels_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %count) #3 align 64 {
entry:
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first) #11
  %0 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %first, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #11
  %1 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %last, align 4, !annotation !65
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.4, ptr noundef nonnull %first, ptr noundef nonnull %last)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1), i32 noundef 0) #11
  %policy = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy, align 4
  %stm2 = getelementptr inbounds %struct.stp_policy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stm2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.end4

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.end4.unlock_crit_edge, label %lor.lhs.false

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false:                                    ; preds = %if.end4
  %8 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp slt i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8 = icmp ugt i32 %7, %9
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  br i1 %or.cond, label %lor.lhs.false.unlock_crit_edge, label %lor.lhs.false9

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.stm_device, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %sw_nchannels = getelementptr inbounds %struct.stm_data, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %sw_nchannels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sw_nchannels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp10.not = icmp ult i32 %9, %13
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false9.unlock_crit_edge

lor.lhs.false9.unlock_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end12:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  %first_channel = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 4
  %14 = ptrtoint ptr %first_channel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %first_channel, align 4
  %last_channel = getelementptr inbounds %struct.stp_policy_node, ptr %item, i32 0, i32 5
  %15 = ptrtoint ptr %last_channel to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %last_channel, align 4
  br label %unlock

unlock:                                           ; preds = %if.end12, %lor.lhs.false9.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %if.end4.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %count, %if.end12 ], [ -19, %if.end.unlock_crit_edge ], [ -34, %lor.lhs.false9.unlock_crit_edge ], [ -34, %lor.lhs.false.unlock_crit_edge ], [ -34, %if.end4.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @stp_policy_subsys, i32 0, i32 1)) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stp_policy_node_release(ptr noundef %item) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %item) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stp_policy_node_make(ptr noundef %group, ptr noundef %name) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_type = getelementptr inbounds %struct.config_item, ptr %group, i32 0, i32 6
  %0 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_type, align 4
  %cmp = icmp eq ptr %1, @stp_policy_type
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %policy4 = getelementptr inbounds %struct.stp_policy_node, ptr %group, i32 0, i32 1
  %2 = ptrtoint ptr %policy4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %policy.0 = phi ptr [ %3, %if.else ], [ %group, %entry.if.end_crit_edge ]
  %stm = getelementptr inbounds %struct.stp_policy, ptr %policy.0, i32 0, i32 1
  %4 = ptrtoint ptr %stm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stm, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pdrv8 = getelementptr inbounds %struct.stm_device, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %pdrv8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdrv8, align 8
  %priv_sz = getelementptr inbounds %struct.stm_protocol_driver, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %priv_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priv_sz, align 4
  %10 = add i32 %9, 100
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #15
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %policy_node_init = getelementptr inbounds %struct.stm_protocol_driver, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %policy_node_init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %policy_node_init, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %priv = getelementptr inbounds %struct.stp_policy_node, ptr %call9.i.i, i32 0, i32 6
  tail call void %12(ptr noundef %priv) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %13 = ptrtoint ptr %stm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stm, align 4
  %pdrv_node_type = getelementptr inbounds %struct.stm_device, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %pdrv_node_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdrv_node_type, align 4
  %tobool19.not = icmp eq ptr %16, null
  %spec.select = select i1 %tobool19.not, ptr @stp_policy_node_type, ptr %16
  tail call void @config_group_init_type_name(ptr noundef nonnull %call9.i.i, ptr noundef %name, ptr noundef nonnull %spec.select) #11
  %policy25 = getelementptr inbounds %struct.stp_policy_node, ptr %call9.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %policy25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %policy.0, ptr %policy25, align 16
  %18 = ptrtoint ptr %stm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stm, align 4
  %data = getelementptr inbounds %struct.stm_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %sw_start = getelementptr inbounds %struct.stm_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %sw_start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sw_start, align 4
  %first_master = getelementptr inbounds %struct.stp_policy_node, ptr %call9.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %first_master to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %first_master, align 4
  %25 = load ptr, ptr %stm, align 4
  %data28 = getelementptr inbounds %struct.stm_device, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data28, align 4
  %sw_end = getelementptr inbounds %struct.stm_data, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %sw_end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sw_end, align 4
  %last_master = getelementptr inbounds %struct.stp_policy_node, ptr %call9.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %last_master to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %last_master, align 8
  %first_channel = getelementptr inbounds %struct.stp_policy_node, ptr %call9.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %first_channel to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %first_channel, align 4
  %32 = load ptr, ptr %stm, align 4
  %data30 = getelementptr inbounds %struct.stm_device, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data30, align 4
  %sw_nchannels = getelementptr inbounds %struct.stm_data, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %sw_nchannels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sw_nchannels, align 4
  %sub = add i32 %36, -1
  %last_channel = getelementptr inbounds %struct.stp_policy_node, ptr %call9.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %last_channel to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %last_channel, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end17 ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stp_policy_node_drop(ptr nocapture noundef readnone %group, ptr noundef %item) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_item_put(ptr noundef %item) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stp_policy_release(ptr noundef %item) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stm1 = getelementptr inbounds %struct.stp_policy, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %stm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stm1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %policy_mutex = getelementptr inbounds %struct.stm_device, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %policy_mutex, i32 noundef 0) #11
  tail call void @stp_policy_unbind(ptr noundef %item)
  tail call void @mutex_unlock(ptr noundef %policy_mutex) #11
  tail call void @kfree(ptr noundef %item) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_policy_device_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %item, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %stm = getelementptr inbounds %struct.stp_policy, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %stm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stm, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.stm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ @.str.8, %land.lhs.true.cond.end_crit_edge ], [ @.str.8, %entry.cond.end_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, ptr noundef %cond)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_policy_protocol_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %item, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %stm = getelementptr inbounds %struct.stp_policy, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %stm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stm, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %pdrv = getelementptr inbounds %struct.stm_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pdrv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdrv, align 8
  %name = getelementptr inbounds %struct.stm_protocol_driver, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ @.str.8, %land.lhs.true.cond.end_crit_edge ], [ @.str.8, %entry.cond.end_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, ptr noundef %cond)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stp_policy_make(ptr nocapture noundef readnone %group, ptr noundef %name) #3 align 64 {
entry:
  %pdrv_node_type = alloca ptr, align 4
  %pdrv = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdrv_node_type) #11
  %0 = ptrtoint ptr %pdrv_node_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pdrv_node_type, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdrv) #11
  %1 = ptrtoint ptr %pdrv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %pdrv, align 4, !annotation !65
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, ptr noundef %name) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @strrchr(ptr noundef nonnull %call, i32 noundef 46)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call2, align 1
  %call7 = tail call ptr @strrchr(ptr noundef nonnull %call, i32 noundef 58)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %call7, i32 1
  %3 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call7, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %proto.0 = phi ptr [ %incdec.ptr, %if.then9 ], [ null, %if.end6.if.end10_crit_edge ]
  %call11 = tail call ptr @stm_find_device(ptr noundef nonnull %call) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = call i32 @stm_lookup_protocol(ptr noundef %proto.0, ptr noundef nonnull %pdrv, ptr noundef nonnull %pdrv_node_type) #11
  call void @kfree(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void @stm_put_device(ptr noundef nonnull %call11) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %policy_mutex = getelementptr inbounds %struct.stm_device, ptr %call11, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %policy_mutex, i32 noundef 0) #11
  %policy = getelementptr inbounds %struct.stm_device, ptr %call11, i32 0, i32 2
  %4 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %policy, align 4
  %tobool21.not = icmp eq ptr %5, null
  br i1 %tobool21.not, label %if.end24, label %if.end20.unlock_policy.thread_crit_edge

if.end20.unlock_policy.thread_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_policy.thread

if.end24:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #16
  %7 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %policy, align 4
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end24.unlock_policy.thread_crit_edge, label %unlock_policy

if.end24.unlock_policy.thread_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_policy.thread

unlock_policy.thread:                             ; preds = %if.end24.unlock_policy.thread_crit_edge, %if.end20.unlock_policy.thread_crit_edge
  %ret.0.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end24.unlock_policy.thread_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.end20.unlock_policy.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %policy_mutex) #11
  br label %if.then42

unlock_policy:                                    ; preds = %if.end24
  call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @stp_policy_type) #11
  %8 = ptrtoint ptr %pdrv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdrv, align 4
  %pdrv34 = getelementptr inbounds %struct.stm_device, ptr %call11, i32 0, i32 10
  %10 = ptrtoint ptr %pdrv34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pdrv34, align 8
  %11 = ptrtoint ptr %pdrv_node_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdrv_node_type, align 4
  %pdrv_node_type35 = getelementptr inbounds %struct.stm_device, ptr %call11, i32 0, i32 11
  %13 = ptrtoint ptr %pdrv_node_type35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %pdrv_node_type35, align 4
  %14 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %policy, align 4
  %stm37 = getelementptr inbounds %struct.stp_policy, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stm37 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %stm37, align 4
  %17 = load ptr, ptr %policy, align 4
  call void @mutex_unlock(ptr noundef %policy_mutex) #11
  %cmp.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %unlock_policy.if.then42_crit_edge, label %unlock_policy.cleanup_crit_edge

unlock_policy.cleanup_crit_edge:                  ; preds = %unlock_policy
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

unlock_policy.if.then42_crit_edge:                ; preds = %unlock_policy
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

if.then42:                                        ; preds = %unlock_policy.if.then42_crit_edge, %unlock_policy.thread
  %ret.077 = phi ptr [ %ret.0.ph, %unlock_policy.thread ], [ %17, %unlock_policy.if.then42_crit_edge ]
  %18 = ptrtoint ptr %pdrv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdrv, align 4
  call void @stm_put_protocol(ptr noundef %19) #11
  call void @stm_put_device(ptr noundef nonnull %call11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %unlock_policy.cleanup_crit_edge, %if.then18, %if.then13, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %if.then18 ], [ inttoptr (i32 -19 to ptr), %if.then13 ], [ inttoptr (i32 -22 to ptr), %if.then4 ], [ %ret.077, %if.then42 ], [ %17, %unlock_policy.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdrv) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdrv_node_type) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stm_find_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_lookup_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__ksymtab_to_pdrv_policy_node, !1, !"__ksymtab_to_pdrv_policy_node", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/stm/policy.c", i32 82, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/stm/policy.c", i32 335, i32 6}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @stp_configfs_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/hwtracing/stm/policy.c", i32 563, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @stp_policy_node_attrs, !9, !"stp_policy_node_attrs", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/stm/policy.c", i32 191, i32 35}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/stm/policy.c", i32 188, i32 1}
!12 = !{ptr @stp_policy_node_attr_masters, !11, !"stp_policy_node_attr_masters", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/stm/policy.c", i32 90, i32 24}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/stm/policy.c", i32 106, i32 16}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/stm/policy.c", i32 189, i32 1}
!19 = !{ptr @stp_policy_node_attr_channels, !18, !"stp_policy_node_attr_channels", i1 false, i1 false}
!20 = !{ptr @stp_policy_node_type, !21, !"stp_policy_node_type", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/stm/policy.c", i32 278, i32 38}
!22 = !{ptr @stp_policy_node_item_ops, !23, !"stp_policy_node_item_ops", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/stm/policy.c", i32 184, i32 40}
!24 = !{ptr @stp_policy_node_group_ops, !25, !"stp_policy_node_group_ops", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/stm/policy.c", i32 273, i32 41}
!26 = !{ptr @stp_policy_type, !27, !"stp_policy_type", i1 false, i1 false}
!27 = !{!"../drivers/hwtracing/stm/policy.c", i32 375, i32 38}
!28 = !{ptr @stp_policy_item_ops, !29, !"stp_policy_item_ops", i1 false, i1 false}
!29 = !{!"../drivers/hwtracing/stm/policy.c", i32 367, i32 40}
!30 = !{ptr @stp_policy_group_ops, !31, !"stp_policy_group_ops", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/stm/policy.c", i32 371, i32 41}
!32 = !{ptr @stp_policy_attrs, !33, !"stp_policy_attrs", i1 false, i1 false}
!33 = !{!"../drivers/hwtracing/stm/policy.c", i32 320, i32 35}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwtracing/stm/policy.c", i32 302, i32 1}
!36 = !{ptr @stp_policy_attr_device, !35, !"stp_policy_attr_device", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwtracing/stm/policy.c", i32 294, i32 24}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwtracing/stm/policy.c", i32 297, i32 4}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwtracing/stm/policy.c", i32 318, i32 1}
!43 = !{ptr @stp_policy_attr_protocol, !42, !"stp_policy_attr_protocol", i1 false, i1 false}
!44 = !{ptr @stp_policy_subsys, !45, !"stp_policy_subsys", i1 false, i1 false}
!45 = !{!"../drivers/hwtracing/stm/policy.c", i32 478, i32 34}
!46 = !{ptr @stp_policy_root_type, !47, !"stp_policy_root_type", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/stm/policy.c", i32 473, i32 38}
!48 = !{ptr @stp_policy_root_group_ops, !49, !"stp_policy_root_group_ops", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/stm/policy.c", i32 469, i32 41}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwtracing/stm/policy.c", i32 392, i32 34}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwtracing/stm/policy.c", i32 503, i32 24}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"auto-init"}
