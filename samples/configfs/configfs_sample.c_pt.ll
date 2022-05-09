; ModuleID = '/llk/IR_all_yes/samples/configfs/configfs_sample.c_pt.bc'
source_filename = "../samples/configfs/configfs_sample.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.childless = type { %struct.configfs_subsystem, i32, i32 }
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
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.simple_child = type { %struct.config_item, i32 }

@__UNIQUE_ID_license173 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@example_subsys = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @childless_subsys, ptr @simple_children_subsys, ptr @group_children_subsys, ptr null], [16 x i8] zeroinitializer }, align 32
@configfs_example_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&subsys->su_mutex\00", [46 x i8] zeroinitializer }, align 32
@configfs_example_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Error %d while registering subsystem %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"configfs_example_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"samples/configfs/configfs_sample.c\00", [61 x i8] zeroinitializer }, align 32
@configfs_example_init._entry_ptr = internal global ptr @configfs_example_init._entry, section ".printk_index", align 4
@childless_subsys = internal global { %struct.childless, [44 x i8] } { %struct.childless { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"01-childless\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @childless_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@simple_children_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"02-simple-children\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @simple_children_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@group_children_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"03-group-children\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @group_children_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@childless_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr @__this_module, ptr null, ptr null, ptr @childless_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@childless_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @childless_attr_showme, ptr @childless_attr_storeme, ptr @childless_attr_description, ptr null], [16 x i8] zeroinitializer }, align 32
@childless_attr_showme = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr @__this_module, i16 292, ptr @childless_showme_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@childless_attr_storeme = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @childless_storeme_show, ptr @childless_storeme_store }, [44 x i8] zeroinitializer }, align 32
@childless_attr_description = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 292, ptr @childless_description_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"showme\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"storeme\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"description\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [237 x i8], [51 x i8] } { [237 x i8] c"[01-childless]\0A\0AThe childless subsystem is the simplest possible subsystem in\0Aconfigfs.  It does not support the creation of child config_items.\0AIt only has a few attributes.  In fact, it isn't much different\0Athan a directory in /proc.\0A\00", [51 x i8] zeroinitializer }, align 32
@simple_children_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr @__this_module, ptr @simple_children_item_ops, ptr @simple_children_group_ops, ptr @simple_children_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@simple_children_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @simple_children_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@simple_children_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @simple_children_make_item, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@simple_children_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @simple_children_attr_description, ptr null], [24 x i8] zeroinitializer }, align 32
@simple_child_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr @__this_module, ptr @simple_child_item_ops, ptr null, ptr @simple_child_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@simple_child_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @simple_child_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@simple_child_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @simple_child_attr_storeme, ptr null], [24 x i8] zeroinitializer }, align 32
@simple_child_attr_storeme = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @simple_child_storeme_show, ptr @simple_child_storeme_store }, [44 x i8] zeroinitializer }, align 32
@simple_children_attr_description = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 292, ptr @simple_children_description_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [150 x i8], [42 x i8] } { [150 x i8] c"[02-simple-children]\0A\0AThis subsystem allows the creation of child config_items.  These\0Aitems have only one attribute that is readable and writeable.\0A\00", [42 x i8] zeroinitializer }, align 32
@group_children_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr @__this_module, ptr null, ptr @group_children_group_ops, ptr @group_children_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@group_children_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @group_children_make_group, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@group_children_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @group_children_attr_description, ptr null], [24 x i8] zeroinitializer }, align 32
@group_children_attr_description = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 292, ptr @group_children_description_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"[03-group-children]\0A\0AThis subsystem allows the creation of child config_groups.  These\0Agroups are like the subsystem simple-children.\0A\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"example_subsys\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 323, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 339, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 342, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"childless_subsys\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 99, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"simple_children_subsys\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 237, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"group_children_subsys\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 305, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"childless_type\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 94, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"childless_attrs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 87, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"childless_attr_showme\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"childless_attr_storeme\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"childless_attr_description\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 83, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 48, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 84, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 85, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 75, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"simple_children_type\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 230, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant [25 x i8] c"simple_children_item_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 218, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"simple_children_group_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 226, i32 41 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"simple_children_attrs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 208, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"simple_child_type\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 165, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"simple_child_item_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 161, i32 40 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"simple_child_attrs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 151, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [26 x i8] c"simple_child_attr_storeme\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 149, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [33 x i8] c"simple_children_attr_description\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 206, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 200, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"group_children_type\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 299, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"group_children_group_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 295, i32 41 }
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"group_children_attrs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 286, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant [32 x i8] c"group_children_attr_description\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 284, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [38 x i8] c"../samples/configfs/configfs_sample.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 278, i32 1 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_license173, ptr @configfs_example_init._entry, ptr @configfs_example_init._entry_ptr, ptr @example_subsys, ptr @configfs_example_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @childless_subsys, ptr @simple_children_subsys, ptr @group_children_subsys, ptr @childless_type, ptr @childless_attrs, ptr @childless_attr_showme, ptr @childless_attr_storeme, ptr @childless_attr_description, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @simple_children_type, ptr @simple_children_item_ops, ptr @simple_children_group_ops, ptr @simple_children_attrs, ptr @simple_child_type, ptr @simple_child_item_ops, ptr @simple_child_attrs, ptr @simple_child_attr_storeme, ptr @simple_children_attr_description, ptr @.str.9, ptr @group_children_type, ptr @group_children_group_ops, ptr @group_children_attrs, ptr @group_children_attr_description, ptr @.str.10], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_subsys to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_example_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_example_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @childless_subsys to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_children_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_children_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @childless_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @childless_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @childless_attr_showme to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @childless_attr_storeme to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @childless_attr_description to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 237, i32 288, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_children_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_children_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_children_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_children_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_child_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_child_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_child_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_child_attr_storeme to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_children_attr_description to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_children_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_children_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_children_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_children_attr_description to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %0 = phi ptr [ @childless_subsys, %entry ], [ %2, %for.inc.for.body_crit_edge ]
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @config_group_init(ptr noundef %0) #8
  %su_mutex = getelementptr inbounds %struct.configfs_subsystem, ptr %0, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %su_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @configfs_example_init.__key) #8
  %call = tail call i32 @configfs_register_subsystem(ptr noundef %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.inc, label %do.end5

do.end5:                                          ; preds = %for.body
  %ci_namebuf = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call, ptr noundef %ci_namebuf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.030)
  %cmp32.not = icmp eq i32 %i.030, 0
  br i1 %cmp32.not, label %do.end5.cleanup_crit_edge, label %do.end5.for.body9_crit_edge

do.end5.for.body9_crit_edge:                      ; preds = %do.end5
  br label %for.body9

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.030, 1
  %arrayidx = getelementptr [4 x ptr], ptr @example_subsys, i32 0, i32 %inc
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %exitcond = icmp eq i32 %inc, 3
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %do.end5.for.body9_crit_edge
  %i.133.in = phi i32 [ %i.133, %for.body9.for.body9_crit_edge ], [ %i.030, %do.end5.for.body9_crit_edge ]
  %i.133 = add nsw i32 %i.133.in, -1
  %arrayidx10 = getelementptr [4 x ptr], ptr @example_subsys, i32 0, i32 %i.133
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx10, align 4
  tail call void @configfs_unregister_subsystem(ptr noundef %4) #8
  %cmp = icmp sgt i32 %i.133.in, 1
  br i1 %cmp, label %for.body9.for.body9_crit_edge, label %for.body9.cleanup_crit_edge

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @example_subsys, i32 0, i32 %i.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @configfs_unregister_subsystem(ptr noundef %1) #8
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond = icmp eq i32 %inc, 3
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @childless_showme_show(ptr nocapture noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %showme = getelementptr inbounds %struct.childless, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %showme to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %showme, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.5, i32 noundef %1)
  %2 = ptrtoint ptr %showme to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %showme, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %showme, align 4
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @childless_storeme_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %storeme = getelementptr inbounds %struct.childless, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %storeme to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %storeme, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.5, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @childless_storeme_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %storeme = getelementptr inbounds %struct.childless, ptr %item, i32 0, i32 2
  %call1 = tail call i32 @kstrtoint(ptr noundef %page, i32 noundef 10, ptr noundef %storeme) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @childless_description_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.8, i32 237)
  ret i32 236
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_children_release(ptr noundef %item) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %item) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @simple_children_make_item(ptr nocapture noundef readnone %group, ptr noundef %name) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @simple_child_type) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_child_release(ptr noundef %item) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %item) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_child_storeme_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %storeme = getelementptr inbounds %struct.simple_child, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %storeme to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %storeme, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.5, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_child_storeme_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %storeme = getelementptr inbounds %struct.simple_child, ptr %item, i32 0, i32 1
  %call1 = tail call i32 @kstrtoint(ptr noundef %page, i32 noundef 10, ptr noundef %storeme) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @simple_children_description_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.9, i32 150)
  ret i32 149
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @group_children_make_group(ptr nocapture noundef readnone %group, ptr noundef %name) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @simple_children_type) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @group_children_description_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.10, i32 135)
  ret i32 134
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__UNIQUE_ID_license173, !1, !"__UNIQUE_ID_license173", i1 false, i1 false}
!1 = !{!"../samples/configfs/configfs_sample.c", i32 367, i32 1}
!2 = !{ptr @configfs_example_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../samples/configfs/configfs_sample.c", i32 339, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../samples/configfs/configfs_sample.c", i32 342, i32 4}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @configfs_example_init._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @configfs_example_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @example_subsys, !12, !"example_subsys", i1 false, i1 false}
!12 = !{!"../samples/configfs/configfs_sample.c", i32 323, i32 35}
!13 = !{ptr @childless_subsys, !14, !"childless_subsys", i1 false, i1 false}
!14 = !{!"../samples/configfs/configfs_sample.c", i32 99, i32 25}
!15 = !{ptr @childless_type, !16, !"childless_type", i1 false, i1 false}
!16 = !{!"../samples/configfs/configfs_sample.c", i32 94, i32 38}
!17 = !{ptr @childless_attrs, !18, !"childless_attrs", i1 false, i1 false}
!18 = !{!"../samples/configfs/configfs_sample.c", i32 87, i32 35}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../samples/configfs/configfs_sample.c", i32 83, i32 1}
!21 = !{ptr @childless_attr_showme, !20, !"childless_attr_showme", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../samples/configfs/configfs_sample.c", i32 48, i32 22}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../samples/configfs/configfs_sample.c", i32 84, i32 1}
!26 = !{ptr @childless_attr_storeme, !25, !"childless_attr_storeme", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../samples/configfs/configfs_sample.c", i32 85, i32 1}
!29 = !{ptr @childless_attr_description, !28, !"childless_attr_description", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../samples/configfs/configfs_sample.c", i32 75, i32 1}
!32 = !{ptr @simple_children_subsys, !33, !"simple_children_subsys", i1 false, i1 false}
!33 = !{!"../samples/configfs/configfs_sample.c", i32 237, i32 34}
!34 = !{ptr @simple_children_type, !35, !"simple_children_type", i1 false, i1 false}
!35 = !{!"../samples/configfs/configfs_sample.c", i32 230, i32 38}
!36 = !{ptr @simple_children_item_ops, !37, !"simple_children_item_ops", i1 false, i1 false}
!37 = !{!"../samples/configfs/configfs_sample.c", i32 218, i32 40}
!38 = !{ptr @simple_children_group_ops, !39, !"simple_children_group_ops", i1 false, i1 false}
!39 = !{!"../samples/configfs/configfs_sample.c", i32 226, i32 41}
!40 = !{ptr @simple_child_type, !41, !"simple_child_type", i1 false, i1 false}
!41 = !{!"../samples/configfs/configfs_sample.c", i32 165, i32 38}
!42 = !{ptr @simple_child_item_ops, !43, !"simple_child_item_ops", i1 false, i1 false}
!43 = !{!"../samples/configfs/configfs_sample.c", i32 161, i32 40}
!44 = !{ptr @simple_child_attrs, !45, !"simple_child_attrs", i1 false, i1 false}
!45 = !{!"../samples/configfs/configfs_sample.c", i32 151, i32 35}
!46 = !{ptr @simple_child_attr_storeme, !47, !"simple_child_attr_storeme", i1 false, i1 false}
!47 = !{!"../samples/configfs/configfs_sample.c", i32 149, i32 1}
!48 = !{ptr @simple_children_attrs, !49, !"simple_children_attrs", i1 false, i1 false}
!49 = !{!"../samples/configfs/configfs_sample.c", i32 208, i32 35}
!50 = !{ptr @simple_children_attr_description, !51, !"simple_children_attr_description", i1 false, i1 false}
!51 = !{!"../samples/configfs/configfs_sample.c", i32 206, i32 1}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../samples/configfs/configfs_sample.c", i32 200, i32 1}
!54 = !{ptr @group_children_subsys, !55, !"group_children_subsys", i1 false, i1 false}
!55 = !{!"../samples/configfs/configfs_sample.c", i32 305, i32 34}
!56 = !{ptr @group_children_type, !57, !"group_children_type", i1 false, i1 false}
!57 = !{!"../samples/configfs/configfs_sample.c", i32 299, i32 38}
!58 = !{ptr @group_children_group_ops, !59, !"group_children_group_ops", i1 false, i1 false}
!59 = !{!"../samples/configfs/configfs_sample.c", i32 295, i32 41}
!60 = !{ptr @group_children_attrs, !61, !"group_children_attrs", i1 false, i1 false}
!61 = !{!"../samples/configfs/configfs_sample.c", i32 286, i32 35}
!62 = !{ptr @group_children_attr_description, !63, !"group_children_attr_description", i1 false, i1 false}
!63 = !{!"../samples/configfs/configfs_sample.c", i32 284, i32 1}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../samples/configfs/configfs_sample.c", i32 278, i32 1}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
