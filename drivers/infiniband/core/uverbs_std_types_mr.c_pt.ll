; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types_mr.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types_mr.c"
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
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.171 }
%union.anon.171 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.172, i16, i16, i8 }
%union.anon.172 = type { i64 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_dm_mr_attr = type { i64, i64, i32 }
%struct.ib_dm = type { ptr, i32, i32, ptr, %struct.atomic_t }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.130, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.130 = type { %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ib_uverbs_object_UVERBS_OBJECT_MR = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 7, ptr @.compoundliteral, i32 5, ptr @_object_methods_UVERBS_OBJECT_MR379 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_mr = dso_local constant { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon { i16 7 }, [4 x i8] undef }, %union.anon.184 { ptr @ib_uverbs_object_UVERBS_OBJECT_MR } }, { i8, i8, %union.anon, { i32 } } { i8 6, i8 1, %union.anon zeroinitializer, { i32 } { i32 232 } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @uverbs_free_mr }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_MR379 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_ADVISE_MR, ptr @ib_uverbs_method_UVERBS_METHOD_DM_MR_REG, ptr @ib_uverbs_method_UVERBS_METHOD_MR_DESTROY, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_MR, ptr @ib_uverbs_method_UVERBS_METHOD_REG_DMABUF_MR], [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_ADVISE_MR = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 2, i32 0, i32 4, ptr @_method_attrs_UVERBS_METHOD_ADVISE_MR, ptr @ib_uverbs_handler_UVERBS_METHOD_ADVISE_MR }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_DM_MR_REG = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 8, ptr @_method_attrs_UVERBS_METHOD_DM_MR_REG, ptr @ib_uverbs_handler_UVERBS_METHOD_DM_MR_REG }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_MR_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 1, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_MR_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_QUERY_MR = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 3, i32 0, i32 5, ptr @_method_attrs_UVERBS_METHOD_QUERY_MR, ptr @ib_uverbs_handler_UVERBS_METHOD_QUERY_MR }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_REG_DMABUF_MR = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4, i32 0, i32 9, ptr @_method_attrs_UVERBS_METHOD_REG_DMABUF_MR, ptr @ib_uverbs_handler_UVERBS_METHOD_REG_DMABUF_MR }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_ADVISE_MR = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 1, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 3, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.173 { %struct.anon.174 { i16 -1, i16 16 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_DM_MR_REG = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 7, i8 2 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 3, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 1, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 8, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 5, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 14, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 6, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 7, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_MR_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.15], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 7, i8 3 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_QUERY_MR = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 7, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 3, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_REG_DMABUF_MR = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 7, i8 2 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 1, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 1, i8 0 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 3, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 8, i16 8 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 5, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 6, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 8, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 7, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 8, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.30 = private unnamed_addr constant [34 x i8] c"ib_uverbs_object_UVERBS_OBJECT_MR\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"uverbs_def_obj_mr\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 381, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_MR379\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 372, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [41 x i8] c"ib_uverbs_method_UVERBS_METHOD_ADVISE_MR\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [41 x i8] c"ib_uverbs_method_UVERBS_METHOD_DM_MR_REG\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [42 x i8] c"ib_uverbs_method_UVERBS_METHOD_MR_DESTROY\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [40 x i8] c"ib_uverbs_method_UVERBS_METHOD_QUERY_MR\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [45 x i8] c"ib_uverbs_method_UVERBS_METHOD_REG_DMABUF_MR\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [38 x i8] c"_method_attrs_UVERBS_METHOD_ADVISE_MR\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 269, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [38 x i8] c"_method_attrs_UVERBS_METHOD_DM_MR_REG\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 305, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 230, i32 6 }
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 214, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 156, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [39 x i8] c"_method_attrs_UVERBS_METHOD_MR_DESTROY\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 365, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [37 x i8] c"_method_attrs_UVERBS_METHOD_QUERY_MR\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 286, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [42 x i8] c"_method_attrs_UVERBS_METHOD_REG_DMABUF_MR\00", align 1
@___asan_gen_.95 = private constant [49 x i8] c"../drivers/infiniband/core/uverbs_std_types_mr.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 334, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @ib_uverbs_object_UVERBS_OBJECT_MR, ptr @uverbs_def_obj_mr, ptr @.compoundliteral, ptr @_object_methods_UVERBS_OBJECT_MR379, ptr @ib_uverbs_method_UVERBS_METHOD_ADVISE_MR, ptr @ib_uverbs_method_UVERBS_METHOD_DM_MR_REG, ptr @ib_uverbs_method_UVERBS_METHOD_MR_DESTROY, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_MR, ptr @ib_uverbs_method_UVERBS_METHOD_REG_DMABUF_MR, ptr @_method_attrs_UVERBS_METHOD_ADVISE_MR, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @_method_attrs_UVERBS_METHOD_DM_MR_REG, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.str, ptr @.str.13, ptr @.str.14, ptr @_method_attrs_UVERBS_METHOD_MR_DESTROY, ptr @.compoundliteral.15, ptr @_method_attrs_UVERBS_METHOD_QUERY_MR, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @_method_attrs_UVERBS_METHOD_REG_DMABUF_MR, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_MR to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_mr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_MR379 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_ADVISE_MR to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_DM_MR_REG to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_MR_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_MR to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_REG_DMABUF_MR to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_ADVISE_MR to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_DM_MR_REG to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_MR_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_QUERY_MR to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_REG_DMABUF_MR to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_mr(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %call = tail call i32 @ib_dereg_mr_user(ptr noundef %1, ptr noundef %attrs) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_ADVISE_MR(ptr noundef %attrs) #0 align 64 {
entry:
  %flags = alloca i32, align 4
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
  br i1 %cmp.i.i, label %entry.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i

entry.uverbs_attr_get_obj.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_obj.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i.i, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i, %entry.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_obj.exit_crit_edge ]
  %device = getelementptr inbounds %struct.ib_pd, ptr %retval.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %flags, align 4, !annotation !37
  %advise_mr = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 61
  %10 = ptrtoint ptr %advise_mr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %advise_mr, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %uverbs_attr_get_obj.exit.cleanup_crit_edge, label %if.end

uverbs_attr_get_obj.exit.cleanup_crit_edge:       ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_obj.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #6
  %12 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %_val, align 8, !annotation !37
  %call1 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 1, i64 noundef 4294967295, ptr noundef null) #6
  %13 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %_val, align 8
  %conv = trunc i64 %14 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @uverbs_get_flags32(ptr noundef nonnull %flags, ptr noundef %attrs, i32 noundef 2, i64 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %17 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i.i.i = icmp eq i32 %17, 0
  %arrayidx.i.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 6
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i.i
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %retval.0.i.i.i to i32
  br label %uverbs_attr_ptr_get_array_size.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %len.i.i = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len.i.i, align 8
  %conv.i.i = zext i16 %20 to i32
  br label %uverbs_attr_ptr_get_array_size.exit

uverbs_attr_ptr_get_array_size.exit:              ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i35 = phi i32 [ %18, %if.then.i.i ], [ %conv.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i35)
  %cmp.i = icmp slt i32 %retval.0.i.i35, 0
  %rem.i = and i32 %retval.0.i.i35, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %div1.i = lshr i32 %retval.0.i.i35, 4
  %spec.select.i = select i1 %tobool.not.i, i32 %div1.i, i32 -22
  %retval.0.i36 = select i1 %cmp.i, i32 %retval.0.i.i35, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i36)
  %cmp = icmp slt i32 %retval.0.i36, 1
  br i1 %cmp, label %uverbs_attr_ptr_get_array_size.exit.cleanup_crit_edge, label %if.end12

uverbs_attr_ptr_get_array_size.exit.cleanup_crit_edge: ; preds = %uverbs_attr_ptr_get_array_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %uverbs_attr_ptr_get_array_size.exit
  %21 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i.i38 = icmp eq i32 %23, 0
  %retval.0.i.i40 = select i1 %tobool.i.not.i.i38, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i.i
  %cmp.i.i41 = icmp ugt ptr %retval.0.i.i40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i41, label %if.end12.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i43

if.end12.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i43:                                       ; preds = %if.end12
  %len.i.i42 = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i.i40, i32 0, i32 1
  %24 = ptrtoint ptr %len.i.i42 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len.i.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %25)
  %cmp.i1.i = icmp ult i16 %25, 9
  br i1 %cmp.i1.i, label %if.end.i43.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i43.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %retval.0.i.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %retval.0.i.i40, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i43.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end12.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i44 = phi ptr [ %retval.0.i.i40, %if.end12.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %27, %cond.false.i ], [ %retval.0.i.i40, %if.end.i43.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %28 = ptrtoint ptr %advise_mr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %advise_mr, align 4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %call16 = call i32 %29(ptr noundef %retval.0.i, i32 noundef %conv, i32 noundef %31, ptr noundef %retval.0.i44, i32 noundef %retval.0.i36, ptr noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %uverbs_attr_get_alloced_ptr.exit, %uverbs_attr_ptr_get_array_size.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uverbs_attr_get_obj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %uverbs_attr_get_alloced_ptr.exit ], [ -95, %uverbs_attr_get_obj.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %retval.0.i36, %uverbs_attr_ptr_get_array_size.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_uverbs_get_const_unsigned(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags32(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_DM_MR_REG(ptr noundef %attrs) #0 align 64 {
entry:
  %attr = alloca %struct.ib_dm_mr_attr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %attr) #6
  %0 = call ptr @memset(ptr %attr, i32 0, i32 24)
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
  br i1 %cmp.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %6 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %8 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i113 = icmp eq i32 %8, 0
  %arrayidx.i.i114 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 10
  %retval.0.i.i115 = select i1 %tobool.i.not.i.i113, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i114
  %cmp.i.i116 = icmp ugt ptr %retval.0.i.i115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116, label %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i117

uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge: ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_obj.exit

if.end.i117:                                      ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %retval.0.i.i115 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %retval.0.i.i115, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i117, %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i118 = phi ptr [ %12, %if.end.i117 ], [ %retval.0.i.i115, %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge ]
  %13 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i120 = icmp eq i32 %15, 0
  %arrayidx.i.i121 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 6
  %retval.0.i.i122 = select i1 %tobool.i.not.i.i120, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i121
  %cmp.i.i123 = icmp ugt ptr %retval.0.i.i122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i123, label %uverbs_attr_get_obj.exit.uverbs_attr_get_obj.exit127_crit_edge, label %if.end.i125

uverbs_attr_get_obj.exit.uverbs_attr_get_obj.exit127_crit_edge: ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_obj.exit127

if.end.i125:                                      ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %retval.0.i.i122 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %retval.0.i.i122, align 8
  %object.i124 = getelementptr inbounds %struct.ib_uobject, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %object.i124 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %object.i124, align 8
  br label %uverbs_attr_get_obj.exit127

uverbs_attr_get_obj.exit127:                      ; preds = %if.end.i125, %uverbs_attr_get_obj.exit.uverbs_attr_get_obj.exit127_crit_edge
  %retval.0.i126 = phi ptr [ %19, %if.end.i125 ], [ %retval.0.i.i122, %uverbs_attr_get_obj.exit.uverbs_attr_get_obj.exit127_crit_edge ]
  %device = getelementptr inbounds %struct.ib_pd, ptr %retval.0.i126, i32 0, i32 2
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %reg_dm_mr = getelementptr inbounds %struct.ib_device, ptr %21, i32 0, i32 1, i32 87
  %22 = ptrtoint ptr %reg_dm_mr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_dm_mr, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %uverbs_attr_get_obj.exit127.cleanup_crit_edge, label %if.end

uverbs_attr_get_obj.exit127.cleanup_crit_edge:    ; preds = %uverbs_attr_get_obj.exit127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_obj.exit127
  %offset = getelementptr inbounds %struct.ib_dm_mr_attr, ptr %attr, i32 0, i32 1
  %call3 = call fastcc i32 @_uverbs_copy_from(ptr noundef %offset, ptr noundef %attrs, i32 noundef 1, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %attr, ptr noundef %attrs, i32 noundef 2, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %access_flags = getelementptr inbounds %struct.ib_dm_mr_attr, ptr %attr, i32 0, i32 2
  %call11 = call i32 @uverbs_get_flags32(ptr noundef %access_flags, ptr noundef %attrs, i32 noundef 4, i64 noundef 1072693503) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %24 = ptrtoint ptr %access_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %access_flags, align 8
  %and = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %and.i = and i32 %25, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %or.cond.not.i = or i1 %tobool.not.i, %tobool2.not.i
  %and3.i = and i32 %25, -1072693504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond17.i = and i1 %tobool4.not.i, %or.cond.not.i
  br i1 %or.cond17.i, label %if.end6.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end18
  %and7.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end23_crit_edge, label %land.lhs.true9.i

if.end6.i.if.end23_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true9.i:                                 ; preds = %if.end6.i
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %21, i32 0, i32 22, i32 9
  %26 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %device_cap_flags.i, align 8
  %and10.i = and i64 %27, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp eq i64 %and10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true9.i.if.end23_crit_edge

land.lhs.true9.i.if.end23_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true9.i.if.end23_crit_edge, %if.end6.i.if.end23_crit_edge
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset, align 8
  %length25 = getelementptr inbounds %struct.ib_dm, ptr %retval.0.i118, i32 0, i32 1
  %30 = ptrtoint ptr %length25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length25, align 4
  %conv = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv)
  %cmp = icmp ugt i64 %29, %conv
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %lor.lhs.false

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end23
  %32 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %attr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %conv)
  %cmp30 = icmp ugt i64 %33, %conv
  %sub = sub i64 %conv, %29
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %sub)
  %cmp37 = icmp ugt i64 %33, %sub
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp37
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end40

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 4
  %reg_dm_mr43 = getelementptr inbounds %struct.ib_device, ptr %35, i32 0, i32 1, i32 87
  %36 = ptrtoint ptr %reg_dm_mr43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_dm_mr43, align 4
  %call44 = call ptr %37(ptr noundef %retval.0.i126, ptr noundef %retval.0.i118, ptr noundef nonnull %attr, ptr noundef %attrs) #6
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call44 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 4
  %41 = ptrtoint ptr %call44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %call44, align 8
  %pd51 = getelementptr inbounds %struct.ib_mr, ptr %call44, i32 0, i32 1
  %42 = ptrtoint ptr %pd51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i126, ptr %pd51, align 4
  %type = getelementptr inbounds %struct.ib_mr, ptr %call44, i32 0, i32 7
  %43 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %type, align 4
  %dm52 = getelementptr inbounds %struct.ib_mr, ptr %call44, i32 0, i32 10
  %44 = ptrtoint ptr %dm52 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %retval.0.i118, ptr %dm52, align 4
  %45 = getelementptr inbounds %struct.ib_mr, ptr %call44, i32 0, i32 9
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %retval.0.i, ptr %45, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %retval.0.i126, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #6
  %47 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #6, !srcloc !38
  %usecnt53 = getelementptr inbounds %struct.ib_dm, ptr %retval.0.i118, i32 0, i32 4
  %call.i.i111 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt53, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %usecnt53, i32 1, i32 3, i32 1) #6
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt53, ptr %usecnt53, i32 1, ptr elementtype(i32) %usecnt53) #6, !srcloc !38
  %res = getelementptr inbounds %struct.ib_mr, ptr %call44, i32 0, i32 12
  call void @rdma_restrack_new(ptr noundef %res, i32 noundef 4) #6
  call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef null) #6
  call void @rdma_restrack_add(ptr noundef %res) #6
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %49 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call44, ptr %object, align 8
  call void @uverbs_finalize_uobj_create(ptr noundef %attrs, i16 noundef zeroext 0) #6
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call44, i32 0, i32 2
  %call56 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 6, ptr noundef %lkey, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call44, i32 0, i32 3
  %call60 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 7, ptr noundef %rkey, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end48.cleanup_crit_edge, %if.then46, %lor.lhs.false.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uverbs_attr_get_obj.exit127.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.then46 ], [ %call60, %if.end59 ], [ -95, %uverbs_attr_get_obj.exit127.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ %call56, %if.end48.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -22, %land.lhs.true9.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attr) #6
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_uverbs_copy_from(ptr noundef %to, ptr noundef %attrs_bundle, i32 noundef %idx, i32 noundef %size) unnamed_addr #3 align 64 {
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
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7, !prof !39

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
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.else.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %conv3, i32 -1226833920) #9, !srcloc !40
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !41

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to, i32 noundef %conv3) #6
  %12 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !42
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to, ptr noundef %10, i32 noundef %conv3) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv3, %if.else.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !41

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
declare dso_local void @rdma_restrack_new(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_set_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_finalize_uobj_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_destroy_def_handler(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_QUERY_MR(ptr noundef %attrs) #0 align 64 {
entry:
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
  br i1 %cmp.i.i, label %entry.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i

entry.uverbs_attr_get_obj.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_obj.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i.i, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i, %entry.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %retval.0.i.i, %entry.uverbs_attr_get_obj.exit_crit_edge ]
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %retval.0.i, i32 0, i32 2
  %call1 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 1, ptr noundef %lkey, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %uverbs_attr_get_obj.exit.cleanup_crit_edge

uverbs_attr_get_obj.exit.cleanup_crit_edge:       ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_obj.exit
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %retval.0.i, i32 0, i32 3
  %call2 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 2, ptr noundef %rkey, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.ib_mr, ptr %retval.0.i, i32 0, i32 5
  %call6 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 3, ptr noundef %length, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %iova = getelementptr inbounds %struct.ib_mr, ptr %retval.0.i, i32 0, i32 4
  %call10 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4, ptr noundef %iova, i32 noundef 8) #6
  %7 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %cond.true [
    i32 0, label %if.end9.cleanup_crit_edge
    i32 -2, label %if.end9.cleanup_crit_edge28
  ]

if.end9.cleanup_crit_edge28:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end9.cleanup_crit_edge, %if.end9.cleanup_crit_edge28, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uverbs_attr_get_obj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %uverbs_attr_get_obj.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %cond.true ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_REG_DMABUF_MR(ptr noundef %attrs) #0 align 64 {
entry:
  %offset = alloca i64, align 8
  %length = alloca i64, align 8
  %iova = alloca i64, align 8
  %fd = alloca i32, align 4
  %access_flags = alloca i32, align 4
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
  %tobool.i.not.i.i99 = icmp eq i32 %7, 0
  %arrayidx.i.i100 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 2
  %retval.0.i.i101 = select i1 %tobool.i.not.i.i99, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i100
  %cmp.i.i102 = icmp ugt ptr %retval.0.i.i101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i102, label %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i103

uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge: ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_get_obj.exit

if.end.i103:                                      ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %retval.0.i.i101 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i.i101, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i103, %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i104 = phi ptr [ %11, %if.end.i103 ], [ %retval.0.i.i101, %uverbs_attr_get_uobject.exit.uverbs_attr_get_obj.exit_crit_edge ]
  %device = getelementptr inbounds %struct.ib_pd, ptr %retval.0.i104, i32 0, i32 2
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #6
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %offset, align 8, !annotation !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length) #6
  %15 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %length, align 8, !annotation !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova) #6
  %16 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %iova, align 8, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fd) #6
  %17 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %fd, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %access_flags) #6
  %18 = ptrtoint ptr %access_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %access_flags, align 4, !annotation !37
  %reg_user_mr_dmabuf = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 1, i32 56
  %19 = ptrtoint ptr %reg_user_mr_dmabuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_user_mr_dmabuf, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %uverbs_attr_get_obj.exit.cleanup_crit_edge, label %if.end

uverbs_attr_get_obj.exit.cleanup_crit_edge:       ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_obj.exit
  %call2 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %offset, ptr noundef %attrs, i32 noundef 2, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %length, ptr noundef %attrs, i32 noundef 3, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %iova, ptr noundef %attrs, i32 noundef 4, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offset, align 8
  %23 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %iova, align 8
  %25 = xor i64 %24, %22
  %26 = and i64 %25, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp.not = icmp eq i64 %26, 0
  br i1 %cmp.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %call17 = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %fd, ptr noundef %attrs, i32 noundef 5, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @uverbs_get_flags32(ptr noundef nonnull %access_flags, ptr noundef %attrs, i32 noundef 6, i64 noundef 1048591) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %27 = ptrtoint ptr %access_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %access_flags, align 4
  %and.i = and i32 %28, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %or.cond.not.i = or i1 %tobool.not.i, %tobool2.not.i
  %and3.i = and i32 %28, -1072693504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond17.i = and i1 %tobool4.not.i, %or.cond.not.i
  br i1 %or.cond17.i, label %if.end6.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end24
  %and7.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end28_crit_edge, label %land.lhs.true9.i

if.end6.i.if.end28_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true9.i:                                 ; preds = %if.end6.i
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 22, i32 9
  %29 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %device_cap_flags.i, align 8
  %and10.i = and i64 %30, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp eq i64 %and10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true9.i.if.end28_crit_edge

land.lhs.true9.i.if.end28_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true9.i.if.end28_crit_edge, %if.end6.i.if.end28_crit_edge
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device, align 4
  %reg_user_mr_dmabuf31 = getelementptr inbounds %struct.ib_device, ptr %32, i32 0, i32 1, i32 56
  %33 = ptrtoint ptr %reg_user_mr_dmabuf31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_user_mr_dmabuf31, align 4
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %offset, align 8
  %37 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %length, align 8
  %39 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %iova, align 8
  %41 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fd, align 4
  %call32 = call ptr %34(ptr noundef %retval.0.i104, i64 noundef %36, i64 noundef %38, i64 noundef %40, i32 noundef %42, i32 noundef %28, ptr noundef %attrs) #6
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 4
  %46 = ptrtoint ptr %call32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %call32, align 8
  %pd39 = getelementptr inbounds %struct.ib_mr, ptr %call32, i32 0, i32 1
  %47 = ptrtoint ptr %pd39 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i104, ptr %pd39, align 4
  %type = getelementptr inbounds %struct.ib_mr, ptr %call32, i32 0, i32 7
  %48 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %type, align 4
  %49 = getelementptr inbounds %struct.ib_mr, ptr %call32, i32 0, i32 9
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %retval.0.i, ptr %49, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %retval.0.i104, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #6
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #6, !srcloc !38
  %res = getelementptr inbounds %struct.ib_mr, ptr %call32, i32 0, i32 12
  call void @rdma_restrack_new(ptr noundef %res, i32 noundef 4) #6
  call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef null) #6
  call void @rdma_restrack_add(ptr noundef %res) #6
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %52 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call32, ptr %object, align 8
  call void @uverbs_finalize_uobj_create(ptr noundef %attrs, i16 noundef zeroext 0) #6
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call32, i32 0, i32 2
  %call42 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 7, ptr noundef %lkey, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call32, i32 0, i32 3
  %call46 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 8, ptr noundef %rkey, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end36.cleanup_crit_edge, %if.then34, %land.lhs.true9.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uverbs_attr_get_obj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %43, %if.then34 ], [ %call46, %if.end45 ], [ -95, %uverbs_attr_get_obj.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call42, %if.end36.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %land.lhs.true9.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access_flags) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !18, !20, !21, !23, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @uverbs_def_obj_mr, !1, !"uverbs_def_obj_mr", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types_mr.c", i32 381, i32 30}
!2 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_MR, !3, !"ib_uverbs_object_UVERBS_OBJECT_MR", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_std_types_mr.c", i32 372, i32 1}
!4 = !{ptr @_object_methods_UVERBS_OBJECT_MR379, !3, !"_object_methods_UVERBS_OBJECT_MR379", i1 false, i1 false}
!5 = !{ptr @ib_uverbs_method_UVERBS_METHOD_ADVISE_MR, !6, !"ib_uverbs_method_UVERBS_METHOD_ADVISE_MR", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/uverbs_std_types_mr.c", i32 269, i32 1}
!7 = !{ptr @_method_attrs_UVERBS_METHOD_ADVISE_MR, !6, !"_method_attrs_UVERBS_METHOD_ADVISE_MR", i1 false, i1 false}
!8 = !{ptr @ib_uverbs_method_UVERBS_METHOD_DM_MR_REG, !9, !"ib_uverbs_method_UVERBS_METHOD_DM_MR_REG", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/uverbs_std_types_mr.c", i32 305, i32 1}
!10 = !{ptr @_method_attrs_UVERBS_METHOD_DM_MR_REG, !9, !"_method_attrs_UVERBS_METHOD_DM_MR_REG", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.13, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!16 = !{ptr @.str.14, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!18 = !{ptr @ib_uverbs_method_UVERBS_METHOD_MR_DESTROY, !19, !"ib_uverbs_method_UVERBS_METHOD_MR_DESTROY", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/core/uverbs_std_types_mr.c", i32 365, i32 1}
!20 = !{ptr @_method_attrs_UVERBS_METHOD_MR_DESTROY, !19, !"_method_attrs_UVERBS_METHOD_MR_DESTROY", i1 false, i1 false}
!21 = !{ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_MR, !22, !"ib_uverbs_method_UVERBS_METHOD_QUERY_MR", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/uverbs_std_types_mr.c", i32 286, i32 1}
!23 = !{ptr @_method_attrs_UVERBS_METHOD_QUERY_MR, !22, !"_method_attrs_UVERBS_METHOD_QUERY_MR", i1 false, i1 false}
!24 = !{ptr @ib_uverbs_method_UVERBS_METHOD_REG_DMABUF_MR, !25, !"ib_uverbs_method_UVERBS_METHOD_REG_DMABUF_MR", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/core/uverbs_std_types_mr.c", i32 334, i32 1}
!26 = !{ptr @_method_attrs_UVERBS_METHOD_REG_DMABUF_MR, !25, !"_method_attrs_UVERBS_METHOD_REG_DMABUF_MR", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{i64 2148204450, i64 2148204476, i64 2148204505, i64 2148204539, i64 2148204570, i64 2148204593}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2152481753, i64 2152481778}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 4977308}
!43 = !{i64 4977505}
!44 = !{i64 2152462738}
