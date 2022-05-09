; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types_srq.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types_srq.c"
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
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.133, %struct.rdma_restrack_entry }
%struct.anon.133 = type { ptr, %union.anon.134 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { ptr, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ib_usrq_object = type { %struct.ib_uevent_object, ptr }
%struct.ib_uevent_object = type { %struct.ib_uobject, ptr, %struct.list_head, i32 }
%struct.ib_uxrcd_object = type { %struct.ib_uobject, %struct.atomic_t }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.167 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.167 = type { ptr, %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { ptr }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.171 }
%union.anon.171 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.172, i16, i16, i8 }
%union.anon.172 = type { i64 }
%struct.ib_uverbs_file = type { %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.xarray }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_uverbs_destroy_srq_resp = type { i32 }

@ib_uverbs_object_UVERBS_OBJECT_SRQ = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 5, ptr @.compoundliteral, i32 2, ptr @_object_methods_UVERBS_OBJECT_SRQ228 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_srq = dso_local constant { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon { i16 5 }, [4 x i8] undef }, %union.anon.184 { ptr @ib_uverbs_object_UVERBS_OBJECT_SRQ } }, { i8, i8, %union.anon, { i32 } } { i8 6, i8 1, %union.anon zeroinitializer, { i32 } { i32 180 } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 80 }, ptr @uverbs_free_srq }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_SRQ228 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_SRQ_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_SRQ_DESTROY], [24 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_SRQ_CREATE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 16, ptr @_method_attrs_UVERBS_METHOD_SRQ_CREATE, ptr @ib_uverbs_handler_UVERBS_METHOD_SRQ_CREATE }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_SRQ_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 1, i32 0, i32 2, ptr @_method_attrs_UVERBS_METHOD_SRQ_DESTROY, ptr @ib_uverbs_handler_UVERBS_METHOD_SRQ_DESTROY }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_SRQ_CREATE = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 5, i8 2 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 1, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 1, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 9, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 5, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 6, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 7, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 2, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 0, { %struct.anon.175 } { %struct.anon.175 { i16 10, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 3, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 0, { %struct.anon.175 } { %struct.anon.175 { i16 3, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 8, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 10, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 4, i8 0, { %struct.anon.175 } { %struct.anon.175 { i16 16, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 11, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 12, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 13, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 16, %union.anon.173 { %struct.anon.174 { i16 -1, i16 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 16, %union.anon.173 { %struct.anon.174 { i16 -1, i16 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_SRQ_DESTROY = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.19, ptr @.compoundliteral.20], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 5, i8 3 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant [35 x i8] c"ib_uverbs_object_UVERBS_OBJECT_SRQ\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"uverbs_def_obj_srq\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 230, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [37 x i8] c"_object_methods_UVERBS_OBJECT_SRQ228\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 222, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [42 x i8] c"ib_uverbs_method_UVERBS_METHOD_SRQ_CREATE\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [43 x i8] c"ib_uverbs_method_UVERBS_METHOD_SRQ_DESTROY\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [39 x i8] c"_method_attrs_UVERBS_METHOD_SRQ_CREATE\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 146, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 230, i32 6 }
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 214, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 156, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [40 x i8] c"_method_attrs_UVERBS_METHOD_SRQ_DESTROY\00", align 1
@___asan_gen_.66 = private constant [50 x i8] c"../drivers/infiniband/core/uverbs_std_types_srq.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 212, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @ib_uverbs_object_UVERBS_OBJECT_SRQ, ptr @uverbs_def_obj_srq, ptr @.compoundliteral, ptr @_object_methods_UVERBS_OBJECT_SRQ228, ptr @ib_uverbs_method_UVERBS_METHOD_SRQ_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_SRQ_DESTROY, ptr @_method_attrs_UVERBS_METHOD_SRQ_CREATE, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.str, ptr @.str.17, ptr @.str.18, ptr @_method_attrs_UVERBS_METHOD_SRQ_DESTROY, ptr @.compoundliteral.19, ptr @.compoundliteral.20], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_SRQ to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_srq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_SRQ228 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_SRQ_CREATE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_SRQ_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_SRQ_CREATE to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_SRQ_DESTROY to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_srq(ptr noundef %uobject, i32 noundef %why, ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %srq_type1 = getelementptr inbounds %struct.ib_srq, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %srq_type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srq_type1, align 4
  %call = tail call i32 @ib_destroy_srq_user(ptr noundef %1, ptr noundef %attrs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %uxrcd = getelementptr inbounds %struct.ib_usrq_object, ptr %uobject, i32 0, i32 1
  %4 = ptrtoint ptr %uxrcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uxrcd, align 8
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #6, !srcloc !28
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  tail call void @ib_uverbs_release_uevent(ptr noundef %uobject) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_srq_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_release_uevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_SRQ_CREATE(ptr noundef %attrs) #0 align 64 {
entry:
  %attr = alloca %struct.ib_srq_init_attr, align 4
  %user_handle = alloca i64, align 8
  %_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %5 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i157 = icmp eq i32 %7, 0
  %arrayidx.i.i158 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 2
  %retval.0.i.i159 = select i1 %tobool.i.not.i.i157, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i158
  %cmp.i.i160 = icmp ugt ptr %retval.0.i.i159, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i160, label %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i161

uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge: ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_obj.exit

if.end.i161:                                      ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %retval.0.i.i159 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i.i159, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i161, %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i162 = phi ptr [ %11, %if.end.i161 ], [ %retval.0.i.i159, %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %attr) #6
  %12 = call ptr @memset(ptr %attr, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %user_handle) #6
  %13 = ptrtoint ptr %user_handle to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %user_handle, align 8, !annotation !29
  %attr2 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 2
  %max_sge = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 2, i32 1
  %call3 = call fastcc i32 @_uverbs_copy_from(ptr noundef %max_sge, ptr noundef %attrs, i32 noundef 6, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %uverbs_attr_get_obj.exit.cleanup_crit_edge

uverbs_attr_get_obj.exit.cleanup_crit_edge:       ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_obj.exit
  %call5 = call fastcc i32 @_uverbs_copy_from(ptr noundef %attr2, ptr noundef %attrs, i32 noundef 5, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %srq_limit = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 2, i32 2
  %call9 = call fastcc i32 @_uverbs_copy_from(ptr noundef %srq_limit, ptr noundef %attrs, i32 noundef 7, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call13 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %user_handle, ptr noundef %attrs, i32 noundef 4, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #6
  %14 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %_val, align 8, !annotation !29
  %call17 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 9, i64 noundef 4294967295, ptr noundef null) #6
  %15 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %_val, align 8
  %conv = trunc i64 %16 to i32
  %srq_type = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 3
  %17 = ptrtoint ptr %srq_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %srq_type, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool20.not = icmp eq i32 %call17, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %18 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srq_type, align 4
  %20 = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %if.then25, label %if.end22.if.end35_crit_edge

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then25:                                        ; preds = %if.end22
  %22 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %24 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i164 = icmp eq i32 %24, 0
  %arrayidx.i.i165 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 6
  %retval.0.i.i166 = select i1 %tobool.i.not.i.i164, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i165
  %cmp.i.i167 = icmp ugt ptr %retval.0.i.i166, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i167, label %if.then25.uverbs_attr_get_obj.exit171_crit_edge, label %if.end.i169

if.then25.uverbs_attr_get_obj.exit171_crit_edge:  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_obj.exit171

if.end.i169:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %retval.0.i.i166 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i.i166, align 8
  %object.i168 = getelementptr inbounds %struct.ib_uobject, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %object.i168 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %object.i168, align 8
  br label %uverbs_attr_get_obj.exit171

uverbs_attr_get_obj.exit171:                      ; preds = %if.end.i169, %if.then25.uverbs_attr_get_obj.exit171_crit_edge
  %retval.0.i170 = phi ptr [ %28, %if.end.i169 ], [ %retval.0.i.i166, %if.then25.uverbs_attr_get_obj.exit171_crit_edge ]
  %ext = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 4
  %29 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i170, ptr %ext, align 4
  %cmp.i = icmp ugt ptr %retval.0.i170, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %uverbs_attr_get_obj.exit171.if.end35_crit_edge

uverbs_attr_get_obj.exit171.if.end35_crit_edge:   ; preds = %uverbs_attr_get_obj.exit171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then30:                                        ; preds = %uverbs_attr_get_obj.exit171
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %retval.0.i170 to i32
  br label %cleanup

if.end35:                                         ; preds = %uverbs_attr_get_obj.exit171.if.end35_crit_edge, %if.end22.if.end35_crit_edge
  %31 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end35.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb52
    i32 0, label %if.end35.sw.epilog_crit_edge
  ]

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end35
  %32 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %34 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i.i173 = icmp eq i32 %34, 0
  %arrayidx.i.i174 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 4
  %retval.0.i.i175 = select i1 %tobool.i.not.i.i173, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i174
  %cmp.i.i176 = icmp ugt ptr %retval.0.i.i175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i176, label %sw.bb.uverbs_attr_get_uobject.exit179_crit_edge, label %if.end.i177

sw.bb.uverbs_attr_get_uobject.exit179_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_uobject.exit179

if.end.i177:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %retval.0.i.i175 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %retval.0.i.i175, align 8
  br label %uverbs_attr_get_uobject.exit179

uverbs_attr_get_uobject.exit179:                  ; preds = %if.end.i177, %sw.bb.uverbs_attr_get_uobject.exit179_crit_edge
  %retval.0.i178 = phi ptr [ %36, %if.end.i177 ], [ %retval.0.i.i175, %sw.bb.uverbs_attr_get_uobject.exit179_crit_edge ]
  %cmp.i180 = icmp ugt ptr %retval.0.i178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then39, label %if.end41

if.then39:                                        ; preds = %uverbs_attr_get_uobject.exit179
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %retval.0.i178 to i32
  br label %cleanup

if.end41:                                         ; preds = %uverbs_attr_get_uobject.exit179
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i178, i32 0, i32 3
  %38 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %object, align 8
  %40 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %40, align 4
  %tobool45.not = icmp eq ptr %39, null
  br i1 %tobool45.not, label %if.end41.cleanup_crit_edge, label %if.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %uxrcd = getelementptr inbounds %struct.ib_usrq_object, ptr %retval.0.i, i32 0, i32 1
  %42 = ptrtoint ptr %uxrcd to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i178, ptr %uxrcd, align 8
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %retval.0.i178, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #6
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #6, !srcloc !30
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end35
  %44 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 4, i32 1
  %call54 = call fastcc i32 @_uverbs_copy_from(ptr noundef %44, ptr noundef %attrs, i32 noundef 8, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %sw.bb52.sw.epilog_crit_edge, label %sw.bb52.cleanup_crit_edge

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb52.sw.epilog_crit_edge:                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52.sw.epilog_crit_edge, %if.end47, %if.end35.sw.epilog_crit_edge
  %45 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %47 = and i32 %46, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i.i = icmp eq i32 %47, 0
  %arrayidx.i.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 20
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i.i
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %sw.epilog.uverbs_attr_get_uobject.exit.i_crit_edge, label %if.end.i.i

sw.epilog.uverbs_attr_get_uobject.exit.i_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_uobject.exit.i

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %retval.0.i.i.i, align 8
  br label %uverbs_attr_get_uobject.exit.i

uverbs_attr_get_uobject.exit.i:                   ; preds = %if.end.i.i, %sw.epilog.uverbs_attr_get_uobject.exit.i_crit_edge
  %retval.0.i.i181 = phi ptr [ %49, %if.end.i.i ], [ %retval.0.i.i.i, %sw.epilog.uverbs_attr_get_uobject.exit.i_crit_edge ]
  %cmp.i.i182 = icmp ugt ptr %retval.0.i.i181, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i182, label %do.end.i, label %uverbs_attr_get_uobject.exit.i.if.end.i183_crit_edge

uverbs_attr_get_uobject.exit.i.if.end.i183_crit_edge: ; preds = %uverbs_attr_get_uobject.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i183

do.end.i:                                         ; preds = %uverbs_attr_get_uobject.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %50 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ufile.i, align 8
  %default_async_file.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %default_async_file.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %default_async_file.i, align 4
  br label %if.end.i183

if.end.i183:                                      ; preds = %do.end.i, %uverbs_attr_get_uobject.exit.i.if.end.i183_crit_edge
  %async_ev_file.0.i = phi ptr [ %53, %do.end.i ], [ %retval.0.i.i181, %uverbs_attr_get_uobject.exit.i.if.end.i183_crit_edge ]
  %tobool.not.i = icmp eq ptr %async_ev_file.0.i, null
  br i1 %tobool.not.i, label %if.end.i183.ib_uverbs_get_async_event.exit_crit_edge, label %if.then3.i

if.end.i183.ib_uverbs_get_async_event.exit_crit_edge: ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %ib_uverbs_get_async_event.exit

if.then3.i:                                       ; preds = %if.end.i183
  %ref.i.i = getelementptr inbounds %struct.ib_uobject, ptr %async_ev_file.0.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #6
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then3.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !32

if.then3.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then3.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %55 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %.not.i.i.i.i.i.i = icmp sgt i32 %55, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.ib_uverbs_get_async_event.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !33

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.ib_uverbs_get_async_event.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ib_uverbs_get_async_event.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then3.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then3.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #6
  br label %ib_uverbs_get_async_event.exit

ib_uverbs_get_async_event.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.ib_uverbs_get_async_event.exit_crit_edge, %if.end.i183.ib_uverbs_get_async_event.exit_crit_edge
  %event_file = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %event_file to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %async_ev_file.0.i, ptr %event_file, align 8
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 2
  %57 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %event_list, ptr %prev.i, align 4
  %59 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ib_uverbs_srq_event_handler, ptr %attr, align 4
  %60 = ptrtoint ptr %user_handle to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %user_handle, align 8
  %62 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %retval.0.i, align 8
  %call62 = call ptr @ib_create_srq_user(ptr noundef %retval.0.i162, ptr noundef nonnull %attr, ptr noundef %retval.0.i, ptr noundef %attrs) #6
  %cmp.i184 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then64, label %if.end66

if.then64:                                        ; preds = %ib_uverbs_get_async_event.exit
  %63 = ptrtoint ptr %call62 to i32
  %64 = ptrtoint ptr %event_file to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %event_file, align 8
  %tobool93.not = icmp eq ptr %65, null
  br i1 %tobool93.not, label %if.then64.if.end97_crit_edge, label %if.then94

if.then64.if.end97_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.end66:                                         ; preds = %ib_uverbs_get_async_event.exit
  %object69 = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %66 = ptrtoint ptr %object69 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call62, ptr %object69, align 8
  call void @uverbs_finalize_uobj_create(ptr noundef %attrs, i16 noundef zeroext 0) #6
  %call72 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 11, ptr noundef %attr2, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end66
  %call78 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 12, ptr noundef %max_sge, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end81:                                         ; preds = %if.end75
  %67 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp = icmp eq i32 %68, 1
  br i1 %cmp, label %if.then84, label %if.end81.if.end90_crit_edge

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then84:                                        ; preds = %if.end81
  %srq_num = getelementptr inbounds %struct.ib_srq, ptr %call62, i32 0, i32 7, i32 1, i32 0, i32 1
  %call86 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 13, ptr noundef %srq_num, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then84.if.end90_crit_edge, label %if.then84.cleanup_crit_edge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then84.if.end90_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.end90:                                         ; preds = %if.then84.if.end90_crit_edge, %if.end81.if.end90_crit_edge
  br label %cleanup

if.then94:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  call void @uverbs_uobject_put(ptr noundef nonnull %65) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.then64.if.end97_crit_edge
  %69 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp99 = icmp eq i32 %70, 1
  br i1 %cmp99, label %if.then101, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %uxrcd102 = getelementptr inbounds %struct.ib_usrq_object, ptr %retval.0.i, i32 0, i32 1
  %71 = ptrtoint ptr %uxrcd102 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %uxrcd102, align 8
  %refcnt103 = getelementptr inbounds %struct.ib_uxrcd_object, ptr %72, i32 0, i32 1
  %call.i.i155 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt103, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %refcnt103, i32 1, i32 3, i32 1) #6
  %73 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt103, ptr %refcnt103, i32 1, ptr elementtype(i32) %refcnt103) #6, !srcloc !28
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %if.end97.cleanup_crit_edge, %if.end90, %if.then84.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %sw.bb52.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then39, %if.end35.cleanup_crit_edge, %if.then30, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uverbs_attr_get_obj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then30 ], [ 0, %if.end90 ], [ %37, %if.then39 ], [ %call17, %if.end19.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ %call54, %sw.bb52.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ], [ %call72, %if.end66.cleanup_crit_edge ], [ %call78, %if.end75.cleanup_crit_edge ], [ %call86, %if.then84.cleanup_crit_edge ], [ %63, %if.then101 ], [ %63, %if.end97.cleanup_crit_edge ], [ %call13, %if.end14.cleanup_crit_edge ], [ %call9, %if.end10.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call3, %uverbs_attr_get_obj.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %user_handle) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %attr) #6
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_uverbs_copy_from(ptr noundef %to, ptr noundef %attrs_bundle, i32 noundef %idx, i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7, !prof !32

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %6)
  %cmp.i31 = icmp ult i16 %6, 9
  br i1 %cmp.i31, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %7 = call ptr @memcpy(ptr %to, ptr %retval.0.i, i32 %conv3)
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %retval.0.i, align 8
  %conv15 = trunc i64 %9 to i32
  %10 = inttoptr i32 %conv15 to ptr
  tail call void @__check_object_size(ptr noundef %to, i32 noundef %conv3, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.else.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %conv3, i32 -1226833920) #9, !srcloc !34
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !33

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to, i32 noundef %conv3) #6
  %12 = tail call i32 @llvm.read_register.i32(metadata !18) #6
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !35
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to, ptr noundef %10, i32 noundef %conv3) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv3, %if.else.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !33

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
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
declare dso_local void @ib_uverbs_srq_event_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_srq_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_finalize_uobj_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

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
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_SRQ_DESTROY(ptr noundef %attrs) #0 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_destroy_srq_resp, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %events_reported1 = getelementptr inbounds %struct.ib_uevent_object, ptr %retval.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %events_reported1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %events_reported1, align 4
  %7 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %resp, align 4
  %call2 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 1, ptr noundef nonnull %resp, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @uverbs_def_obj_srq, !1, !"uverbs_def_obj_srq", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types_srq.c", i32 230, i32 30}
!2 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_SRQ, !3, !"ib_uverbs_object_UVERBS_OBJECT_SRQ", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_std_types_srq.c", i32 222, i32 1}
!4 = !{ptr @_object_methods_UVERBS_OBJECT_SRQ228, !3, !"_object_methods_UVERBS_OBJECT_SRQ228", i1 false, i1 false}
!5 = !{ptr @ib_uverbs_method_UVERBS_METHOD_SRQ_CREATE, !6, !"ib_uverbs_method_UVERBS_METHOD_SRQ_CREATE", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/uverbs_std_types_srq.c", i32 146, i32 1}
!7 = !{ptr @_method_attrs_UVERBS_METHOD_SRQ_CREATE, !6, !"_method_attrs_UVERBS_METHOD_SRQ_CREATE", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.17, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!13 = !{ptr @.str.18, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!15 = !{ptr @ib_uverbs_method_UVERBS_METHOD_SRQ_DESTROY, !16, !"ib_uverbs_method_UVERBS_METHOD_SRQ_DESTROY", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/core/uverbs_std_types_srq.c", i32 212, i32 1}
!17 = !{ptr @_method_attrs_UVERBS_METHOD_SRQ_DESTROY, !16, !"_method_attrs_UVERBS_METHOD_SRQ_DESTROY", i1 false, i1 false}
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
!28 = !{i64 2148228439, i64 2148228465, i64 2148228494, i64 2148228528, i64 2148228559, i64 2148228582}
!29 = !{!"auto-init"}
!30 = !{i64 2148225974, i64 2148226000, i64 2148226029, i64 2148226063, i64 2148226094, i64 2148226117}
!31 = !{i64 2148227504, i64 2148227536, i64 2148227565, i64 2148227599, i64 2148227630, i64 2148227653}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2152456330, i64 2152456355}
!35 = !{i64 4951885}
!36 = !{i64 4952082}
!37 = !{i64 2152437315}
