; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types_cq.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types_cq.c"
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
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.142, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.142 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.171 }
%union.anon.171 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.172, i16, i16, i8 }
%union.anon.172 = type { i64 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.183, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_uverbs_file = type { %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.xarray }
%struct.ib_uevent_object = type { %struct.ib_uobject, ptr, %struct.list_head, i32 }
%struct.ib_uverbs_device = type { %struct.refcount_struct, i32, %struct.completion, %struct.device, [2 x ptr], ptr, i32, %struct.cdev, %struct.rb_root, %struct.mutex, %struct.srcu_struct, %struct.mutex, %struct.list_head, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rb_root = type { ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.ib_ucq_object = type { %struct.ib_uevent_object, %struct.list_head, i32 }
%struct.ib_uverbs_completion_event_file = type { %struct.ib_uobject, %struct.ib_uverbs_event_queue }
%struct.ib_uverbs_event_queue = type { %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_uverbs_destroy_cq_resp = type { i32, i32 }

@ib_uverbs_object_UVERBS_OBJECT_CQ = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 3, ptr @.compoundliteral, i32 2, ptr @_object_methods_UVERBS_OBJECT_CQ216 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_cq = dso_local constant { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon { i16 3 }, [4 x i8] undef }, %union.anon.184 { ptr @ib_uverbs_object_UVERBS_OBJECT_CQ } }, { i8, i8, %union.anon, { i32 } } { i8 6, i8 1, %union.anon zeroinitializer, { i32 } { i32 208 } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 88 }, ptr @uverbs_free_cq }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_CQ216 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_CQ_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_CQ_DESTROY], [24 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_CQ_CREATE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 10, ptr @_method_attrs_UVERBS_METHOD_CQ_CREATE, ptr @ib_uverbs_handler_UVERBS_METHOD_CQ_CREATE }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_CQ_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 1, i32 0, i32 2, ptr @_method_attrs_UVERBS_METHOD_CQ_DESTROY, ptr @ib_uverbs_handler_UVERBS_METHOD_CQ_DESTROY }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_CQ_CREATE = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 3, i8 2 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 3, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 4, i8 0, { %struct.anon.175 } { %struct.anon.175 { i16 2, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 5, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 8, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 6, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 7, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 4, i8 0, { %struct.anon.175 } { %struct.anon.175 { i16 16, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 16, %union.anon.173 { %struct.anon.174 { i16 -1, i16 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 16, %union.anon.173 { %struct.anon.174 { i16 -1, i16 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_CQ_DESTROY = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.13, ptr @.compoundliteral.14], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 3, i8 3 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [34 x i8] c"ib_uverbs_object_UVERBS_OBJECT_CQ\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"uverbs_def_obj_cq\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 218, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_CQ216\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 211, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [41 x i8] c"ib_uverbs_method_UVERBS_METHOD_CQ_CREATE\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [42 x i8] c"ib_uverbs_method_UVERBS_METHOD_CQ_DESTROY\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [38 x i8] c"_method_attrs_UVERBS_METHOD_CQ_CREATE\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 155, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 230, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 214, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 156, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [39 x i8] c"_method_attrs_UVERBS_METHOD_CQ_DESTROY\00", align 1
@___asan_gen_.54 = private constant [49 x i8] c"../drivers/infiniband/core/uverbs_std_types_cq.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 201, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @ib_uverbs_object_UVERBS_OBJECT_CQ, ptr @uverbs_def_obj_cq, ptr @.compoundliteral, ptr @_object_methods_UVERBS_OBJECT_CQ216, ptr @ib_uverbs_method_UVERBS_METHOD_CQ_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_CQ_DESTROY, ptr @_method_attrs_UVERBS_METHOD_CQ_CREATE, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.str, ptr @.str.11, ptr @.str.12, ptr @_method_attrs_UVERBS_METHOD_CQ_DESTROY, ptr @.compoundliteral.13, ptr @.compoundliteral.14], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_CQ to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_cq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_CQ216 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_CQ_CREATE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_CQ_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_CQ_CREATE to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_CQ_DESTROY to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_cq(ptr noundef %uobject, i32 noundef %why, ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_context, align 8
  %call = tail call i32 @ib_destroy_cq_user(ptr noundef %1, ptr noundef %attrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tobool1.not = icmp eq ptr %3, null
  %add.ptr4 = getelementptr i8, ptr %3, i32 -56
  %spec.select = select i1 %tobool1.not, ptr null, ptr %add.ptr4
  tail call void @ib_uverbs_release_ucq(ptr noundef %spec.select, ptr noundef %uobject) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_cq_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_release_ucq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_CQ_CREATE(ptr noundef %attrs) #0 align 64 {
entry:
  %user_handle = alloca i64, align 8
  %attr = alloca %struct.ib_cq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %user_handle) #7
  %9 = ptrtoint ptr %user_handle to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %user_handle, align 8, !annotation !28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attr) #7
  %10 = call ptr @memset(ptr %attr, i32 0, i32 12)
  %create_cq = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 50
  %11 = ptrtoint ptr %create_cq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %create_cq, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cleanup_crit_edge, label %lor.lhs.false

uverbs_attr_get_uobject.exit.cleanup_crit_edge:   ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %uverbs_attr_get_uobject.exit
  %destroy_cq = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 52
  %13 = ptrtoint ptr %destroy_cq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %destroy_cq, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %comp_vector = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 1
  %call3 = call fastcc i32 @_uverbs_copy_from(ptr noundef %comp_vector, ptr noundef %attrs, i32 noundef 4, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call6 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %attr, ptr noundef %attrs, i32 noundef 1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call10 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %user_handle, ptr noundef %attrs, i32 noundef 2, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %flags = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %call15 = call i32 @uverbs_get_flags32(ptr noundef %flags, ptr noundef %attrs, i32 noundef 5, i64 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %15 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %17 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i.i124 = icmp eq i32 %17, 0
  %arrayidx.i.i125 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 6
  %retval.0.i.i126 = select i1 %tobool.i.not.i.i124, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i125
  %cmp.i.i127 = icmp ugt ptr %retval.0.i.i126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i127, label %if.end18.uverbs_attr_get_uobject.exit130_crit_edge, label %if.end.i128

if.end18.uverbs_attr_get_uobject.exit130_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_uobject.exit130

if.end.i128:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %retval.0.i.i126 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %retval.0.i.i126, align 8
  br label %uverbs_attr_get_uobject.exit130

uverbs_attr_get_uobject.exit130:                  ; preds = %if.end.i128, %if.end18.uverbs_attr_get_uobject.exit130_crit_edge
  %retval.0.i129 = phi ptr [ %19, %if.end.i128 ], [ %retval.0.i.i126, %if.end18.uverbs_attr_get_uobject.exit130_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i129, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %uverbs_attr_get_uobject.exit130.if.end25_crit_edge, label %if.then21

uverbs_attr_get_uobject.exit130.if.end25_crit_edge: ; preds = %uverbs_attr_get_uobject.exit130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then21:                                        ; preds = %uverbs_attr_get_uobject.exit130
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i129, i32 0, i32 7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #7
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #7, !srcloc !29
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then21.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !30

if.then21.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then21
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end25_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end25_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then21.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then21.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %if.end25

if.end25:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end25_crit_edge, %uverbs_attr_get_uobject.exit130.if.end25_crit_edge
  %ev_file.0 = phi ptr [ null, %uverbs_attr_get_uobject.exit130.if.end25_crit_edge ], [ %retval.0.i129, %if.else.i.i.i.i.i.if.end25_crit_edge ], [ %retval.0.i129, %if.end15.sink.split.i.i.i.i.i ]
  %22 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %24 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i.i = icmp eq i32 %24, 0
  %arrayidx.i.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 14
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i.i
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end25.uverbs_attr_get_uobject.exit.i_crit_edge, label %if.end.i.i

if.end25.uverbs_attr_get_uobject.exit.i_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_uobject.exit.i

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i.i.i, align 8
  br label %uverbs_attr_get_uobject.exit.i

uverbs_attr_get_uobject.exit.i:                   ; preds = %if.end.i.i, %if.end25.uverbs_attr_get_uobject.exit.i_crit_edge
  %retval.0.i.i131 = phi ptr [ %26, %if.end.i.i ], [ %retval.0.i.i.i, %if.end25.uverbs_attr_get_uobject.exit.i_crit_edge ]
  %cmp.i.i132 = icmp ugt ptr %retval.0.i.i131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i132, label %do.end.i, label %uverbs_attr_get_uobject.exit.i.if.end.i133_crit_edge

uverbs_attr_get_uobject.exit.i.if.end.i133_crit_edge: ; preds = %uverbs_attr_get_uobject.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i133

do.end.i:                                         ; preds = %uverbs_attr_get_uobject.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %27 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ufile.i, align 8
  %default_async_file.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %default_async_file.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %default_async_file.i, align 4
  br label %if.end.i133

if.end.i133:                                      ; preds = %do.end.i, %uverbs_attr_get_uobject.exit.i.if.end.i133_crit_edge
  %async_ev_file.0.i = phi ptr [ %30, %do.end.i ], [ %retval.0.i.i131, %uverbs_attr_get_uobject.exit.i.if.end.i133_crit_edge ]
  %tobool.not.i = icmp eq ptr %async_ev_file.0.i, null
  br i1 %tobool.not.i, label %if.end.i133.ib_uverbs_get_async_event.exit_crit_edge, label %if.then3.i

if.end.i133.ib_uverbs_get_async_event.exit_crit_edge: ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_uverbs_get_async_event.exit

if.then3.i:                                       ; preds = %if.end.i133
  %ref.i.i = getelementptr inbounds %struct.ib_uobject, ptr %async_ev_file.0.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #7
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #7, !srcloc !29
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then3.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !30

if.then3.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then3.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.ib_uverbs_get_async_event.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.ib_uverbs_get_async_event.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_uverbs_get_async_event.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then3.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then3.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %ib_uverbs_get_async_event.exit

ib_uverbs_get_async_event.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.ib_uverbs_get_async_event.exit_crit_edge, %if.end.i133.ib_uverbs_get_async_event.exit_crit_edge
  %event_file = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %event_file to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %async_ev_file.0.i, ptr %event_file, align 8
  %34 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %comp_vector, align 4
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %36 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ufile, align 8
  %device28 = getelementptr inbounds %struct.ib_uverbs_file, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %device28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device28, align 4
  %num_comp_vectors = getelementptr inbounds %struct.ib_uverbs_device, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_comp_vectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %41)
  %cmp.not = icmp ult i32 %35, %41
  br i1 %cmp.not, label %if.end30, label %ib_uverbs_get_async_event.exit.err_event_file_crit_edge

ib_uverbs_get_async_event.exit.err_event_file_crit_edge: ; preds = %ib_uverbs_get_async_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_event_file

if.end30:                                         ; preds = %ib_uverbs_get_async_event.exit
  %comp_list = getelementptr inbounds %struct.ib_ucq_object, ptr %retval.0.i, i32 0, i32 1
  %42 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %comp_list, ptr %comp_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_ucq_object, ptr %retval.0.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %comp_list, ptr %prev.i, align 4
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 2
  %44 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i134 = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %event_list, ptr %prev.i134, align 4
  %size_ib_cq = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 123
  %46 = ptrtoint ptr %size_ib_cq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size_ib_cq, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #10
  %tobool34.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool34.not, label %if.end30.err_event_file_crit_edge, label %if.end36

if.end30.err_event_file_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_event_file

if.end36:                                         ; preds = %if.end30
  %48 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %8, ptr %call9.i.i.i, align 128
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %retval.0.i, ptr %uobject, align 4
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %comp_handler to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ib_uverbs_comp_handler, ptr %comp_handler, align 8
  %event_handler = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %event_handler to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ib_uverbs_cq_event_handler, ptr %event_handler, align 4
  %tobool38.not = icmp eq ptr %ev_file.0, null
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %ev_file.0, i32 0, i32 1
  %spec.select = select i1 %tobool38.not, ptr null, ptr %ev_queue
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %cq_context to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %spec.select, ptr %cq_context, align 16
  %usecnt = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #7
  %53 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %usecnt, align 4
  %res = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 17
  call void @rdma_restrack_new(ptr noundef %res, i32 noundef 1) #7
  call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef null) #7
  %54 = ptrtoint ptr %create_cq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %create_cq, align 4
  %call42 = call i32 %55(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %attr, ptr noundef %attrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %err_free

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %56 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call9.i.i.i, ptr %object, align 8
  %57 = ptrtoint ptr %user_handle to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %user_handle, align 8
  %59 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %retval.0.i, align 8
  call void @rdma_restrack_add(ptr noundef %res) #7
  call void @uverbs_finalize_uobj_create(ptr noundef %attrs, i16 noundef zeroext 0) #7
  %cqe52 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 5
  %call53 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 6, ptr noundef %cqe52, i32 noundef 4) #7
  br label %cleanup

err_free:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = call i32 @rdma_restrack_put(ptr noundef %res) #7
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  br label %err_event_file

err_event_file:                                   ; preds = %err_free, %if.end30.err_event_file_crit_edge, %ib_uverbs_get_async_event.exit.err_event_file_crit_edge
  %ret.2 = phi i32 [ %call42, %err_free ], [ -22, %ib_uverbs_get_async_event.exit.err_event_file_crit_edge ], [ -12, %if.end30.err_event_file_crit_edge ]
  %60 = ptrtoint ptr %event_file to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %event_file, align 8
  %tobool58.not = icmp eq ptr %61, null
  br i1 %tobool58.not, label %err_event_file.if.end62_crit_edge, label %if.then59

err_event_file.if.end62_crit_edge:                ; preds = %err_event_file
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then59:                                        ; preds = %err_event_file
  call void @__sanitizer_cov_trace_pc() #9
  call void @uverbs_uobject_put(ptr noundef nonnull %61) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %err_event_file.if.end62_crit_edge
  %tobool63.not = icmp eq ptr %ev_file.0, null
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %if.then64

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  call void @uverbs_uobject_put(ptr noundef %retval.0.i129) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end62.cleanup_crit_edge, %if.end45, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %uverbs_attr_get_uobject.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %if.end45 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %uverbs_attr_get_uobject.exit.cleanup_crit_edge ], [ %call10, %if.end11.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %ret.2, %if.then64 ], [ %ret.2, %if.end62.cleanup_crit_edge ], [ %call6, %if.end7.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %user_handle) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_uverbs_copy_from(ptr noundef %to, ptr noundef %attrs_bundle, i32 noundef %idx, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %and.i3.i.i = and i32 %idx, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i3.i.i, 0
  %conv.i = shl i32 %idx, 1
  %and1.i4.i.i = and i32 %conv.i, 131070
  %inc.i.i.i = and i32 %conv.i, 122878
  %shl.i.i.i = add nuw nsw i32 %inc.i.i.i, 2
  %or7.i.i.i = or i32 %and1.i4.i.i, 1
  %id.addr.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %or7.i.i.i, i32 %shl.i.i.i
  %sub.i.i.i = add nsw i32 %id.addr.0.i.i.i, -1
  %attr_present.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs_bundle, i32 0, i32 5
  %div3.i.i.i = lshr i32 %sub.i.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %attr_present.i.i, i32 %div3.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %sub.i.i.i, 31
  %2 = shl nuw i32 1, %and.i.i.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  %arrayidx.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs_bundle, i32 0, i32 6, i32 %sub.i.i.i
  %retval.0.i = select i1 %tobool.i.not.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 8
  %conv3 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %size)
  %cmp = icmp ugt i32 %conv3, %size
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7, !prof !30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %6)
  %cmp.i31 = icmp ult i16 %6, 9
  br i1 %cmp.i31, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = call ptr @memcpy(ptr %to, ptr %retval.0.i, i32 %conv3)
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %retval.0.i, align 8
  %conv15 = trunc i64 %9 to i32
  %10 = inttoptr i32 %conv15 to ptr
  tail call void @__check_object_size(ptr noundef %to, i32 noundef %conv3, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.else.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %conv3, i32 -1226833920) #11, !srcloc !32
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !31

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to, i32 noundef %conv3) #7
  %12 = tail call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !33
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to, ptr noundef %10, i32 noundef %conv3) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv3, %if.else.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !31

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %conv3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %to, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.then9 ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags32(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_comp_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_cq_event_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_new(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_set_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_finalize_uobj_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_restrack_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_uobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_CQ_DESTROY(ptr noundef %attrs) #0 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_destroy_cq_resp, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #7
  %5 = getelementptr inbounds %struct.ib_uverbs_destroy_cq_resp, ptr %resp, i32 0, i32 1
  %comp_events_reported1 = getelementptr inbounds %struct.ib_ucq_object, ptr %retval.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %comp_events_reported1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comp_events_reported1, align 8
  %8 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %resp, align 4
  %events_reported = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %events_reported to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %events_reported, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %5, align 4
  %call2 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 1, ptr noundef nonnull %resp, i32 noundef 8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #7
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @uverbs_def_obj_cq, !1, !"uverbs_def_obj_cq", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types_cq.c", i32 218, i32 30}
!2 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_CQ, !3, !"ib_uverbs_object_UVERBS_OBJECT_CQ", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_std_types_cq.c", i32 211, i32 1}
!4 = !{ptr @_object_methods_UVERBS_OBJECT_CQ216, !3, !"_object_methods_UVERBS_OBJECT_CQ216", i1 false, i1 false}
!5 = !{ptr @ib_uverbs_method_UVERBS_METHOD_CQ_CREATE, !6, !"ib_uverbs_method_UVERBS_METHOD_CQ_CREATE", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/uverbs_std_types_cq.c", i32 155, i32 1}
!7 = !{ptr @_method_attrs_UVERBS_METHOD_CQ_CREATE, !6, !"_method_attrs_UVERBS_METHOD_CQ_CREATE", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.11, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!13 = !{ptr @.str.12, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!15 = !{ptr @ib_uverbs_method_UVERBS_METHOD_CQ_DESTROY, !16, !"ib_uverbs_method_UVERBS_METHOD_CQ_DESTROY", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/core/uverbs_std_types_cq.c", i32 201, i32 1}
!17 = !{ptr @_method_attrs_UVERBS_METHOD_CQ_DESTROY, !16, !"_method_attrs_UVERBS_METHOD_CQ_DESTROY", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i64 2148227790, i64 2148227822, i64 2148227851, i64 2148227885, i64 2148227916, i64 2148227939}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2152456616, i64 2152456641}
!33 = !{i64 4952171}
!34 = !{i64 4952368}
!35 = !{i64 2152437601}
