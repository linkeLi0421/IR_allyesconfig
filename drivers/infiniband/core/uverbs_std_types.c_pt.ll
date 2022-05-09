; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+uverbs_destroy_def_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_uverbs_destroy_def_handler\09\09\09\09"
module asm "\09.long\09__crc_uverbs_destroy_def_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uverbs_destroy_def_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22uverbs_destroy_def_handler\22\09\09\09\09\09"
module asm "__kstrtabns_uverbs_destroy_def_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon.174 = type { i16 }
%union.anon.176 = type { ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i16, i8, i8, i8 }
%struct.uapi_definition = type { i8, i8, %union.anon.173, %union.anon.176 }
%struct.uverbs_obj_type_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uverbs_obj_idr_type = type { %struct.uverbs_obj_type, ptr }
%struct.uverbs_obj_type = type { ptr, i32 }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.anon.179 = type { i16, i8 }
%union.anon.181 = type { %struct.anon.182, [4 x i8] }
%struct.anon.182 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uverbs_obj_fd_type = type { %struct.uverbs_obj_type, ptr, ptr, ptr, i32 }
%struct.ib_uverbs_event_queue = type { %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_uverbs_completion_event_file = type { %struct.ib_uobject, %struct.ib_uverbs_event_queue }
%struct.ib_flow = type { ptr, ptr, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.172 = type { %struct.ib_core_device }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.ib_uflow_object = type { %struct.ib_uobject, ptr }
%struct.ib_rwq_ind_table = type { ptr, ptr, %struct.atomic_t, i32, i32, ptr }
%struct.ib_wq = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t }
%struct.ib_uxrcd_object = type { %struct.ib_uobject, %struct.atomic_t }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.184 }
%union.anon.184 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.185, i16, i16, i8 }
%union.anon.185 = type { i64 }
%struct.ib_uverbs_file = type { %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.xarray }
%struct.ib_uverbs_device = type { %struct.refcount_struct, i32, %struct.completion, %struct.device, [2 x ptr], ptr, i32, %struct.cdev, %struct.rb_root, %struct.mutex, %struct.srcu_struct, %struct.mutex, %struct.list_head, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rb_root = type { ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }

@__kstrtab_uverbs_destroy_def_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_uverbs_destroy_def_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_uverbs_destroy_def_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uverbs_destroy_def_handler to i32), ptr @__kstrtab_uverbs_destroy_def_handler, ptr @__kstrtabns_uverbs_destroy_def_handler }, section "___ksymtab+uverbs_destroy_def_handler", align 4
@ib_uverbs_object_UVERBS_OBJECT_PD = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 1, ptr @.compoundliteral, i32 1, ptr @_object_methods_UVERBS_OBJECT_PD250 }, [16 x i8] zeroinitializer }, align 32
@ib_uverbs_object_UVERBS_OBJECT_COMP_CHANNEL = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 2, ptr @.compoundliteral.2, i32 0, ptr @_object_methods_UVERBS_OBJECT_COMP_CHANNEL180 }, [16 x i8] zeroinitializer }, align 32
@ib_uverbs_object_UVERBS_OBJECT_AH = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 6, ptr @.compoundliteral.3, i32 1, ptr @_object_methods_UVERBS_OBJECT_AH202 }, [16 x i8] zeroinitializer }, align 32
@ib_uverbs_object_UVERBS_OBJECT_MW = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 8, ptr @.compoundliteral.5, i32 1, ptr @_object_methods_UVERBS_OBJECT_MW191 }, [16 x i8] zeroinitializer }, align 32
@ib_uverbs_object_UVERBS_OBJECT_FLOW = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 9, ptr @.compoundliteral.7, i32 1, ptr @_object_methods_UVERBS_OBJECT_FLOW215 }, [16 x i8] zeroinitializer }, align 32
@ib_uverbs_object_UVERBS_OBJECT_RWQ_IND_TBL = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 11, ptr @.compoundliteral.9, i32 1, ptr @_object_methods_UVERBS_OBJECT_RWQ_IND_TBL226 }, [16 x i8] zeroinitializer }, align 32
@ib_uverbs_object_UVERBS_OBJECT_XRCD = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 10, ptr @.compoundliteral.11, i32 1, ptr @_object_methods_UVERBS_OBJECT_XRCD239 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_intf = dso_local constant { <{ { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, %struct.uapi_definition }>, [44 x i8] } { <{ { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 }, { i8, i8, %union.anon.173, { i32 } }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 } { i8 3, i8 0, { %struct.anon.174, [4 x i8] } { %struct.anon.174 { i16 1 }, [4 x i8] undef }, %union.anon.176 { ptr @ib_uverbs_object_UVERBS_OBJECT_PD } }, { i8, i8, %union.anon.173, { i32 } } { i8 6, i8 1, %union.anon.173 zeroinitializer, { i32 } { i32 144 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 } { i8 3, i8 0, { %struct.anon.174, [4 x i8] } { %struct.anon.174 { i16 2 }, [4 x i8] undef }, %union.anon.176 { ptr @ib_uverbs_object_UVERBS_OBJECT_COMP_CHANNEL } }, { i8, i8, %union.anon.173, { i32 } } { i8 6, i8 1, %union.anon.173 zeroinitializer, { i32 } { i32 144 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 } { i8 3, i8 0, { %struct.anon.174, [4 x i8] } { %struct.anon.174 { i16 6 }, [4 x i8] undef }, %union.anon.176 { ptr @ib_uverbs_object_UVERBS_OBJECT_AH } }, { i8, i8, %union.anon.173, { i32 } } { i8 6, i8 1, %union.anon.173 zeroinitializer, { i32 } { i32 164 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 } { i8 3, i8 0, { %struct.anon.174, [4 x i8] } { %struct.anon.174 { i16 8 }, [4 x i8] undef }, %union.anon.176 { ptr @ib_uverbs_object_UVERBS_OBJECT_MW } }, { i8, i8, %union.anon.173, { i32 } } { i8 6, i8 1, %union.anon.173 zeroinitializer, { i32 } { i32 260 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 } { i8 3, i8 0, { %struct.anon.174, [4 x i8] } { %struct.anon.174 { i16 9 }, [4 x i8] undef }, %union.anon.176 { ptr @ib_uverbs_object_UVERBS_OBJECT_FLOW } }, { i8, i8, %union.anon.173, { i32 } } { i8 6, i8 1, %union.anon.173 zeroinitializer, { i32 } { i32 284 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 } { i8 3, i8 0, { %struct.anon.174, [4 x i8] } { %struct.anon.174 { i16 11 }, [4 x i8] undef }, %union.anon.176 { ptr @ib_uverbs_object_UVERBS_OBJECT_RWQ_IND_TBL } }, { i8, i8, %union.anon.173, { i32 } } { i8 6, i8 1, %union.anon.173 zeroinitializer, { i32 } { i32 336 } }, { i8, i8, { %struct.anon.174, [4 x i8] }, %union.anon.176 } { i8 3, i8 0, { %struct.anon.174, [4 x i8] } { %struct.anon.174 { i16 10 }, [4 x i8] undef }, %union.anon.176 { ptr @ib_uverbs_object_UVERBS_OBJECT_XRCD } }, { i8, i8, %union.anon.173, { i32 } } { i8 6, i8 1, %union.anon.173 zeroinitializer, { i32 } { i32 276 } }, %struct.uapi_definition zeroinitializer }>, [44 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @uverbs_free_pd }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_PD250 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_PD_DESTROY], [28 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_PD_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_PD_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_PD_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.1], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } } { i16 0, { i8, i8, { %struct.anon.179 }, %union.anon.181 } { i8 3, i8 32, { %struct.anon.179 } { %struct.anon.179 { i16 1, i8 3 } }, %union.anon.181 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@uverbs_fd_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@uverbs_event_fops = external dso_local constant %struct.file_operations, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[infinibandevent]\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.uverbs_obj_fd_type, [40 x i8] } { %struct.uverbs_obj_fd_type { %struct.uverbs_obj_type { ptr @uverbs_fd_class, i32 168 }, ptr @uverbs_completion_event_file_destroy_uobj, ptr @uverbs_event_fops, ptr @.str, i32 0 }, [40 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_COMP_CHANNEL180 = internal constant { [0 x ptr], [32 x i8] } zeroinitializer, align 32
@.compoundliteral.3 = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @uverbs_free_ah }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_AH202 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_AH_DESTROY], [28 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_AH_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_AH_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_AH_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.4], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } } { i16 0, { i8, i8, { %struct.anon.179 }, %union.anon.181 } { i8 3, i8 32, { %struct.anon.179 } { %struct.anon.179 { i16 6, i8 3 } }, %union.anon.181 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @uverbs_free_mw }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_MW191 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_MW_DESTROY], [28 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_MW_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_MW_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_MW_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } } { i16 0, { i8, i8, { %struct.anon.179 }, %union.anon.181 } { i8 3, i8 32, { %struct.anon.179 } { %struct.anon.179 { i16 8, i8 3 } }, %union.anon.181 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 64 }, ptr @uverbs_free_flow }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_FLOW215 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_DESTROY], [28 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_FLOW_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_FLOW_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_FLOW_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.8], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } } { i16 0, { i8, i8, { %struct.anon.179 }, %union.anon.181 } { i8 3, i8 32, { %struct.anon.179 } { %struct.anon.179 { i16 9, i8 3 } }, %union.anon.181 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @uverbs_free_rwq_ind_tbl }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_RWQ_IND_TBL226 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_RWQ_IND_TBL_DESTROY], [28 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_RWQ_IND_TBL_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_RWQ_IND_TBL_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_RWQ_IND_TBL_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.10], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } } { i16 0, { i8, i8, { %struct.anon.179 }, %union.anon.181 } { i8 3, i8 32, { %struct.anon.179 } { %struct.anon.179 { i16 11, i8 3 } }, %union.anon.181 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 64 }, ptr @uverbs_free_xrcd }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_XRCD239 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_XRCD_DESTROY], [28 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_XRCD_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_XRCD_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_XRCD_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.12], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.179 }, %union.anon.181 } } { i16 0, { i8, i8, { %struct.anon.179 }, %union.anon.181 } { i8 3, i8 32, { %struct.anon.179 } { %struct.anon.179 { i16 10, i8 3 } }, %union.anon.181 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [34 x i8] c"ib_uverbs_object_UVERBS_OBJECT_PD\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [44 x i8] c"ib_uverbs_object_UVERBS_OBJECT_COMP_CHANNEL\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [34 x i8] c"ib_uverbs_object_UVERBS_OBJECT_AH\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [34 x i8] c"ib_uverbs_object_UVERBS_OBJECT_MW\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [36 x i8] c"ib_uverbs_object_UVERBS_OBJECT_FLOW\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [43 x i8] c"ib_uverbs_object_UVERBS_OBJECT_RWQ_IND_TBL\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [36 x i8] c"ib_uverbs_object_UVERBS_OBJECT_XRCD\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"uverbs_def_obj_intf\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 252, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_PD250\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 248, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [42 x i8] c"ib_uverbs_method_UVERBS_METHOD_PD_DESTROY\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [39 x i8] c"_method_attrs_UVERBS_METHOD_PD_DESTROY\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 241, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [46 x i8] c"_object_methods_UVERBS_OBJECT_COMP_CHANNEL180\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 174, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_AH202\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 200, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [42 x i8] c"ib_uverbs_method_UVERBS_METHOD_AH_DESTROY\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [39 x i8] c"_method_attrs_UVERBS_METHOD_AH_DESTROY\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 193, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_MW191\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 189, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [42 x i8] c"ib_uverbs_method_UVERBS_METHOD_MW_DESTROY\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [39 x i8] c"_method_attrs_UVERBS_METHOD_MW_DESTROY\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 182, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [38 x i8] c"_object_methods_UVERBS_OBJECT_FLOW215\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 211, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [44 x i8] c"ib_uverbs_method_UVERBS_METHOD_FLOW_DESTROY\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [41 x i8] c"_method_attrs_UVERBS_METHOD_FLOW_DESTROY\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 204, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [45 x i8] c"_object_methods_UVERBS_OBJECT_RWQ_IND_TBL226\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 224, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [51 x i8] c"ib_uverbs_method_UVERBS_METHOD_RWQ_IND_TBL_DESTROY\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [48 x i8] c"_method_attrs_UVERBS_METHOD_RWQ_IND_TBL_DESTROY\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 217, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [38 x i8] c"_object_methods_UVERBS_OBJECT_XRCD239\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 235, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [44 x i8] c"ib_uverbs_method_UVERBS_METHOD_XRCD_DESTROY\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [41 x i8] c"_method_attrs_UVERBS_METHOD_XRCD_DESTROY\00", align 1
@___asan_gen_.107 = private constant [46 x i8] c"../drivers/infiniband/core/uverbs_std_types.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 228, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab_uverbs_destroy_def_handler, ptr @ib_uverbs_object_UVERBS_OBJECT_PD, ptr @ib_uverbs_object_UVERBS_OBJECT_COMP_CHANNEL, ptr @ib_uverbs_object_UVERBS_OBJECT_AH, ptr @ib_uverbs_object_UVERBS_OBJECT_MW, ptr @ib_uverbs_object_UVERBS_OBJECT_FLOW, ptr @ib_uverbs_object_UVERBS_OBJECT_RWQ_IND_TBL, ptr @ib_uverbs_object_UVERBS_OBJECT_XRCD, ptr @uverbs_def_obj_intf, ptr @.compoundliteral, ptr @_object_methods_UVERBS_OBJECT_PD250, ptr @ib_uverbs_method_UVERBS_METHOD_PD_DESTROY, ptr @_method_attrs_UVERBS_METHOD_PD_DESTROY, ptr @.compoundliteral.1, ptr @.str, ptr @.compoundliteral.2, ptr @_object_methods_UVERBS_OBJECT_COMP_CHANNEL180, ptr @.compoundliteral.3, ptr @_object_methods_UVERBS_OBJECT_AH202, ptr @ib_uverbs_method_UVERBS_METHOD_AH_DESTROY, ptr @_method_attrs_UVERBS_METHOD_AH_DESTROY, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @_object_methods_UVERBS_OBJECT_MW191, ptr @ib_uverbs_method_UVERBS_METHOD_MW_DESTROY, ptr @_method_attrs_UVERBS_METHOD_MW_DESTROY, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @_object_methods_UVERBS_OBJECT_FLOW215, ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_DESTROY, ptr @_method_attrs_UVERBS_METHOD_FLOW_DESTROY, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @_object_methods_UVERBS_OBJECT_RWQ_IND_TBL226, ptr @ib_uverbs_method_UVERBS_METHOD_RWQ_IND_TBL_DESTROY, ptr @_method_attrs_UVERBS_METHOD_RWQ_IND_TBL_DESTROY, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @_object_methods_UVERBS_OBJECT_XRCD239, ptr @ib_uverbs_method_UVERBS_METHOD_XRCD_DESTROY, ptr @_method_attrs_UVERBS_METHOD_XRCD_DESTROY, ptr @.compoundliteral.12], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_PD to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_COMP_CHANNEL to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_AH to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_MW to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_FLOW to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_RWQ_IND_TBL to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_XRCD to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_intf to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_PD250 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_PD_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_PD_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_COMP_CHANNEL180 to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_AH202 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_AH_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_AH_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_MW191 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_MW_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_MW_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_FLOW215 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_FLOW_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_RWQ_IND_TBL226 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_RWQ_IND_TBL_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_RWQ_IND_TBL_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_XRCD239 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_XRCD_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_XRCD_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_free_event_queue(ptr noundef %event_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %event_queue) #4
  %is_closed = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %event_queue, i32 0, i32 1
  %0 = ptrtoint ptr %is_closed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %is_closed, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_queue) #4
  %poll_wait = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %event_queue, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #4
  %async_queue = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %event_queue, i32 0, i32 3
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #4
  tail call void @_raw_spin_lock_irq(ptr noundef %event_queue) #4
  %event_list = getelementptr inbounds %struct.ib_uverbs_event_queue, ptr %event_queue, i32 0, i32 4
  %1 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %event_list, align 4
  %cmp.not41 = icmp eq ptr %2, %event_list
  br i1 %cmp.not41, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %list_del.exit38.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn47, %list_del.exit38.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %entry1.046 = getelementptr i8, ptr %.pn.in42, i32 -16
  %3 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn47 = load ptr, ptr %.pn.in42, align 8
  %counter = getelementptr i8, ptr %.pn.in42, i32 16
  %4 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %counter, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  %obj_list = getelementptr i8, ptr %.pn.in42, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %obj_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr i8, ptr %.pn.in42, i32 12
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %obj_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %obj_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %obj_list, align 4
  %prev.i = getelementptr i8, ptr %.pn.in42, i32 12
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %for.body.if.end_crit_edge
  %call.i.i33 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42) #4
  br i1 %call.i.i33, label %if.end.i.i36, label %if.end.list_del.exit38_crit_edge

if.end.list_del.exit38_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit38

if.end.i.i36:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i34 = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i34, align 4
  %16 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in42, align 4
  %prev1.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i35, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit38

list_del.exit38:                                  ; preds = %if.end.i.i36, %if.end.list_del.exit38_crit_edge
  %20 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in42, align 4
  %prev.i37 = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i37, align 4
  tail call void @kfree(ptr noundef %entry1.046) #4
  %cmp.not = icmp eq ptr %.pn47, %event_list
  br i1 %cmp.not, label %list_del.exit38.for.end_crit_edge, label %list_del.exit38.for.body_crit_edge

list_del.exit38.for.body_crit_edge:               ; preds = %list_del.exit38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

list_del.exit38.for.end_crit_edge:                ; preds = %list_del.exit38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %list_del.exit38.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_queue) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @uverbs_destroy_def_handler(ptr nocapture readnone %attrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_pd(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @ib_dealloc_pd_user(ptr noundef %1, ptr noundef %attrs) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uverbs_completion_event_file_destroy_uobj(ptr noundef %uobj, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %uobj, i32 0, i32 1
  tail call void @ib_uverbs_free_event_queue(ptr noundef %ev_queue)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_ah(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %call = tail call i32 @rdma_destroy_ah_user(ptr noundef %1, i32 noundef 1, ptr noundef %attrs) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_destroy_ah_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_mw(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %call = tail call i32 @uverbs_dealloc_mw(ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_dealloc_mw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_flow(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device = getelementptr inbounds %struct.ib_flow, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %destroy_flow = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 71
  %6 = ptrtoint ptr %destroy_flow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_flow, align 4
  %call = tail call i32 %7(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %usecnt = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #4, !srcloc !53
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %resources = getelementptr inbounds %struct.ib_uflow_object, ptr %uobject, i32 0, i32 1
  %9 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resources, align 8
  tail call void @ib_uverbs_flow_resources_free(ptr noundef %10) #4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_flow_resources_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_rwq_ind_tbl(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %ind_tbl1 = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ind_tbl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ind_tbl1, align 4
  %log_ind_tbl_size = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %log_ind_tbl_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %log_ind_tbl_size, align 4
  %usecnt = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #4
  %6 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %destroy_rwq_ind_table = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 84
  %10 = ptrtoint ptr %destroy_rwq_ind_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %destroy_rwq_ind_table, align 4
  %call2 = tail call i32 %11(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.021
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %usecnt6 = getelementptr inbounds %struct.ib_wq, ptr %13, i32 0, i32 9
  %call.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt6, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %usecnt6, i32 1, i32 3, i32 1) #4
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt6, ptr %usecnt6, i32 1, ptr elementtype(i32) %usecnt6) #4, !srcloc !53
  %inc = add i32 %i.021, 1
  %i.0.highbits = lshr i32 %inc, %5
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -16, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_xrcd(ptr noundef %uobject, i32 noundef %why, ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %uobject, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #4
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %xrcd_tree_mutex = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %xrcd_tree_mutex, i32 noundef 0) #4
  %call1 = tail call i32 @ib_uverbs_dealloc_xrcd(ptr noundef %uobject, ptr noundef %1, i32 noundef %why, ptr noundef %attrs) #4
  %8 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufile, align 8
  %device3 = getelementptr inbounds %struct.ib_uverbs_file, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device3, align 4
  %xrcd_tree_mutex4 = getelementptr inbounds %struct.ib_uverbs_device, ptr %11, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %xrcd_tree_mutex4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_uverbs_dealloc_xrcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__ksymtab_uverbs_destroy_def_handler, !1, !"__ksymtab_uverbs_destroy_def_handler", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 172, i32 1}
!2 = !{ptr @uverbs_def_obj_intf, !3, !"uverbs_def_obj_intf", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 252, i32 30}
!4 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_PD, !5, !"ib_uverbs_object_UVERBS_OBJECT_PD", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 248, i32 1}
!6 = !{ptr @_object_methods_UVERBS_OBJECT_PD250, !5, !"_object_methods_UVERBS_OBJECT_PD250", i1 false, i1 false}
!7 = !{ptr @ib_uverbs_method_UVERBS_METHOD_PD_DESTROY, !8, !"ib_uverbs_method_UVERBS_METHOD_PD_DESTROY", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 241, i32 1}
!9 = !{ptr @_method_attrs_UVERBS_METHOD_PD_DESTROY, !8, !"_method_attrs_UVERBS_METHOD_PD_DESTROY", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 174, i32 1}
!12 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_COMP_CHANNEL, !11, !"ib_uverbs_object_UVERBS_OBJECT_COMP_CHANNEL", i1 false, i1 false}
!13 = !{ptr @_object_methods_UVERBS_OBJECT_COMP_CHANNEL180, !11, !"_object_methods_UVERBS_OBJECT_COMP_CHANNEL180", i1 false, i1 false}
!14 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_AH, !15, !"ib_uverbs_object_UVERBS_OBJECT_AH", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 200, i32 1}
!16 = !{ptr @_object_methods_UVERBS_OBJECT_AH202, !15, !"_object_methods_UVERBS_OBJECT_AH202", i1 false, i1 false}
!17 = !{ptr @ib_uverbs_method_UVERBS_METHOD_AH_DESTROY, !18, !"ib_uverbs_method_UVERBS_METHOD_AH_DESTROY", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 193, i32 1}
!19 = !{ptr @_method_attrs_UVERBS_METHOD_AH_DESTROY, !18, !"_method_attrs_UVERBS_METHOD_AH_DESTROY", i1 false, i1 false}
!20 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_MW, !21, !"ib_uverbs_object_UVERBS_OBJECT_MW", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 189, i32 1}
!22 = !{ptr @_object_methods_UVERBS_OBJECT_MW191, !21, !"_object_methods_UVERBS_OBJECT_MW191", i1 false, i1 false}
!23 = !{ptr @ib_uverbs_method_UVERBS_METHOD_MW_DESTROY, !24, !"ib_uverbs_method_UVERBS_METHOD_MW_DESTROY", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 182, i32 1}
!25 = !{ptr @_method_attrs_UVERBS_METHOD_MW_DESTROY, !24, !"_method_attrs_UVERBS_METHOD_MW_DESTROY", i1 false, i1 false}
!26 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_FLOW, !27, !"ib_uverbs_object_UVERBS_OBJECT_FLOW", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 211, i32 1}
!28 = !{ptr @_object_methods_UVERBS_OBJECT_FLOW215, !27, !"_object_methods_UVERBS_OBJECT_FLOW215", i1 false, i1 false}
!29 = !{ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_DESTROY, !30, !"ib_uverbs_method_UVERBS_METHOD_FLOW_DESTROY", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 204, i32 1}
!31 = !{ptr @_method_attrs_UVERBS_METHOD_FLOW_DESTROY, !30, !"_method_attrs_UVERBS_METHOD_FLOW_DESTROY", i1 false, i1 false}
!32 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_RWQ_IND_TBL, !33, !"ib_uverbs_object_UVERBS_OBJECT_RWQ_IND_TBL", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 224, i32 1}
!34 = !{ptr @_object_methods_UVERBS_OBJECT_RWQ_IND_TBL226, !33, !"_object_methods_UVERBS_OBJECT_RWQ_IND_TBL226", i1 false, i1 false}
!35 = !{ptr @ib_uverbs_method_UVERBS_METHOD_RWQ_IND_TBL_DESTROY, !36, !"ib_uverbs_method_UVERBS_METHOD_RWQ_IND_TBL_DESTROY", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 217, i32 1}
!37 = !{ptr @_method_attrs_UVERBS_METHOD_RWQ_IND_TBL_DESTROY, !36, !"_method_attrs_UVERBS_METHOD_RWQ_IND_TBL_DESTROY", i1 false, i1 false}
!38 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_XRCD, !39, !"ib_uverbs_object_UVERBS_OBJECT_XRCD", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 235, i32 1}
!40 = !{ptr @_object_methods_UVERBS_OBJECT_XRCD239, !39, !"_object_methods_UVERBS_OBJECT_XRCD239", i1 false, i1 false}
!41 = !{ptr @ib_uverbs_method_UVERBS_METHOD_XRCD_DESTROY, !42, !"ib_uverbs_method_UVERBS_METHOD_XRCD_DESTROY", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/core/uverbs_std_types.c", i32 228, i32 1}
!43 = !{ptr @_method_attrs_UVERBS_METHOD_XRCD_DESTROY, !42, !"_method_attrs_UVERBS_METHOD_XRCD_DESTROY", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2148229995, i64 2148230021, i64 2148230050, i64 2148230084, i64 2148230115, i64 2148230138}
