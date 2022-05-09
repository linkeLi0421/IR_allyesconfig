; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-syscfg-configfs.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-syscfg-configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.cscfg_fs_config = type { ptr, %struct.config_group, i8, i32 }
%struct.cscfg_config_desc = type { ptr, ptr, %struct.list_head, i32, ptr, i32, i32, ptr, ptr, %struct.atomic_t, ptr, ptr }
%struct.cscfg_fs_preset = type { i32, ptr, %struct.config_group }
%struct.cscfg_feature_desc = type { ptr, ptr, %struct.list_head, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.cscfg_fs_feature = type { ptr, %struct.config_group }
%struct.cscfg_fs_param = type { i32, ptr, %struct.config_group }
%struct.cscfg_parameter_desc = type { ptr, i64 }
%struct.cscfg_manager = type { %struct.device, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.configfs_subsystem, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }

@cscfg_configs_grp = internal global { %struct.config_group, [48 x i8] } { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"configurations\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @cscfg_configs_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@cscfg_features_grp = internal global { %struct.config_group, [48 x i8] } { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"features\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @cscfg_features_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cs-syscfg\00", [22 x i8] zeroinitializer }, align 32
@cscfg_configfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&subsys->su_mutex\00", [46 x i8] zeroinitializer }, align 32
@cscfg_config_view_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @cscfg_config_view_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cscfg_config_view_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @cscfg_cfg_attr_description, ptr @cscfg_cfg_attr_feature_refs, ptr @cscfg_cfg_attr_enable, ptr @cscfg_cfg_attr_preset, ptr null], [44 x i8] zeroinitializer }, align 32
@cscfg_cfg_attr_description = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 292, ptr @cscfg_cfg_description_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@cscfg_cfg_attr_feature_refs = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 292, ptr @cscfg_cfg_feature_refs_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@cscfg_cfg_attr_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @cscfg_cfg_enable_show, ptr @cscfg_cfg_enable_store }, [44 x i8] zeroinitializer }, align 32
@cscfg_cfg_attr_preset = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @cscfg_cfg_preset_show, ptr @cscfg_cfg_preset_store }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"description\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"feature_refs\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"preset\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"preset%d\00", [23 x i8] zeroinitializer }, align 32
@cscfg_config_preset_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @cscfg_config_preset_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cscfg_config_preset_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cscfg_cfg_attr_values, ptr null], [24 x i8] zeroinitializer }, align 32
@cscfg_cfg_attr_values = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @cscfg_cfg_values_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"values\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s.%s = 0x%llx \00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cscfg_configs_type = internal global { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@cscfg_feature_view_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @cscfg_feature_view_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"params\00", [25 x i8] zeroinitializer }, align 32
@cscfg_feature_view_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @cscfg_feat_attr_description, ptr @cscfg_feat_attr_matches, ptr @cscfg_feat_attr_nr_params, ptr null], [16 x i8] zeroinitializer }, align 32
@cscfg_feat_attr_description = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 292, ptr @cscfg_feat_description_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@cscfg_feat_attr_matches = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 292, ptr @cscfg_feat_matches_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@cscfg_feat_attr_nr_params = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 292, ptr @cscfg_feat_nr_params_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"matches\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SRC_ALL \00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SRC_ETMV4 \00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_params\00", [22 x i8] zeroinitializer }, align 32
@cscfg_param_view_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @cscfg_param_view_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cscfg_param_view_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cscfg_param_attr_value, ptr null], [24 x i8] zeroinitializer }, align 32
@cscfg_param_attr_value = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.18, ptr null, i16 420, ptr @cscfg_param_value_show, ptr @cscfg_param_value_store }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@cscfg_features_type = internal global { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"cscfg_configs_grp\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 387, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"cscfg_features_grp\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 421, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 464, i32 50 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 468, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"cscfg_config_view_type\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 163, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"cscfg_config_view_attrs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 155, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"cscfg_cfg_attr_description\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"cscfg_cfg_attr_feature_refs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"cscfg_cfg_attr_enable\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"cscfg_cfg_attr_preset\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 34, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 32, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 49, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 46, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 117, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 96, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 153, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 195, i32 42 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"cscfg_config_preset_type\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 173, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"cscfg_config_preset_attrs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 168, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"cscfg_cfg_attr_values\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 89, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 79, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 85, i32 51 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"cscfg_configs_type\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 383, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"cscfg_feature_view_type\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 275, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 374, i32 45 }
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"cscfg_feature_view_attrs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 268, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"cscfg_feat_attr_description\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 238, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"cscfg_feat_attr_matches\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"cscfg_feat_attr_nr_params\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 256, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 248, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 251, i32 52 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 265, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"cscfg_param_view_type\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 312, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"cscfg_param_view_attrs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 307, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"cscfg_param_attr_value\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 305, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 286, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"cscfg_features_type\00", align 1
@___asan_gen_.144 = private constant [59 x i8] c"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 417, i32 32 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @cscfg_configs_grp, ptr @cscfg_features_grp, ptr @.str, ptr @cscfg_configfs_init.__key, ptr @.str.1, ptr @cscfg_config_view_type, ptr @cscfg_config_view_attrs, ptr @cscfg_cfg_attr_description, ptr @cscfg_cfg_attr_feature_refs, ptr @cscfg_cfg_attr_enable, ptr @cscfg_cfg_attr_preset, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cscfg_config_preset_type, ptr @cscfg_config_preset_attrs, ptr @cscfg_cfg_attr_values, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cscfg_configs_type, ptr @cscfg_feature_view_type, ptr @.str.13, ptr @cscfg_feature_view_attrs, ptr @cscfg_feat_attr_description, ptr @cscfg_feat_attr_matches, ptr @cscfg_feat_attr_nr_params, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @cscfg_param_view_type, ptr @cscfg_param_view_attrs, ptr @cscfg_param_attr_value, ptr @.str.18, ptr @.str.19, ptr @cscfg_features_type], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_configs_grp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_features_grp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_configfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_config_view_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_config_view_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_cfg_attr_description to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_cfg_attr_feature_refs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_cfg_attr_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_cfg_attr_preset to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_config_preset_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_config_preset_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_cfg_attr_values to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_configs_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_feature_view_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_feature_view_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_feat_attr_description to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_feat_attr_matches to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_feat_attr_nr_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_param_view_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_param_view_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_param_attr_value to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cscfg_features_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cscfg_configfs_add_config(ptr noundef %config_desc) local_unnamed_addr #0 align 64 {
entry:
  %name.i.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @cscfg_device() #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %call.i, i32 noundef 92, i32 noundef 3520) #4
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then_crit_edge, label %if.end6.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end6.i:                                        ; preds = %if.end.i
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %config_desc, ptr %call.i.i, align 4
  %group.i = getelementptr inbounds %struct.cscfg_fs_config, ptr %call.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config_desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %config_desc, align 4
  tail call void @config_group_init_type_name(ptr noundef %group.i, ptr noundef %2, ptr noundef nonnull @cscfg_config_view_type) #4
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name.i.i) #4
  %nr_presets.i.i = getelementptr inbounds %struct.cscfg_config_desc, ptr %4, i32 0, i32 5
  %5 = call ptr @memset(ptr %name.i.i, i32 255, i32 20)
  %6 = ptrtoint ptr %nr_presets.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_presets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not27.i.i = icmp slt i32 %7, 1
  br i1 %cmp.not27.i.i, label %if.end6.i.cscfg_create_config_group.exit_crit_edge, label %for.body.lr.ph.i.i

if.end6.i.cscfg_create_config_group.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cscfg_create_config_group.exit

for.body.lr.ph.i.i:                               ; preds = %if.end6.i
  %default_groups.i.i.i = getelementptr inbounds %struct.cscfg_fs_config, ptr %call.i.i, i32 0, i32 1, i32 3
  %prev.i.i.i.i = getelementptr inbounds %struct.cscfg_fs_config, ptr %call.i.i, i32 0, i32 1, i32 3, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %configfs_add_default_group.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %preset_num.028.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc.i.i, %configfs_add_default_group.exit.i.i.for.body.i.i_crit_edge ]
  %call.i23.i = call ptr @cscfg_device() #4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %call.i23.i, i32 noundef 88, i32 noundef 3520) #4
  %tobool4.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.then10.i, label %if.end6.i.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %call7.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef %preset_num.028.i.i) #4
  %8 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %preset_num.028.i.i, ptr %call.i.i.i, align 4
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i.i, align 4
  %config_desc10.i.i = getelementptr inbounds %struct.cscfg_fs_preset, ptr %call.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %config_desc10.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %config_desc10.i.i, align 4
  %group.i.i = getelementptr inbounds %struct.cscfg_fs_preset, ptr %call.i.i.i, i32 0, i32 2
  call void @config_group_init_type_name(ptr noundef %group.i.i, ptr noundef nonnull %name.i.i, ptr noundef nonnull @cscfg_config_preset_type) #4
  %group_entry.i.i.i = getelementptr inbounds %struct.cscfg_fs_preset, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i.i.i, ptr noundef %13, ptr noundef %default_groups.i.i.i) #4
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end6.i.i.configfs_add_default_group.exit.i.i_crit_edge

if.end6.i.i.configfs_add_default_group.exit.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %configfs_add_default_group.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %group_entry.i.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %group_entry.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %default_groups.i.i.i, ptr %group_entry.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.cscfg_fs_preset, ptr %call.i.i.i, i32 0, i32 2, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %group_entry.i.i.i, ptr %13, align 4
  br label %configfs_add_default_group.exit.i.i

configfs_add_default_group.exit.i.i:              ; preds = %if.end.i.i.i.i.i, %if.end6.i.i.configfs_add_default_group.exit.i.i_crit_edge
  %inc.i.i = add i32 %preset_num.028.i.i, 1
  %18 = ptrtoint ptr %nr_presets.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_presets.i.i, align 4
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %19
  br i1 %cmp.not.i.i, label %configfs_add_default_group.exit.i.i.cscfg_create_config_group.exit_crit_edge, label %configfs_add_default_group.exit.i.i.for.body.i.i_crit_edge

configfs_add_default_group.exit.i.i.for.body.i.i_crit_edge: ; preds = %configfs_add_default_group.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

configfs_add_default_group.exit.i.i.cscfg_create_config_group.exit_crit_edge: ; preds = %configfs_add_default_group.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cscfg_create_config_group.exit

if.then10.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name.i.i) #4
  br label %if.then

cscfg_create_config_group.exit:                   ; preds = %configfs_add_default_group.exit.i.i.cscfg_create_config_group.exit_crit_edge, %if.end6.i.cscfg_create_config_group.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name.i.i) #4
  %cmp.i = icmp ugt ptr %group.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cscfg_create_config_group.exit.if.then_crit_edge, label %if.end

cscfg_create_config_group.exit.if.then_crit_edge: ; preds = %cscfg_create_config_group.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cscfg_create_config_group.exit.if.then_crit_edge, %if.then10.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i14 = phi ptr [ %group.i, %cscfg_create_config_group.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then10.i ]
  %20 = ptrtoint ptr %retval.0.i14 to i32
  br label %cleanup

if.end:                                           ; preds = %cscfg_create_config_group.exit
  %call3 = call i32 @configfs_register_group(ptr noundef nonnull @cscfg_configs_grp, ptr noundef %group.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %fs_group = getelementptr inbounds %struct.cscfg_config_desc, ptr %config_desc, i32 0, i32 11
  %21 = ptrtoint ptr %fs_group to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %group.i, ptr %fs_group, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ 0, %if.then4 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cscfg_configfs_del_config(ptr nocapture noundef %config_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_group = getelementptr inbounds %struct.cscfg_config_desc, ptr %config_desc, i32 0, i32 11
  %0 = ptrtoint ptr %fs_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_group, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @configfs_unregister_group(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %fs_group to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fs_group, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cscfg_configfs_add_feature(ptr noundef %feat_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @cscfg_device() #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %call.i, i32 noundef 84, i32 noundef 3520) #4
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then_crit_edge, label %if.end6.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end6.i:                                        ; preds = %if.end.i
  %nr_params.i = getelementptr inbounds %struct.cscfg_feature_desc, ptr %feat_desc, i32 0, i32 4
  %0 = ptrtoint ptr %nr_params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not.i = icmp eq i32 %1, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end19.i_crit_edge, label %if.then8.i

if.end6.i.if.end19.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then8.i:                                       ; preds = %if.end6.i
  %call.i50.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %call.i, i32 noundef 80, i32 noundef 3520) #4
  %tobool10.not.i = icmp eq ptr %call.i50.i, null
  br i1 %tobool10.not.i, label %if.then8.i.if.then_crit_edge, label %if.end13.i

if.then8.i.if.then_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end13.i:                                       ; preds = %if.then8.i
  %call.i51.i = tail call ptr @cscfg_device() #4
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %call.i51.i, i32 noundef 20, i32 noundef 3520) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end13.i.if.then_crit_edge, label %cscfg_create_ci_type.exit.i

if.end13.i.if.then_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cscfg_create_ci_type.exit.i:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call.i.i.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %cscfg_create_ci_type.exit.i, %if.end6.i.if.end19.i_crit_edge
  %params_group_type.0.i = phi ptr [ %call.i.i.i, %cscfg_create_ci_type.exit.i ], [ inttoptr (i32 -1 to ptr), %if.end6.i.if.end19.i_crit_edge ]
  %params_group.0.i = phi ptr [ %call.i50.i, %cscfg_create_ci_type.exit.i ], [ null, %if.end6.i.if.end19.i_crit_edge ]
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %feat_desc, ptr %call.i.i, align 4
  %group.i = getelementptr inbounds %struct.cscfg_fs_feature, ptr %call.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %feat_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feat_desc, align 4
  tail call void @config_group_init_type_name(ptr noundef %group.i, ptr noundef %5, ptr noundef nonnull @cscfg_feature_view_type) #4
  %tobool21.not.i = icmp eq ptr %params_group.0.i, null
  br i1 %tobool21.not.i, label %if.end19.i.cscfg_create_feature_group.exit_crit_edge, label %if.then22.i

if.end19.i.cscfg_create_feature_group.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cscfg_create_feature_group.exit

if.then22.i:                                      ; preds = %if.end19.i
  tail call void @config_group_init_type_name(ptr noundef nonnull %params_group.0.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %params_group_type.0.i) #4
  %group_entry.i.i = getelementptr inbounds %struct.config_group, ptr %params_group.0.i, i32 0, i32 4
  %default_groups.i.i = getelementptr inbounds %struct.cscfg_fs_feature, ptr %call.i.i, i32 0, i32 1, i32 3
  %prev.i.i.i = getelementptr inbounds %struct.cscfg_fs_feature, ptr %call.i.i, i32 0, i32 1, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i.i, ptr noundef %7, ptr noundef %default_groups.i.i) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then22.i.configfs_add_default_group.exit.i_crit_edge

if.then22.i.configfs_add_default_group.exit.i_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %configfs_add_default_group.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %group_entry.i.i, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %group_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %default_groups.i.i, ptr %group_entry.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.config_group, ptr %params_group.0.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %group_entry.i.i, ptr %7, align 4
  br label %configfs_add_default_group.exit.i

configfs_add_default_group.exit.i:                ; preds = %if.end.i.i.i.i, %if.then22.i.configfs_add_default_group.exit.i_crit_edge
  %call.i52.i = tail call ptr @cscfg_device() #4
  %12 = ptrtoint ptr %nr_params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15.i.i = icmp sgt i32 %13, 0
  br i1 %cmp15.i.i, label %for.body.lr.ph.i.i, label %configfs_add_default_group.exit.i.cscfg_create_feature_group.exit_crit_edge

configfs_add_default_group.exit.i.cscfg_create_feature_group.exit_crit_edge: ; preds = %configfs_add_default_group.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cscfg_create_feature_group.exit

for.body.lr.ph.i.i:                               ; preds = %configfs_add_default_group.exit.i
  %params_desc.i.i = getelementptr inbounds %struct.cscfg_feature_desc, ptr %feat_desc, i32 0, i32 5
  %default_groups.i.i.i = getelementptr inbounds %struct.config_group, ptr %params_group.0.i, i32 0, i32 3
  %prev.i.i.i.i = getelementptr inbounds %struct.config_group, ptr %params_group.0.i, i32 0, i32 3, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %configfs_add_default_group.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %configfs_add_default_group.exit.i.i.for.body.i.i_crit_edge ]
  %call.i.i53.i = tail call noalias ptr @devm_kmalloc(ptr noundef %call.i52.i, i32 noundef 88, i32 noundef 3520) #4
  %tobool.not.i54.i = icmp eq ptr %call.i.i53.i, null
  br i1 %tobool.not.i54.i, label %for.body.i.i.if.then_crit_edge, label %if.end.i.i

for.body.i.i.if.then_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i.i:                                       ; preds = %for.body.i.i
  %feat_desc2.i.i = getelementptr inbounds %struct.cscfg_fs_param, ptr %call.i.i53.i, i32 0, i32 1
  %14 = ptrtoint ptr %feat_desc2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %feat_desc, ptr %feat_desc2.i.i, align 4
  %15 = ptrtoint ptr %call.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.016.i.i, ptr %call.i.i53.i, align 4
  %group.i.i = getelementptr inbounds %struct.cscfg_fs_param, ptr %call.i.i53.i, i32 0, i32 2
  %16 = ptrtoint ptr %params_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params_desc.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.cscfg_parameter_desc, ptr %17, i32 %i.016.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 8
  tail call void @config_group_init_type_name(ptr noundef %group.i.i, ptr noundef %19, ptr noundef nonnull @cscfg_param_view_type) #4
  %group_entry.i.i.i = getelementptr inbounds %struct.cscfg_fs_param, ptr %call.i.i53.i, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i.i.i, ptr noundef %21, ptr noundef %default_groups.i.i.i) #4
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.configfs_add_default_group.exit.i.i_crit_edge

if.end.i.i.configfs_add_default_group.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %configfs_add_default_group.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %group_entry.i.i.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %group_entry.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %default_groups.i.i.i, ptr %group_entry.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.cscfg_fs_param, ptr %call.i.i53.i, i32 0, i32 2, i32 4, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %group_entry.i.i.i, ptr %21, align 4
  br label %configfs_add_default_group.exit.i.i

configfs_add_default_group.exit.i.i:              ; preds = %if.end.i.i.i.i.i, %if.end.i.i.configfs_add_default_group.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %26 = ptrtoint ptr %nr_params.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_params.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %27
  br i1 %cmp.i.i, label %configfs_add_default_group.exit.i.i.for.body.i.i_crit_edge, label %configfs_add_default_group.exit.i.i.cscfg_create_feature_group.exit_crit_edge

configfs_add_default_group.exit.i.i.cscfg_create_feature_group.exit_crit_edge: ; preds = %configfs_add_default_group.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cscfg_create_feature_group.exit

configfs_add_default_group.exit.i.i.for.body.i.i_crit_edge: ; preds = %configfs_add_default_group.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

cscfg_create_feature_group.exit:                  ; preds = %configfs_add_default_group.exit.i.i.cscfg_create_feature_group.exit_crit_edge, %configfs_add_default_group.exit.i.cscfg_create_feature_group.exit_crit_edge, %if.end19.i.cscfg_create_feature_group.exit_crit_edge
  %cmp.i = icmp ugt ptr %group.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cscfg_create_feature_group.exit.if.then_crit_edge, label %if.end

cscfg_create_feature_group.exit.if.then_crit_edge: ; preds = %cscfg_create_feature_group.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cscfg_create_feature_group.exit.if.then_crit_edge, %for.body.i.i.if.then_crit_edge, %if.end13.i.if.then_crit_edge, %if.then8.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i14 = phi ptr [ %group.i, %cscfg_create_feature_group.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end13.i.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then8.i.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body.i.i.if.then_crit_edge ]
  %28 = ptrtoint ptr %retval.0.i14 to i32
  br label %cleanup

if.end:                                           ; preds = %cscfg_create_feature_group.exit
  %call3 = tail call i32 @configfs_register_group(ptr noundef nonnull @cscfg_features_grp, ptr noundef %group.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %fs_group = getelementptr inbounds %struct.cscfg_feature_desc, ptr %feat_desc, i32 0, i32 9
  %29 = ptrtoint ptr %fs_group to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %group.i, ptr %fs_group, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %28, %if.then ], [ 0, %if.then4 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cscfg_configfs_del_feature(ptr nocapture noundef %feat_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_group = getelementptr inbounds %struct.cscfg_feature_desc, ptr %feat_desc, i32 0, i32 9
  %0 = ptrtoint ptr %fs_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_group, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @configfs_unregister_group(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %fs_group to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fs_group, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cscfg_configfs_init(ptr noundef %cscfg_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cscfg_mgr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @cscfg_device() #4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %call.i, i32 noundef 20, i32 noundef 3520) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %call.i.i, align 4
  %cfgfs_subsys = getelementptr inbounds %struct.cscfg_manager, ptr %cscfg_mgr, i32 0, i32 6
  %call4 = tail call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %cfgfs_subsys, ptr noundef nonnull @.str) #4
  %ci_type7 = getelementptr inbounds %struct.cscfg_manager, ptr %cscfg_mgr, i32 0, i32 6, i32 0, i32 0, i32 6
  %1 = ptrtoint ptr %ci_type7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i, ptr %ci_type7, align 4
  tail call void @config_group_init(ptr noundef %cfgfs_subsys) #4
  %su_mutex = getelementptr inbounds %struct.cscfg_manager, ptr %cscfg_mgr, i32 0, i32 6, i32 1
  tail call void @__mutex_init(ptr noundef %su_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @cscfg_configfs_init.__key) #4
  tail call void @config_group_init(ptr noundef nonnull @cscfg_configs_grp) #4
  %default_groups.i = getelementptr inbounds %struct.cscfg_manager, ptr %cscfg_mgr, i32 0, i32 6, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.cscfg_manager, ptr %cscfg_mgr, i32 0, i32 6, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.config_group, ptr @cscfg_configs_grp, i32 0, i32 4), ptr noundef %3, ptr noundef %default_groups.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.configfs_add_default_group.exit_crit_edge

if.end3.configfs_add_default_group.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr getelementptr inbounds (%struct.config_group, ptr @cscfg_configs_grp, i32 0, i32 4), ptr %prev.i.i, align 4
  store ptr %default_groups.i, ptr getelementptr inbounds (%struct.config_group, ptr @cscfg_configs_grp, i32 0, i32 4), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.config_group, ptr @cscfg_configs_grp, i32 0, i32 4, i32 1), align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr getelementptr inbounds (%struct.config_group, ptr @cscfg_configs_grp, i32 0, i32 4), ptr %3, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end3.configfs_add_default_group.exit_crit_edge
  tail call void @config_group_init(ptr noundef nonnull @cscfg_features_grp) #4
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i23 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.config_group, ptr @cscfg_features_grp, i32 0, i32 4), ptr noundef %7, ptr noundef %default_groups.i) #4
  br i1 %call.i.i.i23, label %if.end.i.i.i24, label %configfs_add_default_group.exit.configfs_add_default_group.exit25_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit25_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %configfs_add_default_group.exit25

if.end.i.i.i24:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds (%struct.config_group, ptr @cscfg_features_grp, i32 0, i32 4), ptr %prev.i.i, align 4
  store ptr %default_groups.i, ptr getelementptr inbounds (%struct.config_group, ptr @cscfg_features_grp, i32 0, i32 4), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.config_group, ptr @cscfg_features_grp, i32 0, i32 4, i32 1), align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr getelementptr inbounds (%struct.config_group, ptr @cscfg_features_grp, i32 0, i32 4), ptr %7, align 4
  br label %configfs_add_default_group.exit25

configfs_add_default_group.exit25:                ; preds = %if.end.i.i.i24, %configfs_add_default_group.exit.configfs_add_default_group.exit25_crit_edge
  %call11 = tail call i32 @configfs_register_subsystem(ptr noundef %cfgfs_subsys) #4
  br label %cleanup

cleanup:                                          ; preds = %configfs_add_default_group.exit25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %configfs_add_default_group.exit25 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_item_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cscfg_configfs_release(ptr noundef %cscfg_mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgfs_subsys = getelementptr inbounds %struct.cscfg_manager, ptr %cscfg_mgr, i32 0, i32 6
  tail call void @configfs_unregister_subsystem(ptr noundef %cfgfs_subsys) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cscfg_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_cfg_description_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %description = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %description, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.3, ptr noundef %3) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_cfg_feature_refs_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %nr_feat_refs = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nr_feat_refs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_feat_refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %feat_ref_names = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ch_used.011 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %page, i32 %ch_used.011
  %sub = sub i32 4096, %ch_used.011
  %4 = ptrtoint ptr %feat_ref_names to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feat_ref_names, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef nonnull @.str.5, ptr noundef %7) #4
  %add = add i32 %call3, %ch_used.011
  %inc = add nuw nsw i32 %i.012, 1
  %8 = ptrtoint ptr %nr_feat_refs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_feat_refs, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ch_used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %ch_used.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_cfg_enable_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr i8, ptr %item, i32 80
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 4, !range !84
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %2) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_cfg_enable_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !85
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %item, i32 -4
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2 = icmp ne i8 %4, 0
  %call3 = call i32 @cscfg_config_sysfs_activate(ptr noundef %2, i1 noundef zeroext %tobool2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1, !range !84
  %active = getelementptr i8, ptr %item, i32 80
  %7 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then8

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %preset = getelementptr i8, ptr %item, i32 84
  %8 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %preset, align 4
  call void @cscfg_config_sysfs_set_preset(i32 noundef %9) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %tobool4.not20 = phi i32 [ %count, %if.then5.if.end10_crit_edge ], [ %count, %if.then8 ], [ %call3, %if.end.if.end10_crit_edge ], [ %call1, %entry.if.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  ret i32 %tobool4.not20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cscfg_config_sysfs_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cscfg_config_sysfs_set_preset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_cfg_preset_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %preset = getelementptr i8, ptr %item, i32 84
  %0 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %preset, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_cfg_preset_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %preset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %preset) #4
  %0 = ptrtoint ptr %preset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %preset, align 4, !annotation !85
  %call1 = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %preset) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %preset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then.if.end12_crit_edge, label %lor.lhs.false

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

lor.lhs.false:                                    ; preds = %if.then
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %nr_presets = getelementptr inbounds %struct.cscfg_config_desc, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %nr_presets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_presets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp2 = icmp sgt i32 %2, %6
  br i1 %cmp2, label %lor.lhs.false.if.end12_crit_edge, label %if.then6

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then6:                                         ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %preset, align 4
  %preset7 = getelementptr i8, ptr %item, i32 84
  %9 = ptrtoint ptr %preset7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %preset7, align 4
  %active = getelementptr i8, ptr %item, i32 80
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  call void @cscfg_config_sysfs_set_preset(i32 noundef %8) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %lor.lhs.false.if.end12_crit_edge, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %12 = phi i32 [ %call1, %entry.if.end12_crit_edge ], [ %count, %if.then6.if.end12_crit_edge ], [ %count, %if.then9 ], [ -22, %lor.lhs.false.if.end12_crit_edge ], [ -22, %if.then.if.end12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %preset) #4
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_cfg_values_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %config_desc1 = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %config_desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_desc1, align 4
  %nr_presets = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nr_presets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_presets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_feat_refs = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %nr_feat_refs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_feat_refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp50 = icmp sgt i32 %5, 0
  br i1 %cmp50, label %for.body.lr.ph, label %if.end.for.end15_crit_edge

if.end.for.end15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end15

for.body.lr.ph:                                   ; preds = %if.end
  %nr_total_params = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %nr_total_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_total_params, align 4
  %add.ptr = getelementptr i8, ptr %item, i32 -8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %sub = add i32 %9, -1
  %mul = mul i32 %7, %sub
  %feat_ref_names = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 4
  %presets = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc13.for.body_crit_edge, %for.body.lr.ph
  %used.053 = phi i32 [ 0, %for.body.lr.ph ], [ %used.1.lcssa, %for.inc13.for.body_crit_edge ]
  %val_idx.052 = phi i32 [ %mul, %for.body.lr.ph ], [ %val_idx.1.lcssa, %for.inc13.for.body_crit_edge ]
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.inc13.for.body_crit_edge ]
  %10 = ptrtoint ptr %feat_ref_names to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %feat_ref_names, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.051
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @cscfg_get_named_feat_desc(ptr noundef %13) #4
  %nr_params = getelementptr inbounds %struct.cscfg_feature_desc, ptr %call2, i32 0, i32 4
  %14 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp445 = icmp sgt i32 %15, 0
  br i1 %cmp445, label %for.body5.lr.ph, label %for.body.for.inc13_crit_edge

for.body.for.inc13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13

for.body5.lr.ph:                                  ; preds = %for.body
  %params_desc = getelementptr inbounds %struct.cscfg_feature_desc, ptr %call2, i32 0, i32 5
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %used.148 = phi i32 [ %used.053, %for.body5.lr.ph ], [ %add, %for.body5.for.body5_crit_edge ]
  %val_idx.147 = phi i32 [ %val_idx.052, %for.body5.lr.ph ], [ %inc, %for.body5.for.body5_crit_edge ]
  %j.046 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc12, %for.body5.for.body5_crit_edge ]
  %add.ptr6 = getelementptr i8, ptr %page, i32 %used.148
  %sub7 = sub i32 4096, %used.148
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call2, align 4
  %18 = ptrtoint ptr %params_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params_desc, align 4
  %arrayidx8 = getelementptr %struct.cscfg_parameter_desc, ptr %19, i32 %j.046
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx8, align 8
  %22 = ptrtoint ptr %presets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %presets, align 4
  %inc = add i32 %val_idx.147, 1
  %arrayidx10 = getelementptr i64, ptr %23, i32 %val_idx.147
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx10, align 8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.11, ptr noundef %17, ptr noundef %21, i64 noundef %25) #4
  %add = add i32 %call11, %used.148
  %inc12 = add nuw nsw i32 %j.046, 1
  %26 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_params, align 4
  %cmp4 = icmp slt i32 %inc12, %27
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.inc13_crit_edge

for.body5.for.inc13_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body5

for.inc13:                                        ; preds = %for.body5.for.inc13_crit_edge, %for.body.for.inc13_crit_edge
  %val_idx.1.lcssa = phi i32 [ %val_idx.052, %for.body.for.inc13_crit_edge ], [ %inc, %for.body5.for.inc13_crit_edge ]
  %used.1.lcssa = phi i32 [ %used.053, %for.body.for.inc13_crit_edge ], [ %add, %for.body5.for.inc13_crit_edge ]
  %inc14 = add nuw nsw i32 %i.051, 1
  %28 = ptrtoint ptr %nr_feat_refs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_feat_refs, align 4
  %cmp = icmp slt i32 %inc14, %29
  br i1 %cmp, label %for.inc13.for.body_crit_edge, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end15

for.inc13.for.body_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %if.end.for.end15_crit_edge
  %used.0.lcssa = phi i32 [ 0, %if.end.for.end15_crit_edge ], [ %used.1.lcssa, %for.inc13.for.end15_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %page, i32 %used.0.lcssa
  %sub17 = sub i32 4096, %used.0.lcssa
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.12) #4
  %add19 = add i32 %call18, %used.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add19, %for.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cscfg_get_named_feat_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_feat_description_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %description = getelementptr inbounds %struct.cscfg_feature_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %description, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.3, ptr noundef %3) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_feat_matches_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %match_flags1 = getelementptr inbounds %struct.cscfg_feature_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %match_flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %match_flags1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.15) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %used.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr6 = getelementptr i8, ptr %page, i32 %used.0
  %sub = sub i32 4096, %used.0
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub, ptr noundef nonnull @.str.16) #4
  %add = add i32 %call7, %used.0
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %used.1 = phi i32 [ %add, %if.then5 ], [ %used.0, %if.end.if.end8_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %page, i32 %used.1
  %sub10 = sub i32 4096, %used.1
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.12) #4
  %add12 = add i32 %call11, %used.1
  ret i32 %add12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_feat_nr_params_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %nr_params = getelementptr inbounds %struct.cscfg_feature_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_params, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %3) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_param_value_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -8
  %feat_desc = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %feat_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat_desc, align 4
  %params_desc = getelementptr inbounds %struct.cscfg_feature_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %params_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params_desc, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %value1 = getelementptr %struct.cscfg_parameter_desc, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value1, align 8
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.19, i64 noundef %7) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cscfg_param_value_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %size) #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -8
  %feat_desc1 = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %feat_desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat_desc1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %value, align 8, !annotation !85
  %call3 = call i32 @kstrtoull(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %value, align 8
  %call4 = call i32 @cscfg_update_feat_param_val(ptr noundef %1, i32 noundef %3, i64 noundef %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call3, %entry.if.end_crit_edge ], [ %call4, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool5.not = icmp eq i32 %err.0, 0
  %size.err.0 = select i1 %tobool5.not, i32 %size, i32 %err.0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #4
  ret i32 %size.err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cscfg_update_feat_param_val(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !62, !64, !66, !68, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 464, i32 50}
!2 = !{ptr @cscfg_configfs_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 468, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cscfg_config_view_type, !6, !"cscfg_config_view_type", i1 false, i1 false}
!6 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 163, i32 32}
!7 = !{ptr @cscfg_config_view_attrs, !8, !"cscfg_config_view_attrs", i1 false, i1 false}
!8 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 155, i32 35}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 34, i32 1}
!11 = !{ptr @cscfg_cfg_attr_description, !10, !"cscfg_cfg_attr_description", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 32, i32 36}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 49, i32 1}
!16 = !{ptr @cscfg_cfg_attr_feature_refs, !15, !"cscfg_cfg_attr_feature_refs", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 46, i32 10}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 117, i32 1}
!21 = !{ptr @cscfg_cfg_attr_enable, !20, !"cscfg_cfg_attr_enable", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 96, i32 36}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 153, i32 1}
!26 = !{ptr @cscfg_cfg_attr_preset, !25, !"cscfg_cfg_attr_preset", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 195, i32 42}
!29 = !{ptr @cscfg_config_preset_type, !30, !"cscfg_config_preset_type", i1 false, i1 false}
!30 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 173, i32 32}
!31 = !{ptr @cscfg_config_preset_attrs, !32, !"cscfg_config_preset_attrs", i1 false, i1 false}
!32 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 168, i32 35}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 89, i32 1}
!35 = !{ptr @cscfg_cfg_attr_values, !34, !"cscfg_cfg_attr_values", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 79, i32 8}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 85, i32 51}
!40 = !{ptr @cscfg_configs_grp, !41, !"cscfg_configs_grp", i1 false, i1 false}
!41 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 387, i32 28}
!42 = !{ptr @cscfg_configs_type, !43, !"cscfg_configs_type", i1 false, i1 false}
!43 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 383, i32 32}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 374, i32 45}
!46 = !{ptr @cscfg_feature_view_type, !47, !"cscfg_feature_view_type", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 275, i32 32}
!48 = !{ptr @cscfg_feature_view_attrs, !49, !"cscfg_feature_view_attrs", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 268, i32 35}
!50 = !{ptr @cscfg_feat_attr_description, !51, !"cscfg_feat_attr_description", i1 false, i1 false}
!51 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 238, i32 1}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 256, i32 1}
!54 = !{ptr @cscfg_feat_attr_matches, !53, !"cscfg_feat_attr_matches", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 248, i32 37}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 251, i32 52}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 265, i32 1}
!61 = !{ptr @cscfg_feat_attr_nr_params, !60, !"cscfg_feat_attr_nr_params", i1 false, i1 false}
!62 = !{ptr @cscfg_param_view_type, !63, !"cscfg_param_view_type", i1 false, i1 false}
!63 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 312, i32 32}
!64 = !{ptr @cscfg_param_view_attrs, !65, !"cscfg_param_view_attrs", i1 false, i1 false}
!65 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 307, i32 35}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 305, i32 1}
!68 = !{ptr @cscfg_param_attr_value, !67, !"cscfg_param_attr_value", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 286, i32 36}
!71 = !{ptr @cscfg_features_grp, !72, !"cscfg_features_grp", i1 false, i1 false}
!72 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 421, i32 28}
!73 = !{ptr @cscfg_features_type, !74, !"cscfg_features_type", i1 false, i1 false}
!74 = !{!"../drivers/hwtracing/coresight/coresight-syscfg-configfs.c", i32 417, i32 32}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{!"auto-init"}
