; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types_qp.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types_qp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon = type { i16 }
%union.anon.186 = type { ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i16, i8, i8, i8 }
%struct.uapi_definition = type { i8, i8, %union.anon, %union.anon.186 }
%struct.uverbs_obj_type_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uverbs_obj_idr_type = type { %struct.uverbs_obj_type, ptr }
%struct.uverbs_obj_type = type { ptr, i32 }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.anon.177 = type { i16, i8 }
%union.anon.179 = type { %struct.anon.180, [4 x i8] }
%struct.anon.180 = type { ptr }
%struct.uverbs_attr_def = type { i16, %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { i8, i8, %union.anon.175, %union.anon.179 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i16, i16 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ib_uqp_object = type { %struct.ib_uevent_object, %struct.mutex, %struct.list_head, ptr }
%struct.ib_uevent_object = type { %struct.ib_uobject, ptr, %struct.list_head, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_uxrcd_object = type { %struct.ib_uobject, %struct.atomic_t }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_uverbs_qp_cap = type { i32, i32, i32, i32, i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.173 }
%union.anon.173 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.174, i16, i16, i8 }
%union.anon.174 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.135, %struct.rdma_restrack_entry }
%struct.anon.135 = type { ptr, %union.anon.136 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { ptr, i32 }
%struct.ib_uverbs_file = type { %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.xarray }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_uverbs_destroy_qp_resp = type { i32 }

@ib_uverbs_object_UVERBS_OBJECT_QP = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 4, ptr @.compoundliteral, i32 2, ptr @_object_methods_UVERBS_OBJECT_QP374 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_qp = dso_local constant { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.186 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.186 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.186 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon { i16 4 }, [4 x i8] undef }, %union.anon.186 { ptr @ib_uverbs_object_UVERBS_OBJECT_QP } }, { i8, i8, %union.anon, { i32 } } { i8 6, i8 1, %union.anon zeroinitializer, { i32 } { i32 196 } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 176 }, ptr @uverbs_free_qp }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_QP374 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_QP_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_QP_DESTROY], [24 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_QP_CREATE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 17, ptr @_method_attrs_UVERBS_METHOD_QP_CREATE, ptr @ib_uverbs_handler_UVERBS_METHOD_QP_CREATE }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_QP_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 1, i32 0, i32 2, ptr @_method_attrs_UVERBS_METHOD_QP_DESTROY, ptr @ib_uverbs_handler_UVERBS_METHOD_QP_DESTROY }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_QP_CREATE = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 0, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 3, i8 32, { %struct.anon.177 } { %struct.anon.177 { i16 4, i8 2 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 1, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 3, i8 0, { %struct.anon.177 } { %struct.anon.177 { i16 10, i8 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 2, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 3, i8 0, { %struct.anon.177 } { %struct.anon.177 { i16 1, i8 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 3, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 3, i8 0, { %struct.anon.177 } { %struct.anon.177 { i16 5, i8 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 4, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 3, i8 0, { %struct.anon.177 } { %struct.anon.177 { i16 3, i8 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 5, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 3, i8 0, { %struct.anon.177 } { %struct.anon.177 { i16 3, i8 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 6, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 3, i8 0, { %struct.anon.177 } { %struct.anon.177 { i16 11, i8 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 7, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.175 { %struct.anon.176 { i16 8, i16 8 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 8, %struct.uverbs_attr_spec { i8 1, i8 -96, %union.anon.175 { %struct.anon.176 { i16 20, i16 20 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 9, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.175 { %struct.anon.176 { i16 8, i16 8 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 10, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.175 { %struct.anon.176 { i16 8, i16 4 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 11, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.175 { %struct.anon.176 { i16 4, i16 4 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 12, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 4, i8 0, { %struct.anon.177 } { %struct.anon.177 { i16 16, i8 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 13, %struct.uverbs_attr_spec { i8 2, i8 -96, %union.anon.175 { %struct.anon.176 { i16 20, i16 20 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 14, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.175 { %struct.anon.176 { i16 4, i16 4 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 16, %union.anon.175 { %struct.anon.176 { i16 -1, i16 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 16, %union.anon.175 { %struct.anon.176 { i16 -1, i16 0 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_handler_UVERBS_METHOD_QP_CREATE.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&obj->mcast_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_uverbs\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_QP_DESTROY = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.22, ptr @.compoundliteral.23], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal constant { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.177 }, %union.anon.179 } } { i16 0, { i8, i8, { %struct.anon.177 }, %union.anon.179 } { i8 3, i8 32, { %struct.anon.177 } { %struct.anon.177 { i16 4, i8 3 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.175 { %struct.anon.176 { i16 4, i16 4 } }, %union.anon.179 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 255]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.25 = private unnamed_addr constant [34 x i8] c"ib_uverbs_object_UVERBS_OBJECT_QP\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"uverbs_def_obj_qp\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 376, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_QP374\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 370, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [41 x i8] c"ib_uverbs_method_UVERBS_METHOD_QP_CREATE\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [42 x i8] c"ib_uverbs_method_UVERBS_METHOD_QP_DESTROY\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [38 x i8] c"_method_attrs_UVERBS_METHOD_QP_CREATE\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 286, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 249, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 252, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 230, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 214, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 156, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [39 x i8] c"_method_attrs_UVERBS_METHOD_QP_DESTROY\00", align 1
@___asan_gen_.80 = private constant [49 x i8] c"../drivers/infiniband/core/uverbs_std_types_qp.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 360, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @ib_uverbs_object_UVERBS_OBJECT_QP, ptr @uverbs_def_obj_qp, ptr @.compoundliteral, ptr @_object_methods_UVERBS_OBJECT_QP374, ptr @ib_uverbs_method_UVERBS_METHOD_QP_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_QP_DESTROY, ptr @_method_attrs_UVERBS_METHOD_QP_CREATE, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @ib_uverbs_handler_UVERBS_METHOD_QP_CREATE.__key, ptr @.str, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @_method_attrs_UVERBS_METHOD_QP_DESTROY, ptr @.compoundliteral.22, ptr @.compoundliteral.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_QP to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_qp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_QP374 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_QP_CREATE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_QP_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_QP_CREATE to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_handler_UVERBS_METHOD_QP_CREATE.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_QP_DESTROY to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_qp(ptr noundef %uobject, i32 noundef %why, ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %why)
  %cmp = icmp eq i32 %why, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mcast_list = getelementptr inbounds %struct.ib_uqp_object, ptr %uobject, i32 0, i32 2
  %2 = ptrtoint ptr %mcast_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mcast_list, align 4
  %cmp.i.not = icmp eq ptr %3, %mcast_list
  br i1 %cmp.i.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else:                                          ; preds = %entry
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %real_qp, align 4
  %cmp2 = icmp eq ptr %1, %5
  br i1 %cmp2, label %if.then3, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ib_uverbs_detach_umcast(ptr noundef %1, ptr noundef %uobject) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.else.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %call6 = tail call i32 @ib_destroy_qp_user(ptr noundef %1, ptr noundef %attrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %uxrcd = getelementptr inbounds %struct.ib_uqp_object, ptr %uobject, i32 0, i32 3
  %6 = ptrtoint ptr %uxrcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uxrcd, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !33
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  tail call void @ib_uverbs_release_uevent(ptr noundef %uobject) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -16, %if.then.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_detach_umcast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_release_uevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_QP_CREATE(ptr noundef %attrs) #0 align 64 {
entry:
  %attr = alloca %struct.ib_qp_init_attr, align 4
  %cap = alloca %struct.ib_uverbs_qp_cap, align 4
  %user_handle = alloca i64, align 8
  %_val = alloca i64, align 8
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
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #7
  %5 = call ptr @memset(ptr %attr, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cap) #7
  %6 = call ptr @memset(ptr %cap, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %user_handle) #7
  %7 = ptrtoint ptr %user_handle to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %user_handle, align 8, !annotation !34
  %8 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i261 = icmp eq i32 %10, 0
  %arrayidx.i.i262 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 16
  %retval.0.i.i263 = select i1 %tobool.i.not.i.i261, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i262
  %cmp.i.i264 = icmp ugt ptr %retval.0.i.i263, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i264, label %_uverbs_copy_from_or_zero.exit, label %if.end.i265

if.end.i265:                                      ; preds = %uverbs_attr_get_uobject.exit
  %len.i = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i.i263, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len.i, align 8
  %13 = tail call i16 @llvm.umin.i16(i16 %12, i16 20) #7
  %cond.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %12)
  %cmp.i1.i = icmp ult i16 %12, 9
  br i1 %cmp.i1.i, label %if.end15.thread.i, label %if.else.i

if.end15.thread.i:                                ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memcpy(ptr %cap, ptr %retval.0.i.i263, i32 %cond.i)
  br label %if.then18.i

if.else.i:                                        ; preds = %if.end.i265
  %15 = ptrtoint ptr %retval.0.i.i263 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %retval.0.i.i263, align 8
  %conv11.i = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv11.i to ptr
  call void @__check_object_size(ptr noundef nonnull %cap, i32 noundef %cond.i, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #7
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.else.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else.i.if.end.i.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %cond.i, i32 -1226833920) #10, !srcloc !35
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !36

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cap, i32 noundef %cond.i) #7
  %19 = call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !37
  %and.i.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cap, ptr noundef %17, i32 noundef %cond.i) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.else.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %cond.i, %if.else.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %cond.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end15.i, label %if.then11.i.i.i, !prof !36

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = sub i32 %cond.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %cap, i32 %sub.i.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %12)
  %cmp16.i = icmp ult i16 %12, 20
  br i1 %cmp16.i, label %if.end15.i.if.then18.i_crit_edge, label %if.end15.i.if.end_crit_edge

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end15.i.if.then18.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i.if.then18.i_crit_edge, %if.end15.thread.i
  %add.ptr.i = getelementptr i8, ptr %cap, i32 %cond.i
  %sub.i = sub nuw nsw i32 20, %cond.i
  %23 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  br label %if.end

_uverbs_copy_from_or_zero.exit:                   ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %retval.0.i.i263 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then18.i, %if.end15.i.if.end_crit_edge
  %call2 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %user_handle, ptr noundef %attrs, i32 noundef 7, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #7
  %25 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %_val, align 8, !annotation !34
  %call5 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 9, i64 noundef 4294967295, ptr noundef null) #7
  %26 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %_val, align 8
  %conv = trunc i64 %27 to i32
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 8
  %28 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %qp_type, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool8.not = icmp eq i32 %call5, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %29 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qp_type, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %if.end10.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 8, label %sw.bb33
    i32 2, label %if.end10.sw.bb37_crit_edge
    i32 3, label %if.end10.sw.bb37_crit_edge370
    i32 4, label %if.end10.sw.bb37_crit_edge371
    i32 9, label %if.end10.sw.bb37_crit_edge372
    i32 255, label %if.end10.sw.bb37_crit_edge373
  ]

if.end10.sw.bb37_crit_edge373:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end10.sw.bb37_crit_edge372:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end10.sw.bb37_crit_edge371:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end10.sw.bb37_crit_edge370:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end10.sw.bb37_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  %32 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %34 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not = icmp eq i32 %34, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %35 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %37 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i268.not = icmp eq i32 %37, 0
  br i1 %tobool.i268.not, label %lor.lhs.false16, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %38 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %40 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i270.not = icmp eq i32 %40, 0
  br i1 %tobool.i270.not, label %lor.lhs.false19, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %41 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %43 = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i272.not = icmp eq i32 %43, 0
  br i1 %tobool.i272.not, label %if.end23, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false19
  %44 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %46 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i.i274 = icmp eq i32 %46, 0
  %arrayidx.i.i275 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 2
  %retval.0.i.i276 = select i1 %tobool.i.not.i.i274, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i275
  %cmp.i.i277 = icmp ugt ptr %retval.0.i.i276, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i277, label %if.end23.uverbs_attr_get_uobject.exit280_crit_edge, label %if.end.i278

if.end23.uverbs_attr_get_uobject.exit280_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_uobject.exit280

if.end.i278:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %retval.0.i.i276 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %retval.0.i.i276, align 8
  br label %uverbs_attr_get_uobject.exit280

uverbs_attr_get_uobject.exit280:                  ; preds = %if.end.i278, %if.end23.uverbs_attr_get_uobject.exit280_crit_edge
  %retval.0.i279 = phi ptr [ %48, %if.end.i278 ], [ %retval.0.i.i276, %if.end23.uverbs_attr_get_uobject.exit280_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i279, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %uverbs_attr_get_uobject.exit280
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %retval.0.i279 to i32
  br label %cleanup

if.end28:                                         ; preds = %uverbs_attr_get_uobject.exit280
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i279, i32 0, i32 3
  %50 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %object, align 8
  %tobool29.not = icmp eq ptr %51, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.end28.sw.epilog_crit_edge

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb33:                                          ; preds = %if.end10
  %call34 = call zeroext i1 @capable(i32 noundef 13) #7
  br i1 %call34, label %sw.bb33.sw.bb37_crit_edge, label %sw.bb33.cleanup_crit_edge

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb33.sw.bb37_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.bb33.sw.bb37_crit_edge, %if.end10.sw.bb37_crit_edge, %if.end10.sw.bb37_crit_edge370, %if.end10.sw.bb37_crit_edge371, %if.end10.sw.bb37_crit_edge372, %if.end10.sw.bb37_crit_edge373
  %52 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %54 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i282.not = icmp eq i32 %54, 0
  br i1 %tobool.i282.not, label %lor.lhs.false40, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false40:                                  ; preds = %sw.bb37
  %55 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %57 = and i32 %56, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i284.not = icmp eq i32 %57, 0
  br i1 %tobool.i284.not, label %lor.lhs.false40.if.end46_crit_edge, label %land.lhs.true

lor.lhs.false40.if.end46_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true:                                    ; preds = %lor.lhs.false40
  %58 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %59)
  %cmp = icmp eq i32 %59, 9
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %lor.lhs.false40.if.end46_crit_edge
  %60 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %62 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i.i286 = icmp eq i32 %62, 0
  %arrayidx.i.i287 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 4
  %retval.0.i.i288 = select i1 %tobool.i.not.i.i286, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i287
  %cmp.i.i289 = icmp ugt ptr %retval.0.i.i288, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i289, label %if.end46.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i290

if.end46.uverbs_attr_get_obj.exit_crit_edge:      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_obj.exit

if.end.i290:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %retval.0.i.i288 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %retval.0.i.i288, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i290, %if.end46.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i291 = phi ptr [ %66, %if.end.i290 ], [ %retval.0.i.i288, %if.end46.uverbs_attr_get_obj.exit_crit_edge ]
  %cmp.i292 = icmp ugt ptr %retval.0.i291, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %if.then49, label %if.end51

if.then49:                                        ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %retval.0.i291 to i32
  br label %cleanup

if.end51:                                         ; preds = %uverbs_attr_get_obj.exit
  %68 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %70 = and i32 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not.i.i294 = icmp eq i32 %70, 0
  %arrayidx.i.i295 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 12
  %retval.0.i.i296 = select i1 %tobool.i.not.i.i294, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i295
  %cmp.i.i297 = icmp ugt ptr %retval.0.i.i296, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i297, label %if.end51.uverbs_attr_get_obj.exit301_crit_edge, label %if.end.i299

if.end51.uverbs_attr_get_obj.exit301_crit_edge:   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_obj.exit301

if.end.i299:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %retval.0.i.i296 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %retval.0.i.i296, align 8
  %object.i298 = getelementptr inbounds %struct.ib_uobject, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %object.i298 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %object.i298, align 8
  br label %uverbs_attr_get_obj.exit301

uverbs_attr_get_obj.exit301:                      ; preds = %if.end.i299, %if.end51.uverbs_attr_get_obj.exit301_crit_edge
  %retval.0.i300 = phi ptr [ %74, %if.end.i299 ], [ %retval.0.i.i296, %if.end51.uverbs_attr_get_obj.exit301_crit_edge ]
  %cmp.i302 = icmp ugt ptr %retval.0.i300, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i302, label %if.else, label %if.then54

if.then54:                                        ; preds = %uverbs_attr_get_obj.exit301
  %max_recv_wr = getelementptr inbounds %struct.ib_uverbs_qp_cap, ptr %cap, i32 0, i32 1
  %75 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_recv_wr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool55.not = icmp eq i32 %76, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false56:                                  ; preds = %if.then54
  %max_recv_sge = getelementptr inbounds %struct.ib_uverbs_qp_cap, ptr %cap, i32 0, i32 3
  %77 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_recv_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool57.not = icmp eq i32 %78, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %lor.lhs.false56.cleanup_crit_edge

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false58:                                  ; preds = %lor.lhs.false56
  %79 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %81 = and i32 %80, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i304.not = icmp eq i32 %81, 0
  br i1 %tobool.i304.not, label %lor.lhs.false61, label %lor.lhs.false58.cleanup_crit_edge

lor.lhs.false58.cleanup_crit_edge:                ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %82 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %84 = and i32 %83, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i306.not = icmp eq i32 %84, 0
  br i1 %tobool.i306.not, label %if.end65, label %lor.lhs.false61.cleanup_crit_edge

lor.lhs.false61.cleanup_crit_edge:                ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false61
  %85 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool66.not = icmp eq i32 %86, 0
  br i1 %tobool66.not, label %if.end65.if.end73_crit_edge, label %if.then67

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then67:                                        ; preds = %if.end65
  %87 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %89 = and i32 %88, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.i.not.i.i308 = icmp eq i32 %89, 0
  %arrayidx.i.i309 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 8
  %retval.0.i.i310 = select i1 %tobool.i.not.i.i308, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i309
  %cmp.i.i311 = icmp ugt ptr %retval.0.i.i310, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i311, label %if.then67.uverbs_attr_get_obj.exit315_crit_edge, label %if.end.i313

if.then67.uverbs_attr_get_obj.exit315_crit_edge:  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_obj.exit315

if.end.i313:                                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %retval.0.i.i310 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %retval.0.i.i310, align 8
  %object.i312 = getelementptr inbounds %struct.ib_uobject, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %object.i312 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %object.i312, align 8
  br label %uverbs_attr_get_obj.exit315

uverbs_attr_get_obj.exit315:                      ; preds = %if.end.i313, %if.then67.uverbs_attr_get_obj.exit315_crit_edge
  %retval.0.i314 = phi ptr [ %93, %if.end.i313 ], [ %retval.0.i.i310, %if.then67.uverbs_attr_get_obj.exit315_crit_edge ]
  %cmp.i316 = icmp ugt ptr %retval.0.i314, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i316, label %if.then70, label %uverbs_attr_get_obj.exit315.if.end73_crit_edge

uverbs_attr_get_obj.exit315.if.end73_crit_edge:   ; preds = %uverbs_attr_get_obj.exit315
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then70:                                        ; preds = %uverbs_attr_get_obj.exit315
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %retval.0.i314 to i32
  br label %cleanup

if.end73:                                         ; preds = %uverbs_attr_get_obj.exit315.if.end73_crit_edge, %if.end65.if.end73_crit_edge
  %send_cq.0 = phi ptr [ %retval.0.i314, %uverbs_attr_get_obj.exit315.if.end73_crit_edge ], [ null, %if.end65.if.end73_crit_edge ]
  %rwq_ind_tbl74 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 11
  %95 = ptrtoint ptr %rwq_ind_tbl74 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %retval.0.i300, ptr %rwq_ind_tbl74, align 4
  br label %if.end90

if.else:                                          ; preds = %uverbs_attr_get_obj.exit301
  %96 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %98 = and i32 %97, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.i.not.i.i318 = icmp eq i32 %98, 0
  %arrayidx.i.i319 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 8
  %retval.0.i.i320 = select i1 %tobool.i.not.i.i318, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i319
  %cmp.i.i321 = icmp ugt ptr %retval.0.i.i320, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i321, label %if.else.uverbs_attr_get_obj.exit325_crit_edge, label %if.end.i323

if.else.uverbs_attr_get_obj.exit325_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_obj.exit325

if.end.i323:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %retval.0.i.i320 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %retval.0.i.i320, align 8
  %object.i322 = getelementptr inbounds %struct.ib_uobject, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %object.i322 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %object.i322, align 8
  br label %uverbs_attr_get_obj.exit325

uverbs_attr_get_obj.exit325:                      ; preds = %if.end.i323, %if.else.uverbs_attr_get_obj.exit325_crit_edge
  %retval.0.i324 = phi ptr [ %102, %if.end.i323 ], [ %retval.0.i.i320, %if.else.uverbs_attr_get_obj.exit325_crit_edge ]
  %cmp.i326 = icmp ugt ptr %retval.0.i324, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i326, label %if.then77, label %if.end79

if.then77:                                        ; preds = %uverbs_attr_get_obj.exit325
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %retval.0.i324 to i32
  br label %cleanup

if.end79:                                         ; preds = %uverbs_attr_get_obj.exit325
  %104 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %105)
  %cmp81.not = icmp eq i32 %105, 9
  br i1 %cmp81.not, label %if.end79.if.end90_crit_edge, label %if.then83

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then83:                                        ; preds = %if.end79
  %106 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %108 = and i32 %107, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.i.not.i.i328 = icmp eq i32 %108, 0
  %arrayidx.i.i329 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 10
  %retval.0.i.i330 = select i1 %tobool.i.not.i.i328, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i329
  %cmp.i.i331 = icmp ugt ptr %retval.0.i.i330, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i331, label %if.then83.uverbs_attr_get_obj.exit335_crit_edge, label %if.end.i333

if.then83.uverbs_attr_get_obj.exit335_crit_edge:  ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_obj.exit335

if.end.i333:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %retval.0.i.i330 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %retval.0.i.i330, align 8
  %object.i332 = getelementptr inbounds %struct.ib_uobject, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %object.i332 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %object.i332, align 8
  br label %uverbs_attr_get_obj.exit335

uverbs_attr_get_obj.exit335:                      ; preds = %if.end.i333, %if.then83.uverbs_attr_get_obj.exit335_crit_edge
  %retval.0.i334 = phi ptr [ %112, %if.end.i333 ], [ %retval.0.i.i330, %if.then83.uverbs_attr_get_obj.exit335_crit_edge ]
  %cmp.i336 = icmp ugt ptr %retval.0.i334, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i336, label %if.then86, label %uverbs_attr_get_obj.exit335.if.end90_crit_edge

uverbs_attr_get_obj.exit335.if.end90_crit_edge:   ; preds = %uverbs_attr_get_obj.exit335
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then86:                                        ; preds = %uverbs_attr_get_obj.exit335
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %retval.0.i334 to i32
  br label %cleanup

if.end90:                                         ; preds = %uverbs_attr_get_obj.exit335.if.end90_crit_edge, %if.end79.if.end90_crit_edge, %if.end73
  %recv_cq.0 = phi ptr [ %retval.0.i334, %uverbs_attr_get_obj.exit335.if.end90_crit_edge ], [ null, %if.end79.if.end90_crit_edge ], [ null, %if.end73 ]
  %send_cq.1 = phi ptr [ %retval.0.i324, %uverbs_attr_get_obj.exit335.if.end90_crit_edge ], [ %retval.0.i324, %if.end79.if.end90_crit_edge ], [ %send_cq.0, %if.end73 ]
  %device91 = getelementptr inbounds %struct.ib_pd, ptr %retval.0.i291, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end90, %if.end28.sw.epilog_crit_edge
  %pd.0 = phi ptr [ %retval.0.i291, %if.end90 ], [ null, %if.end28.sw.epilog_crit_edge ]
  %recv_cq.1 = phi ptr [ %recv_cq.0, %if.end90 ], [ null, %if.end28.sw.epilog_crit_edge ]
  %send_cq.2 = phi ptr [ %send_cq.1, %if.end90 ], [ null, %if.end28.sw.epilog_crit_edge ]
  %xrcd.0 = phi ptr [ null, %if.end90 ], [ %51, %if.end28.sw.epilog_crit_edge ]
  %xrcd_uobj.0 = phi ptr [ null, %if.end90 ], [ %retval.0.i279, %if.end28.sw.epilog_crit_edge ]
  %device.0.in = phi ptr [ %device91, %if.end90 ], [ %51, %if.end28.sw.epilog_crit_edge ]
  %114 = ptrtoint ptr %device.0.in to i32
  call void @__asan_load4_noabort(i32 %114)
  %device.0 = load ptr, ptr %device.0.in, align 4
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 9
  %call92 = call i32 @uverbs_get_flags32(ptr noundef %create_flags, ptr noundef %attrs, i32 noundef 10, i64 noundef 6914) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end95:                                         ; preds = %sw.epilog
  %115 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qp_type, align 4
  %117 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %create_flags, align 4
  %and.i = and i32 %118, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %116)
  %cmp.i337 = icmp eq i32 %116, 255
  %or.cond.i = or i1 %cmp.i337, %tobool.not.i
  br i1 %or.cond.i, label %if.end95.if.end101_crit_edge, label %if.end.i338

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.end.i338:                                      ; preds = %if.end95
  %119 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %116, label %if.end.i338.cleanup_crit_edge [
    i32 8, label %if.end.i338.if.end4.i_crit_edge
    i32 4, label %if.end.i338.if.end4.i_crit_edge374
  ]

if.end.i338.if.end4.i_crit_edge374:               ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.i338.if.end4.i_crit_edge:                  ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.i338.cleanup_crit_edge:                    ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i338.if.end4.i_crit_edge, %if.end.i338.if.end4.i_crit_edge374
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %116)
  %cmp1.not.i = icmp eq i32 %116, 8
  %120 = and i32 %118, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %121 = icmp eq i32 %120, 0
  %brmerge.i = or i1 %cmp1.not.i, %121
  br i1 %brmerge.i, label %if.end4.i.if.end101_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.if.end101_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.end101:                                        ; preds = %if.end4.i.if.end101_crit_edge, %if.end95.if.end101_crit_edge
  %122 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %124 = and i32 %123, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.i341.not = icmp eq i32 %124, 0
  br i1 %tobool.i341.not, label %if.end101.if.end109_crit_edge, label %if.then103

if.end101.if.end109_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then103:                                       ; preds = %if.end101
  %source_qpn = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 12
  %call104 = call fastcc i32 @_uverbs_copy_from(ptr noundef %source_qpn, ptr noundef %attrs, i32 noundef 11, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.then103.cleanup_crit_edge

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end107:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %create_flags, align 4
  %or = or i32 %126, 1024
  store i32 %or, ptr %create_flags, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.end107, %if.end101.if.end109_crit_edge
  %127 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %129 = and i32 %128, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.i.not.i.i343 = icmp eq i32 %129, 0
  %arrayidx.i.i344 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 6
  %retval.0.i.i345 = select i1 %tobool.i.not.i.i343, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i344
  %cmp.i.i346 = icmp ugt ptr %retval.0.i.i345, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i346, label %if.end109.uverbs_attr_get_obj.exit350_crit_edge, label %if.end.i348

if.end109.uverbs_attr_get_obj.exit350_crit_edge:  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %uverbs_attr_get_obj.exit350

if.end.i348:                                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %retval.0.i.i345 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %retval.0.i.i345, align 8
  %object.i347 = getelementptr inbounds %struct.ib_uobject, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %object.i347 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %object.i347, align 8
  br label %uverbs_attr_get_obj.exit350

uverbs_attr_get_obj.exit350:                      ; preds = %if.end.i348, %if.end109.uverbs_attr_get_obj.exit350_crit_edge
  %retval.0.i349 = phi ptr [ %133, %if.end.i348 ], [ %retval.0.i.i345, %if.end109.uverbs_attr_get_obj.exit350_crit_edge ]
  %cmp.i351 = icmp ugt ptr %retval.0.i349, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i351, label %uverbs_attr_get_obj.exit350.if.end130_crit_edge, label %if.then112

uverbs_attr_get_obj.exit350.if.end130_crit_edge:  ; preds = %uverbs_attr_get_obj.exit350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.then112:                                       ; preds = %uverbs_attr_get_obj.exit350
  %srq_type = getelementptr inbounds %struct.ib_srq, ptr %retval.0.i349, i32 0, i32 5
  %134 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp113 = icmp eq i32 %135, 1
  %136 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %137)
  %cmp117.not = icmp eq i32 %137, 10
  br i1 %cmp113, label %land.lhs.true115, label %land.lhs.true123

land.lhs.true115:                                 ; preds = %if.then112
  br i1 %cmp117.not, label %land.lhs.true115.if.end128_crit_edge, label %land.lhs.true115.cleanup_crit_edge

land.lhs.true115.cleanup_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true115.if.end128_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

land.lhs.true123:                                 ; preds = %if.then112
  br i1 %cmp117.not, label %land.lhs.true123.cleanup_crit_edge, label %land.lhs.true123.if.end128_crit_edge

land.lhs.true123.if.end128_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

land.lhs.true123.cleanup_crit_edge:               ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end128:                                        ; preds = %land.lhs.true123.if.end128_crit_edge, %land.lhs.true115.if.end128_crit_edge
  %srq129 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 4
  %138 = ptrtoint ptr %srq129 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %retval.0.i349, ptr %srq129, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end128, %uverbs_attr_get_obj.exit350.if.end130_crit_edge
  %call131 = call fastcc ptr @ib_uverbs_get_async_event(ptr noundef %attrs)
  %event_file = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 1
  %139 = ptrtoint ptr %event_file to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call131, ptr %event_file, align 8
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 2
  %140 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 2, i32 1
  %141 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %event_list, ptr %prev.i, align 4
  %mcast_list = getelementptr inbounds %struct.ib_uqp_object, ptr %retval.0.i, i32 0, i32 2
  %142 = ptrtoint ptr %mcast_list to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %mcast_list, ptr %mcast_list, align 4
  %prev.i352 = getelementptr inbounds %struct.ib_uqp_object, ptr %retval.0.i, i32 0, i32 2, i32 1
  %143 = ptrtoint ptr %prev.i352 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %mcast_list, ptr %prev.i352, align 4
  %144 = ptrtoint ptr %user_handle to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %user_handle, align 8
  %146 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %145, ptr %retval.0.i, align 8
  %147 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @ib_uverbs_qp_event_handler, ptr %attr, align 4
  %send_cq135 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 2
  %148 = ptrtoint ptr %send_cq135 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %send_cq.2, ptr %send_cq135, align 4
  %recv_cq136 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 3
  %149 = ptrtoint ptr %recv_cq136 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %recv_cq.1, ptr %recv_cq136, align 4
  %xrcd137 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 5
  %150 = ptrtoint ptr %xrcd137 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %xrcd.0, ptr %xrcd137, align 4
  %151 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %create_flags, align 4
  %and = and i32 %152, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool139.not = icmp eq i32 %and, 0
  br i1 %tobool139.not, label %if.end130.if.end145_crit_edge, label %if.then140

if.end130.if.end145_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.then140:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %and142 = and i32 %152, -4097
  %153 = ptrtoint ptr %create_flags to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %and142, ptr %create_flags, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.end130.if.end145_crit_edge
  %.sink = phi i32 [ 0, %if.then140 ], [ 1, %if.end130.if.end145_crit_edge ]
  %154 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 7
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %.sink, ptr %154, align 4
  %156 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cap, align 4
  %cap1.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6
  %158 = ptrtoint ptr %cap1.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %cap1.i, align 4
  %max_recv_wr.i = getelementptr inbounds %struct.ib_uverbs_qp_cap, ptr %cap, i32 0, i32 1
  %159 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %max_recv_wr.i, align 4
  %max_recv_wr4.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 1
  %161 = ptrtoint ptr %max_recv_wr4.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %max_recv_wr4.i, align 4
  %max_send_sge.i = getelementptr inbounds %struct.ib_uverbs_qp_cap, ptr %cap, i32 0, i32 2
  %162 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %max_send_sge.i, align 4
  %max_send_sge6.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 2
  %164 = ptrtoint ptr %max_send_sge6.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %max_send_sge6.i, align 4
  %max_recv_sge.i = getelementptr inbounds %struct.ib_uverbs_qp_cap, ptr %cap, i32 0, i32 3
  %165 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %max_recv_sge.i, align 4
  %max_recv_sge8.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 3
  %167 = ptrtoint ptr %max_recv_sge8.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %max_recv_sge8.i, align 4
  %max_inline_data.i = getelementptr inbounds %struct.ib_uverbs_qp_cap, ptr %cap, i32 0, i32 4
  %168 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %max_inline_data.i, align 4
  %max_inline_data10.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 4
  %170 = ptrtoint ptr %max_inline_data10.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %max_inline_data10.i, align 4
  %mcast_lock = getelementptr inbounds %struct.ib_uqp_object, ptr %retval.0.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %mcast_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ib_uverbs_handler_UVERBS_METHOD_QP_CREATE.__key) #7
  %call146 = call ptr @ib_create_qp_user(ptr noundef %device.0, ptr noundef %pd.0, ptr noundef nonnull %attr, ptr noundef %attrs, ptr noundef %retval.0.i, ptr noundef nonnull @.str.18) #7
  %cmp.i355 = icmp ugt ptr %call146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i355, label %if.then148, label %if.end150

if.then148:                                       ; preds = %if.end145
  %171 = ptrtoint ptr %call146 to i32
  %172 = ptrtoint ptr %event_file to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %event_file, align 8
  %tobool170.not = icmp eq ptr %173, null
  br i1 %tobool170.not, label %if.then148.cleanup_crit_edge, label %if.then171

if.then148.cleanup_crit_edge:                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end150:                                        ; preds = %if.end145
  call void @ib_qp_usecnt_inc(ptr noundef %call146) #7
  %174 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %175)
  %cmp152 = icmp eq i32 %175, 10
  br i1 %cmp152, label %if.then154, label %if.end150.if.end159_crit_edge

if.end150.if.end159_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then154:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %uxrcd = getelementptr inbounds %struct.ib_uqp_object, ptr %retval.0.i, i32 0, i32 3
  %176 = ptrtoint ptr %uxrcd to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %xrcd_uobj.0, ptr %uxrcd, align 4
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %xrcd_uobj.0, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %177 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !40
  br label %if.end159

if.end159:                                        ; preds = %if.then154, %if.end150.if.end159_crit_edge
  %object162 = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %178 = ptrtoint ptr %object162 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call146, ptr %object162, align 8
  call void @uverbs_finalize_uobj_create(ptr noundef %attrs, i16 noundef zeroext 0) #7
  %179 = ptrtoint ptr %cap1.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cap1.i, align 4
  %181 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %cap, align 4
  %182 = ptrtoint ptr %max_recv_wr4.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %max_recv_wr4.i, align 4
  %184 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %max_recv_wr.i, align 4
  %185 = ptrtoint ptr %max_send_sge6.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %max_send_sge6.i, align 4
  %187 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %max_send_sge.i, align 4
  %188 = ptrtoint ptr %max_recv_sge8.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %max_recv_sge8.i, align 4
  %190 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %max_recv_sge.i, align 4
  %191 = ptrtoint ptr %max_inline_data10.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %max_inline_data10.i, align 4
  %193 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %max_inline_data.i, align 4
  %call163 = call i32 @uverbs_copy_to_struct_or_zero(ptr noundef %attrs, i32 noundef 13, ptr noundef nonnull %cap, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end166:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %call146, i32 0, i32 19
  %call167 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 14, ptr noundef %qp_num, i32 noundef 4) #7
  br label %cleanup

if.then171:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #9
  call void @uverbs_uobject_put(ptr noundef nonnull %173) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %if.end166, %if.end159.cleanup_crit_edge, %if.then148.cleanup_crit_edge, %land.lhs.true123.cleanup_crit_edge, %land.lhs.true115.cleanup_crit_edge, %if.then103.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i338.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then86, %if.then77, %if.then70, %lor.lhs.false61.cleanup_crit_edge, %lor.lhs.false58.cleanup_crit_edge, %lor.lhs.false56.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.then49, %land.lhs.true.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then26, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %_uverbs_copy_from_or_zero.exit, %if.then11.i.i.i
  %retval.0 = phi i32 [ %67, %if.then49 ], [ %103, %if.then77 ], [ %113, %if.then86 ], [ %call167, %if.end166 ], [ %94, %if.then70 ], [ %49, %if.then26 ], [ %call5, %if.end7.cleanup_crit_edge ], [ -22, %lor.lhs.false19.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -1, %sw.bb33.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %sw.bb37.cleanup_crit_edge ], [ -22, %lor.lhs.false61.cleanup_crit_edge ], [ -22, %lor.lhs.false58.cleanup_crit_edge ], [ -22, %lor.lhs.false56.cleanup_crit_edge ], [ -22, %if.then54.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %call92, %sw.epilog.cleanup_crit_edge ], [ %call104, %if.then103.cleanup_crit_edge ], [ -22, %land.lhs.true123.cleanup_crit_edge ], [ -22, %land.lhs.true115.cleanup_crit_edge ], [ %call163, %if.end159.cleanup_crit_edge ], [ %171, %if.then171 ], [ %171, %if.then148.cleanup_crit_edge ], [ -22, %if.end.i338.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %24, %_uverbs_copy_from_or_zero.exit ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %user_handle) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cap) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_uverbs_copy_from(ptr noundef %to, ptr noundef %attrs_bundle, i32 noundef %idx, i32 noundef %size) unnamed_addr #4 align 64 {
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
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7, !prof !41

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
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.else.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %conv3, i32 -1226833920) #10, !srcloc !35
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !36

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to, i32 noundef %conv3) #7
  %12 = tail call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !37
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to, ptr noundef %10, i32 noundef %conv3) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv3, %if.else.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !36

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
declare dso_local i32 @_uverbs_get_const_unsigned(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags32(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ib_uverbs_get_async_event(ptr noundef %attrs) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 24
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
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %uverbs_attr_get_uobject.exit.if.end_crit_edge

uverbs_attr_get_uobject.exit.if.end_crit_edge:    ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ufile, align 8
  %default_async_file = getelementptr inbounds %struct.ib_uverbs_file, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %default_async_file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %default_async_file, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %uverbs_attr_get_uobject.exit.if.end_crit_edge
  %async_ev_file.0 = phi ptr [ %8, %do.end ], [ %retval.0.i, %uverbs_attr_get_uobject.exit.if.end_crit_edge ]
  %tobool.not = icmp eq ptr %async_ev_file.0, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %async_ev_file.0, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !41

if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then3
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end4_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !36

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end4_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  ret ptr %async_ev_file.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_qp_event_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_qp_usecnt_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_finalize_uobj_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to_struct_or_zero(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_uobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_QP_DESTROY(ptr noundef %attrs) #0 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_destroy_qp_resp, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #7
  %events_reported1 = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %events_reported1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %events_reported1, align 4
  %7 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %resp, align 4
  %call2 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 1, ptr noundef nonnull %resp, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #7
  ret i32 %call2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !16, !18, !20, !22}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @uverbs_def_obj_qp, !1, !"uverbs_def_obj_qp", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types_qp.c", i32 376, i32 30}
!2 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_QP, !3, !"ib_uverbs_object_UVERBS_OBJECT_QP", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_std_types_qp.c", i32 370, i32 1}
!4 = !{ptr @_object_methods_UVERBS_OBJECT_QP374, !3, !"_object_methods_UVERBS_OBJECT_QP374", i1 false, i1 false}
!5 = !{ptr @ib_uverbs_method_UVERBS_METHOD_QP_CREATE, !6, !"ib_uverbs_method_UVERBS_METHOD_QP_CREATE", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/uverbs_std_types_qp.c", i32 286, i32 1}
!7 = !{ptr @_method_attrs_UVERBS_METHOD_QP_CREATE, !6, !"_method_attrs_UVERBS_METHOD_QP_CREATE", i1 false, i1 false}
!8 = !{ptr @ib_uverbs_handler_UVERBS_METHOD_QP_CREATE.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/uverbs_std_types_qp.c", i32 249, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.18, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/core/uverbs_std_types_qp.c", i32 252, i32 11}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = !{ptr @.str.19, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.20, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.21, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!20 = !{ptr @ib_uverbs_method_UVERBS_METHOD_QP_DESTROY, !21, !"ib_uverbs_method_UVERBS_METHOD_QP_DESTROY", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/core/uverbs_std_types_qp.c", i32 360, i32 1}
!22 = !{ptr @_method_attrs_UVERBS_METHOD_QP_DESTROY, !21, !"_method_attrs_UVERBS_METHOD_QP_DESTROY", i1 false, i1 false}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148232685, i64 2148232711, i64 2148232740, i64 2148232774, i64 2148232805, i64 2148232828}
!34 = !{!"auto-init"}
!35 = !{i64 2152460576, i64 2152460601}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 4956131}
!38 = !{i64 4956328}
!39 = !{i64 2152441561}
!40 = !{i64 2148230220, i64 2148230246, i64 2148230275, i64 2148230309, i64 2148230340, i64 2148230363}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2148231750, i64 2148231782, i64 2148231811, i64 2148231845, i64 2148231876, i64 2148231899}
