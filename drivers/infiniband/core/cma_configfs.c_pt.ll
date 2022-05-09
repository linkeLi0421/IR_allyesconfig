; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/cma_configfs.c_pt.bc'
source_filename = "../drivers/infiniband/core/cma_configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.cma_dev_group = type { [64 x i8], %struct.config_group, %struct.config_group, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.177, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.177 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cma_dev_port_group = type { i32, ptr, %struct.config_group }

@cma_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"rdma_cm\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @cma_subsys_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@cma_configfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cma_subsys.su_mutex\00", [43 x i8] zeroinitializer }, align 32
@cma_subsys_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @cma_subsys_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cma_subsys_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @make_cma_dev, ptr null, ptr null, ptr @drop_cma_dev }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@cma_ports_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @cma_ports_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cma_device_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @cma_device_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cma_ports_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @release_cma_ports_group, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@cma_port_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @cma_configfs_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@cma_configfs_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @attr_default_roce_mode, ptr @attr_default_roce_tos, ptr null], [20 x i8] zeroinitializer }, align 32
@attr_default_roce_mode = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 420, ptr @default_roce_mode_show, ptr @default_roce_mode_store }, [44 x i8] zeroinitializer }, align 32
@attr_default_roce_tos = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @default_roce_tos_show, ptr @default_roce_tos_store }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"default_roce_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"default_roce_tos\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@cma_device_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @release_cma_dev, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"cma_subsys\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 342, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 356, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"cma_subsys_type\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 337, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"cma_subsys_group_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 332, i32 41 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 298, i32 59 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"cma_ports_group_type\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 264, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"cma_device_group_type\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 273, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"cma_ports_item_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 260, i32 40 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 224, i32 40 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"cma_port_group_type\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 195, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"cma_configfs_attributes\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 189, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"attr_default_roce_mode\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"attr_default_roce_tos\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 146, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 118, i32 25 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 187, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 162, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"cma_device_item_ops\00", align 1
@___asan_gen_.62 = private constant [42 x i8] c"../drivers/infiniband/core/cma_configfs.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 269, i32 40 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @cma_configfs_exit, ptr @cma_subsys, ptr @cma_configfs_init.__key, ptr @.str, ptr @cma_subsys_type, ptr @cma_subsys_group_ops, ptr @.str.1, ptr @cma_ports_group_type, ptr @cma_device_group_type, ptr @cma_ports_item_ops, ptr @.str.2, ptr @cma_port_group_type, ptr @cma_configfs_attributes, ptr @attr_default_roce_mode, ptr @attr_default_roce_tos, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cma_device_item_ops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_configfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_subsys_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_subsys_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_ports_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_device_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_ports_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_port_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_configfs_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_default_roce_mode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_default_roce_tos to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_device_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cma_configfs_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef nonnull @cma_subsys) #11
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @cma_subsys, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @cma_configfs_init.__key) #11
  %call = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @cma_subsys) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @cma_subsys, i32 0, i32 1)) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cma_configfs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @cma_subsys) #11
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @cma_subsys, i32 0, i32 1)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @make_cma_dev(ptr nocapture noundef readnone %group, ptr noundef %name) #3 align 64 {
entry:
  %port_str.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cma_enum_devices_by_ibdev(ptr noundef nonnull @filter_by_name, ptr noundef %name) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.end

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 228) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.if.then15_crit_edge, label %if.end4

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.end4:                                          ; preds = %if.end
  %call6 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i, ptr noundef %name, i32 noundef 64) #11
  %ports_group = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 2
  tail call void @config_group_init_type_name(ptr noundef %ports_group, ptr noundef nonnull @.str.1, ptr noundef nonnull @cma_ports_group_type) #11
  %call.i = tail call ptr @cma_get_ib_dev(ptr noundef nonnull %call) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.if.then15_crit_edge, label %if.end.i

if.end4.if.then15_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.end.i:                                         ; preds = %if.end4
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %call.i, i32 0, i32 21
  %1 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phys_port_cnt.i, align 8
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 88) #11
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end.i.if.then15_crit_edge, label %if.end7.i.i.i, !prof !44

if.end.i.if.then15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.end7.i.i.i:                                    ; preds = %if.end.i
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #15
  %tobool2.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.i.if.then15_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.then15_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp36.not.i = icmp eq i32 %2, 0
  br i1 %cmp36.not.i, label %for.cond.preheader.i.if.end10_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end10_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %default_groups.i.i = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 2, i32 3
  %prev.i.i.i = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %configfs_add_default_group.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %configfs_add_default_group.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %port_str.i) #11
  %add.i = add nuw i32 %i.037.i, 1
  %arrayidx.i = getelementptr %struct.cma_dev_port_group, ptr %call8.i.i.i, i32 %i.037.i
  %6 = call ptr @memset(ptr %port_str.i, i32 255, i32 10)
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %arrayidx.i, align 8
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %port_str.i, i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef %add.i) #11
  %cma_dev_group8.i = getelementptr %struct.cma_dev_port_group, ptr %call8.i.i.i, i32 %i.037.i, i32 1
  %8 = ptrtoint ptr %cma_dev_group8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %cma_dev_group8.i, align 4
  %group.i = getelementptr %struct.cma_dev_port_group, ptr %call8.i.i.i, i32 %i.037.i, i32 2
  call void @config_group_init_type_name(ptr noundef %group.i, ptr noundef nonnull %port_str.i, ptr noundef nonnull @cma_port_group_type) #11
  %group_entry.i.i = getelementptr %struct.cma_dev_port_group, ptr %call8.i.i.i, i32 %i.037.i, i32 2, i32 4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i.i, ptr noundef %10, ptr noundef %default_groups.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i33.i, label %for.body.i.configfs_add_default_group.exit.i_crit_edge

for.body.i.configfs_add_default_group.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %configfs_add_default_group.exit.i

if.end.i.i.i33.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %group_entry.i.i, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %group_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %default_groups.i.i, ptr %group_entry.i.i, align 8
  %prev3.i.i.i.i = getelementptr %struct.cma_dev_port_group, ptr %call8.i.i.i, i32 %i.037.i, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %group_entry.i.i, ptr %10, align 4
  br label %configfs_add_default_group.exit.i

configfs_add_default_group.exit.i:                ; preds = %if.end.i.i.i33.i, %for.body.i.configfs_add_default_group.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %port_str.i) #11
  %exitcond.not.i = icmp eq i32 %add.i, %2
  br i1 %exitcond.not.i, label %configfs_add_default_group.exit.i.if.end10_crit_edge, label %configfs_add_default_group.exit.i.for.body.i_crit_edge

configfs_add_default_group.exit.i.for.body.i_crit_edge: ; preds = %configfs_add_default_group.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

configfs_add_default_group.exit.i.if.end10_crit_edge: ; preds = %configfs_add_default_group.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %configfs_add_default_group.exit.i.if.end10_crit_edge, %for.cond.preheader.i.if.end10_crit_edge
  %ports13.i = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %ports13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i.i, ptr %ports13.i, align 8
  %device_group = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 1
  call void @config_group_init_type_name(ptr noundef %device_group, ptr noundef %name, ptr noundef nonnull @cma_device_group_type) #11
  %group_entry.i = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 2, i32 4
  %default_groups.i = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 1, i32 3
  %prev.i.i = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %17, ptr noundef %default_groups.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i35, label %if.end10.configfs_add_default_group.exit_crit_edge

if.end10.configfs_add_default_group.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %configfs_add_default_group.exit

if.end.i.i.i35:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.cma_dev_group, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %group_entry.i, ptr %17, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i35, %if.end10.configfs_add_default_group.exit_crit_edge
  call void @cma_dev_put(ptr noundef nonnull %call) #11
  br label %cleanup

if.then15:                                        ; preds = %if.end7.i.i.i.if.then15_crit_edge, %if.end.i.if.then15_crit_edge, %if.end4.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %err.0.ph = phi i32 [ -12, %if.end.if.then15_crit_edge ], [ -12, %if.end.i.if.then15_crit_edge ], [ -12, %if.end7.i.i.i.if.then15_crit_edge ], [ -19, %if.end4.if.then15_crit_edge ]
  tail call void @cma_dev_put(ptr noundef nonnull %call) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %entry.if.end16_crit_edge
  %cma_dev_group.043 = phi ptr [ %call7.i.i, %if.then15 ], [ null, %entry.if.end16_crit_edge ]
  %err.041 = phi i32 [ %err.0.ph, %if.then15 ], [ -19, %entry.if.end16_crit_edge ]
  tail call void @kfree(ptr noundef %cma_dev_group.043) #11
  %22 = inttoptr i32 %err.041 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %configfs_add_default_group.exit
  %retval.0 = phi ptr [ %22, %if.end16 ], [ %device_group, %configfs_add_default_group.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drop_cma_dev(ptr nocapture noundef readnone %cgroup, ptr noundef %item) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ports_group = getelementptr i8, ptr %item, i32 80
  tail call void @configfs_remove_default_groups(ptr noundef %ports_group) #11
  tail call void @configfs_remove_default_groups(ptr noundef %item) #11
  tail call void @config_item_put(ptr noundef %item) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cma_enum_devices_by_ibdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @filter_by_name(ptr nocapture noundef readonly %ib_dev, ptr nocapture noundef readonly %cookie) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 13, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call i32 @strcmp(ptr noundef %retval.0.i, ptr noundef %cookie) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  ret i1 %tobool.not
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cma_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_cma_ports_group(ptr nocapture noundef %item) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr i8, ptr %item, i32 80
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  tail call void @kfree(ptr noundef %1) #11
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ports, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cma_get_ib_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_roce_mode_show(ptr noundef %item, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %item, null
  %add.ptr3.i.i = getelementptr i8, ptr %item, i32 -8
  %tobool.not9.i = icmp eq ptr %add.ptr3.i.i, null
  %tobool.not.i = or i1 %tobool.not.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %cma_dev_group.i = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %cma_dev_group.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma_dev_group.i, align 4
  %call1.i = tail call ptr @cma_enum_devices_by_ibdev(ptr noundef nonnull @filter_by_name, ptr noundef %1) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %2 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr3.i.i, align 4
  %call1 = tail call i32 @cma_get_default_gid_type(ptr noundef nonnull %call1.i, i32 noundef %3) #11
  tail call void @cma_dev_put(ptr noundef nonnull %call1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call ptr @ib_cache_gid_type_str(i32 noundef %call1) #11
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, ptr noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ %call1, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_roce_mode_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %item, null
  %add.ptr3.i.i = getelementptr i8, ptr %item, i32 -8
  %tobool.not9.i = icmp eq ptr %add.ptr3.i.i, null
  %tobool.not.i = or i1 %tobool.not.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %cma_dev_group.i = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %cma_dev_group.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma_dev_group.i, align 4
  %call1.i = tail call ptr @cma_enum_devices_by_ibdev(ptr noundef nonnull @filter_by_name, ptr noundef %1) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call1 = tail call i32 @ib_cache_gid_parse_type_str(ptr noundef %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cma_dev_put(ptr noundef nonnull %call1.i) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr3.i.i, align 4
  %call4 = tail call i32 @cma_set_default_gid_type(ptr noundef nonnull %call1.i, i32 noundef %3, i32 noundef %call1) #11
  tail call void @cma_dev_put(ptr noundef nonnull %call1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cond.true, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.true:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #16
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end3.cleanup_crit_edge, %if.then2, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ %call6, %cond.true ], [ %call4, %if.end3.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_get_default_gid_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_cache_gid_type_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cache_gid_parse_type_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_set_default_gid_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_roce_tos_show(ptr noundef %item, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %item, null
  %add.ptr3.i.i = getelementptr i8, ptr %item, i32 -8
  %tobool.not9.i = icmp eq ptr %add.ptr3.i.i, null
  %tobool.not.i = or i1 %tobool.not.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %cma_dev_group.i = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %cma_dev_group.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma_dev_group.i, align 4
  %call1.i = tail call ptr @cma_enum_devices_by_ibdev(ptr noundef nonnull @filter_by_name, ptr noundef %1) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr3.i.i, align 4
  %call1 = tail call i32 @cma_get_default_roce_tos(ptr noundef nonnull %call1.i, i32 noundef %3) #11
  tail call void @cma_dev_put(ptr noundef nonnull %call1.i) #11
  %conv2 = and i32 %call1, 255
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %conv2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_roce_tos_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tos = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tos) #11
  %0 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tos, align 1, !annotation !45
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tos) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %item, null
  %add.ptr3.i.i = getelementptr i8, ptr %item, i32 -8
  %tobool.not9.i = icmp eq ptr %add.ptr3.i.i, null
  %tobool.not.i = or i1 %tobool.not.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %cma_dev_group.i = getelementptr i8, ptr %item, i32 -4
  %1 = ptrtoint ptr %cma_dev_group.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cma_dev_group.i, align 4
  %call1.i = call ptr @cma_enum_devices_by_ibdev(ptr noundef nonnull @filter_by_name, ptr noundef %2) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  %3 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr3.i.i, align 4
  %5 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tos, align 1
  %call5 = call i32 @cma_set_default_roce_tos(ptr noundef nonnull %call1.i, i32 noundef %4, i8 noundef zeroext %6) #11
  call void @cma_dev_put(ptr noundef nonnull %call1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cond.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #16
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end4.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call7, %cond.false ], [ %call5, %if.end4.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tos) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_get_default_roce_tos(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cma_set_default_roce_tos(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_cma_dev(ptr noundef %item) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %item, i32 -64
  tail call void @kfree(ptr noundef %add.ptr3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_remove_default_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @cma_configfs_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 356, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @cma_subsys, !4, !"cma_subsys", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 342, i32 34}
!5 = !{ptr @cma_subsys_type, !6, !"cma_subsys_type", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 337, i32 38}
!7 = !{ptr @cma_subsys_group_ops, !8, !"cma_subsys_group_ops", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 332, i32 41}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 298, i32 59}
!11 = !{ptr @cma_ports_group_type, !12, !"cma_ports_group_type", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 264, i32 38}
!13 = !{ptr @cma_ports_item_ops, !14, !"cma_ports_item_ops", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 260, i32 40}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 224, i32 40}
!17 = !{ptr @cma_port_group_type, !18, !"cma_port_group_type", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 195, i32 38}
!19 = !{ptr @cma_configfs_attributes, !20, !"cma_configfs_attributes", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 189, i32 35}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 146, i32 1}
!23 = !{ptr @attr_default_roce_mode, !22, !"attr_default_roce_mode", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 118, i32 25}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 187, i32 1}
!28 = !{ptr @attr_default_roce_tos, !27, !"attr_default_roce_tos", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 162, i32 25}
!31 = !{ptr @cma_device_group_type, !32, !"cma_device_group_type", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 273, i32 38}
!33 = !{ptr @cma_device_item_ops, !34, !"cma_device_item_ops", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/cma_configfs.c", i32 269, i32 40}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{!"auto-init"}
