; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types_counters.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types_counters.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon = type { i16 }
%union.anon.184 = type { ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i16, i8, i8, i8 }
%struct.uapi_definition = type { i8, i8, %union.anon, %union.anon.184 }
%struct.uverbs_obj_type_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uverbs_obj_idr_type = type { %struct.uverbs_obj_type, ptr }
%struct.uverbs_obj_type = type { ptr, i32 }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.anon.175 = type { i16, i8 }
%union.anon.177 = type { %struct.anon.178, [4 x i8] }
%struct.anon.178 = type { ptr }
%struct.uverbs_attr_def = type { i16, %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { i8, i8, %union.anon.173, %union.anon.177 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i16, i16 }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ib_counters = type { ptr, ptr, %struct.atomic_t }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.183, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.183 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ib_odp_caps = type { i64, %struct.anon.165 }
%struct.anon.165 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.171 }
%union.anon.171 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.172, i16, i16, i8 }
%union.anon.172 = type { i64 }
%struct.ib_counters_read_attr = type { ptr, i32, i32 }

@ib_uverbs_object_UVERBS_OBJECT_COUNTERS = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 15, ptr @.compoundliteral, i32 3, ptr @_object_methods_UVERBS_OBJECT_COUNTERS155 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_counters = dso_local constant { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon { i16 15 }, [4 x i8] undef }, %union.anon.184 { ptr @ib_uverbs_object_UVERBS_OBJECT_COUNTERS } }, { i8, i8, %union.anon, { i32 } } { i8 6, i8 1, %union.anon zeroinitializer, { i32 } { i32 356 } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @uverbs_free_counters }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_COUNTERS155 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_DESTROY, ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_READ], [20 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_COUNTERS_CREATE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_COUNTERS_CREATE, ptr @ib_uverbs_handler_UVERBS_METHOD_COUNTERS_CREATE }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_COUNTERS_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 1, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_COUNTERS_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_COUNTERS_READ = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 2, i32 0, i32 3, ptr @_method_attrs_UVERBS_METHOD_COUNTERS_READ, ptr @ib_uverbs_handler_UVERBS_METHOD_COUNTERS_READ }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_COUNTERS_CREATE = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.1], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 15, i8 2 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_COUNTERS_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 15, i8 3 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_COUNTERS_READ = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 15, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 -1, i16 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 8, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [40 x i8] c"ib_uverbs_object_UVERBS_OBJECT_COUNTERS\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [24 x i8] c"uverbs_def_obj_counters\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 157, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [42 x i8] c"_object_methods_UVERBS_OBJECT_COUNTERS155\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 151, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [47 x i8] c"ib_uverbs_method_UVERBS_METHOD_COUNTERS_CREATE\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [48 x i8] c"ib_uverbs_method_UVERBS_METHOD_COUNTERS_DESTROY\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [45 x i8] c"ib_uverbs_method_UVERBS_METHOD_COUNTERS_READ\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [44 x i8] c"_method_attrs_UVERBS_METHOD_COUNTERS_CREATE\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 125, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [45 x i8] c"_method_attrs_UVERBS_METHOD_COUNTERS_DESTROY\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 132, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [42 x i8] c"_method_attrs_UVERBS_METHOD_COUNTERS_READ\00", align 1
@___asan_gen_.34 = private constant [55 x i8] c"../drivers/infiniband/core/uverbs_std_types_counters.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 139, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @ib_uverbs_object_UVERBS_OBJECT_COUNTERS, ptr @uverbs_def_obj_counters, ptr @.compoundliteral, ptr @_object_methods_UVERBS_OBJECT_COUNTERS155, ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_DESTROY, ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_READ, ptr @_method_attrs_UVERBS_METHOD_COUNTERS_CREATE, ptr @.compoundliteral.1, ptr @_method_attrs_UVERBS_METHOD_COUNTERS_DESTROY, ptr @.compoundliteral.2, ptr @_method_attrs_UVERBS_METHOD_COUNTERS_READ, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_COUNTERS to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_counters to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_COUNTERS155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_CREATE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_READ to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_COUNTERS_CREATE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_COUNTERS_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_COUNTERS_READ to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_counters(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %usecnt = getelementptr inbounds %struct.ib_counters, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #4
  %2 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %destroy_counters = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 89
  %6 = ptrtoint ptr %destroy_counters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_counters, align 4
  %call1 = tail call i32 %7(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_COUNTERS_CREATE(ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 0
  %retval.0.i.i = select i1 %tobool.i.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %create_counters = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 88
  %9 = ptrtoint ptr %create_counters to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %create_counters, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cleanup_crit_edge, label %if.end8.i.i.i

uverbs_attr_get_uobject.exit.cleanup_crit_edge:   ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %uverbs_attr_get_uobject.exit
  %size_ib_counters = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 122
  %11 = ptrtoint ptr %size_ib_counters to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size_ib_counters, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i.i
  %13 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %call9.i.i.i, align 128
  %uobject = getelementptr inbounds %struct.ib_counters, ptr %call9.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %uobject, align 4
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i.i, ptr %object, align 8
  %usecnt = getelementptr inbounds %struct.ib_counters, ptr %call9.i.i.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #4
  %16 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %usecnt, align 8
  %17 = ptrtoint ptr %create_counters to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %create_counters, align 4
  %call9 = tail call i32 %18(ptr noundef nonnull %call9.i.i.i, ptr noundef %attrs) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %uverbs_attr_get_uobject.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %uverbs_attr_get_uobject.exit.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ %call9, %if.then11 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_destroy_def_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_COUNTERS_READ(ptr noundef %attrs) #0 align 64 {
entry:
  %read_attr = alloca %struct.ib_counters_read_attr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %read_attr) #4
  %0 = call ptr @memset(ptr %read_attr, i32 0, i32 12)
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %1 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 0
  %retval.0.i.i = select i1 %tobool.i.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i

entry.uverbs_attr_get_obj.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %uverbs_attr_get_obj.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i.i, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i, %entry.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_obj.exit_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 4
  %read_counters = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 90
  %10 = ptrtoint ptr %read_counters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_counters, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %uverbs_attr_get_obj.exit.cleanup_crit_edge, label %if.end

uverbs_attr_get_obj.exit.cleanup_crit_edge:       ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_obj.exit
  %usecnt = getelementptr inbounds %struct.ib_counters, ptr %retval.0.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #4
  %12 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.ib_counters_read_attr, ptr %read_attr, i32 0, i32 2
  %call5 = call i32 @uverbs_get_flags32(ptr noundef %flags, ptr noundef %attrs, i32 noundef 2, i64 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %14 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  %arrayidx.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 2
  %retval.0.i43 = select i1 %tobool.i.not.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i
  %len = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i43, i32 0, i32 1
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 8
  %19 = lshr i16 %18, 3
  %div = zext i16 %19 to i32
  %ncounters = getelementptr inbounds %struct.ib_counters_read_attr, ptr %read_attr, i32 0, i32 1
  %20 = ptrtoint ptr %ncounters to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %ncounters, align 4
  %21 = shl nuw nsw i32 %div, 3
  %call.i = call noalias ptr @_uverbs_alloc(ptr noundef %attrs, i32 noundef %21, i32 noundef 3520) #4
  %22 = ptrtoint ptr %read_attr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %read_attr, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %retval.0.i, align 4
  %read_counters21 = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 1, i32 90
  %26 = ptrtoint ptr %read_counters21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_counters21, align 4
  %call22 = call i32 %27(ptr noundef %retval.0.i, ptr noundef nonnull %read_attr, ptr noundef %attrs) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %read_attr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_attr, align 4
  %30 = ptrtoint ptr %ncounters to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ncounters, align 4
  %mul = shl i32 %31, 3
  %call28 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 1, ptr noundef %29, i32 noundef %mul) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end18.cleanup_crit_edge, %if.then15, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uverbs_attr_get_obj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then15 ], [ %call28, %if.end25 ], [ -95, %uverbs_attr_get_obj.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call22, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %read_attr) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags32(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @_uverbs_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @uverbs_def_obj_counters, !1, !"uverbs_def_obj_counters", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types_counters.c", i32 157, i32 30}
!2 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_COUNTERS, !3, !"ib_uverbs_object_UVERBS_OBJECT_COUNTERS", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_std_types_counters.c", i32 151, i32 1}
!4 = !{ptr @_object_methods_UVERBS_OBJECT_COUNTERS155, !3, !"_object_methods_UVERBS_OBJECT_COUNTERS155", i1 false, i1 false}
!5 = !{ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_CREATE, !6, !"ib_uverbs_method_UVERBS_METHOD_COUNTERS_CREATE", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/uverbs_std_types_counters.c", i32 125, i32 1}
!7 = !{ptr @_method_attrs_UVERBS_METHOD_COUNTERS_CREATE, !6, !"_method_attrs_UVERBS_METHOD_COUNTERS_CREATE", i1 false, i1 false}
!8 = !{ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_DESTROY, !9, !"ib_uverbs_method_UVERBS_METHOD_COUNTERS_DESTROY", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/uverbs_std_types_counters.c", i32 132, i32 1}
!10 = !{ptr @_method_attrs_UVERBS_METHOD_COUNTERS_DESTROY, !9, !"_method_attrs_UVERBS_METHOD_COUNTERS_DESTROY", i1 false, i1 false}
!11 = !{ptr @ib_uverbs_method_UVERBS_METHOD_COUNTERS_READ, !12, !"ib_uverbs_method_UVERBS_METHOD_COUNTERS_READ", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/core/uverbs_std_types_counters.c", i32 139, i32 1}
!13 = !{ptr @_method_attrs_UVERBS_METHOD_COUNTERS_READ, !12, !"_method_attrs_UVERBS_METHOD_COUNTERS_READ", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
